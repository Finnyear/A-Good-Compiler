package AST;

import Util.position;

public class funcNode extends ExprNode{

    public String name;

    public funcNode(String name, position pos) {
        super(pos);
        this.name = name;
    }


    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
