package AST;

import Util.position;

public class sufExprNode extends ExprNode{
    public ExprNode expr;
    public enum sufop{
        add, sub
    }
    public sufExprNode.sufop op;

    public  sufExprNode(position pos, ExprNode expr){
        super(pos);
        this.expr = expr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
