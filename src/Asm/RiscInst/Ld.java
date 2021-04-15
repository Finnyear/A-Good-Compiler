package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.GReg;
import Asm.LOperand.Imm;
import Asm.LOperand.Reg;
import Asm.LOperand.SLImm;

import java.util.Collections;
import java.util.HashSet;

public class Ld extends RiscInst{
    public Reg addr;
    public int sz;
    public Imm offset;

    public Ld(Reg addr, int sz, Imm offset, Reg dest, LBlock block){
        super(dest, block);
        this.addr = addr;
        this.sz = sz;
        this.offset = offset;
    }

    @Override
    public HashSet<Reg> uses() {
        HashSet<Reg> ret = new HashSet<>();
        if(!(addr instanceof GReg)) ret.add(addr);
        return ret;
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {
        if(addr == old) addr = neww;
    }

    @Override
    public void addstacklength(int len) {
        if(offset instanceof SLImm)
            offset = new Imm(len + offset.val);
    }

    @Override
    public HashSet<Reg> defs() {
        return new HashSet<>(Collections.singletonList(dest));
    }

    @Override
    public String toString() {
        return "l" + ((sz == 1) ? "b" : ((sz == 2) ? "h" : "w")) + " " + dest
                + ", " + offset + "(" + addr + ")";
//        return "l" + ((sz == 1) ? "b" : ((sz == 2) ? "h" : "w")) + " " + dest
//                + ", " + ((addr instanceof GReg) ? addr : (offset + "(" + addr + ")"));
    }
}
