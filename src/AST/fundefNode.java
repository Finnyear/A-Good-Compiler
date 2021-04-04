package AST;

import java.util.ArrayList;

import MIR.IRFunction;
import Util.position;

public class fundefNode extends PartNode{
    public typeNode type;
    public String name;
    public funparlistNode fun_par_list;
    public suiteNode suite;
    public IRFunction IRfunc;
    public boolean iscon = false;
    public fundefNode(position pos, typeNode type, String name, funparlistNode fun_par_list, suiteNode suite){
        super(pos);
        this.type = type;
        this.name = name;
        this.fun_par_list = fun_par_list;
        this.suite = suite;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}