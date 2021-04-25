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
define void @__init(){
b.0:
;precursors: 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret void
	ret void
}
define i32 @main(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: null
;tail_inst: null
;terminate: br label %b.1
	br label %b.1
b.1:
;precursors: b.0 
;successors: b.2 
;head_inst: null
;tail_inst: null
;terminate: br label %b.2
	br label %b.2
b.2:
;precursors: b.1 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 20
	ret i32 20
}
