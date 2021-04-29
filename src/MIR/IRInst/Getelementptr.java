package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import MIR.IROperand.intConst;
import MIR.IRType.IRType;
import Util.IRMirror;

import java.util.ArrayList;
import java.util.HashSet;

public class Getelementptr extends Inst{
    public IRType basetype;
    public entity pointer;
    public entity arrayindex;
    public intConst eleindex;

    public Getelementptr(IRType basetype, entity pointer, entity arrayindex, intConst eleindex, Register dest, IRBlock block) {
        super(dest, block);
        this.basetype = basetype;
        this.pointer = pointer;
        this.arrayindex = arrayindex;
        this.eleindex = eleindex;
        pointer.adduse(this);
        arrayindex.adduse(this);
        dest.def = this;
    }

    @Override
    public void addmirror(IRBlock block, IRMirror mirror) {
        block.addinst(new Getelementptr(basetype, mirror.opMir(pointer), mirror.opMir(arrayindex),
                eleindex, (Register) mirror.opMir(dest), block));
    }

    @Override
    public boolean nosideeffect() {
        return true;
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        pointer.removeuse(this);
        arrayindex.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(pointer == old) pointer = neww;
        if(arrayindex == old) arrayindex = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(pointer); ret.add(arrayindex);
        return ret;
    }

    @Override
    public String toString() {
        String arrindexToStr = arrayindex.type.toString() + " " + arrayindex.toString();
        String eleindexToStr = eleindex == null ? "" :
                ", " + eleindex.type.toString() + " " + eleindex.toString();
        return dest.toString() + " = getelementptr inbounds " + basetype.toString() + ", " +
                pointer.type.toString() + " " + pointer.toString() + ", " + arrindexToStr + eleindexToStr;
    }
}
