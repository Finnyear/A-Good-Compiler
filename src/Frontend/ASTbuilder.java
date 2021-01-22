package Frontend;


import AST.*;
import Parser.MxBaseVisitor;
import Parser.MxParser;
import Util.*;
import Util.error.SemanticError;

public class ASTbuilder extends MxBaseVisitor<ASTNode> {
    private globalScope global_scope;

    public ASTbuilder(globalScope global_scope){
        this.global_scope = global_scope;
    }

    @Override
    public ASTNode visitProgram(MxParser.ProgramContext ctx){
        ProgramNode rt = new ProgramNode(new position(ctx));
        ctx.part().forEach(partContext -> rt.parts.add((PartNode) visit(partContext)));
        return rt;
    }

    @Override
    public ASTNode visitPart(MxParser.PartContext ctx){
        PartNode node = new PartNode(new position(ctx));
        if(ctx.var_def() != null) node.vardef = (vardefNode) visit(ctx.var_def());
        if(ctx.fun_def() != null) node.fundef = (fundefNode) visit(ctx.fun_def());
        if(ctx.class_def() != null) node.classdef = (classdefNode) visit(ctx.class_def());
        return node;
    }

    @Override
    public ASTNode visitVar_def(MxParser.Var_defContext ctx){
        vardefNode node = new vardefNode(new position(ctx), (typeNode) visit(ctx.type()));
        ctx.variable().forEach(variableContext -> node.variables.add((variableNode) visit(variableContext)));
        return node;
    }

    @Override
    public ASTNode visitFun_def(MxParser.Fun_defContext ctx){
        fundefNode node = new fundefNode(new position(ctx), (typeNode) visit(ctx.type()), ctx.Identifier().toString(),
        (funparlistNode) visit(ctx.fun_par_list()), (suiteNode) visit(ctx.suite()));
        return node;
    }

    @Override
    public ASTNode visitClass_def(MxParser.Class_defContext ctx) {
        classdefNode node = new classdefNode(new position(ctx), ctx.Identifier().toString());
        ctx.var_def().forEach(var_defContext -> node.vardefs.add((vardefNode) visit(var_defContext)));
        ctx.fun_def().forEach(fun_defContext -> node.fundefs.add((fundefNode) visit(fun_defContext)));
        ctx.class_con().forEach(class_conContext -> node.classcons.add((classconNode) visit(class_conContext)));
        return node;
    }

    @Override
    public ASTNode visitClass_con(MxParser.Class_conContext ctx) {
        classconNode node = new classconNode(new position(ctx), ctx.Identifier().toString(),
                            (funparlistNode) visit(ctx.fun_par_list()), (suiteNode) visit(ctx.suite()));
        return node;
    }

    @Override
    public ASTNode visitFun_par_list(MxParser.Fun_par_listContext ctx) {
        funparlistNode node = new funparlistNode(new position(ctx));
        ctx.type().forEach(typeContext -> node.types.add((typeNode) visit(typeContext)));
        ctx.variable().forEach(variableContext -> node.variables.add((variableNode) visit(variableContext)));
        return node;
    }

    @Override
    public ASTNode visitVariable(MxParser.VariableContext ctx) {
        variableNode node = new variableNode(new position(ctx), ctx.Identifier().toString(),
                            ctx.expression() == null ? null : (ExprNode) visit(ctx.expression()));
        return node;
    }

    @Override
    public ASTNode visitType(MxParser.TypeContext ctx) {
        typeNode node = new typeNode(new position(ctx), (basictypeNode) visit(ctx.basic_type()), 0);
        return node;
    }

    @Override
    public ASTNode visitBasic_type(MxParser.Basic_typeContext ctx) {
        basictypeNode node = new basictypeNode(new position(ctx), ctx.toString());
        return node;
    }

    @Override
    public ASTNode visitArraycreator(MxParser.ArraycreatorContext ctx) {
        arraycrtNode node = new arraycrtNode(new position(ctx), (basictypeNode) visit(ctx.basic_type()));
        ctx.expression().forEach(expressionContext -> node.dims.add((ExprNode) visit(expressionContext)));
        node.dim_num = ctx.LBracket().size();
        return node;
    }

