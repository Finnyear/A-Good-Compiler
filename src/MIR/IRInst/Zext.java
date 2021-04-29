package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import Util.IRMirror;

import java.util.HashSet;

public class Zext extends Inst{
    public entity src;

    public Zext(entity src, Register dest, IRBlock block) {
        super(dest, block);
        this.src = src;
        src.adduse(this);
        dest.def = this;
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
    public void addmirror(IRBlock block, IRMirror mirror) {
        block.addinst(new Zext(mirror.opMir(src), (Register) mirror.opMir(dest), block));
    }

    @Override
    public boolean nosideeffect() {
        return true;
    }

    @Override
    public String toString() {
        return dest.toString()  + " = zext " + src.type.toString() + " " + src.toString() +
                " to " + dest.type.toString();
    }
}
