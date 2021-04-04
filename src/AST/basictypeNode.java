package AST;

import Util.position;

public class basictypeNode extends ExprNode{
    public String name;
    public basictypeNode(position pos, String name){
        super(pos);
        this.name = name;
    }

    @Override
    public void accept(ASTVisitor visitor) {
    }
}
