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
@i = global i32 zeroinitializer, align 4
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: for_cond 
	call void @__init()
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @t, align 4
	store i32 0, i32* @i, align 4
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: 
	ret i32 0
for_cond:
;precursors: entry for_upd 
;successors: for_upd for_end 
	%pointee_i = load i32, i32* @i, align 4
	%pointee_t = load i32, i32* @t, align 4
	%cmp_slt = icmp slt i32 %pointee_i, %pointee_t
	br i1 %cmp_slt, label %for_upd, label %for_end
for_upd:
;precursors: for_cond 
;successors: for_cond 
	%pointee_i = load i32, i32* @i, align 4
	%pre_add = add i32 %pointee_i, 1
	store i32 %pre_add, i32* @i, align 4
	br label %for_cond
}
