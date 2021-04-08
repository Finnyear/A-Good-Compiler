declare i32 @g_getInt()
declare void @g_println(i8* %s)
declare i8* @malloc(i32 %a)
declare i8* @g_stringadd(i8* %a, i8* %b)
declare i32 @l_string_parseInt(i8* %s)
declare void @g_print(i8* %s)
declare i1 @g_stringge(i8* %a, i8* %b)
declare void @g_printlnInt(i32 %v)
declare i8* @g_toString(i32 %i)
declare i1 @g_stringle(i8* %a, i8* %b)
declare i32 @l_string_length(i8* %s)
declare i1 @g_stringne(i8* %a, i8* %b)
declare i8* @l_string_substring(i8* %s, i32 %left, i32 %right)
declare void @g_printInt(i32 %v)
declare i8 @l_string_ord(i8* %s)
declare i1 @g_stringgt(i8* %a, i8* %b)
declare i1 @g_stringeq(i8* %a, i8* %b)
declare i8* @g_getString()
declare i1 @g_stringlt(i8* %a, i8* %b)
@i = global i32 zeroinitializer, align 4
@x = global i32 zeroinitializer, align 4
@main.0 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@main.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
define void @__init(){
entry:
;precursors: 
;successors: 
	store i32 0, i32* @x, align 4
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: if_then else_then 
	call void @__init()
	%pointee_x = load i32, i32* @x, align 4
	%eq = icmp eq i32 %pointee_x, 0
	br i1 %eq, label %if_then, label %else_then
if_then:
;precursors: entry 
;successors: if_end 
	%resolved_main.0 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @main.0, i32 0, i32 0
	call void @g_print(i8* %resolved_main.0)
	br label %if_end
if_end:
;precursors: if_then else_then 
;successors: 
	ret i32 0
else_then:
;precursors: entry 
;successors: if_end 
	%resolved_main.1 = getelementptr inbounds [ 3 x i8 ], [ 3 x i8 ]* @main.1, i32 0, i32 0
	call void @g_print(i8* %resolved_main.1)
	br label %if_end
}
