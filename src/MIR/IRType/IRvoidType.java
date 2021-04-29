package MIR.IRType;

import Util.error.myError;
import Util.position;

public class IRvoidType extends IRType{
    public IRvoidType(){
        super();
    }

    @Override
    public int size() {
        throw new myError("cannot calculate the size of void type", new position(0, 0));
    }

    @Override
    public String toString() {
        return "void";
    }

    @Override
    public boolean sameas(IRType other) {
        return other instanceof IRvoidType;
    }
}
