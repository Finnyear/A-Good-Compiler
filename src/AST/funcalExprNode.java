package AST;

import Util.position;

public class funcalExprNode extends ExprNode{
    public ExprNode name;
    public exprlistNode paras;

    public funcalExprNode(position pos, ExprNode name, exprlistNode paras){
        super(pos);
        this.name = name;
        this.paras = paras;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}