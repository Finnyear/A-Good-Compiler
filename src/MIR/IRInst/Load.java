package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;

import java.util.Collections;
import java.util.HashSet;

public class Load extends Inst{
    public entity addr;
    public Load(entity addr, Register dest, IRBlock block) {
        super(dest, block);
        this.addr = addr;
        addr.adduse(this);
        dest.def = this;
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        addr.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(addr == old) addr = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(addr);
        return ret;
    }

    @Override
    public String toString() {
        return "%" + dest.name + " = load " + dest.type.toString() + ", " +
                addr.type.toString() + " " + addr.toString() + ", align " +
                dest.type.size() / 8;
    }
}
