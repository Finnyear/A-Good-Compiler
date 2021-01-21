package AST;

import Util.position;
public class vardefStmtNode extends StmtNode{
    public vardefNode vardef;

    public vardefStmtNode(position pos, vardefNode vardef){
        super(pos);
        this.vardef = vardef;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
