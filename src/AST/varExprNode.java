package AST;

import Util.position;
import Util.varentity;

public class varExprNode extends ExprNode{
    public String name;
    public varentity varent;
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


    @Override
    public String toString(){
        return "var(" + name + ")";
    }
}
