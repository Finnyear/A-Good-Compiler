package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import Util.IRMirror;

import java.util.Collections;
import java.util.HashSet;

public class Move extends Inst{
    public entity src;
    public boolean adduse;
    public Move(entity src, Register dest, boolean adduse, IRBlock block) {
        super(dest, block);
        this.adduse = adduse;
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
    public void addmirror(IRBlock block, IRMirror mirror) {
        block.addinst(new Move(mirror.opMir(src), (Register) mirror.opMir(dest), adduse, block));
    }

    @Override
    public String toString() {

        return dest.toString() + " = add " +
                src.type.toString() + " " + src.toString() + ", 0";
//        return "mv " + src.type.toString() + " " + dest.toString() + " " + src.toString();
    }
}
