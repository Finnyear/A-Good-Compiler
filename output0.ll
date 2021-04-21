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
@h = global i32 zeroinitializer, align 4
@now = global i32 zeroinitializer, align 4
@a = global i32* zeroinitializer, align 4
@A = global i32 zeroinitializer, align 4
@M = global i32 zeroinitializer, align 4
@Q = global i32 zeroinitializer, align 4
@R = global i32 zeroinitializer, align 4
@seed = global i32 zeroinitializer, align 4
@main.2 = private unnamed_addr constant [80 x i8] c"Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i\00", align 1
@fun_show.1 = private unnamed_addr constant [1 x i8] c"\00", align 1
@main.3 = private unnamed_addr constant [13 x i8] c"Let's start!\00", align 1
@main.4 = private unnamed_addr constant [6 x i8] c"step \00", align 1
@main.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@fun_show.0 = private unnamed_addr constant [2 x i8] c" \00", align 1
@main.6 = private unnamed_addr constant [8 x i8] c"Total: \00", align 1
@main.7 = private unnamed_addr constant [9 x i8] c" step(s)\00", align 1
define i32 @main(){
entry:
;precursors: 
;successors: for_cond_inline 
	store i32 48271, i32* @A, align 4
	store i32 2147483647, i32* @M, align 4
	store i32 1, i32* @seed, align 4
	%binary_mul = mul i32 3, 7
	%binary_mul = mul i32 %binary_mul, 10
	store i32 %binary_mul, i32* @n, align 4
	store i32 0, i32* @h, align 4
	%puresz = mul i32 100, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 100, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** @a, align 4
	%pointee_M = load i32, i32* @M, align 4
	%pointee_A = load i32, i32* @A, align 4
	%binary_sdiv = sdiv i32 %pointee_M, %pointee_A
	store i32 %binary_sdiv, i32* @Q, align 4
	%pointee_M = load i32, i32* @M, align 4
	%pointee_A = load i32, i32* @A, align 4
	%binary_srem = srem i32 %pointee_M, %pointee_A
	store i32 %binary_srem, i32* @R, align 4
	%pointee_n = load i32, i32* @n, align 4
	br label %for_cond_inline
for_cond_inline:
;precursors: for_upd_inline entry 
;successors: for_body_inline for_end_inline 
	%pointee_h = load i32, i32* @h, align 4
	%cmp_sle = icmp sle i32 %pointee_h, %pointee_n
	br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%pointee_h = load i32, i32* @h, align 4
	%binary_add = add i32 %pointee_h, 1
	%pointee_h = load i32, i32* @h, align 4
	%binary_mul = mul i32 %pointee_h, %binary_add
	%binary_sdiv = sdiv i32 %binary_mul, 2
	%eq = icmp eq i32 %pointee_n, %binary_sdiv
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: rootReturn_inline 
	br label %rootReturn_inline
if_then_inline:
;precursors: for_body_inline 
;successors: rootReturn_inline 
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
	br label %for_upd_inline
rootReturn_inline:
;precursors: if_then_inline for_end_inline 
;successors: if_end if_then 
	%rootRet = phi i1 [ 1, %if_then_inline ], [ 0, %for_end_inline ]
	br i1 %rootRet, label %if_end, label %if_then
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pointee_h = load i32, i32* @h, align 4
	%pre_add = add i32 %pointee_h, 1
	store i32 %pre_add, i32* @h, align 4
	br label %for_cond_inline
if_end:
;precursors: rootReturn_inline 
;successors: if_then_inline else_then_inline 
	%resolved_main.3 = getelementptr inbounds [ 13 x i8 ], [ 13 x i8 ]* @main.3, i32 0, i32 0
	call void @g_println(i8* %resolved_main.3)
	store i32 3654898, i32* @seed, align 4
	%pointee_seed = load i32, i32* @seed, align 4
	%pointee_Q = load i32, i32* @Q, align 4
	%binary_srem = srem i32 %pointee_seed, %pointee_Q
	%pointee_A = load i32, i32* @A, align 4
	%binary_mul = mul i32 %pointee_A, %binary_srem
	%pointee_seed = load i32, i32* @seed, align 4
	%pointee_Q = load i32, i32* @Q, align 4
	%binary_sdiv = sdiv i32 %pointee_seed, %pointee_Q
	%pointee_R = load i32, i32* @R, align 4
	%binary_mul = mul i32 %pointee_R, %binary_sdiv
	%binary_sub = sub i32 %binary_mul, %binary_mul
	%cmp_sge = icmp sge i32 %binary_sub, 0
	br i1 %cmp_sge, label %if_then_inline, label %else_then_inline
if_then:
;precursors: rootReturn_inline 
;successors: rootReturn 
	%resolved_main.2 = getelementptr inbounds [ 80 x i8 ], [ 80 x i8 ]* @main.2, i32 0, i32 0
	call void @g_println(i8* %resolved_main.2)
	br label %rootReturn
if_then_inline:
;precursors: if_end 
;successors: if_end_inline 
	store i32 %binary_sub, i32* @seed, align 4
	br label %if_end_inline
else_then_inline:
;precursors: if_end 
;successors: if_end_inline 
	%pointee_M = load i32, i32* @M, align 4
	%binary_add = add i32 %binary_sub, %pointee_M
	store i32 %binary_add, i32* @seed, align 4
	br label %if_end_inline
rootReturn:
;precursors: if_then while_end 
;successors: 
	%rootRet = phi i32 [ 1, %if_then ], [ 0, %while_end ]
	%temp_addr_phi = phi i32 [ 0, %if_then ], [ %temp_addr_phi, %while_end ]
	%count_addr_phi = phi i32 [ 0, %if_then ], [ %count_addr_phi, %while_end ]
	%i_addr_phi = phi i32 [ 0, %if_then ], [ %i_addr_phi, %while_end ]
	ret i32 %rootRet
if_end_inline:
;precursors: else_then_inline if_then_inline 
;successors: for_cond 
	%pointee_seed = load i32, i32* @seed, align 4
	%binary_srem = srem i32 %pointee_seed, 10
	%binary_add = add i32 %binary_srem, 1
	store i32 %binary_add, i32* @now, align 4
	%pointee_now = load i32, i32* @now, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_now)
	call void @g_println(i8* %fun_cal_ret_val)
	br label %for_cond
