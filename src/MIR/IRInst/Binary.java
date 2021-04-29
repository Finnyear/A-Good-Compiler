package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import Util.IRMirror;

import java.util.HashSet;

public class Binary extends Inst{

    public enum Opcode{
        add, sub, mul, sdiv, srem, shl, ashr, and, or, xor
    }
    public Opcode opcode;
    public entity op1, op2;
    public boolean commutable;

    public Binary(Opcode opcode, entity op1, entity op2, Register dest, IRBlock block){
        super(dest, block);
        this.opcode = opcode;
        this.op1 = op1;
        this.op2 = op2;
        op1.adduse(this);
        op2.adduse(this);
        dest.def = this;
        commutable = (opcode == Opcode.add) || (opcode == Opcode.mul) ||
                (opcode == Opcode.and) || (opcode == Opcode.or) || (opcode == Opcode.xor);
    }


    @Override
    public void removeself(boolean bo) {
        op1.removeuse(this);
        op2.removeuse(this);
        if(bo) block.removeinst(this);
    }

    @Override
    public void replaceentity(entity old, entity neww) {
        if(op1 == old) op1 = neww;
        if(op2 == old) op2 = neww;
    }

    @Override
    public HashSet<entity> uses() {
        HashSet<entity> ret = new HashSet<>();
        ret.add(op1); ret.add(op2);
        return ret;
    }

    @Override
    public void addmirror(IRBlock block, IRMirror mirror) {
        block.addinst(new Binary(opcode, mirror.opMir(op1), mirror.opMir(op2), (Register) mirror.opMir(dest), block));
    }

    @Override
    public boolean nosideeffect() {
        return true;
    }


    @Override
    public String toString() {
        return dest.toString() + " = " + opcode.toString() + " " +
                op1.type.toString() + " " + op1.toString() + ", " + op2.toString();
    }
}
