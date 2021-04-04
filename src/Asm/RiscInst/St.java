package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.GReg;
import Asm.LOperand.Imm;
import Asm.LOperand.Reg;
import Asm.LOperand.SLImm;

import java.util.HashSet;

public class St extends RiscInst{
    public Reg addr, val;
    public Imm offset;
    public int sz;

    public St(Reg addr, Reg val, Imm offset, int sz, LBlock block){
        super(null, block);
        this.addr = addr;
        this.val = val;
        this.offset = offset;
        this.sz = sz;
    }


    @Override
    public HashSet<Reg> uses() {
        HashSet<Reg> ret = new HashSet<>();
        if(!(addr instanceof GReg)) ret.add(addr);
        ret.add(val);
        return ret;
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {
        if(addr == old) addr = neww;
        if(val == old) val = neww;
    }

    @Override
    public void addstacklength(int len) {
        if(offset instanceof SLImm)
            offset = new Imm(len + offset.val);
    }

    @Override
    public HashSet<Reg> defs() {
        return new HashSet<>();
    }

    @Override
    public String toString() {
        return "s" + ((sz == 1) ? "b" : ((sz == 2) ? "h" : "w")) + " "
                + val + ", " + offset + "(" + addr + ")";
    }
}
