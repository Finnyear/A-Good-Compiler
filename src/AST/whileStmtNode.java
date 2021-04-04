package AST;

import MIR.IRBlock;
import Util.position;

public class whileStmtNode extends StmtNode{
    public ExprNode whilecon;
    public StmtNode whilebody;
    public IRBlock condblock = null, endblock = null;

    public whileStmtNode(position pos, ExprNode whilecon, StmtNode whilebody){
        super(pos);
        this.whilecon = whilecon;
        this.whilebody = whilebody;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
