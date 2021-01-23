package Frontend;

import AST.*;
import Util.*;
import Util.error.SemanticError;

import java.util.ArrayList;
import java.util.HashMap;


public class ClassCreator implements ASTVisitor {

    public globalScope global_scope;
    public classType classType;
    public String name;

    public ClassCreator(globalScope global_scope){
        this.global_scope = global_scope;
    }

    @Override
    public void visit(ProgramNode it){
        it.parts.forEach(partNode -> {
            if(partNode.classdef != null) visit(partNode);
        });
    }

    @Override public void visit(PartNode it){
        if(it.vardef != null) it.vardef.accept(this);
        if(it.fundef != null) it.fundef.accept(this);
        if(it.classdef != null) it.classdef.accept(this);
    }

    @Override
    public void visit(classdefNode it){
//        System.out.println("Class Creator " + it.name);
        classType = (classType) global_scope.getType(it.name, it.pos);
        name = it.name;
        classType.vars = new HashMap<>();
        classType.funs = new HashMap<>();
        classType.cons = new HashMap<>();
        it.vardefs.forEach(vardefNode -> visit(vardefNode));
        it.fundefs.forEach(fundefNode -> visit(fundefNode));
        it.classcons.forEach(classconNode -> visit(classconNode));
    }

    @Override
    public void visit(vardefNode it){
        Type vartype = it.type.getnewType(global_scope);
        for(variableNode var: it.variables){
            String varname = var.name;
            if(classType.vars.containsKey(varname))
                throw new SemanticError("variable redefined", it.pos);
            if(varname.equals(name))
                throw new SemanticError("variable named wrong", it.pos);
            classType.vars.put(varname, vartype);
        }
    }

    @Override
    public void visit(fundefNode it){
        if(it.name.equals(name))
            throw new SemanticError("function named wrong", it.pos);
        ArrayList<Type> para = new ArrayList<>();
        it.fun_par_list.types.forEach(typeNode -> para.add(typeNode.getnewType(global_scope)));
        classType.funs.put(it.name, new funType(it.type.getnewType(global_scope), para));
    }

    @Override
    public void visit(classconNode it){
        if(!it.name.equals(name))
            throw new SemanticError("constructor function named wrong", it.pos);
//        if(!it.fun_par_list.types.isEmpty())
//            throw new SemanticError("constructor parameter wrong", it.pos);
        classType.cons.put(it.name, new funType(global_scope.getType("void", it.pos), new ArrayList<>()));
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
    @Override public void visit(classcrtNode it){}
    @Override public void visit(constExprNode it){}
    @Override public void visit(continueStmtNode it){}
    @Override public void visit(creatorNode it){}
    @Override public void visit(emptyStmtNode it){}
    @Override public void visit(exprlistNode it){}
    @Override public void visit(ExprNode it){}
    @Override public void visit(forStmtNode it){}
    @Override public void visit(funcalExprNode it){}
    @Override public void visit(funparlistNode it){}
    @Override public void visit(ifStmtNode it){}
    @Override public void visit(literalNode it){}
    @Override public void visit(memberExprNode it){}
    @Override public void visit(newExprNode it){}
    @Override public void visit(preExprNode it){}
    @Override public void visit(primaryNode it){}
    @Override public void visit(pureExprStmtNode it){}
    @Override public void visit(returnStmtNode it){}
    @Override public void visit(StmtNode it){}
    @Override public void visit(sufExprNode it){}
    @Override public void visit(suiteNode it){}
    @Override public void visit(thisExprNode it){}
    @Override public void visit(typeNode it){}
    @Override public void visit(vardefStmtNode it){}
    @Override public void visit(variableNode it){}
    @Override public void visit(varExprNode it){}
    @Override public void visit(whileStmtNode it){}
}
