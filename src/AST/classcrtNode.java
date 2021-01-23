package AST;

import Util.position;

public class classcrtNode extends ExprNode{
    public typeNode btype;

    public classcrtNode(position pos, typeNode btype){
        super(pos);
        this.btype = btype;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
