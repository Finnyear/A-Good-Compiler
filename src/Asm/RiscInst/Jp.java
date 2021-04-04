package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Reg;

import java.util.HashSet;

public class Jp extends RiscInst{
    public LBlock destblock;

    public Jp(LBlock destblock, LBlock block){
        super(null, block);
        this.destblock = destblock;
    }

    public void replacedestblock(LBlock old, LBlock neww){
        if(destblock == old) destblock = neww;
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
        return new HashSet<>();
    }

    @Override
    public String toString() {
        return "j " + destblock;
    }
}
