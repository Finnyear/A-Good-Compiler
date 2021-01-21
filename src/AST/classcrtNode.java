package AST;

import Util.position;

public class classcrtNode extends ASTNode{
    public basictypeNode basictype;

    public classcrtNode(position pos, basictypeNode basictype){
        super(pos);
        this.basictype = basictype;
    }

    @Override
    public void accept(ASTVisitor visitor) {
        visitor.visit(this);
    }
}
