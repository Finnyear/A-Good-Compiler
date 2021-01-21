package AST;

import Util.position;
public class returnStmtNode extends StmtNode{
    public ExprNode expr;

    public returnStmtNode(position pos, ExprNode expr){
        super(pos);
        this.expr = expr;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
