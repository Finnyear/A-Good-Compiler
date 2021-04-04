package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Null;
import MIR.IROperand.Register;
import MIR.IROperand.entity;

import java.util.HashSet;

public class Cmp extends Inst{

    public enum Condcode{
        eq, ne, ugt, uge, ult, ule, sgt, sge, slt, sle
    }
    public Condcode condcode;
    public entity op1, op2;

    public Cmp(Condcode condcode, entity op1, entity op2, Register dest, IRBlock block) {
        super(dest, block);
        this.condcode = condcode;
        this.op1 = op1;
        this.op2 = op2;
        op1.adduse(this);
        op2.adduse(this);
        dest.def = this;
    }

    @Override
    public void removeself(boolean bo) {
        if(bo) block.removeinst(this);
        op1.removeuse(this);
        op2.removeuse(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(op1 == old) op1 = neww;
        if(op2 == old) op2 = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(op1); ret.add(op2);
        return null;
    }

    @Override
    public String toString() {
        String typeString;
        if (op1 instanceof Null) {
            if (op2 instanceof Null) typeString = "int*";
            else typeString = op2.type.toString();
        } else typeString = op1.type.toString();
        return dest.toString() + " = " + "icmp " + condcode.toString() + " " + typeString + " " +
                op1.toString()  + ", " + op2.toString();
    }

}
