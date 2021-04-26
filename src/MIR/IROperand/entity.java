package MIR.IROperand;

import MIR.IRInst.Inst;
import MIR.IRType.IRType;

import java.util.HashSet;

public abstract class entity {
    public IRType type;
    public entity(IRType type){this.type = type;}

//    public abstract String toString();

    public abstract HashSet<Inst> uses();
    public abstract void adduse(Inst inst);
    public abstract void removeuse(Inst inst);
    public abstract entity copy();
}
