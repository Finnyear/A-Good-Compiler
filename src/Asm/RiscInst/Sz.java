package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Reg;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;

public class Sz extends RiscInst{
    public Reg op1;
    public Ezcategory opcode;

    public Sz(Reg op1, Ezcategory opcode, Reg dest, LBlock block){
        super(dest, block);
        this.op1 = op1;
        this.opcode = opcode;
    }

    @Override
    public HashSet<Reg> uses() {
        return new HashSet<>(Collections.singletonList(op1));
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {
        if(op1 == old) op1 = neww;
    }

    @Override
    public void addstacklength(int len) {

    }

    @Override
    public HashSet<Reg> defs() {
        return new HashSet<>(Collections.singletonList(dest));
    }

    @Override
    public String toString() {
        return "s" + opcode + "z " + dest + ", " + op1;
    }
}
