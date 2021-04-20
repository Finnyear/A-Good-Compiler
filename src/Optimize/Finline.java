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
    private boolean newround = false, change = false;

    public Finline(Root irRoot) {
        super();
        this.irRoot = irRoot;
    }

    private void DFS(IRFunction it) {
//        System.out.println("dfs = " + it.name);
//        it.callfunctions.forEach(irFunction -> System.out.println("print: " + irFunction.name));
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
        stack.remove(stack.size() - 1);
    }

    private void unfold(Call inst, IRFunction fn) {
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
    private void checkInline(IRFunction fn) {
        fn.blocks.forEach(block -> {
            for (Inst inst = block.head_inst; inst != null; inst = inst.nxt)
                if (inst instanceof Call && !cannotInlineFun.contains(((Call)inst).callee)) {
                    canUnFold.put((Call) inst, fn);
                    newround = true;
                }
        });
    }
    private void inline() {
        do {
            newround = false;
            canUnFold.clear();
            irRoot.functions.forEach((name, func) -> checkInline(func));
//            cannotInlineFun.forEach(irFunction -> System.out.println("name = " + irFunction.name));
//            canUnFold.forEach((call, irFunction) -> System.out.println(call));
            canUnFold.forEach(this::unfold);
            change = change || newround;
        } while (newround);
        for (Iterator<Map.Entry<String, IRFunction>> iter = irRoot.functions.entrySet().iterator(); iter.hasNext();) {
            Map.Entry<String, IRFunction> entry = iter.next();
            IRFunction fn = entry.getValue();
            if (!cannotInlineFun.contains(fn)) iter.remove();
            else if (caller.get(fn).size() == 1 && caller.get(fn).contains(fn)) iter.remove();
        }
    }

    public boolean run() {
        newround = change = false;
        cannotInlineFun.add(irRoot.getfun("main"));
        visited.addAll(irRoot.builtinfunc.values());
        cannotInlineFun.addAll(visited);
        irRoot.functions.forEach((name, fn) -> caller.put(fn, new HashSet<>()));
        irRoot.functions.forEach((name, fn) -> {if(!visited.contains(fn)) DFS(fn);});
        inline();
        irRoot.functions.forEach((name, fn) -> new Domgen(fn).runforfn());
        return change;
    }
}
