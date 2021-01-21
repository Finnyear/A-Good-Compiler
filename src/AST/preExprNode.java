package AST;

import Util.Type;
import Util.position;

public class preExprNode extends ExprNode{
    public ExprNode expr;
    public enum preop{
        add, sub, lnot, not
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
}
