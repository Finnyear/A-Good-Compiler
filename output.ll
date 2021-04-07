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
@n = global i32 zeroinitializer, align 4
@r = global i32 zeroinitializer, align 4
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: if_then if_end 
	call void @__init()
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @n, align 4
	%pointee_n = load i32, i32* @n, align 4
	%eq = icmp eq i32 %pointee_n, 1
	br i1 %eq, label %if_then, label %if_end
if_then:
;precursors: entry 
;successors: if_end 
	store i32 1, i32* @r, align 4
	%pointee_r = load i32, i32* @r, align 4
	call void @g_printInt(i32 %pointee_r)
	br label %if_end
if_end:
;precursors: if_then addphi_mid entry 
;successors: 
	ret i32 0
}
