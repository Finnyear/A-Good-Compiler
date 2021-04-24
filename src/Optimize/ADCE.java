package Optimize;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.*;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import MIR.IRType.IRarrayType;
import MIR.IRType.IRpointerType;
import MIR.Root;
import Util.Domgen;
import Util.IRFnGraph;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

public class ADCE {

    private Root IRroot;
    private boolean change;
    private HashSet<Inst> usefulinst = new HashSet<>();
    private HashSet<entity> usefulentity = new HashSet<>();
    private HashSet<entity> tmp = new HashSet<>();
    private IRFnGraph fngraph;


    public ADCE(Root IRroot) {
        this.IRroot = IRroot;
        fngraph = new IRFnGraph(IRroot);
    }




    private void testOp(entity op) {
        HashSet<Inst> uses = op.uses();
        if (uses != null) {
            uses.forEach(inst -> {
                if (inst instanceof Store && ((Store) inst).value.type instanceof IRpointerType) {
                    Store st = (Store) inst;
                    if (!usefulentity.contains(st.addr) && !tmp.contains(st.addr)){
                        tmp.add(st.addr);
                        testOp(st.addr);
                    }
                    if (!usefulentity.contains(st.value) && !tmp.contains(st.value)){
                        tmp.add(st.value);
                        testOp(st.value);
                    }
                } else if (inst instanceof Bitcast || inst instanceof Getelementptr ||
                        (((inst instanceof Call && inst.dest != null) || (inst instanceof Load && inst.dest != null)) &&
                                (inst.dest.type instanceof IRpointerType || inst.dest.type instanceof IRarrayType)) ||
                        (inst instanceof Phi)) {
                    if (!usefulentity.contains(inst.dest) && !tmp.contains(inst.dest)){
                        tmp.add(inst.dest);
                        testOp(inst.dest);
                    }
                }
            });
        }
    }

    private void setse(IRFunction func){
        if(!func.se){
            func.se = true;
            fngraph.getcaller(func).forEach(this::setse);
        }
    }

    private void init(){
        fngraph.build();
        usefulentity.clear();
        usefulentity.addAll(IRroot.globalVars);

        usefulentity.addAll(IRroot.conststrings.values());
        IRroot.functions.forEach((name, fn) -> {
            fn.params.forEach(param -> {
                if (param.type instanceof IRpointerType || param.type instanceof IRarrayType)
                    usefulentity.add(param);
            });
            fn.se = false;
        });

        usefulentity.forEach(op -> testOp(op));
        usefulentity.addAll(tmp);

        IRroot.functions.forEach((name, fn) ->
                fn.blocks.forEach(block -> {
                    for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                        if (inst instanceof Call && ((Call)inst).callee.se){
                            usefulinst.add(inst);
                            setse(fn);
                        }
                        else if (inst instanceof Store && usefulentity.contains(((Store)inst).addr)){
                            usefulinst.add(inst);
                            setse(fn);
                        } else if (inst instanceof Return) usefulinst.add(inst);
                }));
        IRroot.functions.forEach((name, fn) -> fn.blocks.forEach(block -> {
            for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst))
                if (inst instanceof Call && ((Call)inst).callee.se)
                    usefulinst.add(inst);
        }));
    }


    private void add(Inst inst) {
        inst.uses().forEach(opr -> {
            if (opr instanceof Register) {
                Inst def = ((Register) opr).def;
                if(def != null && !usefulinst.contains(def)) {
                    usefulinst.add(((Register) opr).def);
                    add(((Register) opr).def);
                }
            }
            if (opr.type instanceof IRpointerType || opr.type instanceof IRarrayType)
                opr.uses().forEach(use -> {
                    if ((use instanceof Store || use instanceof Bitcast || use instanceof Getelementptr ||
                            use instanceof Phi || (use instanceof Load && use.dest.type instanceof IRpointerType))
                            && !usefulinst.contains(use)) {
                        usefulinst.add(use);
                        add(use);
                    }
                });
        });
        if (inst.dest != null && (inst.dest.type instanceof IRpointerType || inst.dest.type instanceof IRarrayType)) {
            inst.dest.uses().forEach(use -> {
                if ((use instanceof Store || use instanceof Bitcast || use instanceof Getelementptr ||
                        use instanceof Phi || (use instanceof Load && use.dest.type instanceof IRpointerType))
                        && !usefulinst.contains(use)) {
                    usefulinst.add(use);
                    add(use);
                }
            });
        }
        inst.block.pre_block.forEach(pre -> {
            if (!usefulinst.contains(pre.terminate)) {
                usefulinst.add(pre.terminate);
                add(pre.terminate);
            }
        });
    }

    private void collect() {
        IRroot.functions.forEach((name, fn) -> fn.blocks.forEach(block -> {
            for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst)) {
                if (usefulinst.contains(inst)) add(inst);
            }
            block.Phis.forEach(((reg, inst) -> {
                if (usefulinst.contains(inst)) add(inst);
            }));
        }));
    }


    private HashSet<IRBlock> reachable = new HashSet<>();

    private void dfs(IRBlock block) {
        block.suc_block.forEach(suc -> {
            if (!reachable.contains(suc)) {
                reachable.add(suc);
                dfs(suc);
            }
        });
    }


    public void eliminate() {
        IRroot.functions.forEach((name, fn) -> {
            for (IRBlock block : fn.blocks) {
                for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst)) {
                    if (!usefulinst.contains(inst)) {
                        change = true;
                        if (inst instanceof TerminalInst) {
                            block.removeterminate();
                            block.addterminate(new Jump(block, block));
                            break;
                        } else inst.removeself(true);
                    }
                }
                for (Iterator<Map.Entry<Register, Phi>> iter = block.Phis.entrySet().iterator(); iter.hasNext(); ) {
                    Phi inst = iter.next().getValue();
                    if (!usefulinst.contains(inst)) {
                        iter.remove();
                        inst.removeself(false);
                        change = true;
                    }
                }
            }
            reachable.clear();
            reachable.add(fn.entryblock);
            dfs(fn.entryblock);
            fn.blocks.forEach(block -> {
                if (!reachable.contains(block)) {
                    block.removeterminate();
                    block.addterminate(new Jump(block, block));
                }
            });
            new Domgen(fn).runforfn();
        });
    }

    public boolean run() {
        usefulinst.clear();
        change = false;
        init();
        collect();
        eliminate();
        return change;
    }
}
