package Frontend;

import AST.*;
import MIR.IROperand.GlobalVar;
import MIR.IROperand.Register;
import MIR.IROperand.intConst;
import MIR.IRType.IRType;
import MIR.IRType.IRclassType;
import MIR.IRType.IRpointerType;
import MIR.Root;
import Util.error.SemanticError;
import Util.scope.Scope;
import Util.scope.globalScope;
import Util.type.Type;
import Util.type.arrayType;
import Util.type.classType;
import Util.type.funType;
import Util.varentity;

import java.util.ArrayList;
import java.util.HashMap;


public class ClassCreator implements ASTVisitor {

    public globalScope global_scope;
    public Util.type.classType classType;
    public String name;
    public IRclassType currentIRclass;
    public Scope current_scope;
    public Root IRroot;

    public ClassCreator(globalScope global_scope, Root IRroot){
        this.global_scope = global_scope;
        this.IRroot = IRroot;
    }

    @Override
    public void visit(ProgramNode it){
        it.parts.forEach(partNode -> {
            if(partNode.classdef != null) visit(partNode.classdef);
        });
    }

    @Override public void visit(PartNode it){}

    @Override
    public void visit(classdefNode it){
        classType = (classType) global_scope.getType(it.name, it.pos);
        classType.scope = new Scope(global_scope);
        current_scope = classType.scope;
        currentIRclass = (IRclassType) global_scope.getIRType(classType);
        name = it.name;
        it.vardefs.forEach(vardefNode -> vardefNode.accept(this));
        it.fundefs.forEach(fundefNode -> fundefNode.accept(this));
        if(it.classcon != null)it.classcon.accept(this);
    }

    @Override
    public void visit(vardefNode it){
        Type var_type = it.type.getnewType(global_scope);
        if(var_type.tp == Type.type.Void || var_type.tp == Type.type.Null ||
                (var_type instanceof arrayType && ((arrayType) var_type).basictype.tp == Type.type.Void))
            throw new SemanticError("variable define type wrong", it.pos);
        for(variableNode var: it.variables){
            String varname = var.name;
            if(classType.scope.vars.containsKey(varname))
                throw new SemanticError("variable redefined", it.pos);
            if(varname.equals(name))
                throw new SemanticError("variable named wrong", it.pos);
            current_scope.vars.put(varname, var_type);
            classType.Indexes.put(varname, classType.cnt++);
            varentity varent = new varentity(varname, var_type, false);
            varent.ismember = true;
            varent.index = new intConst(classType.setelement(var_type), 32);
            IRType type = IRroot.getIRtype(var_type, true);
            currentIRclass.addmember(type);

            if(type instanceof IRclassType) type = new IRpointerType(type, false);
            varent.operand = new Register(new IRpointerType(type, true), var.name + "_addr");

            var.varent = varent;
            current_scope.addentity(varname, varent);
        }
    }

    @Override
    public void visit(fundefNode it){
        if(!it.iscon) {
            if (it.name.equals(name))
                throw new SemanticError("function named wrong", it.pos);
            ArrayList<Type> para = new ArrayList<>();
            it.fun_par_list.types.forEach(typeNode -> para.add(typeNode.getnewType(global_scope)));
            current_scope.funs.put(it.name, new funType(it.type.getnewType(global_scope), para, true));
        }
        else {
            if(!it.name.equals(name))
                throw new SemanticError("constructor function named wrong", it.pos);
            current_scope.con = new funType(global_scope.getType("void", it.pos), new ArrayList<>(), true);
        }
    }

    @Override
    public void visit(funcNode it) {}

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
    @Override public void visit(ifStmtNode it){}
    @Override public void visit(memberExprNode it){}
    @Override public void visit(preExprNode it){}
    @Override public void visit(pureExprStmtNode it){}
    @Override public void visit(returnStmtNode it){}
    @Override public void visit(sufExprNode it){}
    @Override public void visit(suiteNode it){}
    @Override public void visit(thisExprNode it){}
    @Override public void visit(vardefStmtNode it){}
    @Override public void visit(varExprNode it){}
    @Override public void visit(variableNode it) {}
    @Override public void visit(whileStmtNode it){}
}
