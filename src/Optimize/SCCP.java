package Optimize;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.*;
import MIR.IROperand.*;
import MIR.IRType.IRboolType;
import MIR.IRType.IRintType;
import MIR.Root;
import Util.Domgen;

import java.util.*;

public class SCCP {
    private Root IRroot;
    private HashMap<entity, entity> constmap = new HashMap<>();
    private HashSet<IRBlock> visited = new HashSet<>();
    private boolean change, changefn;
    private IRFunction current_func;

    public SCCP(Root IRroot){
        this.IRroot = IRroot;
    }

    private entity consttrans(entity src){
        if(src instanceof intConst || src instanceof boolConst || src instanceof stringConst)
            return src;
        if(src instanceof Null) return new intConst(0, 32);
        else return constmap.getOrDefault(src, null);
    }

    private boolean binarycheck(Binary inst){
        entity op1, op2;
        op1 = consttrans(inst.op1);
        op2 = consttrans(inst.op2);
        if(op1 != null && op2 != null){
            if(op1 instanceof intConst){
                assert op2 instanceof intConst;
                int src1 = ((intConst) op1).value();
                int src2 = ((intConst) op2).value();
                int ans;
                switch (inst.opcode){
                    case mul -> ans = src1 * src2;
                    case sdiv -> {
                        if(src2 == 0) return false;
                        ans = src1 / src2;
                    }
                    case srem -> {
                        if(src2 == 0) return false;
                        ans = src1 % src2;
                    }
                    case add -> ans = src1 + src2;
                    case sub -> ans = src1 - src2;
                    case and -> ans = src1 & src2;
                    case or  -> ans = src1 | src2;
                    case xor -> ans = src1 ^ src2;
                    case shl -> ans = src1 << src2;
                    case ashr -> ans = src1 >> src2;
                    default -> {return false;}
                }
                intConst neww = new intConst(ans, 32);
                inst.dest.replaceusewith(neww);
                constmap.put(inst.dest, neww);
            }else{
                assert op1 instanceof boolConst;
                assert op2 instanceof boolConst;
                boolean src1 = ((boolConst) op1).value();
                boolean src2 = ((boolConst) op2).value();
                boolean ans;
                switch (inst.opcode){
                    case and -> ans = src1 && src2;
                    case or -> ans = src1 || src2;
                    case xor -> ans = src1 ^ src2;
                    default -> {return false;}
                }
                boolConst neww = new boolConst(ans);
                inst.dest.replaceusewith(neww);
            }
            return true;
        }return false;
    }

    private boolean cmpcheck(Cmp inst) {
        entity op1, op2;
        op1 = consttrans(inst.op1);
        op2 = consttrans(inst.op2);
        if (op1 != null && op2 != null) {
            boolean ans;
            if (op1 instanceof intConst) {
                assert op2 instanceof intConst;
                int value1 = ((intConst)op1).value(), value2 = ((intConst)op2).value();
                switch(inst.condcode) {
                    case slt -> ans = value1 < value2;
                    case sgt -> ans = value1 > value2;
                    case sle -> ans = value1 <= value2;
                    case sge -> ans = value1 >= value2;
                    case eq ->  ans = value1 == value2;
                    case ne ->  ans = value1 != value2;
                    default -> {return false;}
                }
            } else {
                assert op1 instanceof boolConst;
                assert op2 instanceof boolConst;
                boolean value1 = ((boolConst)op1).value(), value2 = ((boolConst)op2).value();
                switch(inst.condcode) {
                    case eq -> ans = value1 == value2;
                    case ne -> ans = value1 != value2;
                    default -> {return false;}
                }
            }
            boolConst neww = new boolConst(ans);
            inst.dest.replaceusewith(neww);
            return true;
        } else return false;
    }

