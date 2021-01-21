package AST;

import Util.position;
import jdk.jfr.Percentage;

import java.util.ArrayList;

public class funparlistNode extends ASTNode{
    public ArrayList<typeNode> types;
    public ArrayList<variableNode> variables;

    public funparlistNode(position pos){
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
