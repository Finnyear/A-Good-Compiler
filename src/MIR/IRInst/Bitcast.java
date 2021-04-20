package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import Util.IRMirror;

import java.util.HashSet;

public class Bitcast extends Inst{
    public entity value;
    public Bitcast(entity value, Register dest, IRBlock block){
        super(dest, block);
        this.value = value;
        value.adduse(this);
        dest.def = this;
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        value.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(value == old) value = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(value);
        return ret;
    }


    @Override
    public void addmirror(IRBlock block, IRMirror mirror) {
        block.addinst(new Bitcast(mirror.opMir(value), (Register) mirror.opMir(dest), block));
    }

    @Override
    public String toString() {
        return dest.toString() + " = bitcast " + value.type.toString() + " " + value.toString() + " to " + dest.type.toString();
    }
}
