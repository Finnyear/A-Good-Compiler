package AST;

import Util.position;

public class atomExprNode extends ExprNode{
    public primaryNode primary;
    public atomExprNode(position pos, primaryNode primary){
        super(pos);
        this.primary = primary;
    }

    @Override
    public void accept(ASTVisitor visitor) {
    }
}
