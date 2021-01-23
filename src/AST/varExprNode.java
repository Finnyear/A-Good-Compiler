package AST;

import Util.position;
public class varExprNode extends ExprNode{
    public String name;
    public varExprNode(position pos, String name){
        super(pos);
        this.name = name;
//        System.out.println(name);
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