for_cond:
;precursors: for_upd if_end_inline 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %if_end_inline ], [ %pre_add, %for_upd ]
	%temp_addr_phi = phi i32 [ 0, %if_end_inline ], [ %binary_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%binary_sub = sub i32 %pointee_now, 1
	%cmp_slt = icmp slt i32 %i_addr_phi, %binary_sub
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: if_then_inline else_then_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_seed = load i32, i32* @seed, align 4
	%pointee_Q = load i32, i32* @Q, align 4
	%binary_srem = srem i32 %pointee_seed, %pointee_Q
	%pointee_A = load i32, i32* @A, align 4
	%binary_mul = mul i32 %pointee_A, %binary_srem
	%pointee_seed = load i32, i32* @seed, align 4
	%pointee_Q = load i32, i32* @Q, align 4
	%binary_sdiv = sdiv i32 %pointee_seed, %pointee_Q
	%pointee_R = load i32, i32* @R, align 4
	%binary_mul = mul i32 %pointee_R, %binary_sdiv
	%binary_sub = sub i32 %binary_mul, %binary_mul
	%cmp_sge = icmp sge i32 %binary_sub, 0
	br i1 %cmp_sge, label %if_then_inline, label %else_then_inline
for_end:
;precursors: for_cond 
;successors: for_cond_inline 
	%pointee_now = load i32, i32* @now, align 4
	%binary_sub = sub i32 %pointee_now, 1
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %binary_sub
	%pointee_n = load i32, i32* @n, align 4
	%binary_sub = sub i32 %pointee_n, %temp_addr_phi
	store i32 %binary_sub, i32* %arrayptr, align 4
	br label %for_cond_inline
if_then_inline:
;precursors: for_body 
;successors: if_end_inline 
	store i32 %binary_sub, i32* @seed, align 4
	br label %if_end_inline
else_then_inline:
;precursors: for_body 
;successors: if_end_inline 
	%pointee_M = load i32, i32* @M, align 4
	%binary_add = add i32 %binary_sub, %pointee_M
	store i32 %binary_add, i32* @seed, align 4
	br label %if_end_inline
for_cond_inline:
;precursors: for_upd_inline for_end 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
if_end_inline:
;precursors: else_then_inline if_then_inline 
;successors: while_cond 
	%pointee_seed = load i32, i32* @seed, align 4
	%binary_srem = srem i32 %pointee_seed, 10
	%binary_add = add i32 %binary_srem, 1
	store i32 %binary_add, i32* %arrayptr, align 4
	br label %while_cond
for_body_inline:
;precursors: for_cond_inline 
;successors: for_upd_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_arrayptr)
	%resolved_fun_show.0 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_show.0, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_fun_show.0)
	call void @g_print(i8* %binary_add_string)
	br label %for_upd_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%resolved_fun_show.1 = getelementptr inbounds [ 1 x i8 ], [ 1 x i8 ]* @fun_show.1, i32 0, i32 0
	call void @g_println(i8* %resolved_fun_show.1)
	br label %for_cond_inline
