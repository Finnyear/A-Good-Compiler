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
define i32 @fun_qpow(i32 %param_a, i32 %param_p, i32 %param_mod){
entry:
;precursors:
;successors:
	call void @g_printlnInt(i32 1)
	ret i32* %t_addr
}
define void @__init(){
entry:
;precursors:
;successors:
	ret void
}
define i32 @main(){
entry:
;precursors:
;successors:
	call void @__init()
	%fun_cal_ret_val = call i32 @fun_qpow(i32 2, i32 10, i32 10000)
	call void @g_printlnInt(i32 %fun_cal_ret_val)
	ret i32 0
}
