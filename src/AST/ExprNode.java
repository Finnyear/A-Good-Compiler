package AST;

import MIR.IRBlock;
import MIR.IROperand.entity;
import Util.scope.Scope;
import Util.type.Type;
import Util.position;

public abstract class ExprNode extends ASTNode {
    public Type type;

    public entity operand = null, address = null;

    public IRBlock ifblock = null, elseblock = null;

    public fundefNode bel = null;
    public suiteNode suite = null;

    public ExprNode(position pos) {
        super(pos);
    }

    public boolean isAssignable() {
        return false;
    }
}
