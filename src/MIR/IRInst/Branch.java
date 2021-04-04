package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.entity;

import java.util.HashSet;

public class Branch extends TerminalInst {
    public entity cond;
    public IRBlock true_br_block, false_br_block;

    public Branch(entity cond, IRBlock true_br_block, IRBlock false_br_block, IRBlock block) {
        super(block);
        this.cond = cond;
        this.true_br_block = true_br_block;
        this.false_br_block = false_br_block;
        cond.adduse(this);
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        cond.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(cond == old) cond = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(cond);
        return ret;
    }

    @Override
    public String toString() {
        return "br " + cond.type.toString() + " " + cond.toString() + ", label %" +
                true_br_block.name + ", label %" + false_br_block.name;
    }
}