while_cond:
;precursors: if_end_inline if_end_inline 
;successors: while_body while_end 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%binary_add = add i32 %pointee_arrayptr, %temp_addr_phi
	%pointee_n = load i32, i32* @n, align 4
	%cmp_sgt = icmp sgt i32 %binary_add, %pointee_n
	br i1 %cmp_sgt, label %while_body, label %while_end
for_upd_inline:
;precursors: for_body_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_cond_inline:
;precursors: for_upd_inline for_end_inline 
;successors: for_body_inline for_end_inline 
	%j_addr_phi = phi i32 [ 65536, %for_end_inline ], [ %j_addr_phi, %for_upd_inline ]
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
while_body:
;precursors: while_cond 
;successors: if_then_inline else_then_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_seed = load i32, i32* @seed, align 4
	%pointee_Q = load i32, i32* @Q, align 4
	%binary_srem = srem i32 %pointee_seed, %pointee_Q
	%pointee_A = load i32, i32* @A, align 4
	%binary_mul = mul i32 %pointee_A, %binary_srem
	%pointee_seed = load i32, i32* @seed, align 4
	%pointee_Q = load i32, i32* @Q, align 4
	%binary_sdiv = sdiv i32 %pointee_seed, %pointee_Q
	%pointee_R = load i32, i32* @R, align 4
	%binary_mul = mul i32 %pointee_R, %binary_sdiv
	%binary_sub = sub i32 %binary_mul, %binary_mul
	%cmp_sge = icmp sge i32 %binary_sub, 0
	br i1 %cmp_sge, label %if_then_inline, label %else_then_inline
while_end:
;precursors: while_cond 
;successors: for_upd 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%binary_add = add i32 %temp_addr_phi, %pointee_arrayptr
	br label %for_upd
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%eq = icmp eq i32 %pointee_arrayptr, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
if_then_inline:
;precursors: while_body 
;successors: if_end_inline 
	store i32 %binary_sub, i32* @seed, align 4
	br label %if_end_inline
else_then_inline:
;precursors: while_body 
;successors: if_end_inline 
	%pointee_M = load i32, i32* @M, align 4
	%binary_add = add i32 %binary_sub, %pointee_M
	store i32 %binary_add, i32* @seed, align 4
	br label %if_end_inline
for_upd:
;precursors: while_end 
;successors: for_cond 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond
if_then_inline:
;precursors: for_body_inline 
;successors: for_cond_inline 
	%binary_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
if_end_inline:
;precursors: for_body_inline for_end_inline 
;successors: for_upd_inline 
	%j_addr_phi = phi i32 [ %j_addr_phi, %for_body_inline ], [ %j_addr_phi, %for_end_inline ]
	br label %for_upd_inline
for_cond_inline:
;precursors: for_end_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
if_end_inline:
;precursors: else_then_inline if_then_inline 
;successors: while_cond 
	%pointee_seed = load i32, i32* @seed, align 4
	%binary_srem = srem i32 %pointee_seed, 10
	%binary_add = add i32 %binary_srem, 1
	store i32 %binary_add, i32* %arrayptr, align 4
	br label %while_cond
for_cond_inline:
;precursors: if_then_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
	%j_addr_phi = phi i32 [ %binary_add, %if_then_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%eq = icmp eq i32 %pointee_arrayptr, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: if_then_inline for_cond_inline 
;successors: while_cond 
	br label %while_cond
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%neq = icmp ne i32 %pointee_arrayptr, 0
	br i1 %neq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: for_body_inline 
;successors: for_end_inline 
	store i32 %i_addr_phi, i32* @now, align 4
	br label %for_end_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
	br label %for_upd_inline
while_cond:
;precursors: if_end for_end_inline 
;successors: if_then_inline if_end_inline 
	%count_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %if_end ]
	%puresz = mul i32 100, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 100, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%pointee_now = load i32, i32* @now, align 4
	%pointee_h = load i32, i32* @h, align 4
	%neq = icmp ne i32 %pointee_now, %pointee_h
	br i1 %neq, label %if_then_inline, label %if_end_inline
