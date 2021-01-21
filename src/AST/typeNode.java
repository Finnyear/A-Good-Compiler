package AST;

import Util.position;

public class typeNode extends ASTNode{
    public String typename;
    public int dim;
    public typeNode(position pos, String typename, int dim){
        super(pos);
        this.typename = typename;
        this.dim = dim;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
