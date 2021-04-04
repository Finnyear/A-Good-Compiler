package MIR.IRType;

public class IRintType extends IRType{
    private int size;

    public IRintType(int size){
        super();
        this.size = size;
    }

    @Override
    public int size() {
        return size;
    }

    @Override
    public String toString() {
        return "i" + size;
    }
}
