package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Reg;

import java.util.HashSet;

public class Br extends RiscInst{
    public enum Brcategory{
        eq, ne, lt, ge
    }
    public Reg op1, op2;
    public Brcategory opcode;
    public LBlock destBlock;

    public Br(Reg op1, Reg op2, Brcategory opcode, LBlock destBlock, LBlock block){
        super(null, block);
        this.op1 = op1;
        this.op2 = op2;
        this.opcode = opcode;
        this.destBlock = destBlock;
    }

    public void replacedestblock(LBlock old, LBlock neww){
        if(destBlock == old)
            destBlock = neww;
    }

    @Override
    public HashSet<Reg> uses() {
        HashSet<Reg> ret = new HashSet<>();
        ret.add(op1);
        ret.add(op2);
        return ret;
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {
        if(op1 == old) op1 = neww;
        if(op2 == old) op2 = neww;
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
        return "b" + opcode + " " + op1 + ", " + op2 + ", " + destBlock;
    }



}
