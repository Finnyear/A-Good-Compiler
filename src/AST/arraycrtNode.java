package AST;

import Util.position;

import java.util.ArrayList;

public class arraycrtNode extends ExprNode{
    public typeNode btype;
    public ArrayList<ExprNode> dims = new ArrayList<>();

    public arraycrtNode(position pos, typeNode btype){
        super(pos);
        this.btype = btype;
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
