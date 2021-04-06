package Frontend;

import AST.*;
import MIR.IRType.IRclassType;
import MIR.Root;
import Util.position;
import Util.scope.Scope;
import Util.type.classType;
import Util.scope.globalScope;
import Util.type.Type;
import Util.type.funType;

import java.util.ArrayList;

public class SymbolCollector implements ASTVisitor {
    private globalScope global_scope;
    public Root IRroot;
    public SymbolCollector(globalScope global_scope, Root IRroot){this.global_scope = global_scope;this.IRroot = IRroot;}

    @Override
    public void visit(ProgramNode it){
        global_scope.addType("bool", new Type(Type.type.Bool, null), it.pos);
        global_scope.addType("int", new Type(Type.type.Int, null), it.pos);
        global_scope.addType( "void", new Type(Type.type.Void, null), it.pos);
        global_scope.addType( "null", new Type(Type.type.Null, null), it.pos);
        it.parts.forEach(partNode -> {
            if(partNode.classdef != null)
                partNode.classdef.accept(this);
        });
        global_scope.addType("string", new classType(Type.type.Class, "string"), it.pos);
        classType stringType = (classType) global_scope.getType("string", new position(0, 0));
        stringType.scope = new Scope(global_scope);
        Scope current_scope = stringType.scope;

        current_scope.addfun("length", new funType(global_scope.getType("int", it.pos), new ArrayList<>(), true), it.pos);
        current_scope.addfun("substring", new funType(global_scope.getType("string", it.pos),
                new ArrayList<>(){{
                    add(global_scope.getType("int", it.pos));
                    add(global_scope.getType("int", it.pos));
                }}, true), it.pos);
        current_scope.addfun("parseInt", new funType(global_scope.getType("int", it.pos), new ArrayList<>(), true), it.pos);
        current_scope.addfun("ord", new funType(global_scope.getType("int", it.pos),
                new ArrayList<>(){{
                    add(global_scope.getType("int", it.pos));
                }}, true), it.pos);
    }

    @Override
    public void visit(classdefNode it){
        classType type = new classType(Type.type.Class, it.name);
        global_scope.addType(it.name, type, it.pos);
        IRroot.classtypes.put(it.name, (IRclassType) global_scope.getIRType(type));
    }

    @Override public void visit(arraycrtNode it){}
    @Override public void visit(arrayExprNode it){}
    @Override public void visit(assignExprNode it){}
    @Override public void visit(binaryExprNode it){}
    @Override public void visit(blockNode it){}
    @Override public void visit(breakStmtNode it){}
    @Override public void visit(classcrtNode it){}
    @Override public void visit(constExprNode it){}
    @Override public void visit(continueStmtNode it){}
    @Override public void visit(forStmtNode it){}
    @Override public void visit(funcalExprNode it){}
    @Override public void visit(fundefNode it){}

    @Override
    public void visit(funcNode it) {}

    @Override public void visit(ifStmtNode it){}
    @Override public void visit(memberExprNode it){}
    @Override public void visit(PartNode it){}
    @Override public void visit(preExprNode it){}
    @Override public void visit(pureExprStmtNode it){}
    @Override public void visit(returnStmtNode it){}
    @Override public void visit(sufExprNode it){}
    @Override public void visit(suiteNode it){}
    @Override public void visit(thisExprNode it){}
    @Override public void visit(vardefNode it){}
    @Override public void visit(vardefStmtNode it){}
    @Override public void visit(varExprNode it){}
    @Override public void visit(variableNode it) {}
    @Override public void visit(whileStmtNode it){}
}
