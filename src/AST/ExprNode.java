package AST;

import Util.Type;
import Util.position;

public abstract class ExprNode extends ASTNode {
    public Type type;
    public boolean is_assign;

    public ExprNode(position pos) {
        super(pos);
        is_assign = false;
    }

    public boolean isAssign() {
        return is_assign;
    }
}
