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
    public int loopnum;

    public SemanticCheck(globalScope global_scope){
        this.global_scope = global_scope;
        this.current_scope = this.global_scope;
        loopnum = 0;
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
            if(variableNode.expr != null) {
                variableNode.expr.accept(this);
                if(variableNode.expr.type.cmp(var_type))
                    throw new SemanticError("define init type wrong", variableNode.pos);
            }
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
    @Override public void visit(variableNode it){}//
    @Override public void visit(arraycrtNode it){
        for(ExprNode expr : it.dims){
            expr.accept(this);
            if(expr.type.cmp(global_scope.getType("int", expr.pos)))
                throw new SemanticError("array size type wrong", it.pos);
        }
        Type type = global_scope.getType(it.basictype.name, it.pos);
        if(!type.cmp(global_scope.getType("void", it.pos)))
            throw new SemanticError("array type wrong", it.basictype.pos);
        it.type = new Type(type.tp, null, it.dim_num);
    }
    @Override public void visit(arrayExprNode it){}
    @Override public void visit(assignExprNode it){
        it.lv.accept(this);
        it.rv.accept(this);
        if(!it.lv.isAssignable())
            throw new SemanticError("assign is invalid", it.pos);
        if(it.lv.type.cmp(it.rv.type))
            throw new SemanticError("assign type not match", it.pos);
        it.type = it.lv.type;
    }
    @Override public void visit(atomExprNode it){}
    @Override public void visit(basiccrtNode it){}//
    @Override public void visit(basictypeNode it){}//
    @Override public void visit(binaryExprNode it){
        it.lhs.accept(this);
        it.rhs.accept(this);
        if(it.lhs.type.cmp(it.rhs.type))
            throw new SemanticError("binary expression type not match", it.pos);
        switch (it.op){
            case land, lor -> {
                if(it.lhs.type.cmp(global_scope.getType("bool", it.pos)))
                    throw new SemanticError("logic operator type wrong", it.pos);
            }
            default -> {
                if(it.lhs.type.cmp(global_scope.getType("int", it.pos)) &&
                    it.lhs.type.cmp(global_scope.getType("string", it.pos)))
                    throw new SemanticError("binary operator type wrong", it.pos);
            }
        }
        it.type = it.lhs.type;
    }
    @Override public void visit(blockNode it){
        it.suite.accept(this);
    }
    @Override public void visit(breakStmtNode it){
        if(loopnum == 0)
            throw new SemanticError("break position wrong", it.pos);
    }
    @Override public void visit(classconNode it){
        it.suite.accept(this);
    }
    @Override public void visit(classcrtNode it){
        it.type = global_scope.getType(it.basictype.name, it.pos);
        if(it.type == global_scope.getType("void", it.pos))
            throw new SemanticError("new class type wrong", it.pos);
    }
    @Override public void visit(constExprNode it){
        it.type = global_scope.getType(it.tp, it.pos);
    }
    @Override public void visit(continueStmtNode it){
        if(loopnum == 0)
            throw new SemanticError("continue position wrong", it.pos);
    }
    @Override public void visit(creatorNode it){}
    @Override public void visit(emptyStmtNode it){}//
    @Override public void visit(exprlistNode it){}//
    @Override public void visit(ExprNode it){}//
    @Override public void visit(forStmtNode it){
        if(it.forinit != null) it.forinit.accept(this);
        if(it.forcon != null) {
            it.forcon.accept(this);
            if(!it.forcon.type.cmp(global_scope.getType("bool", it.forcon.pos)))
                throw new SemanticError("for condition type wrong", it.forcon.pos);
        }
        if(it.forupd != null) it.forupd.accept(this);
        loopnum++;
        it.forbody.accept(this);
        loopnum--;
    }
    @Override public void visit(funcalExprNode it){
//        System.out.println(it.name);
        if(!current_scope.qryfun(it.name, true))
            throw new SemanticError("no such function", it.pos);
        funType funtype = (funType) current_scope.getfunType(it.name, true);
        if((it.paras == null ? 0 : it.paras.exprs.size()) != funtype.paras.size())
            throw new SemanticError("function call parameter number wrong", it.pos);
        for(int i = 0; i < (it.paras == null ? 0 : it.paras.exprs.size()); i++){
            it.paras.exprs.get(i).accept(this);
            if(it.paras.exprs.get(i).type.cmp(funtype.paras.get(i)))
                throw new SemanticError("function call parameter not match", it.paras.exprs.get(i).pos);
        }
        it.type = funtype;
    }
    @Override public void visit(funparlistNode it){}//
    @Override public void visit(ifStmtNode it){
        it.ifcon.accept(this);
        if(it.ifcon.type.cmp(global_scope.getType("bool", it.pos)))
            throw new SemanticError("if condition type wrong", it.ifcon.pos);
        current_scope = new Scope(current_scope);
        it.ifbody.accept(this);
        current_scope = current_scope.getParentScope();
        if(it.elsebody != null) {
            current_scope = new Scope(current_scope);
            it.elsebody.accept(this);
            current_scope = current_scope.getParentScope();
        }
    }
    @Override public void visit(literalNode it){}//
    @Override public void visit(memberExprNode it){
        it.tp.accept(this);
        current_scope = new Scope(current_scope);
        if(it.tp.type.dimension > 0){
            current_scope.addfun("size", new funType(global_scope.getType("int", it.pos), new ArrayList<>()), it.pos);
        }
        else if(it.tp.type.tp == Type.type.Class){
            ((classType) it.tp.type).vars.forEach((varname, vartype) -> current_scope.addvar(varname, vartype, it.pos));
            ((classType) it.tp.type).funs.forEach((funname, funtype) -> current_scope.addfun(funname, funtype, it.pos));
            ((classType) it.tp.type).cons.forEach((conname, contype) -> current_scope.addfun(conname, contype, it.pos));
        }
        else if(it.tp.type.tp == Type.type.String){
            current_scope.addfun("length", new funType(global_scope.getType("int", it.pos), new ArrayList<>()), it.pos);
            current_scope.addfun("substring", new funType(global_scope.getType("string", it.pos),
                    new ArrayList<>(){{
                        add(global_scope.getType("int", it.pos));
                        add(global_scope.getType("int", it.pos));
            }}), it.pos);
            current_scope.addfun("parseInt", new funType(global_scope.getType("int", it.pos), new ArrayList<>()), it.pos);
            current_scope.addfun("ord", new funType(global_scope.getType("int", it.pos),
                    new ArrayList<>(){{
                        add(global_scope.getType("int", it.pos));
                    }}), it.pos);
        }
        it.mem.accept(this);
        it.type = it.mem.type;
        current_scope = current_scope.getParentScope();
    }
    @Override public void visit(newExprNode it){}//
    @Override public void visit(preExprNode it){
        it.expr.accept(this);
        if(it.op == preExprNode.preop.lnot){
            if (it.expr.type.cmp(global_scope.getType("bool", it.pos)))
                throw new SemanticError("prefix expression type wrong", it.pos);
            it.type = global_scope.getType("bool", it.pos);
        }
        else {
            if (it.expr.type.cmp(global_scope.getType("int", it.pos)))
                throw new SemanticError("prefix expression type wrong", it.pos);
            if (it.op != preExprNode.preop.not && !it.expr.isAssignable())
                throw new SemanticError("prefix expression is not assignable", it.pos);
            it.type = global_scope.getType("int", it.pos);
        }
    }
    @Override public void visit(primaryNode it){}//
    @Override public void visit(pureExprStmtNode it){
        it.expr.accept(this);
    }
    @Override public void visit(returnStmtNode it){
        if(return_type == null)
            throw new SemanticError("return position wrong", it.pos);
        if(return_type.tp == Type.type.Void){
            if(it.expr != null) throw new SemanticError("redundant return value", it.expr.pos);
        }
        else{
            if(it.expr == null) throw new SemanticError("missing return value", it.pos);
            it.expr.accept(this);
            if(it.expr.type.cmp(return_type)) throw new SemanticError("return type wrong", it.expr.pos);
        }
    }
    @Override public void visit(StmtNode it){}//
    @Override public void visit(sufExprNode it){
        it.expr.accept(this);
        if(it.expr.type.cmp(global_scope.getType("int", it.pos)))
            throw new SemanticError("suffix expression type wrong", it.pos);
        if(!it.expr.isAssignable())
            throw new SemanticError("suffix expression is not assignable", it.pos);
        it.type = global_scope.getType("int", it.pos);
    }
    @Override public void visit(suiteNode it){
        current_scope = new Scope(current_scope);
        it.stmts.forEach(stmtNode -> stmtNode.accept(this));
        current_scope = current_scope.getParentScope();
    }
    @Override public void visit(thisExprNode it){
        if(current_class == null)
            throw new SemanticError("this pointer position wrong", it.pos);
        it.type = current_class;
    }
    @Override public void visit(typeNode it){}//
    @Override public void visit(vardefStmtNode it){
        it.vardef.accept(this);
    }

    @Override public void visit(varExprNode it) {
        if(!current_scope.qryvar(it.name, true))
            throw new SemanticError("no such variable", it.pos);
        it.type = current_scope.getvarType(it.name, true);
    }

    @Override public void visit(whileStmtNode it){
        it.whilecon.accept(this);
        if(!it.whilecon.type.cmp(global_scope.getType("bool", it.whilecon.pos)))
            throw new SemanticError("for condition type wrong", it.whilecon.pos);
        loopnum++;
        it.whilebody.accept(this);
        loopnum--;
    }
}
