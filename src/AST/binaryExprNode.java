package AST;

import Util.Type;
import Util.position;

public class binaryExprNode extends ExprNode {
    public ExprNode lhs, rhs;
    public enum binaryop {
        add, sub, mul, div, mod, sla, sra, grt, les, geq, leq, eq, neq, land, lor, and, bor, xor
    }
    public binaryop op;

    public binaryExprNode(ExprNode lhs, ExprNode rhs, binaryop op, Type type, position pos) {
        super(pos);
        this.lhs = lhs;
        this.rhs = rhs;
        this.op = op;
        this.type = type;
    }
}
