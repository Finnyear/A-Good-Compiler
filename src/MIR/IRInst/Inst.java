package MIR.IRInst;

import MIR.IRBlock;
import MIR.IROperand.Register;
import MIR.IROperand.entity;
import Util.IRMirror;

import java.util.HashSet;

abstract public class Inst {
    public Register dest = null;
    public Inst nxt = null, pre = null;
    public IRBlock block;

    public Inst(Register dest, IRBlock block){this.dest = dest; this.block = block;}

    public abstract void removeself(boolean isremovefromblock);
    public abstract void replaceentity(entity old, entity neww);
    public abstract HashSet<entity> uses();
    public abstract void addmirror(IRBlock block, IRMirror mirror);
    public abstract boolean nosideeffect();

    public abstract String toString();
}
