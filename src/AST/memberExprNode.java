package AST;

import MIR.IROperand.entity;
import Util.position;
public class memberExprNode extends ExprNode{
    public ExprNode tp, mem;

    public int memoff;
    public String memname;
    public entity memoperand;

    public memberExprNode(position pos, ExprNode tp, ExprNode mem){
        super(pos);
        this.tp = tp;
        this.mem = mem;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean isAssignable() {
        return mem.isAssignable();
    }
}
