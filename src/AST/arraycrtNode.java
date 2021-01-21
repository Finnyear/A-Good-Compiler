package AST;

import Util.position;

import java.util.ArrayList;

public class arraycrtNode extends ASTNode{
    public basictypeNode basictype;
    public ArrayList<ExprNode> dims;
    public int dim_num;

    public arraycrtNode(position pos, basictypeNode basictype){
        super(pos);
        this.basictype = basictype;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
