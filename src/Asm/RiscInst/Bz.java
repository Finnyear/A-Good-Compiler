package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Reg;

import java.util.Collections;
import java.util.HashSet;

public class Bz extends RiscInst{
    public Reg op1;
    public Ezcategory opcode;
    public LBlock destblock;
    public Bz(Reg op1, Ezcategory opcode, LBlock destblock, LBlock block){
        super(null, block);
        this.op1 = op1;
        this.opcode = opcode;
        this.destblock = destblock;
    }

    public void replacedestblock(LBlock old, LBlock neww){
        if(destblock == old) destblock = neww;
    }

    @Override
    public HashSet<Reg> uses() {
        return new HashSet<Reg>(Collections.singletonList(op1));
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
        return new HashSet<>();
    }

    @Override
    public String toString() {
        return "b" + opcode + "z " + op1 + ", " + destblock;
    }
}
