package AST;

import Util.position;

public class typeNode extends ASTNode{
    public basictypeNode basictype;
    public int dim;
    public typeNode(position pos, basictypeNode basictype, int dim){
        super(pos);
        this.basictype = basictype;
        this.dim = dim;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
