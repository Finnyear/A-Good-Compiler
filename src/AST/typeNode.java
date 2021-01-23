package AST;

import Util.arrayType;
import Util.position;
import Util.classType;
import Util.globalScope;
import Util.Type;

public class typeNode extends ExprNode{
//    public basictypeNode basictype;
    public String name;
    public int dim;
    public typeNode(position pos, String name, int dim){
        super(pos);
        this.name = name;
        this.dim = dim;
    }

    public Type getglobalType(globalScope global_scope){
        return global_scope.getType(name, pos);
    }
    public Type getnewType(globalScope global_scope){
        Type type = global_scope.getType(name, pos);
//        if(type instanceof classType){
//            System.out.println(name);
//            System.out.println("class type okey");
//        }
//        System.out.println(dim);
        return this.dim == 0 ? type : new arrayType(type, this.dim);
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
