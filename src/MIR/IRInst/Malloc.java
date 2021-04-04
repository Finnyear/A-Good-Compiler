package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;

import java.util.Collections;
import java.util.HashSet;

public class Malloc extends Inst{
    public entity sz;
    public Malloc(entity sz, Register dest, IRBlock block) {
        super(dest, block);
        this.sz = sz;
        sz.adduse(this);
        dest.def = this;
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        sz.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(sz == old) sz = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(sz);
        return ret;
    }

    @Override
    public String toString() {
        return dest.toString() + " = call noalias i8* @malloc(" +
                sz.type.toString() + " " + sz.toString() + ")";
    }
}
