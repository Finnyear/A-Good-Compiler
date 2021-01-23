package AST;

import Util.position;
import Util.globalScope;
import Util.Type;

public class typeNode extends ASTNode{
    public basictypeNode basictype;
    public int dim;
    public typeNode(position pos, basictypeNode basictype, int dim){
        super(pos);
        this.basictype = basictype;
        this.dim = dim;
    }

    public Type getType(globalScope global_scope){
        return new Type(global_scope.getType(basictype.name, pos).tp, global_scope.getType(basictype.name, pos).class_name, dim);
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
