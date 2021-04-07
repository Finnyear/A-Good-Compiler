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
@a = global i32* zeroinitializer, align 4
@m = global i32 zeroinitializer, align 4
@k = global i32 zeroinitializer, align 4
@i = global i32 zeroinitializer, align 4
define void @__init(){
entry:
;precursors: 
;successors: 
	%puresz = mul i32 50, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 50, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** @a, align 4
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: for_cond 
	call void @__init()
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @m, align 4
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @k, align 4
	store i32 0, i32* @i, align 4
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%pointee_i = load i32, i32* @i, align 4
	%pointee_m = load i32, i32* @m, align 4
	%cmp_slt = icmp slt i32 %pointee_i, %pointee_m
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_a = load i32*, i32** @a, align 4
	%pointee_i = load i32, i32* @i, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_a, i32 %pointee_i
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: for_cond 
	store i32 0, i32* @i, align 4
	br label %for_cond
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i = load i32, i32* @i, align 4
	%suf_tmp = add i32 %pointee_i, 1
	store i32 %suf_tmp, i32* @i, align 4
	br label %for_cond
for_cond:
;precursors: for_end for_upd 
;successors: land_cond addphi_mid 
	%pointee_a = load i32*, i32** @a, align 4
	%pointee_i = load i32, i32* @i, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_a, i32 %pointee_i
	%pointee_k = load i32, i32* @k, align 4
	%binary_sub = sub i32 %pointee_k, 1
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_a, i32 %binary_sub
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%cmp_sge = icmp sge i32 %pointee_arrayptr, %pointee_arrayptr
	br i1 %cmp_sge, label %land_cond, label %addphi_mid
land_cond:
;precursors: for_cond 
;successors: land_cond addphi_mid 
	%pointee_a = load i32*, i32** @a, align 4
	%pointee_i = load i32, i32* @i, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_a, i32 %pointee_i
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%cmp_sgt = icmp sgt i32 %pointee_arrayptr, 0
	br i1 %cmp_sgt, label %land_cond, label %addphi_mid
addphi_mid:
;precursors: for_cond 
;successors: for_end 
	br label %for_end
land_cond:
;precursors: land_cond 
;successors: for_body addphi_mid 
	%pointee_i = load i32, i32* @i, align 4
	%pointee_m = load i32, i32* @m, align 4
	%cmp_slt = icmp slt i32 %pointee_i, %pointee_m
	br i1 %cmp_slt, label %for_body, label %addphi_mid
addphi_mid:
;precursors: land_cond 
;successors: for_end 
	br label %for_end
for_end:
;precursors: addphi_mid addphi_mid addphi_mid 
;successors: 
	%pointee_i = load i32, i32* @i, align 4
	call void @g_printInt(i32 %pointee_i)
	ret i32 0
for_body:
;precursors: land_cond 
;successors: for_upd 
	br label %for_upd
addphi_mid:
;precursors: land_cond 
;successors: for_end 
	br label %for_end
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i = load i32, i32* @i, align 4
	%suf_tmp = add i32 %pointee_i, 1
	store i32 %suf_tmp, i32* @i, align 4
	br label %for_cond
}
