package Asm.RiscInst;

import Asm.LBlock;
import Asm.LOperand.Imm;
import Asm.LOperand.Reg;
import Asm.LOperand.SLImm;

import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;

public class IType extends RiscInst{

    public Reg op1;
    public Imm imm;
    public Calcategory opcode;

    public IType(Reg op1, Imm imm, Calcategory opcode, Reg dest, LBlock block){
        super(dest, block);
        this.imm = imm;
        this.op1 = op1;
        this.opcode = opcode;
    }


    @Override
    public HashSet<Reg> uses() {
        return new HashSet<>(Collections.singletonList(op1));
    }

    @Override
    public void replaceuse(Reg old, Reg neww) {
        if(op1 == old) op1 = neww;
    }

    @Override
    public void addstacklength(int len) {
        if(imm instanceof SLImm)
            imm = new Imm(len * (((SLImm)imm).reverse ? -1 : 1) + imm.val);
    }

    @Override
    public HashSet<Reg> defs() {
        return new HashSet<>(Collections.singletonList(dest));
    }

    @Override
    public String toString() {
        return opcode + "i " + dest + ", " + op1 + ", " + imm.val;
    }
}
