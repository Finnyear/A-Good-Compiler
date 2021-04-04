package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;

import java.util.Collections;
import java.util.HashSet;

public class Move extends Inst{
    public entity src;
    public Move(entity src, Register dest, boolean adduse, IRBlock block) {
        super(dest, block);
        this.src = src;
        if(adduse) src.adduse(this);
    }


    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        src.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(src == old) src = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(src);
        return ret;
    }

    @Override
    public String toString() {
        return "mv " + src.type.toString() + " " + dest.toString() + " " + src.toString();
    }
}
