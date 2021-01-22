package Frontend;

import AST.*;
import Util.*;

import java.util.ArrayList;

public class SemanticCheck implements ASTVisitor {

    public globalScope global_scope;
    public Scope current_scope;

    public SemanticCheck(globalScope global_scope){
        this.global_scope = global_scope;
        this.current_scope = global_scope;
    }

    @Override public void visit(ProgramNode it){
        global_scope.addfun("print", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(new Type(Type.type.String));}}), it.pos);
        global_scope.addfun("println", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(new Type(Type.type.String));}}), it.pos);
        global_scope.addfun("printInt", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(new Type(Type.type.Int));}}), it.pos);
        global_scope.addfun("printlnInt", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(new Type(Type.type.Int));}}), it.pos);
        global_scope.addfun("getString", new funType(new Type(Type.type.String), new ArrayList<>()), it.pos);
        global_scope.addfun("getInt", new funType(new Type(Type.type.Int), new ArrayList<>()), it.pos);
        global_scope.addfun("toString", new funType(new Type(Type.type.String), new ArrayList<>(){{add(new Type(Type.type.Int));}}), it.pos);
    }
    @Override public void visit(classdefNode it){}
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
