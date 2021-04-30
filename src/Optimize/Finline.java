package Optimize;

import MIR.*;
import MIR.IRInst.*;
import MIR.IROperand.*;
import Util.*;
import java.util.*;


public class Finline{

    private Root irRoot;
    private HashSet<IRFunction> cannotInlineFun = new HashSet<>();
    private HashMap<Call, IRFunction> canUnFold = new HashMap<>();
    private ArrayList<IRFunction> stack = new ArrayList<>();
    private HashSet<IRFunction> visited = new HashSet<>();
    private HashMap<IRFunction, HashSet<IRFunction>> caller = new HashMap<>();
    private boolean forceinline;

    public Finline(Root irRoot, boolean forceinline) {
        super();
        this.irRoot = irRoot;
        this.forceinline = forceinline;
    }

    private void DFS(IRFunction it) {
        stack.add(it);
        visited.add(it);
        boolean inRing = false;
        for (IRFunction fn : stack) {
            if (it.iscallee(fn)) inRing = true;
            if (inRing) cannotInlineFun.add(fn);
        }
        it.callfunctions.forEach(callee -> {
            if (!visited.contains(callee)) DFS(callee);
            caller.get(callee).add(it);
        });
        if(!cannotInlineFun.contains(it)) inline(it);
        stack.remove(stack.size() - 1);
    }

    private void DFS1(IRFunction it) {
//        System.out.println("dfs : " + it.name);
        visited.add(it);
        it.callfunctions.forEach(callee -> {
            if (!visited.contains(callee)) DFS1(callee);
        });
    }
//    private static int Cnt = 0;

    private void unfold(Call inst, IRFunction fn) {
//        if(Cnt >= 256) return ;
//        Cnt++;
//        System.out.println(inst);
        IRMirror mirror = new IRMirror();
        HashMap<entity, entity> mirrorOpr = mirror.opMirror;
        HashMap<IRBlock, IRBlock> mirrorBlocks = mirror.blockMirror;
        IRFunction callee = inst.callee;
        IRBlock currentBlock = inst.block;
        int paramSize = inst.parameters.size();
        for (int i = 0;i < paramSize;++i) {
            entity callParam = inst.parameters.get(i), virtualParam = callee.params.get(i);
            mirrorOpr.put(virtualParam, callParam);
        }
        HashSet<IRBlock> copied = new HashSet<>(callee.blocks);
        for (IRBlock block : copied) {
            IRBlock mirrorBlock =  new IRBlock(block.name + "_inline");
            mirrorBlocks.put(block, mirrorBlock);
        }
        fn.blocks.addAll(mirrorBlocks.values());
        copied.forEach(block -> {
            IRBlock blockmir = mirror.blockMir(block);
            for(Inst instr = block.gethead(); instr != null; instr = block.getnxt(instr))
                instr.addmirror(blockmir, mirror);
            block.Phis.forEach((reg, instr) -> instr.addmirror(blockmir, mirror));
        });

        IRBlock laterBlock = new IRBlock(currentBlock.name + "_split");
        currentBlock.split(laterBlock, inst);
        IRBlock exitBlock = mirrorBlocks.get(callee.exitblock);
        Return retInst = (Return) exitBlock.terminate;
        if (retInst.value != null) inst.dest.replaceusewith(retInst.value);
        exitBlock.removeterminate();
        exitBlock.merge(laterBlock);
        IRBlock mirEntry = mirrorBlocks.get(callee.entryblock);
        fn.blocks.remove(mirEntry);
        currentBlock.merge(mirEntry);
        if (fn.exitblock == currentBlock && mirEntry != exitBlock) fn.exitblock = exitBlock;
    }