if_then_inline:
;precursors: for_body_inline 
;successors: for_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	br label %for_end_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
	br label %for_upd_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
if_then_inline:
;precursors: while_cond 
;successors: rootReturn_inline 
	br label %rootReturn_inline
if_end_inline:
;precursors: while_cond 
;successors: for_cond_inline 
	br label %for_cond_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %j_addr_phi, 1
	br label %for_cond_inline
rootReturn_inline:
;precursors: if_then_inline if_then_inline for_end_inline 
;successors: while_end while_body 
	%j_addr_phi = phi i32 [ 65536, %if_then_inline ], [ %j_addr_phi, %if_then_inline ], [ %j_addr_phi, %for_end_inline ]
	%rootRet = phi i1 [ 0, %if_then_inline ], [ 0, %if_then_inline ], [ 1, %for_end_inline ]
	%i_addr_phi = phi i32 [ 65536, %if_then_inline ], [ %i_addr_phi, %if_then_inline ], [ %i_addr_phi, %for_end_inline ]
	%temp_addr_phi = phi i32 [ 65536, %if_then_inline ], [ %temp_addr_phi, %if_then_inline ], [ %temp_addr_phi, %for_end_inline ]
	br i1 %rootRet, label %while_end, label %while_body
for_cond_inline:
;precursors: for_upd_inline if_end_inline 
;successors: for_body_inline for_end_inline 
	%j_addr_phi = phi i32 [ 0, %if_end_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
while_end:
;precursors: if_then rootReturn_inline 
;successors: rootReturn 
	%count_addr_phi = phi i32 [ %count_addr_phi, %rootReturn_inline ], [ %pre_add, %if_then ]
	%resolved_main.6 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @main.6, i32 0, i32 0
	%fun_cal_ret_val = call i8* @g_toString(i32 %count_addr_phi)
	%binary_add_string = call i8* @g_stringadd(i8* %resolved_main.6, i8* %fun_cal_ret_val)
	%resolved_main.7 = getelementptr inbounds [ 9 x i8 ], [ 9 x i8 ]* @main.7, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_main.7)
	call void @g_println(i8* %binary_add_string)
	br label %rootReturn
