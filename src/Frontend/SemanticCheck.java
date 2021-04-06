package Frontend;

import AST.*;
import MIR.IRInst.Store;
import MIR.IROperand.GlobalVar;
import MIR.IROperand.Param;
import MIR.IROperand.Register;
import MIR.IROperand.intConst;
import MIR.IRType.IRType;
import MIR.IRType.IRclassType;
import MIR.IRType.IRpointerType;
import MIR.Root;
import Util.error.SemanticError;
import Util.position;
import Util.scope.Scope;
import Util.scope.globalScope;
import Util.type.Type;
import Util.type.arrayType;
import Util.type.classType;
import Util.type.funType;
import Util.varentity;

import java.util.ArrayList;

public class SemanticCheck implements ASTVisitor {

    public globalScope global_scope;
    public Scope current_scope;
    public classType current_class;
    public Type return_type;
    public fundefNode current_func;
    public int loopnum;
    public ASTNode current_loop = null;
    public Root IRroot;

    public SemanticCheck(globalScope global_scope, Root IRroot){
        this.global_scope = global_scope;
        this.current_scope = this.global_scope;
        loopnum = 0;
        this.IRroot = IRroot;
    }

    @Override public void visit(ProgramNode it){
        global_scope.addfun("print", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(global_scope.getType("string", new position(0, 0)));}}, false), it.pos);
        global_scope.addfun("println", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(global_scope.getType("string", new position(0, 0)));}}, false), it.pos);
        global_scope.addfun("printInt", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(new Type(Type.type.Int));}}, false), it.pos);
        global_scope.addfun("printlnInt", new funType(new Type(Type.type.Void), new ArrayList<>(){{add(new Type(Type.type.Int));}}, false), it.pos);
        global_scope.addfun("getString", new funType(global_scope.getType("string", new position(0, 0)), new ArrayList<>(), false), it.pos);
        global_scope.addfun("getInt", new funType(new Type(Type.type.Int), new ArrayList<>(), false), it.pos);
        global_scope.addfun("toString", new funType(global_scope.getType("string", new position(0, 0)), new ArrayList<>(){{add(new Type(Type.type.Int));}}, false), it.pos);
        global_scope.addfun("size", new funType(new Type(Type.type.Int), new ArrayList<>(){}, false), it.pos);

        it.parts.forEach(partNode -> {
            if(partNode.fundef != null) {
                fundefNode node = partNode.fundef;;
                ArrayList<Type> para = new ArrayList<>();
                node.fun_par_list.types.forEach(typeNode -> para.add(typeNode.getnewType(global_scope)));
                funType fun_type = new funType(node.type.getnewType(global_scope), para, false);
                if(node.name.equals("main")){
                    if(!node.fun_par_list.types.isEmpty())
                        throw new SemanticError("main function parameter wrong", node.pos);
                    if(node.type.getnewType(global_scope) != global_scope.getType("int", node.pos))
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
        if(it.vardef != null) {
//            System.out.println("vardef");
            it.vardef.accept(this);
        }
        if(it.fundef != null) it.fundef.accept(this);
        if(it.classdef != null) it.classdef.accept(this);
    }
    @Override public void visit(vardefNode it){
        Type var_type = it.type.getnewType(global_scope);
        if(var_type.tp == Type.type.Void || var_type.tp == Type.type.Null ||
                (var_type instanceof arrayType && ((arrayType) var_type).basictype.tp == Type.type.Void))
            throw new SemanticError("variable define type wrong", it.pos);
        it.variables.forEach(variableNode -> {
            if(current_scope instanceof globalScope) variableNode.isglobal = true;
            varentity varent = new varentity(variableNode.name, var_type, variableNode.isglobal);
            IRType IRtype = IRroot.getIRtype(var_type);
            if(current_class != null && current_func == null) {
//                System.out.println("name = " + variableNode.name);
                varent.ismember = true;
                varent.index = new intConst(current_class.setelement(var_type), 32);
            }

            if(variableNode.isglobal == true){
                GlobalVar reg = new GlobalVar(new IRpointerType(IRtype, true), variableNode.name);
                varent.operand = reg;
            }
            else{
                if(current_func == null){
                    if(IRtype instanceof IRclassType) IRtype = new IRpointerType(IRtype, false);
                    Register reg = new Register(new IRpointerType(IRtype, true), variableNode.name + "_addr");
                    varent.operand = reg;
                }
                else{
                    Register reg = new Register(new IRpointerType(IRtype, true), variableNode.name + "_addr");
                    varent.operand = reg;
                }
            }

            variableNode.varent = varent;
            if(variableNode.expr != null) {
                variableNode.expr.accept(this);
                if(variableNode.expr.type.cmp(var_type))
                    throw new SemanticError("define init type wrong", variableNode.pos);
            }
            if(current_scope.qryvar(variableNode.name, false))
                throw new SemanticError("variable redefined", variableNode.pos);
            current_scope.addvar(variableNode.name, var_type, variableNode.pos);
            current_scope.addentity(varent.name, varent);
//            System.out.println(variableNode.name);
        });
    }
    @Override public void visit(classdefNode it){
//        System.out.println("Class Visitor " + it.name);
        current_class = (classType) global_scope.getType(it.name, it.pos);
        current_scope = current_class.scope;

//        it.vardefs.forEach(vardefNode -> vardefNode.accept(this));
        it.fundefs.forEach(fundefNode -> fundefNode.accept(this));
        if(it.classcon != null)it.classcon.accept(this);

        current_scope = current_scope.parentScope;
        current_class = null;

    }
    @Override public void visit(fundefNode it){
        if(!it.iscon) {
            current_scope = new Scope(current_scope);
            funparlistNode para = it.fun_par_list;
//        System.out.println(para.variables.get(0).name + para.types.get(0).getnewType(global_scope).tp);

            for (int i = 0; i < para.types.size(); i++) {
                variableNode variableNode = para.variables.get(i);
                Type var_type = para.types.get(i).getnewType(global_scope);
                if(current_scope.qryvar(variableNode.name, false))
                    throw new SemanticError("variable redefined", variableNode.pos);
                current_scope.addvar(variableNode.name, var_type, para.pos);
                varentity varent = new varentity(variableNode.name, var_type, variableNode.isglobal);
                variableNode.varent = varent;
                current_scope.addentity(varent.name, varent);
                if(variableNode.expr != null) {
                    variableNode.expr.accept(this);
                    if(variableNode.expr.type.cmp(var_type))
                        throw new SemanticError("define init type wrong", variableNode.pos);
                }
            }
            return_type = it.type.getnewType(global_scope);
            current_func = it;
            it.suite.accept(this);
            current_func = null;
            return_type = null;
            current_scope = current_scope.getParentScope();
        }
        else{
            current_scope = new Scope(current_scope);
            return_type = global_scope.getType("void", it.pos);
            current_func = it;
            it.suite.accept(this);
            current_func = null;
            return_type = null;
            current_scope = current_scope.getParentScope();
        }
    }


    @Override public void visit(arraycrtNode it){
        for(ExprNode expr : it.dims){
            expr.accept(this);
            if(expr.type.cmp(global_scope.getType("int", expr.pos)))
                throw new SemanticError("array size type wrong", it.pos);
        }
        Type type = it.btype.getnewType(global_scope);
        if(!((arrayType)type).basictype.cmp(global_scope.getType("void", it.pos)))
            throw new SemanticError("array type wrong", it.pos);
        it.type = type;
    }
    @Override public void visit(arrayExprNode it){
        it.name.accept(this);
        if(!(it.name.type instanceof arrayType))
            throw new SemanticError("array expression type wrong", it.pos);
        it.dim.accept(this);
        if(it.dim.type.cmp(global_scope.getType("int", it.pos)))
            throw new SemanticError("array expression dimension wrong", it.pos);
        it.type = ((arrayType)it.name.type).subarray();

//        if(it.type instanceof arrayType){
//            System.out.println(((arrayType) it.type).dimision);
//        }
//        else{
//            System.out.println(it.type.tp);
//            System.out.println(it.type.class_name);
//            if(it.type instanceof classType){
//                System.out.println("Yes");
//            }
//            else{
//                System.out.println("No");
//            }
//            System.out.println("0");
//        }
    }
    @Override public void visit(assignExprNode it){
        it.lv.accept(this);
        it.rv.accept(this);
        if(!it.lv.isAssignable())
            throw new SemanticError("assign is invalid", it.pos);
        if(it.lv.type.cmp(it.rv.type))
            throw new SemanticError("assign type not match", it.pos);
        it.type = it.lv.type;
    }
    @Override public void visit(binaryExprNode it){
        it.lhs.accept(this);
        it.rhs.accept(this);
//        System.out.println(it.lhs.type.tp);
//        System.out.println(it.rhs.type.tp);
        if(it.lhs.type.cmp(it.rhs.type))
            throw new SemanticError("binary expression type not match", it.pos);
        switch (it.op){
            case land, lor -> {
                if(it.lhs.type.cmp(global_scope.getType("bool", it.pos)))
                    throw new SemanticError("logic operator type wrong", it.pos);
            }
            case eq, neq-> {}
            default -> {
                if(it.lhs.type.cmp(global_scope.getType("int", it.pos)) &&
                    it.lhs.type.cmp(global_scope.getType("string", it.pos)))
                    throw new SemanticError("binary operator type wrong", it.pos);
            }
        }
        switch (it.op){
            case grt, geq, les, leq, eq, neq -> {
//                System.out.println("bool");
                it.type = global_scope.getType("bool", it.pos);
            }
            default -> {
                it.type = it.lhs.type;
            }
        }
    }
    @Override public void visit(blockNode it){
        it.suite.accept(this);
    }
    @Override public void visit(breakStmtNode it){
        if(current_loop == null)
            throw new SemanticError("break position wrong", it.pos);
        it.dest = current_loop;
    }

    @Override public void visit(classcrtNode it){
        it.type = it.btype.getglobalType(global_scope);
        if(it.type == global_scope.getType("void", it.pos))
            throw new SemanticError("new class type wrong", it.pos);
    }
    @Override public void visit(constExprNode it){
        it.type = global_scope.getType(it.tp, it.pos);
    }
    @Override public void visit(continueStmtNode it){
        if(current_loop == null)
            throw new SemanticError("continue position wrong", it.pos);
        it.dest = current_loop;
    }
    @Override public void visit(forStmtNode it){
        if(it.forinit != null) it.forinit.accept(this);
        if(it.forcon != null) {
            it.forcon.accept(this);
            if(it.forcon.type.cmp(global_scope.getType("bool", it.forcon.pos)))
                throw new SemanticError("for condition type wrong", it.forcon.pos);
        }
        if(it.forupd != null) it.forupd.accept(this);
//        loopnum++;
        ASTNode up_loop = current_loop;
        current_loop = it;
        current_scope = new Scope(current_scope);
        if(it.forbody != null)it.forbody.accept(this);
//        loopnum--;
        current_loop = up_loop;
        current_scope = current_scope.getParentScope();
    }
    @Override public void visit(funcalExprNode it){
//        System.out.println(it.name);
        it.callee.accept(this);
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
//        System.out.println(it.name);
        it.type = funtype.returntype;
//        if(funtype.returntype instanceof arrayType){}
//        else {
//            System.out.println(it.type.tp + it.type.class_name);
//        }
//        System.out.println(it.name);
    }

    @Override
    public void visit(funcNode it){
        if(!current_scope.qryfun(it.name, true)) throw new SemanticError("no such function", it.pos);
        it.type = current_scope.getfunType(it.name, true);
    }
    @Override public void visit(ifStmtNode it){
        it.ifcon.accept(this);
        if(it.ifcon.type.cmp(global_scope.getType("bool", it.pos)))
            throw new SemanticError("if condition type wrong", it.ifcon.pos);
        if(it.ifbody != null) {
            current_scope = new Scope(current_scope);
            it.ifbody.accept(this);
            current_scope = current_scope.getParentScope();
        }
        if(it.elsebody != null) {
            current_scope = new Scope(current_scope);
            it.elsebody.accept(this);
            current_scope = current_scope.getParentScope();
        }
    }
    @Override public void visit(memberExprNode it) {
        it.tp.accept(this);
        if (it.tp.type instanceof arrayType) {
            if (it.mem instanceof funcalExprNode) {
                if(((funcalExprNode) it.mem).callee.name.equals("size")) {
                    it.mem.accept(this);
//                    it.mem.type = global_scope.getfunType("size", true);
                    it.type = it.mem.type;
                    return;
                }else {
                    throw new SemanticError("array type has no other member.", it.pos);
                }
            } else {
                throw new SemanticError("array type has no other member.", it.pos);
            }
        } else if (it.tp.type instanceof classType) {
            Scope tmp_scope;
//            System.out.println(it.pos.row() + " " + it.pos.col());
            if(current_scope == global_scope) tmp_scope = current_scope;
            else tmp_scope = current_scope.getcopy();///////////////////////////////////////////xiede shenme wanyi
            current_scope = ((classType) it.tp.type).scope;
            current_scope.parentScope = tmp_scope;
            if(it.mem instanceof varExprNode) {
                if(current_scope.qryvar(((varExprNode) it.mem).name, false)){
//                    System.out.println(((varExprNode) it.tp).name);
//                    System.out.println(((varExprNode) it.mem).name);
                    it.type = current_scope.getvarType(((varExprNode) it.mem).name, false);
                    it.varent = current_scope.getentity(((varExprNode) it.mem).name, false);
                }else throw new SemanticError("no such member", it.pos);
            }
            else if(it.mem instanceof funcalExprNode){
                if(current_scope.qryfun(((funcalExprNode) it.mem).name,false)){
                    it.mem.accept(this);
                    it.type = it.mem.type;
                }else throw new SemanticError("no such member function", it.pos);
            }
            current_scope.parentScope = global_scope;
            current_scope = tmp_scope;
        }
        else throw new SemanticError("this type has no member", it.pos);
    }
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
            if ((it.op == preExprNode.preop.add || it.op == preExprNode.preop.sub) && !it.expr.isAssignable())
                throw new SemanticError("prefix expression is not assignable", it.pos);
            it.type = global_scope.getType("int", it.pos);
        }
    }
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
            Type type = it.expr.type;
//            if(type instanceof arrayType){
//                System.out.println(((arrayType) type).basictype.tp);
//                System.out.println(((arrayType) type).dimision);
//            }
            type = return_type;
//            if(type instanceof arrayType){
//                System.out.println(((arrayType) type).basictype.tp);
//                System.out.println(((arrayType) type).dimision);
//            }
            if(it.expr.type.cmp(return_type)) throw new SemanticError("return type wrong", it.expr.pos);
        }
        it.dest = current_func;
    }
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
        it.stmts.forEach(stmtNode -> {if(stmtNode != null)stmtNode.accept(this);});
        current_scope = current_scope.getParentScope();
    }
    @Override public void visit(thisExprNode it){
        if(current_class == null)
            throw new SemanticError("this pointer position wrong", it.pos);
        it.type = current_class;
    }
    @Override public void visit(vardefStmtNode it){
        it.vardef.accept(this);
    }

    @Override public void visit(variableNode it){

    }
    @Override public void visit(varExprNode it) {
        varentity varent;
//        if(current_scope.con != null && current_scope.parentScope != global_scope)
//            varent = current_scope.parentScope.getentity(it.name, true);
//        else
            varent = current_scope.getentity(it.name, true);
//        if(varent == null){
//            System.out.println(it.name);
//        }
        it.varent = varent;
//        if(varent == null){
//            System.out.println("???");
//        }
        if(!current_scope.qryvar(it.name, true))
            throw new SemanticError("no such variable", it.pos);
        it.type = current_scope.getvarType(it.name, true);
    }

    @Override public void visit(whileStmtNode it){
        it.whilecon.accept(this);
        if(it.whilecon.type.cmp(global_scope.getType("bool", it.whilecon.pos)))
            throw new SemanticError("for condition type wrong", it.whilecon.pos);
//        loopnum++;
        ASTNode up_loop = current_loop;
        current_loop = it;
        current_scope = new Scope(current_scope);
        if(it.whilebody != null)it.whilebody.accept(this);
//        loopnum--;
        current_loop = up_loop;
        current_scope = current_scope.getParentScope();
    }
}