    @Override
    public ASTNode visitClasscreator(MxParser.ClasscreatorContext ctx) {
        classcrtNode node = new classcrtNode(new position(ctx), (basictypeNode) visit(ctx.basic_type()));
        return node;
    }

    @Override
    public ASTNode visitInvalidcreator(MxParser.InvalidcreatorContext ctx) {
        throw new SemanticError("invalid creator", new position(ctx));
    }

    @Override
    public ASTNode visitSuite(MxParser.SuiteContext ctx) {
        suiteNode node = new suiteNode(new position(ctx));
        ctx.statement().forEach(statementContext -> node.stmts.add((StmtNode) visit(statementContext)));
        return node;
    }

    @Override
    public ASTNode visitBlock(MxParser.BlockContext ctx) {
        blockNode node = new blockNode(new position(ctx), (suiteNode) visit(ctx.suite()));
        return node;
    }

    @Override
    public ASTNode visitVardefStmt(MxParser.VardefStmtContext ctx) {
        vardefStmtNode node = new vardefStmtNode(new position(ctx), (vardefNode) visit(ctx.var_def()));
        return node;
    }

    @Override
    public ASTNode visitIfStmt(MxParser.IfStmtContext ctx) {
        ifStmtNode node = new ifStmtNode(new position(ctx), (ExprNode) visit(ctx.ifcondition),
                (StmtNode) visit(ctx.ifbody), ctx.elsebody == null ? null : (StmtNode) visit(ctx.elsebody));
        return node;
    }

    @Override
    public ASTNode visitWhileStmt(MxParser.WhileStmtContext ctx) {
        whileStmtNode node = new whileStmtNode(new position(ctx), (ExprNode) visit(ctx.whilecondition),
                (StmtNode) visit(ctx.whilebody));
        return node;
    }

    @Override
    public ASTNode visitForStmt(MxParser.ForStmtContext ctx) {
        forStmtNode node = new forStmtNode(new position(ctx), (ExprNode) visit(ctx.forinit),
                (ExprNode) visit(ctx.forcondition), (ExprNode) visit(ctx.forupdate), (StmtNode) visit(ctx.forbody));
        return node;
    }

    @Override
    public ASTNode visitReturnStmt(MxParser.ReturnStmtContext ctx) {
        returnStmtNode node = new returnStmtNode(new position(ctx), (ExprNode) visit(ctx.expression()));
        return node;
    }

    @Override
    public ASTNode visitBreakStmt(MxParser.BreakStmtContext ctx) {
        breakStmtNode node = new breakStmtNode(new position(ctx));
        return node;
    }

    @Override
    public ASTNode visitContinueStmt(MxParser.ContinueStmtContext ctx) {
        continueStmtNode node = new continueStmtNode(new position(ctx));
        return node;
    }

    @Override
    public ASTNode visitPureExprStmt(MxParser.PureExprStmtContext ctx) {
        pureExprStmtNode node = new pureExprStmtNode(new position(ctx), (ExprNode) visit(ctx.expression()));
        return node;
    }

    @Override
    public ASTNode visitAtomExpr(MxParser.AtomExprContext ctx) {
//        atomExprNode node = new atomExprNode(new position(ctx), visit(ctx.primary()));
        return visit(ctx.primary());
    }

    @Override
    public ASTNode visitPrimary(MxParser.PrimaryContext ctx) {
        if(ctx.expression() != null) return visit(ctx.expression());
        if(ctx.literal() != null) return visit(ctx.literal());
        return new varExprNode(new position(ctx), ctx.Identifier().toString());
    }

    @Override
    public ASTNode visitLiteral(MxParser.LiteralContext ctx) {
        if(ctx.This() != null) return new thisExprNode(new position(ctx));
        if(ctx.Null() != null) return new constExprNode(new position(ctx),
                new Type(Type.type.Null, null, 0), ctx.Null().toString());
        if(ctx.ConstInteger() != null) return new constExprNode(new position(ctx),
                new Type(Type.type.Int, null, 0), ctx.ConstInteger().toString());
        if(ctx.ConstBool() != null) return new constExprNode(new position(ctx),
                new Type(Type.type.Bool, null, 0), ctx.ConstBool().toString());
        if(ctx.ConstString() != null) return new constExprNode(new position(ctx),
                new Type(Type.type.String, null, 0), ctx.ConstString().toString());
        return null;
    }

