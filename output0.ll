declare i32 @g_getInt()
declare void @g_println(i8* %0)
declare i8* @malloc(i32 %0)
declare i8* @g_stringadd(i8* %0, i8* %1)
declare i32 @l_string_parseInt(i8* %0)
declare void @g_print(i8* %0)
declare i1 @g_stringge(i8* %0, i8* %1)
declare void @g_printlnInt(i32 %0)
declare i8* @g_toString(i32 %0)
declare i1 @g_stringle(i8* %0, i8* %1)
declare i32 @l_string_length(i8* %0)
declare i1 @g_stringne(i8* %0, i8* %1)
declare i8* @l_string_substring(i8* %0, i32 %1, i32 %2)
declare void @g_printInt(i32 %0)
declare i8 @l_string_ord(i8* %0)
declare i1 @g_stringgt(i8* %0, i8* %1)
declare i1 @g_stringeq(i8* %0, i8* %1)
declare i8* @g_getString()
declare i1 @g_stringlt(i8* %0, i8* %1)
define i32 @fun_test(){
b.0:
;precursors:
;successors: b.1 b.2
	br i1 1, label %b.1, label %b.2
b.1:
;precursors: b.0
;successors: b.3 b.4
	br i1 0, label %b.3, label %b.4
b.2:
;precursors: b.0
;successors: b.5
	br label %b.5
b.3:
;precursors: b.1
;successors: b.5
	br label %b.5
b.4:
;precursors: b.1
;successors: b.5
	br label %b.5
b.5:
;precursors: b.3 b.4 b.2
;successors:
	%0 = phi i32 [ 0, %b.3 ], [ 1, %b.4 ], [ 0, %b.2 ], [ 0, %if_end ]
	ret i32 %0
}
define void @__init(){
b.0:
;precursors:
;successors:
	ret void
}
define i32 @main(){
b.0:
;precursors:
;successors:
	call void @__init()
	%0 = call i32 @fun_test()
	ret i32 0
}
