package AST;

import Util.position;

public class classconNode extends ASTNode{

    public String name;
    public suiteNode suite;

    public classconNode(position pos, String name, suiteNode suite){
        super(pos);
        this.name = name;
        this.suite = suite;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}

}
