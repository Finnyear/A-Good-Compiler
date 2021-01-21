package AST;

import Util.position;
public class forStmtNode extends StmtNode{
    public ExprNode forinit;
    public ExprNode forcon;
    public ExprNode forupd;
    public StmtNode forbody;

    public forStmtNode(position pos, ExprNode forinit, ExprNode forcon, ExprNode forupd, StmtNode forbody){
        super(pos);
        this.forinit = forinit;
        this.forcon = forcon;
        this.forupd = forupd;
        this.forbody = forbody;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
