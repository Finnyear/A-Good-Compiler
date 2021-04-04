package Asm.LOperand;

public class Imm extends Lentity{
    public int val;

    public Imm(int val){this.val = val;}

    @Override
    public String toString() {
        return "" + val;
    }
}
