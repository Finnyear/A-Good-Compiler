package AST;

import MIR.IROperand.entity;
import Util.position;
import Util.varentity;

public class memberExprNode extends ExprNode{
    public ExprNode tp, mem;

    public int memoff;
    public String memname;
//    public entity memoperand;
    public varentity varent;

    public memberExprNode(position pos, ExprNode tp, ExprNode mem, String memname){
        super(pos);
        this.tp = tp;
        this.mem = mem;
        this.memname = memname;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }

    @Override
    public boolean isAssignable() {
        return mem.isAssignable();
    }
}
