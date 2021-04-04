package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Null;
import MIR.IROperand.entity;
import MIR.IRType.IRpointerType;

import java.util.HashSet;

public class Store extends Inst{
    public entity value, addr;
    public Store(entity value, entity addr, IRBlock block) {
        super(null, block);
        this.value = value;
        this.addr = addr;
        value.adduse(this);
        addr.adduse(this);
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        value.removeuse(this);
        addr.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(value == old) value = neww;
        if(addr == old) addr = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(value); ret.add(addr);
        return ret;
    }


    @Override
    public String toString() {
        String vs = value.type.toString();
        if (value instanceof Null) vs = ((IRpointerType)addr.type).pointeeType.toString();
        return "store " + vs + " " + value.toString() + ", " +
                addr.type.toString() + " " + addr.toString() +
                ", align " + value.type.size() / 8;
    }
}
