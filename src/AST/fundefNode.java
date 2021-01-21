package AST;

import java.util.ArrayList;
import Util.position;

public class fundefNode extends PartNode{
    public typeNode type;
    public funparlistNode fun_par_list;
    public fundefNode(position pos, typeNode type){
        super(pos);
        this.type = type;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}