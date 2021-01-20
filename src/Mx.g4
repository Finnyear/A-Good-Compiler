grammar Mx;

Int : 'int';
Bool : 'bool';
String : 'string';
Null : 'null';
Void : 'void';
True : 'true';
False : 'False';
If : 'if';
Else : 'else';
For : 'for';
While : 'while';
Break : 'break';
Continue : 'continue';
Return : 'return';
New : 'new';
Class : 'class';
This : 'this';

DecimalInteger : [1-9] [0-9]* | '0' ;
Identifier : [a-zA-Z] [a-zA-Z_0-9]* ;
Blank : [ \t\r\n]+ -> skip;
LineComment : '//' ~[\r\n]* -> skip;
BlockComment : '/*' .*? '*/' -> skip;



program : (part)* EOF;

part : class_def | fun_def | var_def;

class_def : Class Identifier '{' (var_def | fun_def | class_con )*  '}' ';';

class_con : Identifier '(' fun_par_list ')' suite;

fun_def : (type | Void) Identifier '(' fun_par_list ')' suite;

var_def :  type variable (',' variable)* ';' ;

variable : Identifier ('=' expression)? ;

type : basic_type | array_type;

basic_type : Int | Bool | String | Identifier;

array_type : basic_type ('[]')+;

fun_par_list : (type variable (',' type variable)*)?;

suite : '{' statement* '}';


statement
    : suite                                                 #block
    | var_def                                               #vardefStmt
    | If '(' ifcondition=expression ')' ifbody=statement
        (Else elsebody=statement)?                          #ifStmt
    | While '(' whilecondition=expression ')'
            whilebody=statement                             #whileStmt
    | For '(' forinit=expression? ';'
            forcondition=expression? ';'
            forupdate=expression? ';' ')'
            forbody=statement                               #forStmt
    | Return expression? ';'                                #returnStmt
    | Break ';'                                             #breakStmt
    | Continue ';'                                          #continueStmt
    | expression ';'                                        #pureExprStmt
    | ';'                                                   #emptyStmt
    ;

expression
    : primary                                               #atomExpr
    | New basic_type ('[' expression ']')* ('[]')* ('[' expression ']')*        #newExpr
    | New basic_type '(' ')'                                #newExpr
    | New basic_type                                        #newExpr
    | expression '.' Identifier                             #memberExpr
    | expression '(' expression (',' expression)* ')'       #funcalExpr
    | expression '[' expression ']'                         #arrayExpr
    | <assoc=right> op = ('!' | '~') expression             #prefixExpr
    | <assoc=right> op = ('++' | '--') expression           #prefixExpr
    | expression op = ('++' | '--')                         #suffixExpr
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
    | This
    | True
    | literal 
    ;

literal
    : DecimalInteger
    ;

