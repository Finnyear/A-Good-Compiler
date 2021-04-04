package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Reg;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;

public class RType extends RiscInst {
    public Reg op1, op2;
    public Calcategory opcode;

    public RType(Reg op1, Reg op2, Calcategory opcode, Reg dest, LBlock block){
        super(dest, block);
        this.op1 = op1;
        this.op2 = op2;
        this.opcode = opcode;
    }

    @Override
    public HashSet<Reg> uses() {
        HashSet<Reg> ret = new HashSet<>();
        ret.add(op1); ret.add(op2);
        return ret;
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {
        if(op1 == old) op1 = neww;
        if(op2 == old) op2 = neww;
    }

    @Override
    public void addstacklength(int len) {

    }

    @Override
    public HashSet<Reg> defs() {
        return new HashSet<>(Collections.singletonList(dest));
    }

    public String toString() {
        return opcode + " " + dest + ", " + op1 + ", " + op2;
    }
}
