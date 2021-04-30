package AST;

import Util.position;
import Util.scope.Scope;

import java.util.ArrayList;

public class suiteNode extends StmtNode{
    public ArrayList<StmtNode> stmts = new ArrayList<>();

    public Scope scope = null;

    public suiteNode(position pos){
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
