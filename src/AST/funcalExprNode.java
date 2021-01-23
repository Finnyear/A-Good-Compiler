package AST;

import Util.Type;
import Util.position;

public class funcalExprNode extends ExprNode{
    public String name;
    public exprlistNode paras;

    public funcalExprNode(position pos, String name, exprlistNode paras){
        super(pos);
        this.name = name;
        this.paras = paras;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
