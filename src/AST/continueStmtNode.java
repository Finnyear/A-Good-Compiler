package AST;

import Util.position;

public class continueStmtNode extends StmtNode{

    public ASTNode dest = null;

    public continueStmtNode(position pos){
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
