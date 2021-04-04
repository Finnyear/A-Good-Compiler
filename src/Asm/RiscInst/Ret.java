package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Reg;
import Asm.LRoot;

import java.util.Collections;
import java.util.HashSet;

public class Ret extends RiscInst{
    public LRoot root;

    public Ret(LRoot root, LBlock block){
        super(null, block);
        this.root = root;
    }

    @Override
    public HashSet<Reg> uses() {
        return new HashSet<>(Collections.singletonList(root.getphyreg(1)));
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
        return "ret";
    }
}
