package AST;

import Util.position;
public class pureExprStmtNode extends StmtNode{
    public ExprNode expr;
    public pureExprStmtNode(position pos, ExprNode expr){
        super(pos);
        this.expr = expr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
