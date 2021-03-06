// Generated from D:/GitHub/A-Good-Compiler/src/Parser\Mx.g4 by ANTLR 4.9
package Parser;
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MxLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, Int=31, Bool=32, 
		String=33, Null=34, Void=35, True=36, False=37, If=38, Else=39, For=40, 
		While=41, Break=42, Continue=43, Return=44, New=45, Class=46, This=47, 
		ConstInteger=48, ConstBool=49, ConstString=50, Identifier=51, WhiteSpace=52, 
		LineComment=53, BlockComment=54;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
			"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
			"T__17", "T__18", "T__19", "T__20", "T__21", "T__22", "T__23", "T__24", 
			"T__25", "T__26", "T__27", "T__28", "T__29", "Int", "Bool", "String", 
			"Null", "Void", "True", "False", "If", "Else", "For", "While", "Break", 
			"Continue", "Return", "New", "Class", "This", "ConstInteger", "ConstBool", 
			"ConstString", "Identifier", "WhiteSpace", "LineComment", "BlockComment"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'{'", "'}'", "';'", "'('", "')'", "','", "'='", "'[]'", "'['", 
			"']'", "'.'", "'!'", "'~'", "'++'", "'--'", "'*'", "'/'", "'+'", "'-'", 
			"'>'", "'<'", "'>='", "'<='", "'=='", "'!='", "'|'", "'&'", "'^'", "'||'", 
			"'&&'", "'int'", "'bool'", "'string'", "'null'", "'void'", "'true'", 
			"'False'", "'if'", "'else'", "'for'", "'while'", "'break'", "'continue'", 
			"'return'", "'new'", "'class'", "'this'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, "Int", "Bool", "String", "Null", 
			"Void", "True", "False", "If", "Else", "For", "While", "Break", "Continue", 
			"Return", "New", "Class", "This", "ConstInteger", "ConstBool", "ConstString", 
			"Identifier", "WhiteSpace", "LineComment", "BlockComment"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public MxLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Mx.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\28\u0150\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64\t"+
		"\64\4\65\t\65\4\66\t\66\4\67\t\67\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6"+
		"\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\t\3\n\3\n\3\13\3\13\3\f\3\f\3\r\3\r\3\16"+
		"\3\16\3\17\3\17\3\17\3\20\3\20\3\20\3\21\3\21\3\22\3\22\3\23\3\23\3\24"+
		"\3\24\3\25\3\25\3\26\3\26\3\27\3\27\3\27\3\30\3\30\3\30\3\31\3\31\3\31"+
		"\3\32\3\32\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\36\3\36\3\36\3\37\3\37"+
		"\3\37\3 \3 \3 \3 \3!\3!\3!\3!\3!\3\"\3\"\3\"\3\"\3\"\3\"\3\"\3#\3#\3#"+
		"\3#\3#\3$\3$\3$\3$\3$\3%\3%\3%\3%\3%\3&\3&\3&\3&\3&\3&\3\'\3\'\3\'\3("+
		"\3(\3(\3(\3(\3)\3)\3)\3)\3*\3*\3*\3*\3*\3*\3+\3+\3+\3+\3+\3+\3,\3,\3,"+
		"\3,\3,\3,\3,\3,\3,\3-\3-\3-\3-\3-\3-\3-\3.\3.\3.\3.\3/\3/\3/\3/\3/\3/"+
		"\3\60\3\60\3\60\3\60\3\60\3\61\3\61\7\61\u0113\n\61\f\61\16\61\u0116\13"+
		"\61\3\61\5\61\u0119\n\61\3\62\3\62\5\62\u011d\n\62\3\63\3\63\3\63\3\63"+
		"\7\63\u0123\n\63\f\63\16\63\u0126\13\63\3\63\3\63\3\64\3\64\7\64\u012c"+
		"\n\64\f\64\16\64\u012f\13\64\3\65\6\65\u0132\n\65\r\65\16\65\u0133\3\65"+
		"\3\65\3\66\3\66\3\66\3\66\7\66\u013c\n\66\f\66\16\66\u013f\13\66\3\66"+
		"\3\66\3\67\3\67\3\67\3\67\7\67\u0147\n\67\f\67\16\67\u014a\13\67\3\67"+
		"\3\67\3\67\3\67\3\67\3\u0148\28\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23"+
		"\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31"+
		"\61\32\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'M(O)Q*S+U,W-Y.[/]\60"+
		"_\61a\62c\63e\64g\65i\66k\67m8\3\2\n\3\2\63;\3\2\62;\6\2\f\f\17\17$$^"+
		"^\6\2$$^^pptt\4\2C\\c|\6\2\62;C\\aac|\5\2\13\f\17\17\"\"\4\2\f\f\17\17"+
		"\2\u0158\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2"+
		"\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27"+
		"\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2"+
		"\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2"+
		"\2/\3\2\2\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2"+
		"\2\2\2;\3\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2"+
		"\2G\3\2\2\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S"+
		"\3\2\2\2\2U\3\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2"+
		"\2\2\2a\3\2\2\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2"+
		"\2m\3\2\2\2\3o\3\2\2\2\5q\3\2\2\2\7s\3\2\2\2\tu\3\2\2\2\13w\3\2\2\2\r"+
		"y\3\2\2\2\17{\3\2\2\2\21}\3\2\2\2\23\u0080\3\2\2\2\25\u0082\3\2\2\2\27"+
		"\u0084\3\2\2\2\31\u0086\3\2\2\2\33\u0088\3\2\2\2\35\u008a\3\2\2\2\37\u008d"+
		"\3\2\2\2!\u0090\3\2\2\2#\u0092\3\2\2\2%\u0094\3\2\2\2\'\u0096\3\2\2\2"+
		")\u0098\3\2\2\2+\u009a\3\2\2\2-\u009c\3\2\2\2/\u009f\3\2\2\2\61\u00a2"+
		"\3\2\2\2\63\u00a5\3\2\2\2\65\u00a8\3\2\2\2\67\u00aa\3\2\2\29\u00ac\3\2"+
		"\2\2;\u00ae\3\2\2\2=\u00b1\3\2\2\2?\u00b4\3\2\2\2A\u00b8\3\2\2\2C\u00bd"+
		"\3\2\2\2E\u00c4\3\2\2\2G\u00c9\3\2\2\2I\u00ce\3\2\2\2K\u00d3\3\2\2\2M"+
		"\u00d9\3\2\2\2O\u00dc\3\2\2\2Q\u00e1\3\2\2\2S\u00e5\3\2\2\2U\u00eb\3\2"+
		"\2\2W\u00f1\3\2\2\2Y\u00fa\3\2\2\2[\u0101\3\2\2\2]\u0105\3\2\2\2_\u010b"+
		"\3\2\2\2a\u0118\3\2\2\2c\u011c\3\2\2\2e\u011e\3\2\2\2g\u0129\3\2\2\2i"+
		"\u0131\3\2\2\2k\u0137\3\2\2\2m\u0142\3\2\2\2op\7}\2\2p\4\3\2\2\2qr\7\177"+
		"\2\2r\6\3\2\2\2st\7=\2\2t\b\3\2\2\2uv\7*\2\2v\n\3\2\2\2wx\7+\2\2x\f\3"+
		"\2\2\2yz\7.\2\2z\16\3\2\2\2{|\7?\2\2|\20\3\2\2\2}~\7]\2\2~\177\7_\2\2"+
		"\177\22\3\2\2\2\u0080\u0081\7]\2\2\u0081\24\3\2\2\2\u0082\u0083\7_\2\2"+
		"\u0083\26\3\2\2\2\u0084\u0085\7\60\2\2\u0085\30\3\2\2\2\u0086\u0087\7"+
		"#\2\2\u0087\32\3\2\2\2\u0088\u0089\7\u0080\2\2\u0089\34\3\2\2\2\u008a"+
		"\u008b\7-\2\2\u008b\u008c\7-\2\2\u008c\36\3\2\2\2\u008d\u008e\7/\2\2\u008e"+
		"\u008f\7/\2\2\u008f \3\2\2\2\u0090\u0091\7,\2\2\u0091\"\3\2\2\2\u0092"+
		"\u0093\7\61\2\2\u0093$\3\2\2\2\u0094\u0095\7-\2\2\u0095&\3\2\2\2\u0096"+
		"\u0097\7/\2\2\u0097(\3\2\2\2\u0098\u0099\7@\2\2\u0099*\3\2\2\2\u009a\u009b"+
		"\7>\2\2\u009b,\3\2\2\2\u009c\u009d\7@\2\2\u009d\u009e\7?\2\2\u009e.\3"+
		"\2\2\2\u009f\u00a0\7>\2\2\u00a0\u00a1\7?\2\2\u00a1\60\3\2\2\2\u00a2\u00a3"+
		"\7?\2\2\u00a3\u00a4\7?\2\2\u00a4\62\3\2\2\2\u00a5\u00a6\7#\2\2\u00a6\u00a7"+
		"\7?\2\2\u00a7\64\3\2\2\2\u00a8\u00a9\7~\2\2\u00a9\66\3\2\2\2\u00aa\u00ab"+
		"\7(\2\2\u00ab8\3\2\2\2\u00ac\u00ad\7`\2\2\u00ad:\3\2\2\2\u00ae\u00af\7"+
		"~\2\2\u00af\u00b0\7~\2\2\u00b0<\3\2\2\2\u00b1\u00b2\7(\2\2\u00b2\u00b3"+
		"\7(\2\2\u00b3>\3\2\2\2\u00b4\u00b5\7k\2\2\u00b5\u00b6\7p\2\2\u00b6\u00b7"+
		"\7v\2\2\u00b7@\3\2\2\2\u00b8\u00b9\7d\2\2\u00b9\u00ba\7q\2\2\u00ba\u00bb"+
		"\7q\2\2\u00bb\u00bc\7n\2\2\u00bcB\3\2\2\2\u00bd\u00be\7u\2\2\u00be\u00bf"+
		"\7v\2\2\u00bf\u00c0\7t\2\2\u00c0\u00c1\7k\2\2\u00c1\u00c2\7p\2\2\u00c2"+
		"\u00c3\7i\2\2\u00c3D\3\2\2\2\u00c4\u00c5\7p\2\2\u00c5\u00c6\7w\2\2\u00c6"+
		"\u00c7\7n\2\2\u00c7\u00c8\7n\2\2\u00c8F\3\2\2\2\u00c9\u00ca\7x\2\2\u00ca"+
		"\u00cb\7q\2\2\u00cb\u00cc\7k\2\2\u00cc\u00cd\7f\2\2\u00cdH\3\2\2\2\u00ce"+
		"\u00cf\7v\2\2\u00cf\u00d0\7t\2\2\u00d0\u00d1\7w\2\2\u00d1\u00d2\7g\2\2"+
		"\u00d2J\3\2\2\2\u00d3\u00d4\7H\2\2\u00d4\u00d5\7c\2\2\u00d5\u00d6\7n\2"+
		"\2\u00d6\u00d7\7u\2\2\u00d7\u00d8\7g\2\2\u00d8L\3\2\2\2\u00d9\u00da\7"+
		"k\2\2\u00da\u00db\7h\2\2\u00dbN\3\2\2\2\u00dc\u00dd\7g\2\2\u00dd\u00de"+
		"\7n\2\2\u00de\u00df\7u\2\2\u00df\u00e0\7g\2\2\u00e0P\3\2\2\2\u00e1\u00e2"+
		"\7h\2\2\u00e2\u00e3\7q\2\2\u00e3\u00e4\7t\2\2\u00e4R\3\2\2\2\u00e5\u00e6"+
		"\7y\2\2\u00e6\u00e7\7j\2\2\u00e7\u00e8\7k\2\2\u00e8\u00e9\7n\2\2\u00e9"+
		"\u00ea\7g\2\2\u00eaT\3\2\2\2\u00eb\u00ec\7d\2\2\u00ec\u00ed\7t\2\2\u00ed"+
		"\u00ee\7g\2\2\u00ee\u00ef\7c\2\2\u00ef\u00f0\7m\2\2\u00f0V\3\2\2\2\u00f1"+
		"\u00f2\7e\2\2\u00f2\u00f3\7q\2\2\u00f3\u00f4\7p\2\2\u00f4\u00f5\7v\2\2"+
		"\u00f5\u00f6\7k\2\2\u00f6\u00f7\7p\2\2\u00f7\u00f8\7w\2\2\u00f8\u00f9"+
		"\7g\2\2\u00f9X\3\2\2\2\u00fa\u00fb\7t\2\2\u00fb\u00fc\7g\2\2\u00fc\u00fd"+
		"\7v\2\2\u00fd\u00fe\7w\2\2\u00fe\u00ff\7t\2\2\u00ff\u0100\7p\2\2\u0100"+
		"Z\3\2\2\2\u0101\u0102\7p\2\2\u0102\u0103\7g\2\2\u0103\u0104\7y\2\2\u0104"+
		"\\\3\2\2\2\u0105\u0106\7e\2\2\u0106\u0107\7n\2\2\u0107\u0108\7c\2\2\u0108"+
		"\u0109\7u\2\2\u0109\u010a\7u\2\2\u010a^\3\2\2\2\u010b\u010c\7v\2\2\u010c"+
		"\u010d\7j\2\2\u010d\u010e\7k\2\2\u010e\u010f\7u\2\2\u010f`\3\2\2\2\u0110"+
		"\u0114\t\2\2\2\u0111\u0113\t\3\2\2\u0112\u0111\3\2\2\2\u0113\u0116\3\2"+
		"\2\2\u0114\u0112\3\2\2\2\u0114\u0115\3\2\2\2\u0115\u0119\3\2\2\2\u0116"+
		"\u0114\3\2\2\2\u0117\u0119\7\62\2\2\u0118\u0110\3\2\2\2\u0118\u0117\3"+
		"\2\2\2\u0119b\3\2\2\2\u011a\u011d\5I%\2\u011b\u011d\5K&\2\u011c\u011a"+
		"\3\2\2\2\u011c\u011b\3\2\2\2\u011dd\3\2\2\2\u011e\u0124\7$\2\2\u011f\u0123"+
		"\n\4\2\2\u0120\u0121\7^\2\2\u0121\u0123\t\5\2\2\u0122\u011f\3\2\2\2\u0122"+
		"\u0120\3\2\2\2\u0123\u0126\3\2\2\2\u0124\u0122\3\2\2\2\u0124\u0125\3\2"+
		"\2\2\u0125\u0127\3\2\2\2\u0126\u0124\3\2\2\2\u0127\u0128\7$\2\2\u0128"+
		"f\3\2\2\2\u0129\u012d\t\6\2\2\u012a\u012c\t\7\2\2\u012b\u012a\3\2\2\2"+
		"\u012c\u012f\3\2\2\2\u012d\u012b\3\2\2\2\u012d\u012e\3\2\2\2\u012eh\3"+
		"\2\2\2\u012f\u012d\3\2\2\2\u0130\u0132\t\b\2\2\u0131\u0130\3\2\2\2\u0132"+
		"\u0133\3\2\2\2\u0133\u0131\3\2\2\2\u0133\u0134\3\2\2\2\u0134\u0135\3\2"+
		"\2\2\u0135\u0136\b\65\2\2\u0136j\3\2\2\2\u0137\u0138\7\61\2\2\u0138\u0139"+
		"\7\61\2\2\u0139\u013d\3\2\2\2\u013a\u013c\n\t\2\2\u013b\u013a\3\2\2\2"+
		"\u013c\u013f\3\2\2\2\u013d\u013b\3\2\2\2\u013d\u013e\3\2\2\2\u013e\u0140"+
		"\3\2\2\2\u013f\u013d\3\2\2\2\u0140\u0141\b\66\2\2\u0141l\3\2\2\2\u0142"+
		"\u0143\7\61\2\2\u0143\u0144\7,\2\2\u0144\u0148\3\2\2\2\u0145\u0147\13"+
		"\2\2\2\u0146\u0145\3\2\2\2\u0147\u014a\3\2\2\2\u0148\u0149\3\2\2\2\u0148"+
		"\u0146\3\2\2\2\u0149\u014b\3\2\2\2\u014a\u0148\3\2\2\2\u014b\u014c\7,"+
		"\2\2\u014c\u014d\7\61\2\2\u014d\u014e\3\2\2\2\u014e\u014f\b\67\2\2\u014f"+
		"n\3\2\2\2\f\2\u0114\u0118\u011c\u0122\u0124\u012d\u0133\u013d\u0148\3"+
		"\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}