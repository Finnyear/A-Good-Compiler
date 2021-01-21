package AST;

import Util.*;

public class constExprNode extends ExprNode{
    public Type type;
    public String val;

    public constExprNode(position pos, Type type, String val){
        super(pos);
        this.type = type;
        this.val = val;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
