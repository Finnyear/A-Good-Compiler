package AST;

import Util.position;

public class preExprNode extends ExprNode{
    public ExprNode expr;
    public enum preop{
        add, sub, lnot, not, pls, mns
    }
    public preop op;

    public  preExprNode(position pos, ExprNode expr){
        super(pos);
        this.expr = expr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean isAssignable() {
        return op == preop.add || op == preop.sub;
    }
}
