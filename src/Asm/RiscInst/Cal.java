package Asm.RiscInst;

import Asm.LBlock;
import Asm.LFn;
import Asm.LOperand.Reg;
import Asm.LRoot;

import java.util.HashSet;

public class Cal extends RiscInst{
    public LFn callee;
    public LRoot root;

    public Cal(LFn callee, LRoot root, LBlock block){
        super(null, block);
        this.callee = callee;
        this.root = root;
    }

    @Override
    public HashSet<Reg> uses() {
        HashSet<Reg> ret = new HashSet<>();
        for(int i = 0; i < Integer.min(callee.params.size(), 8); i++)
            ret.add(root.getphyreg(10 + i));
        return ret;
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {

    }

    @Override
    public void addstacklength(int len) {

    }

    @Override
    public HashSet<Reg> defs() {
        return new HashSet<>(root.callersaveregs);
    }

    @Override
    public String toString() {
        return "call " + callee.name;
    }
}