    private void inline(IRFunction fn) {

//        System.out.println("inline " + fn.name);
        canUnFold.clear();
        fn.callfunctions.clear();
        fn.blocks.forEach(block -> {
            for (Inst inst = block.head_inst; inst != null; inst = inst.nxt)if (inst instanceof Call) {
                if(!cannotInlineFun.contains(((Call) inst).callee))
                    canUnFold.put((Call) inst, fn);
            }
        });
        canUnFold.forEach(this::unfold);

        fn.blocks.forEach(block -> {
            for (Inst inst = block.gethead().nxt; inst != null; inst = inst.nxt) {
                if (inst instanceof Binary && inst.pre instanceof Binary){
                    if(((Binary) inst).opcode != Binary.Opcode.add) continue;
                    if(((Binary) inst.pre).opcode != Binary.Opcode.add) continue;
                    entity op1 = ((Binary) inst).op1;
                    entity op2 = ((Binary) inst).op2;
                    if(op1 instanceof intConst && op2 instanceof Register){
                        op1 = ((Binary) inst).op2;
                        op2 = ((Binary) inst).op1;
                    }
                    if(op1 instanceof Register && op2 instanceof intConst) {
                        if (op1 != inst.pre.dest) continue;
                        if (op1.uses().size() > 1) continue;
                        entity pop1 = ((Binary) inst.pre).op1;
                        entity pop2 = ((Binary) inst.pre).op2;
                        if (pop1 instanceof intConst) {
                            pop1 = ((Binary) inst.pre).op2;
                            pop2 = ((Binary) inst.pre).op1;
                        }
                        if (pop2 instanceof intConst) {
                            Binary neww = new Binary(Binary.Opcode.add, pop1,
                                    new intConst(((intConst) pop2).value() + ((intConst) op2).value(), 32), inst.dest, inst.block);
                            neww.pre = inst.pre.pre;
                            neww.nxt = inst.nxt;
                            inst.removeself(true);
                            inst.pre.removeself(true);
                            if(neww.pre != null) neww.pre.nxt = neww;
                            else neww.block.head_inst = neww;
                            if(neww.nxt != null) neww.nxt.pre = neww;
                            else neww.block.tail_inst = neww;
                            inst = neww;
                        }
                    }
                }
            }
        });

        fn.blocks.forEach(block -> {
            for (Inst inst = block.head_inst; inst != null; inst = inst.nxt)if (inst instanceof Call) {
                if(!(irRoot.isbuiltin(((Call)inst).callee.name)))
                    fn.addcalleefunction(((Call) inst).callee);
            }
        });

//        fn.callfunctions.forEach(irFunction -> System.out.println(irFunction.name));
//        for (Iterator<Map.Entry<String, IRFunction>> iter = irRoot.functions.entrySet().iterator(); iter.hasNext();) {
//            Map.Entry<String, IRFunction> entry = iter.next();
//            IRFunction fn = entry.getValue();
//            if (!cannotInlineFun.contains(fn)) iter.remove();
//            else if (caller.get(fn).size() == 1 && caller.get(fn).contains(fn)) iter.remove();
//        }
    }

    public void run() {
        if(!forceinline) {
            visited.clear();
            cannotInlineFun.add(irRoot.getfun("main"));
            IRFunction func = irRoot.getfun("main");
//            System.out.println(func.name);
            visited.addAll(irRoot.builtinfunc.values());
            cannotInlineFun.addAll(visited);
            irRoot.functions.forEach((name, fn) -> caller.put(fn, new HashSet<>()));
            irRoot.functions.forEach((name, fn) -> {
                if (!visited.contains(fn)) DFS(fn);
            });
//            irRoot.cl
            irRoot.functions.forEach((name, fn) -> inline(fn));
            visited.clear();
            DFS1(irRoot.getfun("main"));
            irRoot.functions.clear();
            visited.forEach(irFunction -> irRoot.functions.put(irFunction.name, irFunction));
            irRoot.functions.forEach((name, fn) -> new Domgen(fn).runforfn());
            return ;
        } else {
            int bound = 150;
            HashMap<IRFunction, Integer> lineNumber = new HashMap<>();
            cannotInlineFun.addAll(irRoot.builtinfunc.values());
            cannotInlineFun.add(irRoot.getfun("main"));
            irRoot.functions.forEach((name, fn) -> {
                int cnt = 0;
                for (IRBlock block : fn.blocks) {
                    for (Inst inst = block.gethead(); inst != null; inst = block.getnxt(inst)) cnt++;
                }
                lineNumber.put(fn, cnt);
            });
            irRoot.functions.forEach((name, fn) -> {
                for(int i = 1; i <= 3; i++) {
                    fn.blocks.forEach(block -> {
                        for (Inst inst = block.head_inst; inst != null; inst = inst.nxt)
                            if (inst instanceof Call) {
                                Call ca = (Call) inst;
                                IRFunction callee = ca.callee;
                                if (!cannotInlineFun.contains(callee) && lineNumber.get(callee) < bound) {
                                    canUnFold.put(ca, fn);
                                    lineNumber.put(fn, lineNumber.get(fn) + lineNumber.get(callee));
                                }
                            }
                    });
                    canUnFold.forEach(this::unfold);
                    canUnFold.clear();
                }
            });
            irRoot.functions.forEach((name, fn) -> new Domgen(fn).runforfn());
            return ;
        }
    }
}
