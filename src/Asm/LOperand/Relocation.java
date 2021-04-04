package Asm.LOperand;

public class Relocation extends Imm{
    public GReg relocated;
    public boolean high;
    public Relocation(GReg relocated, boolean high){
        super(0);
        this.relocated = relocated;
        this.high = high;
    }

    @Override
    public String toString() {
        return "%" + (high ? "hi" : "lo")
                + "(" + relocated + ")";
    }
}
