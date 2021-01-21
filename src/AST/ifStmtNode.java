package AST;

import Util.position;
public class ifStmtNode extends StmtNode{
    public ExprNode ifcon;
    public StmtNode ifbody;
    public StmtNode elsebody;

    public ifStmtNode(position pos, ExprNode ifcon, StmtNode ifbody, StmtNode elsebody){
        super(pos);
        this.ifcon = ifcon;
        this.ifbody = ifbody;
        this.elsebody = elsebody;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
