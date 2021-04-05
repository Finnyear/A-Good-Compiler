declare i32 @g_getInt()
declare void @g_println(i8* %s)
declare i8* @malloc(i32 %a)
declare i8* @l_string_substring(i8* %s, i32 %left, i32 %right)
declare i32 @l_string_parseInt(i8* %s)
declare void @g_printInt(i32 %v)
declare i8 @l_string_ord(i8* %s)
declare void @g_print(i8* %s)
declare void @g_printlnInt(i32 %v)
declare i8* @g_toString(i32 %i)
declare i8* @g_getString()
declare i32 @l_string_length(i8* %s)
@n = global i32 zeroinitializer, align 4
@a = global i32* zeroinitializer, align 4
@i = global i32 zeroinitializer, align 4
define i32 @fun_jud(i32 %param_x){
entry:
;precursors: 
;successors: for_cond 
	mv i8 %flag_addr_phi 65536
	mv i32 %i_addr_phi 0
	mv i32 %j_addr_phi 65536
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%flag_addr_phi = phi i8 [ 65536, %entry ], [ %flag_addr_phi, %for_upd ]
	%i_addr_phi = phi i32 [ 0, %entry ], [ %suf_tmp, %for_upd ]
	%j_addr_phi = phi i32 [ 65536, %entry ], [ %j_addr_phi, %for_upd ]
	%pointee_const = load i32, i32* @n, align 4
	%binary_sdiv = sdiv i32 %pointee_const, %param_x
	%cmp_slt = icmp slt i32 %i_addr_phi, %binary_sdiv
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond 
	mv i8 %flag_addr_phi 0
	mv i32 %j_addr_phi 0
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: rootReturn 
	mv i8 %flag_addr_phi %flag_addr_phi
	mv i32 %j_addr_phi %j_addr_phi
	mv i32 %rootRet 0
	br label %rootReturn
for_cond:
;precursors: for_body for_upd 
;successors: for_body for_end 
	%flag_addr_phi = phi i8 [ 0, %for_body ], [ %flag_addr_phi, %for_upd ]
	%j_addr_phi = phi i32 [ 0, %for_body ], [ %suf_tmp, %for_upd ]
	%binary_sub = sub i32 %param_x, 1
	%cmp_slt = icmp slt i32 %j_addr_phi, %binary_sub
	br i1 %cmp_slt, label %for_body, label %for_end
rootReturn:
;precursors: if_then for_end 
;successors: 
	%flag_addr_phi = phi i8 [ %flag_addr_phi, %if_then ], [ %flag_addr_phi, %for_end ]
	%j_addr_phi = phi i32 [ %j_addr_phi, %if_then ], [ %j_addr_phi, %for_end ]
	%rootRet = phi i32 [ 1, %if_then ], [ 0, %for_end ]
	ret i32 %rootRet
for_body:
;precursors: for_cond 
;successors: if_then addphi_mid 
	%binary_mul = mul i32 %i_addr_phi, %param_x
	%binary_add = add i32 %binary_mul, %j_addr_phi
	%pointee_const = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_const, i32 %binary_add
	%binary_mul = mul i32 %i_addr_phi, %param_x
	%binary_add = add i32 %binary_mul, %j_addr_phi
	%binary_add = add i32 %binary_add, 1
	%pointee_const = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_const, i32 %binary_add
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%cmp_sgt = icmp sgt i32 %pointee_arrayptr, %pointee_arrayptr
	br i1 %cmp_sgt, label %if_then, label %addphi_mid
for_end:
;precursors: for_cond 
;successors: if_end if_then 
	br i8 %flag_addr_phi, label %if_end, label %if_then
if_then:
;precursors: for_body 
;successors: if_end 
	mv i8 %flag_addr_phi 1
	br label %if_end
addphi_mid:
;precursors: for_body 
;successors: if_end 
	mv i8 %flag_addr_phi %flag_addr_phi
	br label %if_end
if_end:
;precursors: for_end 
;successors: for_upd 
	br label %for_upd
if_then:
;precursors: for_end 
;successors: rootReturn 
	mv i8 %flag_addr_phi %flag_addr_phi
	mv i32 %j_addr_phi %j_addr_phi
	mv i32 %rootRet 1
	br label %rootReturn
if_end:
;precursors: if_then addphi_mid 
;successors: for_upd 
	%flag_addr_phi = phi i8 [ %flag_addr_phi, %addphi_mid ], [ 1, %if_then ]
	br label %for_upd
for_upd:
;precursors: if_end 
;successors: for_cond 
	%suf_tmp = add i32 %i_addr_phi, 1
	mv i8 %flag_addr_phi %flag_addr_phi
	mv i32 %i_addr_phi %suf_tmp
	mv i32 %j_addr_phi %j_addr_phi
	br label %for_cond
for_upd:
;precursors: if_end 
;successors: for_cond 
	%suf_tmp = add i32 %j_addr_phi, 1
	mv i8 %flag_addr_phi %flag_addr_phi
	mv i32 %j_addr_phi %suf_tmp
	br label %for_cond
}
define void @__init(){
entry:
;precursors: 
;successors: 
	%puresz = mul i32 20, 4
	%matasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %matasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 20, i32* %allocbitcast, align 4
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
	store i32 %fun_cal_ret_val, i32* @n, align 4
	store i32 0, i32* @i, align 4
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%pointee_const = load i32, i32* @i, align 4
	%pointee_const = load i32, i32* @n, align 4
	%cmp_slt = icmp slt i32 %pointee_const, %pointee_const
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_const = load i32*, i32** @a, align 4
	%pointee_const = load i32, i32* @i, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_const, i32 %pointee_const
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: for_cond 
	%pointee_const = load i32, i32* @n, align 4
	store i32 %pointee_const, i32* @i, align 4
	br label %for_cond
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_const = load i32, i32* @i, align 4
	%suf_tmp = add i32 %pointee_const, 1
	store i32 %suf_tmp, i32* @i, align 4
	br label %for_cond
for_cond:
;precursors: for_end for_upd 
;successors: for_body for_end 
	%pointee_const = load i32, i32* @i, align 4
	%cmp_sgt = icmp sgt i32 %pointee_const, 0
	br i1 %cmp_sgt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: if_then if_end 
	%pointee_const = load i32, i32* @i, align 4
	%fun_cal_ret_val = call i32 @fun_jud(i32 %pointee_const)
	%cmp_sgt = icmp sgt i32 %fun_cal_ret_val, 0
	br i1 %cmp_sgt, label %if_then, label %if_end
for_end:
;precursors: for_cond 
;successors: rootReturn 
	mv i32 %rootRet 0
	br label %rootReturn
if_then:
;precursors: for_body 
;successors: rootReturn 
	%pointee_const = load i32, i32* @i, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_const)
	call void @g_print(i8* %fun_cal_ret_val)
	mv i32 %rootRet 0
	br label %rootReturn
if_end:
;precursors: for_body 
;successors: for_upd 
	br label %for_upd
rootReturn:
;precursors: if_then for_end 
;successors: 
	%rootRet = phi i32 [ 0, %if_then ], [ 0, %for_end ]
	ret i32 %rootRet
for_upd:
;precursors: if_end 
;successors: for_cond 
	%pointee_const = load i32, i32* @i, align 4
	%binary_sdiv = sdiv i32 %pointee_const, 2
	store i32 %binary_sdiv, i32* @i, align 4
	br label %for_cond
}
