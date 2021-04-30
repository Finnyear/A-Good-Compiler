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
@a = global i32* zeroinitializer, align 4
@i = global i32 zeroinitializer, align 4
define i32 @main(){
entry:
;precursors: 
;successors: for_cond 
;head_inst: %allocptr = call noalias i8* @malloc(i32 84)
;tail_inst: store i32 %pointee_n, i32* @i, align 4
;terminate: br label %for_cond
	%allocptr = call noalias i8* @malloc(i32 84)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 20, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** @a, align 4
	%pointee_n = load i32, i32* @n, align 4
	store i32 %pointee_n, i32* @i, align 4
	br label %for_cond
for_cond:
;precursors: entry if_end 
;successors: for_body for_end 
;head_inst: %pointee_i = load i32, i32* @i, align 4
;tail_inst: %cmp_sgt = icmp sgt i32 %pointee_i, 0
;terminate: br i1 %cmp_sgt, label %for_body, label %for_end
	%pointee_i = load i32, i32* @i, align 4
	%cmp_sgt = icmp sgt i32 %pointee_i, 0
	br i1 %cmp_sgt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond_inline 
;head_inst: %pointee_i = load i32, i32* @i, align 4
;tail_inst: %pointee_i = load i32, i32* @i, align 4
;terminate: br label %for_cond_inline
	%pointee_i = load i32, i32* @i, align 4
	br label %for_cond_inline
for_end:
;precursors: for_cond 
;successors: rootReturn 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn
	br label %rootReturn
for_cond_inline:
;precursors: for_body if_end_inline 
;successors: for_body_inline for_end_inline 
;head_inst: %pointee_n = load i32, i32* @n, align 4
;tail_inst: %cmp_slt = icmp slt i32 %i_addr_phi, %binary_sdiv
;terminate: br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
	%i_addr_phi = phi i32 [ 0, %for_body ], [ %suf_tmp, %if_end_inline ]
	%pointee_n = load i32, i32* @n, align 4
	%binary_sdiv = sdiv i32 %pointee_n, %pointee_i
	%cmp_slt = icmp slt i32 %i_addr_phi, %binary_sdiv
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
rootReturn:
;precursors: if_then for_end 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 0
	ret i32 0
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_cond_inline
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
for_cond_inline:
;precursors: for_body_inline if_end_inline 
;successors: for_body_inline for_end_inline 
;head_inst: %binary_sub = sub i32 %pointee_i, 1
;tail_inst: %cmp_slt = icmp slt i32 %j_addr_phi, %binary_sub
;terminate: br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
	%j_addr_phi = phi i32 [ 0, %for_body_inline ], [ %suf_tmp, %if_end_inline ]
	%flag_addr_phi = phi i8 [ 0, %for_body_inline ], [ %flag_addr_phi, %if_end_inline ]
	%binary_sub = sub i32 %pointee_i, 1
	%cmp_slt = icmp slt i32 %j_addr_phi, %binary_sub
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
rootReturn_inline:
;precursors: if_then_inline for_end_inline 
;successors: if_then if_end 
;head_inst: %cmp_sgt = icmp sgt i32 %rootRet, 0
;tail_inst: %cmp_sgt = icmp sgt i32 %rootRet, 0
;terminate: br i1 %cmp_sgt, label %if_then, label %if_end
	%rootRet = phi i32 [ 1, %if_then_inline ], [ 0, %for_end_inline ]
	%cmp_sgt = icmp sgt i32 %rootRet, 0
	br i1 %cmp_sgt, label %if_then, label %if_end
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
;head_inst: %binary_mul = mul i32 %i_addr_phi, %pointee_i
;tail_inst: %cmp_sgt = icmp sgt i32 %pointee_arrayptr, %pointee_arrayptr
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %if_end_inline
	%binary_mul = mul i32 %i_addr_phi, %pointee_i
	%binary_add = add i32 %binary_mul, %j_addr_phi
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %binary_add
	%binary_mul = mul i32 %i_addr_phi, %pointee_i
	%binary_add = add i32 %binary_mul, %j_addr_phi
	%binary_add = add i32 %binary_add, 1
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %binary_add
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%cmp_sgt = icmp sgt i32 %pointee_arrayptr, %pointee_arrayptr
	br i1 %cmp_sgt, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: if_end_inline if_then_inline 
;head_inst: %zext_pointee_flag_addr = zext i8 %flag_addr_phi to i1
;tail_inst: %zext_pointee_flag_addr = zext i8 %flag_addr_phi to i1
;terminate: br i1 %zext_pointee_flag_addr, label %if_end_inline, label %if_then_inline
	%zext_pointee_flag_addr = zext i8 %flag_addr_phi to i1
	br i1 %zext_pointee_flag_addr, label %if_end_inline, label %if_then_inline
if_then:
;precursors: rootReturn_inline 
;successors: rootReturn 
;head_inst: %pointee_i = load i32, i32* @i, align 4
;tail_inst: call void @g_print(i8* %fun_cal_ret_val)
;terminate: br label %rootReturn
	%pointee_i = load i32, i32* @i, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_i)
	call void @g_print(i8* %fun_cal_ret_val)
	br label %rootReturn
if_end:
;precursors: rootReturn_inline 
;successors: for_cond 
;head_inst: %pointee_i = load i32, i32* @i, align 4
;tail_inst: store i32 %binary_sdiv, i32* @i, align 4
;terminate: br label %for_cond
	%pointee_i = load i32, i32* @i, align 4
	%binary_sdiv = sdiv i32 %pointee_i, 2
	store i32 %binary_sdiv, i32* @i, align 4
	br label %for_cond
if_then_inline:
;precursors: for_body_inline 
;successors: if_end_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %if_end_inline
	br label %if_end_inline
if_end_inline:
;precursors: for_body_inline if_then_inline 
;successors: for_cond_inline 
;head_inst: %suf_tmp = add i32 %j_addr_phi, 1
;tail_inst: %suf_tmp = add i32 %j_addr_phi, 1
;terminate: br label %for_cond_inline
	%flag_addr_phi = phi i8 [ %flag_addr_phi, %for_body_inline ], [ 1, %if_then_inline ]
	%suf_tmp = add i32 %j_addr_phi, 1
	br label %for_cond_inline
if_end_inline:
;precursors: for_end_inline 
;successors: for_cond_inline 
;head_inst: %suf_tmp = add i32 %i_addr_phi, 1
;tail_inst: %suf_tmp = add i32 %i_addr_phi, 1
;terminate: br label %for_cond_inline
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
if_then_inline:
;precursors: for_end_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
}
