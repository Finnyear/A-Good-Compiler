package AST;

import Util.position;
import Util.varentity;

public class variableNode extends ASTNode{
    public String name;
    public ExprNode expr;
    public boolean isglobal = false;
    public varentity varent = null;
    public variableNode(position pos, String name, ExprNode expr){
        super(pos);
        this.name = name;
        this.expr = expr;
    }

    @Override public void accept(ASTVisitor visitor){visitor.visit(this);}
}
