package AST;

import Util.position;
public class blockNode extends StmtNode{
    public suiteNode suite;
    public blockNode(position pos, suiteNode suite){
        super(pos);
        this.suite = suite;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
