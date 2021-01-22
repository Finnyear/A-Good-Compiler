package AST;

import Util.position;
import java.util.ArrayList;

public class classdefNode extends PartNode{
    public String name;
    public ArrayList<vardefNode> vardefs = new ArrayList<>();
    public ArrayList<fundefNode> fundefs = new ArrayList<>();
    public ArrayList<classconNode> classcons = new ArrayList<>();
    public classdefNode(position pos, String name){
        super(pos);
        this.name = name;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