    private boolean zextcheck(Zext inst) {
        int value;
        if (inst.src instanceof intConst) value = ((intConst) inst.src).value();
        else if (inst.src instanceof boolConst) value = ((boolConst) inst.src).value() ? 1 : 0;
        else return false;
        entity neww;
        if (inst.dest.type instanceof IRintType) {
            neww = new intConst(value, inst.dest.type.size());
        } else {
            assert inst.dest.type instanceof IRboolType;
            neww = new boolConst(value != 0);
        }
        inst.dest.replaceusewith(neww);
        return true;
    }
    private boolean phicheck(Phi inst){
        ArrayList<entity> entities = inst.entities;
        entity trans = consttrans(entities.get(0));
        int size = entities.size();
        if(size == 1){
            if(trans != null) inst.dest.replaceusewith(trans);
            else inst.dest.replaceusewith(entities.get(0));
            return true;
        }
        else{
            if(trans != null){
                boolean same = true;
                if (trans instanceof intConst) {
                    int value = ((intConst)trans).value();
                    for (int i = 1;i < size;++i) {
                        entity currenttrans = consttrans(entities.get(i));
                        if (!(currenttrans instanceof intConst
                                && ((intConst) currenttrans).value() == value)) {
                            same = false;
                            break;
                        }
                    }
                } else {
                    assert trans instanceof boolConst;
                    boolean value = ((boolConst)trans).value();
                    for (int i = 1;i < size;++i) {
                        entity currenttrans = consttrans(entities.get(i));
                        if (!(currenttrans instanceof boolConst
                                && ((boolConst) currenttrans).value() == value)) {
                            same = false;
                            break;
                        }
                    }
                }
                if(same) inst.dest.replaceusewith(trans);
                return same;
            }
            return false;
        }
    }
    private boolean isConst(entity val){
        return val instanceof intConst || val instanceof boolConst || val instanceof stringConst;
    }

    private void visit(IRBlock block) {
        visited.add(block);
        if (block.pre_block.size() == 0 && block != current_func.entryblock) {
            block.removeterminate();
            block.addterminate(new Jump(block, block));
            return;
        }
        for (Iterator<Map.Entry<Register, Phi>> iter = block.Phis.entrySet().iterator(); iter.hasNext();) {
            Map.Entry<Register, Phi> entry = iter.next();
            Phi phi = entry.getValue();
            if (phicheck(phi)) {
                iter.remove();
                phi.removeself(false);
                changefn = true;
            }
        }
        for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst)) {
            if (inst == block.terminate && inst instanceof Branch) {
                if (isConst(((Branch) inst).cond)) {
                    entity src = ((Branch) inst).cond;
                    assert src instanceof boolConst;
                    block.removeterminate();
                    if (((boolConst) src).value())
                        block.addterminate(new Jump(((Branch) inst).true_br_block, block));
                    else
                        block.addterminate(new Jump(((Branch) inst).false_br_block, block));
                    changefn = true;
                    break;
                }
            }
            if ((inst instanceof Binary && binarycheck((Binary) inst)) ||
                    (inst instanceof Cmp && cmpcheck((Cmp) inst)) ||
                    (inst instanceof Zext && zextcheck((Zext) inst))) {
                inst.removeself(true);
                changefn = true;
            }
        }

        block.suc_block.forEach(suc -> {
            if (!visited.contains(suc)) visit(suc);
        });
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

    private void runforfn(IRFunction fn) {
        current_func = fn;
        boolean everChanged = false;
        do {
            visited.clear();
            changefn = false;
            visit(fn.entryblock);
            reachable.clear();
            reachable.add(fn.entryblock);
            dfs(fn.entryblock);
            fn.blocks.forEach(block -> {
                if (!reachable.contains(block)) {
                    block.removeterminate();
                    block.addterminate(new Jump(block, block));
                }
            });
            everChanged = everChanged || changefn;
        } while(changefn);
        change = change || everChanged;
        if (everChanged) new Domgen(fn).runforfn();
    }


    public boolean run() {
        constmap = new HashMap<>();
        change = false;

        IRroot.functions.forEach((name, fn) -> runforfn(fn));

        return change;
    }
}
