package AST;

import Util.position;
public class assignExprNode extends ExprNode{
    public ExprNode lv;
    public ExprNode rv;

    public assignExprNode(position pos, ExprNode lv, ExprNode rv){
        super(pos);
        this.lv = lv;
        this.rv = rv;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean isAssignable() {
        return true;
    }
}