while_body:
;precursors: rootReturn_inline 
;successors: for_cond_inline 
	%resolved_main.4 = getelementptr inbounds [ 6 x i8 ], [ 6 x i8 ]* @main.4, i32 0, i32 0
	%pre_add = add i32 %count_addr_phi, 1
	%fun_cal_ret_val = call i8* @g_toString(i32 %pre_add)
	%binary_add_string = call i8* @g_stringadd(i8* %resolved_main.4, i8* %fun_cal_ret_val)
	%resolved_main.5 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @main.5, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_main.5)
	call void @g_println(i8* %binary_add_string)
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_upd_inline 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	br label %for_upd_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_cond_inline:
;precursors: for_upd_inline while_body 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %while_body ], [ %binary_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_upd_inline:
;precursors: for_body_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %j_addr_phi, 1
	br label %for_cond_inline
for_cond_inline:
;precursors: for_end_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %for_upd_inline ]
	%temp_addr_phi = phi i32 [ 65536, %for_end_inline ], [ %temp_addr_phi, %for_upd_inline ]
	%j_addr_phi = phi i32 [ %j_addr_phi, %for_end_inline ], [ %j_addr_phi, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%binary_sub = sub i32 %pointee_now, 1
	%cmp_slt = icmp slt i32 %i_addr_phi, %binary_sub
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_upd_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pre_sub = sub i32 %pointee_arrayptr, 1
	store i32 %pre_sub, i32* %arrayptr, align 4
	%binary_add = add i32 %i_addr_phi, 1
	br label %for_upd_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%pointee_now = load i32, i32* @now, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %pointee_now
	%pointee_now = load i32, i32* @now, align 4
	store i32 %pointee_now, i32* %arrayptr, align 4
	%pointee_now = load i32, i32* @now, align 4
	%suf_tmp = add i32 %pointee_now, 1
	store i32 %suf_tmp, i32* @now, align 4
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%binary_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_upd_inline:
;precursors: for_body_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_cond_inline:
;precursors: for_upd_inline for_end_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %for_upd_inline ]
	%j_addr_phi = phi i32 [ 65536, %for_end_inline ], [ %j_addr_phi, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_cond_inline:
;precursors: for_body_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
	%temp_addr_phi = phi i32 [ %temp_addr_phi, %for_body_inline ], [ %temp_addr_phi, %for_upd_inline ]
	%j_addr_phi = phi i32 [ %binary_add, %for_body_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_cond_inline:
;precursors: for_upd_inline for_end_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%eq = icmp eq i32 %pointee_arrayptr, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%cmp_sgt = icmp sgt i32 %pointee_arrayptr, %pointee_arrayptr
	br i1 %cmp_sgt, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_upd_inline 
	br label %for_upd_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%binary_add = add i32 %i_addr_phi, 1
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%neq = icmp ne i32 %pointee_arrayptr, %binary_add
	br i1 %neq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: rootReturn_inline 
	br label %rootReturn_inline
if_then_inline:
;precursors: for_body_inline 
;successors: for_cond_inline 
	%binary_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
if_end_inline:
;precursors: for_body_inline for_end_inline 
;successors: for_upd_inline 
	%j_addr_phi = phi i32 [ %j_addr_phi, %for_body_inline ], [ %j_addr_phi, %for_end_inline ]
	br label %for_upd_inline
for_cond_inline:
;precursors: for_end_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
if_then_inline:
;precursors: for_body_inline 
;successors: if_end_inline 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	br label %if_end_inline
if_end_inline:
;precursors: if_then_inline for_body_inline 
;successors: for_upd_inline 
	%temp_addr_phi = phi i32 [ %temp_addr_phi, %for_body_inline ], [ %pointee_arrayptr, %if_then_inline ]
	br label %for_upd_inline
for_upd_inline:
;precursors: for_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
if_then_inline:
;precursors: for_body_inline 
;successors: rootReturn_inline 
	br label %rootReturn_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
	br label %for_upd_inline
for_cond_inline:
;precursors: if_then_inline for_upd_inline 
;successors: for_body_inline for_end_inline 
	%j_addr_phi = phi i32 [ %binary_add, %if_then_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%eq = icmp eq i32 %pointee_arrayptr, 0
	br i1 %eq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: if_then_inline for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %j_addr_phi, 1
	br label %for_cond_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%neq = icmp ne i32 %pointee_arrayptr, 0
	br i1 %neq, label %if_then_inline, label %if_end_inline
for_end_inline:
;precursors: for_cond_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: for_body_inline 
;successors: for_end_inline 
	store i32 %i_addr_phi, i32* @now, align 4
	br label %for_end_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
	br label %for_upd_inline
for_cond_inline:
;precursors: for_upd_inline for_end_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %pre_add, %for_upd_inline ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
if_then_inline:
;precursors: for_body_inline 
;successors: for_end_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	br label %for_end_inline
if_end_inline:
;precursors: for_body_inline 
;successors: for_upd_inline 
	br label %for_upd_inline
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_upd_inline 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_arrayptr)
	%resolved_fun_show.0 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_show.0, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_fun_show.0)
	call void @g_print(i8* %binary_add_string)
	br label %for_upd_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: if_then if_end 
	%resolved_fun_show.1 = getelementptr inbounds [ 1 x i8 ], [ 1 x i8 ]* @fun_show.1, i32 0, i32 0
	call void @g_println(i8* %resolved_fun_show.1)
	%cmp_sgt = icmp sgt i32 %pre_add, 300
	br i1 %cmp_sgt, label %if_then, label %if_end
for_upd_inline:
;precursors: if_end_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %j_addr_phi, 1
	br label %for_cond_inline
for_upd_inline:
;precursors: for_body_inline 
;successors: for_cond_inline 
	%pre_add = add i32 %i_addr_phi, 1
	br label %for_cond_inline
if_then:
;precursors: for_end_inline 
;successors: while_end 
	br label %while_end
if_end:
;precursors: for_end_inline 
;successors: while_cond 
	br label %while_cond
}
