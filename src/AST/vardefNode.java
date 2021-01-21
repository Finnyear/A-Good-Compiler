package AST;

import java.util.ArrayList;
import Util.position;

public class vardefNode extends PartNode{
    public typeNode type;
    public ArrayList<variableNode> variables;
    public vardefNode(position pos, typeNode type){
        super(pos);
        this.type = type;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
