package AST;

import Util.position;

public class classconNode extends ASTNode{

    String name;
    funparlistNode fun_par_list;
    suiteNode suite;

    public classconNode(position pos, String name, funparlistNode fun_par_list, suiteNode suite){
        super(pos);
        this.name = name;
        this.fun_par_list = fun_par_list;
        this.suite = suite;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}

}