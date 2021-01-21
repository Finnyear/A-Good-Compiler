package Frontend;

import AST.*;
import Util.Scope;
import Util.globalscope;
import Util.Type;
import Util.Type;

public class SymbolCollector implements ASTVisitor {
    private globalscope global_scope;
    public SymbolCollector(globalscope global_scope){this.global_scope = global_scope;}

    @Override
    public void visit(ProgramNode it){
        global_scope.addType("bool", new Type(Type.type.Bool, null, 0), it.pos);
        global_scope.addType("int", new Type(Type.type.Int, null, 0), it.pos);
        global_scope.addType("string", new Type(Type.type.String, null, 0), it.pos);
        global_scope.addType( "void", new Type(Type.type.Void, null, 0), it.pos);
        it.parts.forEach(partNode -> {
            if(partNode.classdef != null)
                partNode.classdef.accept(this);
        });
    }

    @Override
    public void visit(classdefNode it){
        global_scope.addType(it.name, new Type(Type.type.Class, it.name, 0), it.pos);
    }

    @Override public void visit(arraycrtNode it){}
    @Override public void visit(arrayExprNode it){}
    @Override public void visit(assignExprNode it){}
    @Override public void visit(atomExprNode it){}
    @Override public void visit(basiccrtNode it){}
    @Override public void visit(basictypeNode it){}
    @Override public void visit(binaryExprNode it){}
    @Override public void visit(blockNode it){}
    @Override public void visit(breakStmtNode it){}
    @Override public void visit(classconNode it){}
    @Override public void visit(classcrtNode it){}
    @Override public void visit(continueStmtNode it){}
    @Override public void visit(creatorNode it){}
    @Override public void visit(emptyStmtNode it){}
    @Override public void visit(exprlistNode it){}
    @Override public void visit(ExprNode it){}
    @Override public void visit(forStmtNode it){}
    @Override public void visit(funcalExprNode it){}
    @Override public void visit(fundefNode it){}
    @Override public void visit(funparlistNode it){}
    @Override public void visit(ifStmtNode it){}
    @Override public void visit(literalNode it){}
    @Override public void visit(memberExprNode it){}
    @Override public void visit(newExprNode it){}
    @Override public void visit(PartNode it){}
    @Override public void visit(preExprNode it){}
    @Override public void visit(primaryNode it){}
    @Override public void visit(pureExprStmtNode it){}
    @Override public void visit(returnStmtNode it){}
    @Override public void visit(StmtNode it){}
    @Override public void visit(sufExprNode it){}
    @Override public void visit(suiteNode it){}
    @Override public void visit(typeNode it){}
    @Override public void visit(vardefNode it){}
    @Override public void visit(vardefStmtNode it){}
    @Override public void visit(variableNode it){}
    @Override public void visit(whileStmtNode it){}
}
