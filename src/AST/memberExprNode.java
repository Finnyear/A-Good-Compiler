package AST;

import Util.position;
public class memberExprNode extends ExprNode{
    public ExprNode tp, mem;

    public memberExprNode(position pos, ExprNode tp, ExprNode mem){
        super(pos);
        this.tp = tp;
        this.mem = mem;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
