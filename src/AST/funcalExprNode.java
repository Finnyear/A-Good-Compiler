package AST;

import Util.position;

public class funcalExprNode extends ExprNode{
    public String name;
    public exprlistNode paras;
    public funcNode callee;

    public funcalExprNode(position pos, funcNode callee, exprlistNode paras){
        super(pos);
        name = callee.name;
        this.callee = callee;
        this.paras = paras;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
