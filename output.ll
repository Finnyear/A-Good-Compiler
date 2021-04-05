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
@t = global i32 zeroinitializer, align 4
@l = global i32 zeroinitializer, align 4
@i = global i32 zeroinitializer, align 4
@s = global i8* zeroinitializer, align 4
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
	%pointee_s = load i8*, i8** @s, align 4
	%fun_cal_ret_val = call i32 @l_string_length(i8* %pointee_s)
	store i32 %fun_cal_ret_val, i32* @l, align 4
	%pointee_s = load i8*, i8** @s, align 4
	%fun_cal_ret_val = call i8* @l_string_substring(i8* %pointee_s, i32 0, i32 1)
	%pointee_l = load i32, i32* @l, align 4
	%binary_sub = sub i32 %pointee_l, 2
	%fun_cal_ret_val = call i8* @g_toString(i32 %binary_sub)
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %fun_cal_ret_val)
	%pointee_s = load i8*, i8** @s, align 4
	%pointee_l = load i32, i32* @l, align 4
	%binary_sub = sub i32 %pointee_l, 1
	%pointee_l = load i32, i32* @l, align 4
	%fun_cal_ret_val = call i8* @l_string_substring(i8* %pointee_s, i32 %binary_sub, i32 %pointee_l)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	%pointee_s = load i8*, i8** @s, align 4
	call void @g_println(i8* %pointee_s)
	ret i32 0
}
