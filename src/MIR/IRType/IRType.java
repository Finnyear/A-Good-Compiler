package MIR.IRType;

abstract public class IRType {
    public IRType(){}

    public boolean isresolvable(){return false;}
    public int dim(){return 0;};
    public abstract int size();
    public abstract String toString();
}
