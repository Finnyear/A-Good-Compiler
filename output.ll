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
@fun_find.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@fun_find.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@fun_find.3 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@fun_find.0 = private unnamed_addr constant [2 x i8] c"2\00", align 1
define void @fun_find(i32 %param_x, i32 %param_pre){
entry:
;precursors: 
;successors: if_then_inline if_end_inline 
;head_inst: %eq = icmp eq i32 %param_x, 1
;tail_inst: %eq = icmp eq i32 %param_x, 1
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%eq = icmp eq i32 %param_x, 1
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_then_inline:
;precursors: entry 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: entry 
;successors: for_cond_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_cond_inline
	br label %for_cond_inline
rootReturn_inline:
;precursors: if_then_inline for_end_inline if_then_inline 
;successors: if_then if_end 
;head_inst: null
;tail_inst: null
;terminate: br i1 %rootRet, label %if_then, label %if_end
	%i_addr_phi = phi i32 [ 65536, %if_then_inline ], [ %i_addr_phi, %if_then_inline ], [ %i_addr_phi, %for_end_inline ]
	%rootRet = phi i1 [ 0, %if_then_inline ], [ 0, %if_then_inline ], [ 1, %for_end_inline ]
	br i1 %rootRet, label %if_then, label %if_end
for_cond_inline:
;precursors: if_end_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
;head_inst: %binary_mul = mul i32 %i_addr_phi, %i_addr_phi
;tail_inst: %cmp_sle = icmp sle i32 %binary_mul, %param_x
;terminate: br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
	%i_addr_phi = phi i32 [ 2, %if_end_inline ], [ %suf_tmp, %for_upd_inline ]
	%binary_mul = mul i32 %i_addr_phi, %i_addr_phi
	%cmp_sle = icmp sle i32 %binary_mul, %param_x
	br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
if_then:
;precursors: rootReturn_inline 
;successors: if_then else_then 
;head_inst: %cmp_sgt = icmp sgt i32 %param_pre, 0
;tail_inst: %cmp_sgt = icmp sgt i32 %param_pre, 0
;terminate: br i1 %cmp_sgt, label %if_then, label %else_then
	%cmp_sgt = icmp sgt i32 %param_pre, 0
	br i1 %cmp_sgt, label %if_then, label %else_then
if_end:
;precursors: rootReturn_inline 
;successors: if_then else_then 
;head_inst: %pre_mns = sub i32 0, 1
;tail_inst: %eq = icmp eq i32 %param_pre, %pre_mns
;terminate: br i1 %eq, label %if_then, label %else_then
	%pre_mns = sub i32 0, 1
	%eq = icmp eq i32 %param_pre, %pre_mns
	br i1 %eq, label %if_then, label %else_then
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
;head_inst: %binary_srem = srem i32 %param_x, %i_addr_phi
;tail_inst: %eq = icmp eq i32 %binary_srem, 0
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%binary_srem = srem i32 %param_x, %i_addr_phi
	%eq = icmp eq i32 %binary_srem, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_then:
;precursors: if_then 
;successors: if_end 
;head_inst: %resolved_fun_find.0 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.0, i32 0, i32 0
;tail_inst: call void @g_println(i8* %binary_add_string)
;terminate: br label %if_end
	%resolved_fun_find.0 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.0, i32 0, i32 0
	call void @g_println(i8* %resolved_fun_find.0)
	%fun_cal_ret_val = call i8* @g_toString(i32 %param_pre)
	%resolved_fun_find.1 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_fun_find.1)
	%fun_cal_ret_val = call i8* @g_toString(i32 %param_x)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	br label %if_end
else_then:
;precursors: if_then 
;successors: if_end 
;head_inst: %resolved_fun_find.2 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.2, i32 0, i32 0
;tail_inst: call void @g_println(i8* %fun_cal_ret_val)
;terminate: br label %if_end
	%resolved_fun_find.2 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.2, i32 0, i32 0
	call void @g_println(i8* %resolved_fun_find.2)
	%fun_cal_ret_val = call i8* @g_toString(i32 %param_x)
	call void @g_println(i8* %fun_cal_ret_val)
	br label %if_end
if_then:
;precursors: if_end 
;successors: for_body 
;head_inst: %binary_sub = sub i32 %param_x, 2
;tail_inst: %binary_sub = sub i32 %param_x, 2
;terminate: br label %for_body
	%binary_sub = sub i32 %param_x, 2
	br label %for_body
else_then:
;precursors: if_end 
;successors: for_body 
;head_inst: %binary_sub = sub i32 %param_x, 1
;tail_inst: %binary_sub = sub i32 %param_x, 1
;terminate: br label %for_body
	%binary_sub = sub i32 %param_x, 1
	br label %for_body
if_then_inline:
;precursors: for_body_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_upd_inline
	br label %for_upd_inline
if_end:
;precursors: if_then else_then 
;successors: rootReturn 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn
	br label %rootReturn
