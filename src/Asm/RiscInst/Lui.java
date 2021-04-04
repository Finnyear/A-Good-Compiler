package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Imm;
import Asm.LOperand.Reg;

import java.util.Collections;
import java.util.HashSet;

public class Lui extends RiscInst{

    public Imm addr;

    public Lui(Imm addr, Reg dest, LBlock block){
        super(dest, block);
        this.addr = addr;
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
        return "lui " + dest + ", " + addr;
    }
}
