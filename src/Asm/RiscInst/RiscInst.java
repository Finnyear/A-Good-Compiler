package Asm.RiscInst;
import Asm.LBlock;
import Asm.LOperand.Reg;
import MIR.Root;

import java.util.HashSet;

public abstract class RiscInst {
    public enum Calcategory{
        add, sub, slt, xor, or, and, sll, srl, sra, mul, div, rem
    }
    public enum Ezcategory{
        eq, ne, le, ge, lt, gt;
    }

    public Reg dest;
    public LBlock block;
    public RiscInst nxt = null, pre = null;

    public RiscInst(Reg dest, LBlock block){
        this.dest = dest;
        this.block = block;
    }

    public void replacedest(Reg old, Reg neww){
        if(this.dest == old) this.dest = neww;
    }

    public void removeSelf(){
        if(nxt == null) block.tail = pre;
        else nxt.pre = pre;
        if(pre == null) block.head = nxt;
        else pre.nxt = nxt;
    }

    public void addpre(RiscInst add){
        add.pre = pre;
        add.nxt = this;
        if(pre == null) block.head = add;
        else pre.nxt = add;
        pre = add;
    }

    public void addnxt(RiscInst add){
        add.nxt = nxt;
        add.pre = this;
        if(nxt == null) block.tail = add;
        else nxt.pre = add;
        nxt = add;
    }

    public void replaceby(RiscInst neww){
        neww.pre = pre;
        neww.nxt = nxt;
        if(pre == null) block.head = neww;
        else pre.nxt = neww;
        if(nxt == null) block.tail = neww;
        else nxt.pre = neww;
    }

    public abstract HashSet<Reg> uses();
    public abstract void replaceuse(Reg old, Reg neww);
    public abstract void addstacklength(int len);
    public abstract HashSet<Reg> defs();

    public abstract String toString();
}