for_body:
;precursors: if_then for_upd 
;successors: if_then_inline if_end_inline 
;head_inst: %eq = icmp eq i32 %i_addr_phi, 1
;tail_inst: %eq = icmp eq i32 %i_addr_phi, 1
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%i_addr_phi = phi i32 [ %binary_sub, %if_then ], [ %suf_tmp, %for_upd ]
	%eq = icmp eq i32 %i_addr_phi, 1
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_body:
;precursors: else_then for_upd 
;successors: if_then_inline if_end_inline 
;head_inst: %eq = icmp eq i32 %i_addr_phi, 1
;tail_inst: %eq = icmp eq i32 %i_addr_phi, 1
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%i_addr_phi = phi i32 [ %binary_sub, %else_then ], [ %suf_tmp, %for_upd ]
	%eq = icmp eq i32 %i_addr_phi, 1
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
;head_inst: %suf_tmp = add i32 %i_addr_phi, 1
;tail_inst: %suf_tmp = add i32 %i_addr_phi, 1
;terminate: br label %for_cond_inline
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
rootReturn:
;precursors: if_end if_then if_then 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret void
	%i_addr_phi = phi i32 [ 65536, %if_end ], [ %i_addr_phi, %if_then ], [ 65536, %if_then ]
	%i_addr_phi = phi i32 [ 65536, %if_end ], [ 5, %if_then ], [ %i_addr_phi, %if_then ]
	ret void
if_then_inline:
;precursors: for_body 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body 
;successors: for_cond_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_cond_inline
	br label %for_cond_inline
if_then_inline:
;precursors: for_body 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body 
;successors: for_cond_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_cond_inline
	br label %for_cond_inline
rootReturn_inline:
;precursors: if_then_inline for_end_inline if_then_inline 
;successors: if_then if_end 
;head_inst: null
;tail_inst: null
;terminate: br i1 %rootRet, label %if_then, label %if_end
	%i_addr_phi = phi i32 [ 65536, %if_then_inline ], [ %i_addr_phi, %if_then_inline ], [ %i_addr_phi, %for_end_inline ]
	%rootRet = phi i1 [ 0, %if_then_inline ], [ 0, %if_then_inline ], [ 1, %for_end_inline ]
	br i1 %rootRet, label %if_then, label %if_end
for_cond_inline:
;precursors: if_end_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
;head_inst: %binary_mul = mul i32 %i_addr_phi, %i_addr_phi
;tail_inst: %cmp_sle = icmp sle i32 %binary_mul, %i_addr_phi
;terminate: br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
	%i_addr_phi = phi i32 [ 2, %if_end_inline ], [ %suf_tmp, %for_upd_inline ]
	%binary_mul = mul i32 %i_addr_phi, %i_addr_phi
	%cmp_sle = icmp sle i32 %binary_mul, %i_addr_phi
	br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
rootReturn_inline:
;precursors: if_then_inline for_end_inline if_then_inline 
;successors: land_cond if_end 
;head_inst: null
;tail_inst: null
;terminate: br i1 %rootRet, label %land_cond, label %if_end
	%i_addr_phi = phi i32 [ 65536, %if_then_inline ], [ %i_addr_phi, %if_then_inline ], [ %i_addr_phi, %for_end_inline ]
	%rootRet = phi i1 [ 0, %if_then_inline ], [ 0, %if_then_inline ], [ 1, %for_end_inline ]
	br i1 %rootRet, label %land_cond, label %if_end
for_cond_inline:
;precursors: if_end_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
;head_inst: %binary_mul = mul i32 %i_addr_phi, %i_addr_phi
;tail_inst: %cmp_sle = icmp sle i32 %binary_mul, %i_addr_phi
;terminate: br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
	%i_addr_phi = phi i32 [ 2, %if_end_inline ], [ %suf_tmp, %for_upd_inline ]
	%binary_mul = mul i32 %i_addr_phi, %i_addr_phi
	%cmp_sle = icmp sle i32 %binary_mul, %i_addr_phi
	br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
if_then:
;precursors: rootReturn_inline 
;successors: rootReturn 
;head_inst: %binary_sub = sub i32 %param_x, %i_addr_phi
;tail_inst: call void @fun_find(i32 %binary_sub, i32 %i_addr_phi)
;terminate: br label %rootReturn
	%binary_sub = sub i32 %param_x, %i_addr_phi
	call void @fun_find(i32 %binary_sub, i32 %i_addr_phi)
	br label %rootReturn
if_end:
;precursors: rootReturn_inline 
;successors: for_upd 
;head_inst: null
;tail_inst: null
;terminate: br label %for_upd
	br label %for_upd
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
;head_inst: %binary_srem = srem i32 %i_addr_phi, %i_addr_phi
;tail_inst: %eq = icmp eq i32 %binary_srem, 0
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%binary_srem = srem i32 %i_addr_phi, %i_addr_phi
	%eq = icmp eq i32 %binary_srem, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
