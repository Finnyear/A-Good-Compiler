package MIR.IROperand;

import MIR.IRInst.Inst;
import MIR.IRType.IRintType;
import MIR.IRType.IRpointerType;

import java.util.HashSet;

public class Null extends entity{
    public Null(){super(new IRpointerType(new IRintType(8), false));}

    @Override
    public String toString() {
        return "null";
    }

    @Override
    public HashSet<Inst> uses() {
        return new HashSet<>();
    }

    @Override
    public void adduse(Inst inst) {

    }

    @Override
    public void removeuse(Inst inst) {

    }


    @Override
    public entity copy() {
        return new Null();
    }
}
