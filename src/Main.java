import Asm.LRoot;
import Backend.*;
import Frontend.ASTbuilder;
import Frontend.ClassCreator;
import Frontend.SemanticCheck;
import Frontend.SymbolCollector;
import MIR.Root;
import Parser.MxLexer;
import Parser.MxParser;
import Util.MxErrorListener;
import Util.error.Error;
import Util.scope.Scope;
import Util.scope.globalScope;
import AST.ProgramNode;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;

import java.io.FileInputStream;
import java.io.InputStream;
import java.io.PrintStream;

public class Main {
    public static void main(String[] args) throws Exception{
        boolean SemanticOnly = false, emitLLVM = false;
//        int optLevel = 0;
        if(args.length > 0) {
            for (String arg : args) {
                switch (arg) {
                    case "-semantic": SemanticOnly = true;break;
                    case "-ll": emitLLVM = true;break;
                    default: break;
                }
            }
        }
//        String name = "test.mx";
//        InputStream input = new FileInputStream(name);
//        PrintStream output = new PrintStream("output.s");
        InputStream input = System.in;//
        PrintStream output = System.out;
        try{
            ProgramNode rt;
            globalScope global_scope = new globalScope(null);
            MxLexer lexer = new MxLexer(CharStreams.fromStream(input));
            lexer.removeErrorListeners();
            lexer.addErrorListener(new MxErrorListener());
            MxParser parser = new MxParser(new CommonTokenStream(lexer));
            parser.removeErrorListeners();
            parser.addErrorListener(new MxErrorListener());
            ParseTree parseTree = parser.program();
            ASTbuilder astBuilder = new ASTbuilder(global_scope);
            rt = (ProgramNode) astBuilder.visit(parseTree);
            Scope global = new Scope(null);
            Root IRroot = new Root();
            new SymbolCollector(global_scope, IRroot).visit(rt);
            new ClassCreator(global_scope, IRroot).visit(rt);
//            System.out.println("111");
            new SemanticCheck(global_scope, IRroot).visit(rt);

            if(SemanticOnly) return;

            new IRBuilder(global_scope, IRroot).visit(rt);
            new Mem2Reg(IRroot).run();
            IRroot.addphi();
            if(emitLLVM)
                new IRPrinter(new PrintStream("output.ll")).run(IRroot);
//
            LRoot lroot = new InstSelection(IRroot).run();
            new RegAlloc(lroot).run();
            new AsmPrinter(lroot, output, true).run();

        } catch (Error error){
            System.err.println(error.toString());
            throw new RuntimeException();
        }
    }
}