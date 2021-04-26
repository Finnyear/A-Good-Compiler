package Optimize;

import MIR.IRBlock;
import MIR.IRFunction;
import MIR.IRInst.Branch;
import MIR.IRInst.Inst;
import MIR.IRInst.Jump;
import MIR.IROperand.*;
import MIR.Root;
import Util.Domgen;


import java.util.ArrayList;
import java.util.HashSet;

public class CFGsimplify {
    
    private Root IRroot;
    private boolean change;

    public CFGsimplify(Root IRroot) {
        this.IRroot = IRroot;
    }

    private boolean isConst(entity src) {
        return src instanceof intConst || src instanceof boolConst || src instanceof stringConst;
    }
    private boolean canRemove(IRBlock block) {
        ArrayList<IRBlock> precursors = block.pre_block;
        return precursors.isEmpty() || (precursors.size() == 1 && precursors.get(0) == block);
    }
    private boolean remove(IRFunction fn) {
        HashSet<IRBlock> removedCollection = new HashSet<>();
        boolean newChange, changed = false;
        do {
            newChange = false;
            removedCollection.clear();
            for (IRBlock block : fn.blocks) {
                if (block.terminate == null) {
                    newChange = true;
                    removedCollection.add(block);
                    continue;
                }
                Inst terminator = block.terminate;
                if (terminator instanceof Branch) {
                    if (isConst(((Branch) terminator).cond)) {
                        entity src = ((Branch) terminator).cond;
                        block.removeterminate();
                        if (((boolConst) src).value()) block.addterminate(new Jump(((Branch) terminator).true_br_block, block));
                        else block.addterminate(new Jump(((Branch) terminator).false_br_block, block));
                    } else if (((Branch) terminator).true_br_block == ((Branch) terminator).false_br_block) {
                        block.removeterminate();
                        block.addterminate(new Jump(((Branch) terminator).true_br_block, block));
                    }
                }
                if (canRemove(block) && block != fn.entryblock) {
                    newChange = true;
                    removedCollection.add(block);
                    block.removeterminate();
                }
            }
            fn.blocks.removeAll(removedCollection);
            changed = changed || newChange;
        } while(newChange);
        return changed;
    }
    private boolean merge(IRFunction fn) {
        HashSet<IRBlock> canmerge = new HashSet<>();
        fn.blocks.forEach(block -> {
            if (block.pre_block.size() == 1 && block.pre_block.get(0).suc_block.size() == 1)
                canmerge.add(block);
        });
        canmerge.forEach(block -> {
            IRBlock pre = block.pre_block.get(0);
            pre.removeterminate();
            pre.merge(block);
            if (fn.exitblock == block) fn.exitblock = pre;
        });
        fn.blocks.removeAll(canmerge);
        return !canmerge.isEmpty();
    }

    private void simplify(IRFunction fn) {
        boolean newChange;
        boolean changed = false;
        do {
            newChange = remove(fn);
            newChange = merge(fn) || newChange;
            changed = changed || newChange;
        } while(newChange);
        if (changed) new Domgen(fn).runforfn();
        change = change || changed;
    }

    public boolean run() {
        change = false;
        IRroot.functions.forEach((name, fn) -> simplify(fn));
        return change;
    }
}
