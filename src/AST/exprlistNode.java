package AST;

import Util.position;
import java.util.ArrayList;

public class exprlistNode extends ASTNode{
    public ArrayList<ExprNode> exprs = new ArrayList<>();

    public exprlistNode(position pos){
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor) {
    }
}
