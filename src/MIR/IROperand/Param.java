package MIR.IROperand;

import MIR.IRInst.Inst;
import MIR.IRType.IRType;

import java.util.HashSet;

public class Param extends entity{
    public String name;
    public HashSet<Inst> uses = new HashSet<>();

    public Param(IRType type, String name){
        super(type);
        this.name = name;
    }

    @Override
    public String toString() {
        return "%" + name;
    }

    @Override
    public HashSet<Inst> uses() {
        return uses;
    }

    @Override
    public void adduse(Inst inst) {
        uses.add(inst);
    }

    @Override
    public void removeuse(Inst inst) {
        uses.remove(inst);
    }
}