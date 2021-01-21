package AST;

import Util.position;

public class arrayExprNode extends ExprNode{
    public ExprNode name;
    public ExprNode dim;

    public arrayExprNode(position pos, ExprNode name, ExprNode dim){
        super(pos);
        this.name = name;
        this.dim = dim;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
