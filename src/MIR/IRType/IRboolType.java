package MIR.IRType;

public class IRboolType extends IRType{

    public IRboolType(){super();}

    @Override
    public int size() {
        return 8;
    }

    @Override
    public String toString() {
        return "i1";
    }

    @Override
    public boolean sameas(IRType other) {
        return other instanceof IRboolType;
    }
}
