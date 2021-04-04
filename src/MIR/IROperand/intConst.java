package MIR.IROperand;

import MIR.IRInst.Inst;
import MIR.IRType.IRintType;

import java.util.HashSet;

public class intConst extends entity{
    private int val;
    public intConst(int val, int size){
        super(new IRintType(size));
        this.val = val;
    }

    public int value(){return val;}

    @Override
    public String toString() {
        return "" + val;
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