    @Override
    public ASTNode visitNewExpr(MxParser.NewExprContext ctx) {
        return visit(ctx.creator());
    }

    @Override
    public ASTNode visitMemberExpr(MxParser.MemberExprContext ctx) {
        memberExprNode node = new memberExprNode(new position(ctx), (ExprNode) visit(ctx.expression()), ctx.Identifier().toString());
        return node;
    }

    @Override
    public ASTNode visitExpressionlist(MxParser.ExpressionlistContext ctx) {
        exprlistNode node = new exprlistNode(new position(ctx));
        ctx.expression().forEach(expressionContext -> node.exprs.add((ExprNode) visit(expressionContext)));
        return node;
    }

    @Override
    public ASTNode visitFuncalExpr(MxParser.FuncalExprContext ctx) {
        funcalExprNode node = new funcalExprNode(new position(ctx), (ExprNode) visit(ctx.expression()),
                ctx.expressionlist() == null ? null : (exprlistNode) visit(ctx.expressionlist()));
        return node;
    }

    @Override
    public ASTNode visitArrayExpr(MxParser.ArrayExprContext ctx) {
        arrayExprNode node = new arrayExprNode(new position(ctx),
                (ExprNode) visit(ctx.expression(0)), (ExprNode) visit(ctx.expression(1)));
        return node;
    }

    @Override
    public ASTNode visitPrefixExpr(MxParser.PrefixExprContext ctx) {
        preExprNode node = new preExprNode(new position(ctx), (ExprNode) visit(ctx.expression()));
        switch (ctx.op.toString()){
            case "++" -> node.op = preExprNode.preop.add;
            case "--" -> node.op = preExprNode.preop.sub;
            case "!" -> node.op = preExprNode.preop.lnot;
            case "~" -> node.op = preExprNode.preop.not;
        }
        return node;
    }

    @Override
    public ASTNode visitSuffixExpr(MxParser.SuffixExprContext ctx) {
        sufExprNode node = new sufExprNode(new position(ctx), (ExprNode) visit(ctx.expression()));
        switch (ctx.op.toString()){
            case "++" -> node.op = sufExprNode.sufop.add;
            case "--" -> node.op = sufExprNode.sufop.sub;
        }
        return node;
    }

    @Override
    public ASTNode visitBinaryExpr(MxParser.BinaryExprContext ctx) {
        binaryExprNode node = new binaryExprNode(new position(ctx),
                (ExprNode) visit(ctx.expression(0)), (ExprNode) visit(ctx.expression(1)));
        switch (ctx.op.toString()){
            case "+" -> node.op = binaryExprNode.binaryop.add;
            case "-" -> node.op = binaryExprNode.binaryop.sub;
            case "*" -> node.op = binaryExprNode.binaryop.mul;
            case "/" -> node.op = binaryExprNode.binaryop.div;
            case "%" -> node.op = binaryExprNode.binaryop.mod;
            case "<<" -> node.op = binaryExprNode.binaryop.sla;
            case ">>" -> node.op = binaryExprNode.binaryop.sra;
            case ">" -> node.op = binaryExprNode.binaryop.grt;
            case ">=" -> node.op = binaryExprNode.binaryop.geq;
            case "<" -> node.op = binaryExprNode.binaryop.les;
            case "<=" -> node.op = binaryExprNode.binaryop.leq;
            case "==" -> node.op = binaryExprNode.binaryop.eq;
            case "!=" -> node.op = binaryExprNode.binaryop.neq;
            case "&&" -> node.op = binaryExprNode.binaryop.land;
            case "||" -> node.op = binaryExprNode.binaryop.lor;
            case "&" -> node.op = binaryExprNode.binaryop.and;
            case "|" -> node.op = binaryExprNode.binaryop.or;
            case "^" -> node.op = binaryExprNode.binaryop.xor;
        }
        return node;
    }

    @Override
    public ASTNode visitAssignExpr(MxParser.AssignExprContext ctx) {
        assignExprNode node = new assignExprNode(new position(ctx),
                (ExprNode) visit(ctx.expression(0)), (ExprNode) visit(ctx.expression(1)));
        return node;
    }
}
