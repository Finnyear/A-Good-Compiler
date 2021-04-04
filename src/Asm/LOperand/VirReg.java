package Asm.LOperand;

public class VirReg extends Reg{
    public int sz;
    public String name;
    public VirReg(int sz, int name){
        super();
        this.sz = sz;
        this.name = name + "%";
    }

    @Override
    public String toString() {
        if(color == null) return name;
        return color.toString();
    }
}
