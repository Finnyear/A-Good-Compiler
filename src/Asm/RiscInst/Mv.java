package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Reg;

import java.util.Collections;
import java.util.HashSet;

public class Mv extends RiscInst{

    public Reg src;
    public Mv(Reg src, Reg dest, LBlock block){
        super(dest, block);
        this.src = src;
    }


    @Override
    public HashSet<Reg> uses() {
        return new HashSet<>(Collections.singletonList(src));
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {
        if(src == old) src = neww;
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
        return "mv " + dest + ", " + src;
    }
}
