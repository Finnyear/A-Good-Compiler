package AST;

import Util.position;

public abstract class PartNode extends ASTNode{
    public vardefNode vardef;
    public fundefNode fundef;
    public classdefNode classdef;
    public PartNode(position pos) {
        super(pos);
    }

    @Override
    public void accept(ASTVisitor visitor){visitor.visit(this);}
}
