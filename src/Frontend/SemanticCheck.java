package Frontend;

import AST.*;
import Util.*;
import Util.error.SemanticError;

import java.util.ArrayList;

public class SemanticCheck implements ASTVisitor {

    public globalScope global_scope;
    public Scope current_scope;
    public classType current_class;
    public Type return_type;

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
        it.parts.forEach(partNode -> {
            if(partNode.fundef != null) {
                fundefNode node = partNode.fundef;;
                ArrayList<Type> para = new ArrayList<>();
                node.fun_par_list.types.forEach(typeNode -> para.add(global_scope.getType(typeNode.basictype.name, node.pos)));
//                System.out.println(node.type.basictype.name);
                funType fun_type = new funType(global_scope.getType(node.type.basictype.name, node.pos), para);
                if(node.name.equals("main")){
                    if(!node.fun_par_list.types.isEmpty())
                        throw new SemanticError("main function parameter wrong", node.pos);
                    if(global_scope.getType(node.type.basictype.name, it.pos).tp != Type.type.Int)
                        throw new SemanticError("main function return type wrong", node.pos);
                }
                global_scope.addfun(node.name, fun_type, node.pos);
            }
        });
        if(!global_scope.qryfun("main", true))
            throw new SemanticError("no main function", it.pos);
        it.parts.forEach(partNode -> partNode.accept(this));
    }
    @Override public void visit(PartNode it){
        if(it.vardef != null) it.vardef.accept(this);
        if(it.fundef != null) it.fundef.accept(this);
        if(it.classdef != null) it.classdef.accept(this);
    }
    @Override public void visit(vardefNode it){
        Type var_type = global_scope.getType(it.type.basictype.name, it.pos);
        if(var_type.tp == Type.type.Void || var_type.tp == Type.type.Null)
            throw new SemanticError("variable define type wrong", it.pos);
        it.variables.forEach(variableNode -> {
            variableNode.accept(this);
            if(!variableNode.expr.type.cmp(var_type))
                throw new SemanticError("define init type wrong", variableNode.pos);
            if(current_scope.qryvar(variableNode.name, false))
                throw new SemanticError("variable redefined", variableNode.pos);
            current_scope.addvar(variableNode.name, var_type, variableNode.pos);
        });
    }
    @Override public void visit(classdefNode it){
        current_class = (classType) global_scope.getType(it.name, it.pos);
        current_scope = new Scope(current_scope);
        current_class.vars.forEach((varname, vartype) -> current_scope.addvar(varname, vartype, it.pos));
        current_class.funs.forEach((funname, funtype) -> current_scope.addfun(funname, funtype, it.pos));
        current_class.cons.forEach((conname, contype) -> current_scope.addfun(conname, contype, it.pos));
        it.fundefs.forEach(fundefNode -> fundefNode.accept(this));
        current_scope = current_scope.getParentScope();
        current_class = null;
    }
    @Override public void visit(fundefNode it){
        current_scope = new Scope(current_scope);
        funparlistNode para = it.fun_par_list;
        for(int i = 0; i < para.types.size(); i++)
            current_scope.addvar(para.variables.get(i).name, para.types.get(i).getType(global_scope), para.pos);
        return_type = it.type.getType(global_scope);
        it.suite.accept(this);
        return_type = null;
        current_scope = current_scope.getParentScope();
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
    @Override public void visit(typeNode it){}
    @Override public void visit(vardefStmtNode it){}
    @Override public void visit(variableNode it){}
    @Override public void visit(whileStmtNode it){}
}
