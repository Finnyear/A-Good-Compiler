grammar Rx;

program: 'int main()' suite EOF;

varDef : Int Identifier ('=' expression)? ';';

suite : '{' statement* '}';


statement
    : suite                                                 #block
    | varDef                                                #vardefStmt
    | If '(' condition=expression ')' ifbody=statement 
        (Else elsebody=statement)?                          #ifStmt
    | While '(' condition=expression ')' 
            whilebody=statement                             #whileStmt
    | For '(' for_init=expression? ';' 
            for_condition=expression? ';' 
            for_update=expression? ';' ')'
            forbody=statement                               #ForStmt
    | Return expression? ';'                                #returnStmt
    | expression ';'                                        #pureExprStmt
    | ';'                                                   #emptyStmt
    ;

expression
    : primary                                               #atomExpr
    | expression op = ('++' | '--')                         #suffixExpr
    | <assoc=right> op = ('++' | '--') expression           #prefixExpr
    | op=('!') expression                                   #prefixExpr
    | expression op=('*' | '/') expression                  #binaryExpr
    | expression op=('+' | '-') expression                  #binaryExpr
    | expression op=('>' | '<') expression                  #binaryExpr
    | expression op=('>=' | '<=' ) expression               #binaryExpr
    | expression op=('==' | '!=' ) expression               #binaryExpr
    | expression op=('|' | '&' | '^') expression            #binaryExpr
    | expression op=('||' | '&&' ) expression               #binaryExpr
    | <assoc=right> expression '=' expression               #assignExpr
    ;

primary
    : '(' expression ')'
    | Identifier 
    | literal 
    ;

literal
    : DecimalInteger
    ;

Int : 'int';
If : 'if';
Else : 'else';
Return : 'return';
// For : 'for';
// While : 'while'

LeftParen : '(';
RightParen : ')';
LeftBracket : '[';
RightBracket : ']';
LeftBrace : '{';
RightBrace : '}';

Less : '<';
LessEqual : '<=';
Greater : '>';
GreaterEqual : '>=';
LeftShift : '<<';
RightShift : '>>';

Plus : '+';
Minus : '-';

And : '&';
Or : '|';
AndAnd : '&&';
OrOr : '||';
Caret : '^';
Not : '!';
Tilde : '~';

Question : '?';
Colon : ':';
Semi : ';';
Comma : ',';

Assign : '=';
Equal : '==';
NotEqual : '!=';

Identifier
    : [a-zA-Z] [a-zA-Z_0-9]*
    ;

DecimalInteger
    : [1-9] [0-9]*
    | '0'
    ;

Whitespace
    :   [ \t]+
        -> skip
    ;

Newline
    :   (   '\r' '\n'?
        |   '\n'
        )
        -> skip
    ;

BlockComment
    :   '/*' .*? '*/'
        -> skip
    ;

LineComment
    :   '//' ~[\r\n]*
        -> skip
    ;