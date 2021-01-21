package AST;

import Util.position;

public class variableNode extends ASTNode{
    public String name;
    public ExprNode expr;

    public variableNode(position pos, String name, ExprNode expr){
        super(pos);
        this.name = name;
        this.expr = expr;
    }

    @Override public void accept(ASTVisitor visitor){visitor.visit(this);}
}
