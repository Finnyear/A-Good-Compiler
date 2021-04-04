package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.GReg;
import Asm.LOperand.Reg;

import java.util.Collections;
import java.util.HashSet;

public class La extends RiscInst{
    public GReg src;

    public La(GReg src, Reg dest, LBlock block){
        super(dest, block);
        this.src = src;
    }

    @Override
    public HashSet<Reg> uses() {
        return new HashSet<>();
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {

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
        return "la " + dest + ", " + src;
    }
}