land_cond:
;precursors: rootReturn_inline 
;successors: if_then_inline if_end_inline 
;head_inst: %binary_sub = sub i32 %param_x, %i_addr_phi
;tail_inst: %eq = icmp eq i32 %binary_sub, 1
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%binary_sub = sub i32 %param_x, %i_addr_phi
	%eq = icmp eq i32 %binary_sub, 1
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end:
;precursors: rootReturn_inline rootReturn_inline 
;successors: for_upd 
;head_inst: null
;tail_inst: null
;terminate: br label %for_upd
	br label %for_upd
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
;head_inst: %binary_srem = srem i32 %i_addr_phi, %i_addr_phi
;tail_inst: %eq = icmp eq i32 %binary_srem, 0
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%binary_srem = srem i32 %i_addr_phi, %i_addr_phi
	%eq = icmp eq i32 %binary_srem, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
for_upd:
;precursors: if_end 
;successors: for_body 
;head_inst: %suf_tmp = sub i32 %i_addr_phi, 1
;tail_inst: %suf_tmp = sub i32 %i_addr_phi, 1
;terminate: br label %for_body
	%suf_tmp = sub i32 %i_addr_phi, 1
	br label %for_body
if_then_inline:
;precursors: for_body_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_upd_inline
	br label %for_upd_inline
if_then_inline:
;precursors: land_cond 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: land_cond 
;successors: for_cond_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_cond_inline
	br label %for_cond_inline
for_upd:
;precursors: if_end 
;successors: for_body 
;head_inst: %suf_tmp = sub i32 %i_addr_phi, 1
;tail_inst: %suf_tmp = sub i32 %i_addr_phi, 1
;terminate: br label %for_body
	%suf_tmp = sub i32 %i_addr_phi, 1
	br label %for_body
if_then_inline:
;precursors: for_body_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_upd_inline
	br label %for_upd_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
;head_inst: %suf_tmp = add i32 %i_addr_phi, 1
;tail_inst: %suf_tmp = add i32 %i_addr_phi, 1
;terminate: br label %for_cond_inline
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
rootReturn_inline:
;precursors: if_then_inline for_end_inline if_then_inline 
;successors: if_then if_end 
;head_inst: null
;tail_inst: null
;terminate: br i1 %rootRet, label %if_then, label %if_end
	%i_addr_phi = phi i32 [ 65536, %if_then_inline ], [ %i_addr_phi, %if_then_inline ], [ %i_addr_phi, %for_end_inline ]
	%rootRet = phi i1 [ 0, %if_then_inline ], [ 0, %if_then_inline ], [ 1, %for_end_inline ]
	br i1 %rootRet, label %if_then, label %if_end
for_cond_inline:
;precursors: if_end_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
;head_inst: %binary_mul = mul i32 %i_addr_phi, %i_addr_phi
;tail_inst: %cmp_sle = icmp sle i32 %binary_mul, %binary_sub
;terminate: br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
	%i_addr_phi = phi i32 [ 2, %if_end_inline ], [ %suf_tmp, %for_upd_inline ]
	%binary_mul = mul i32 %i_addr_phi, %i_addr_phi
	%cmp_sle = icmp sle i32 %binary_mul, %binary_sub
	br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
;head_inst: %suf_tmp = add i32 %i_addr_phi, 1
;tail_inst: %suf_tmp = add i32 %i_addr_phi, 1
;terminate: br label %for_cond_inline
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
if_then:
;precursors: rootReturn_inline 
;successors: rootReturn 
;head_inst: %resolved_fun_find.3 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.3, i32 0, i32 0
;tail_inst: call void @g_println(i8* %binary_add_string)
;terminate: br label %rootReturn
	%resolved_fun_find.3 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.3, i32 0, i32 0
	call void @g_println(i8* %resolved_fun_find.3)
	%fun_cal_ret_val = call i8* @g_toString(i32 %param_pre)
	%resolved_fun_find.1 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_fun_find.1)
	%fun_cal_ret_val = call i8* @g_toString(i32 %i_addr_phi)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	%resolved_fun_find.1 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_find.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_fun_find.1)
	%binary_sub = sub i32 %param_x, %i_addr_phi
	%fun_cal_ret_val = call i8* @g_toString(i32 %binary_sub)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	br label %rootReturn
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
;head_inst: %binary_srem = srem i32 %binary_sub, %i_addr_phi
;tail_inst: %eq = icmp eq i32 %binary_srem, 0
;terminate: br i1 %eq, label %if_then_inline, label %if_end_inline
	%binary_srem = srem i32 %binary_sub, %i_addr_phi
	%eq = icmp eq i32 %binary_srem, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_then_inline:
;precursors: for_body_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %for_upd_inline
	br label %for_upd_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
;head_inst: %suf_tmp = add i32 %i_addr_phi, 1
;tail_inst: %suf_tmp = add i32 %i_addr_phi, 1
;terminate: br label %for_cond_inline
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
}
define i32 @main(){
entry:
;precursors: 
;successors: 
;head_inst: %fun_cal_ret_val = call i32 @g_getInt()
;tail_inst: call void @fun_find(i32 %pointee_n, i32 %pre_mns)
;terminate: ret i32 0
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @n, align 4
	%pointee_n = load i32, i32* @n, align 4
	%pre_mns = sub i32 0, 1
	call void @fun_find(i32 %pointee_n, i32 %pre_mns)
	ret i32 0
}
