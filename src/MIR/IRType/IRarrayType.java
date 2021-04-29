package MIR.IRType;

import MIR.IROperand.Null;

public class IRarrayType extends IRType{
    private int num;
    private IRType type;
    public IRarrayType(int num, IRType type){
        super();
        this.num = num;
        this.type = type;
    }

    @Override
    public int size() {
        return type.size();
    }

    @Override
    public String toString() {
        return "[ " + num +
                " x " + type.toString() +
                " ]";
    }

    @Override
    public boolean sameas(IRType other) {
        return (other instanceof IRarrayType && ((IRarrayType) other).type.sameas(this.type)) ||
                (other instanceof IRpointerType && (((IRpointerType) other).pointeeType.sameas(type) ||
                        ((IRpointerType) other).pointeeType instanceof IRvoidType));
    }
}
