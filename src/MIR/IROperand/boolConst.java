package MIR.IROperand;

import MIR.IRInst.Inst;
import MIR.IRType.IRType;
import MIR.IRType.IRboolType;

import java.util.HashSet;

public class boolConst extends entity{
    private boolean val;

    public boolConst(boolean val){
        super(new IRboolType());
        this.val = val;
    }

    public boolean value(){return val;}

    @Override
    public String toString() {
        return val ? "1" : "0";
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
}
