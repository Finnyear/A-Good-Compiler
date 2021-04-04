package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Imm;
import Asm.LOperand.Reg;
import Asm.LOperand.SLImm;

import java.util.Collections;
import java.util.HashSet;

public class Li extends RiscInst{
    public Imm val;
    public Li(Imm val, Reg dest, LBlock block){
        super(dest, block);
        this.val = val;
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
        if(val instanceof SLImm)
            val = new Imm(val.val + len);
    }

    @Override
    public HashSet<Reg> defs() {
        return new HashSet<>(Collections.singletonList(dest));
    }

    @Override
    public String toString() {
        return null;
    }
}
