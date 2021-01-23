import Frontend.ASTbuilder;
import Frontend.ClassCreator;
import Frontend.SemanticCheck;
import Frontend.SymbolCollector;
import Parser.MxLexer;
import Parser.MxParser;
import Util.MxErrorListener;
import Util.Scope;
import Util.globalScope;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import AST.*;

import java.io.FileInputStream;
import java.io.InputStream;

public class Main {
    public static void main(String[] args) throws Exception{
        String name = "test.mx";
        InputStream input = new FileInputStream(name);
//        InputStream input = System.in;
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
            new SymbolCollector(global_scope).visit(rt);
            new ClassCreator(global_scope).visit(rt);
            new SemanticCheck(global_scope).visit(rt);
        } catch (Error error){
            System.err.println(error.toString());
            throw new RuntimeException();
        }
    }
}