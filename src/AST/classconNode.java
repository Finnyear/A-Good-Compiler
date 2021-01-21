package AST;

import Util.position;

public class classconNode extends ASTNode{

    public classconNode(position pos){
        super(pos);

    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}

}
