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
@c = global i32 zeroinitializer, align 4
@i = global i32 zeroinitializer, align 4
@j = global i32 zeroinitializer, align 4
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
	%fun_cal_ret_val = call i32 @fun_abs(i32 0)
	call void @g_printlnInt(i32 %fun_cal_ret_val)
	ret i32 0
}
define i32 @fun_abs(i32 %param_c){
entry:
;precursors: 
;successors: if_then if_end 
	%cmp_sgt = icmp sgt i32 %param_c, 0
	br i1 %cmp_sgt, label %if_then, label %if_end
if_end:
;precursors: entry 
;successors: rootReturn 
	%pre_mns = sub i32 0, %param_c
	mv i32 %rootRet %pre_mns
	br label %rootReturn
if_then:
;precursors: entry 
;successors: rootReturn 
	mv i32* %rootRet %c_addr
	br label %rootReturn
rootReturn:
;precursors: if_then if_end 
;successors: 
	%rootRet = phi i32* [ %c_addr, %if_then ], [ %pre_mns, %if_end ]
	ret i32* %rootRet
}
