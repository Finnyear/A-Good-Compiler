package AST;

public interface ASTVisitor {
    void visit(arraycrtNode it);
    void visit(arrayExprNode it);
    void visit(assignExprNode it);
    void visit(binaryExprNode it);
    void visit(blockNode it);
    void visit(breakStmtNode it);
    void visit(classcrtNode it);
    void visit(classdefNode it);
    void visit(constExprNode it);
    void visit(continueStmtNode it);
    void visit(forStmtNode it);
    void visit(funcalExprNode it);
    void visit(fundefNode it);
    void visit(funcNode it);
    void visit(ifStmtNode it);
    void visit(memberExprNode it);
    void visit(PartNode it);
    void visit(preExprNode it);
    void visit(ProgramNode it);
    void visit(pureExprStmtNode it);
    void visit(returnStmtNode it);
    void visit(sufExprNode it);
    void visit(suiteNode it);
    void visit(thisExprNode it);
    void visit(vardefNode it);
    void visit(vardefStmtNode it);
    void visit(varExprNode it);
    void visit(variableNode it);
    void visit(whileStmtNode it);
}
