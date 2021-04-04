package AST;

import Util.position;

public class binaryExprNode extends ExprNode {
    public ExprNode lhs, rhs;
    public enum binaryop {
        add, sub, mul, div, mod, sla, sra, grt, les, geq, leq, eq, neq, land, lor, and, or, xor
    }
    public binaryop op;

    public binaryExprNode(position pos, ExprNode lhs, ExprNode rhs) {
        super(pos);
        this.lhs = lhs;
        this.rhs = rhs;
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
