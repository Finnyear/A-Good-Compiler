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
;successors: for_cond 
	call void @__init()
	store i32 0, i32* @j, align 4
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%pointee_j = load i32, i32* @j, align 4
	%cmp_slt = icmp slt i32 %pointee_j, 5
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: if_then if_end 
	%pointee_n = load i32, i32* @n, align 4
	%eq = icmp eq i32 %pointee_n, 1
	br i1 %eq, label %if_then, label %if_end
for_end:
;precursors: for_cond 
;successors: 
	ret i32 0
if_then:
;precursors: for_body 
;successors: if_end 
	%pointee_j = load i32, i32* @j, align 4
	store i32 %pointee_j, i32* @r, align 4
	br label %if_end
if_end:
;precursors: for_body if_then 
;successors: for_upd 
	br label %for_upd
for_upd:
;precursors: if_end 
;successors: for_cond 
	%pointee_j = load i32, i32* @j, align 4
	%suf_tmp = add i32 %pointee_j, 1
	store i32 %suf_tmp, i32* @j, align 4
	br label %for_cond
}
