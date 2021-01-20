package AST;

import Util.position
import java.util.ArrayList;

public class classdefNode extends PartNode{
    public String name;
    public ArrayList<vardefNode> vardefs;
    public ArrayList<fundefNode> fundefs;
    public ArrayList<classconNode> classcons;
    public classdefNode(position pos, String name){
        super(pos);
        this.name = name;
    }
}
