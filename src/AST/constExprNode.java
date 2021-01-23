package AST;

import Util.*;

public class constExprNode extends ExprNode{
    public String tp;
    public String val;

    public constExprNode(position pos, String tp, String val){
        super(pos);
        this.tp = tp;
        this.val = val;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
