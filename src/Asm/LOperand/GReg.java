package Asm.LOperand;

public class GReg extends Reg{
    private int sz;
    public String name;
    public GReg(int sz, String name){
        super();
        this.sz = sz;
        this.name = name;
    }


    @Override
    public String toString() {
        return name;
    }
}