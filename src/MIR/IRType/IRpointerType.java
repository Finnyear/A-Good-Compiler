package MIR.IRType;

public class IRpointerType extends IRType{
    public IRType pointeeType;
    public int dim;
    public boolean isresolvable;

    public IRpointerType(IRType pointeeType, boolean isresolvable){
        super();
//        System.out.println(pointeeType.toString());
        this.pointeeType = pointeeType;
        this.isresolvable = isresolvable;
    }

    @Override
    public int dim() {
        return dim;
    }

    @Override
    public boolean isresolvable(){return isresolvable;}

    @Override
    public int size() {
        return 32;
    }

    @Override
    public String toString() {
        return pointeeType.toString() + "*";
    }
}
