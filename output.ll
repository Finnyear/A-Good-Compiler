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
define i1 @fun_win(){
entry:
;precursors: 
;successors: if_then if_end 
	%puresz = mul i32 100, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 100, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%pointee_now = load i32, i32* @now, align 4
	%pointee_h = load i32, i32* @h, align 4
	%neq = icmp ne i32 %pointee_now, %pointee_h
	br i1 %neq, label %if_then, label %if_end
for_body:
;precursors: for_cond 
;successors: if_then for_upd 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%binary_add = add i32 %i_addr_phi, 1
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%neq = icmp ne i32 %pointee_arrayptr, %binary_add
	br i1 %neq, label %if_then, label %for_upd
for_end:
;precursors: for_cond 
;successors: for_cond 
	mv i32 %i_addr_phi 0
	br label %for_cond
for_body:
;precursors: for_cond 
;successors: for_upd 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: for_cond 
	mv i32 %j_addr_phi %j_addr_phi
	mv i32 %temp_addr_phi 65536
	mv i32 %i_addr_phi 0
	br label %for_cond
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pre_add = add i32 %i_addr_phi, 1
	mv i32 %i_addr_phi %pre_add
	br label %for_cond
if_then:
;precursors: entry 
;successors: rootReturn 
	mv i32 %temp_addr_phi 65536
	mv i32 %j_addr_phi 65536
	mv i32 %i_addr_phi 65536
	mv i1 %rootRet 0
	br label %rootReturn
if_then:
;precursors: for_body 
;successors: for_upd 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	mv i32 %temp_addr_phi %pointee_arrayptr
	br label %for_upd
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pre_add = add i32 %j_addr_phi, 1
	mv i32 %j_addr_phi %pre_add
	br label %for_cond
for_cond:
;precursors: if_end for_upd 
;successors: for_body for_end 
	%j_addr_phi = phi i32 [ 0, %if_end ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_end
for_end:
;precursors: for_cond 
;successors: rootReturn 
	mv i32 %temp_addr_phi %temp_addr_phi
	mv i32 %j_addr_phi %j_addr_phi
	mv i32 %i_addr_phi %i_addr_phi
	mv i1 %rootRet 1
	br label %rootReturn
for_upd:
;precursors: if_then addphi_mid 
;successors: for_cond 
	%pre_add = add i32 %j_addr_phi, 1
	mv i32 %temp_addr_phi %temp_addr_phi
	mv i32 %j_addr_phi %pre_add
	br label %for_cond
if_then:
;precursors: for_body 
;successors: rootReturn 
	mv i32 %temp_addr_phi %temp_addr_phi
	mv i32 %j_addr_phi %j_addr_phi
	mv i32 %i_addr_phi %i_addr_phi
	mv i1 %rootRet 0
	br label %rootReturn
if_end:
;precursors: entry 
;successors: for_cond 
	mv i32 %j_addr_phi 0
	br label %for_cond
for_cond:
;precursors: for_end for_upd 
;successors: for_body for_end 
	%j_addr_phi = phi i32 [ %j_addr_phi, %for_end ], [ %j_addr_phi, %for_upd ]
	%temp_addr_phi = phi i32 [ 65536, %for_end ], [ %temp_addr_phi, %for_upd ]
	%i_addr_phi = phi i32 [ 0, %for_end ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%binary_sub = sub i32 %pointee_now, 1
	%cmp_slt = icmp slt i32 %i_addr_phi, %binary_sub
	br i1 %cmp_slt, label %for_body, label %for_end
for_upd:
;precursors: for_cond 
;successors: for_cond 
	%pre_add = add i32 %i_addr_phi, 1
	mv i32 %j_addr_phi %j_addr_phi
	mv i32 %temp_addr_phi %temp_addr_phi
	mv i32 %i_addr_phi %pre_add
	br label %for_cond
for_body:
;precursors: for_cond 
;successors: for_cond 
	%binary_add = add i32 %i_addr_phi, 1
	mv i32 %temp_addr_phi %temp_addr_phi
	mv i32 %j_addr_phi %binary_add
	br label %for_cond
for_cond:
;precursors: for_body for_upd 
;successors: for_body for_upd 
	%temp_addr_phi = phi i32 [ %temp_addr_phi, %for_body ], [ %temp_addr_phi, %for_upd ]
	%j_addr_phi = phi i32 [ %binary_add, %for_body ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_upd
for_cond:
;precursors: for_end for_upd 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %for_end ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: if_then addphi_mid 
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %i_addr_phi
	%arrayptr = getelementptr inbounds i32, i32* %new_array, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%cmp_sgt = icmp sgt i32 %pointee_arrayptr, %pointee_arrayptr
	br i1 %cmp_sgt, label %if_then, label %addphi_mid
rootReturn:
;precursors: if_then if_then for_end 
;successors: 
	%temp_addr_phi = phi i32 [ 65536, %if_then ], [ %temp_addr_phi, %if_then ], [ %temp_addr_phi, %for_end ]
	%j_addr_phi = phi i32 [ 65536, %if_then ], [ %j_addr_phi, %if_then ], [ %j_addr_phi, %for_end ]
	%i_addr_phi = phi i32 [ 65536, %if_then ], [ %i_addr_phi, %if_then ], [ %i_addr_phi, %for_end ]
	%rootRet = phi i1 [ 0, %if_then ], [ 0, %if_then ], [ 1, %for_end ]
	ret i1 %rootRet
addphi_mid:
;precursors: for_body 
;successors: for_upd 
	mv i32 %temp_addr_phi %temp_addr_phi
	br label %for_upd
}
define void @fun_move(){
entry:
;precursors: 
;successors: for_cond 
	mv i32 %i_addr_phi 0
	br label %for_cond
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pre_sub = sub i32 %pointee_arrayptr, -1
	store i32 %pre_sub, i32* %arrayptr, align 4
	%binary_add = add i32 %i_addr_phi, 1
	br label %for_upd
for_upd:
;precursors: for_body 
;successors: for_cond 
	mv i32 %i_addr_phi %binary_add
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: 
	%pointee_a = load i32*, i32** @a, align 4
	%pointee_now = load i32, i32* @now, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %pointee_now
	%pointee_now = load i32, i32* @now, align 4
	store i32 %pointee_now, i32* %arrayptr, align 4
	%pointee_now = load i32, i32* @now, align 4
	%suf_tmp = add i32 %pointee_now, 1
	store i32 %suf_tmp, i32* @now, align 4
	ret void
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %entry ], [ %binary_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_end
}
define void @fun_swap(i32 %param_x, i32 %param_y){
entry:
;precursors: 
;successors: 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %param_x
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %param_x
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %param_y
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %param_y
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	ret void
}
define i1 @fun_pd(i32 %param_x){
for_body:
;precursors: for_cond 
;successors: if_then for_upd 
	%pointee_h = load i32, i32* @h, align 4
	%binary_add = add i32 %pointee_h, 1
	%pointee_h = load i32, i32* @h, align 4
	%binary_mul = mul i32 %pointee_h, %binary_add
	%binary_sdiv = sdiv i32 %binary_mul, 2
	%eq = icmp eq i32 %param_x, %binary_sdiv
	br i1 %eq, label %if_then, label %for_upd
for_end:
;precursors: for_cond 
;successors: rootReturn 
	mv i1 %rootRet 0
	br label %rootReturn
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_h = load i32, i32* @h, align 4
	%pre_add = add i32 %pointee_h, 1
	store i32 %pre_add, i32* @h, align 4
	br label %for_cond
for_cond:
;precursors: for_upd 
;successors: for_body for_end 
	%pointee_h = load i32, i32* @h, align 4
	%cmp_sle = icmp sle i32 %pointee_h, %param_x
	br i1 %cmp_sle, label %for_body, label %for_end
if_then:
;precursors: for_body 
;successors: rootReturn 
	mv i1 %rootRet 1
	br label %rootReturn
rootReturn:
;precursors: if_then for_end 
;successors: 
	%rootRet = phi i1 [ 1, %if_then ], [ 0, %for_end ]
	ret i1 %rootRet
}
define void @__init(){
entry:
;precursors: 
;successors: 
	store i32 48271, i32* @A, align 4
	store i32 2147483647, i32* @M, align 4
	store i32 1, i32* @seed, align 4
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: if_end if_then 
	call void @__init()
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
	%fun_cal_ret_val = call i1 @fun_pd(i32 %pointee_n)
	br i1 %fun_cal_ret_val, label %if_end, label %if_then
for_body:
;precursors: for_cond 
;successors: while_cond 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%fun_cal_ret_val = call i32 @fun_random()
	%binary_srem = srem i32 %fun_cal_ret_val, 10
	%binary_add = add i32 %binary_srem, 1
	store i32 %binary_add, i32* %arrayptr, align 4
	br label %while_cond
for_cond:
;precursors: if_end for_upd 
;successors: for_body for_end 
	%temp_addr_phi = phi i32 [ 0, %if_end ], [ %binary_add, %for_upd ]
	%i_addr_phi = phi i32 [ 0, %if_end ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%binary_sub = sub i32 %pointee_now, 1
	%cmp_slt = icmp slt i32 %i_addr_phi, %binary_sub
	br i1 %cmp_slt, label %for_body, label %for_end
while_cond:
;precursors: for_body while_body 
;successors: while_body while_end 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%binary_add = add i32 %pointee_arrayptr, %temp_addr_phi
	%pointee_n = load i32, i32* @n, align 4
	%cmp_sgt = icmp sgt i32 %binary_add, %pointee_n
	br i1 %cmp_sgt, label %while_body, label %while_end
while_end:
;precursors: while_cond 
;successors: for_upd 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%binary_add = add i32 %temp_addr_phi, %pointee_arrayptr
	br label %for_upd
if_end:
;precursors: entry 
;successors: for_cond 
	%resolved_main.3 = getelementptr inbounds [ 13 x i8 ], [ 13 x i8 ]* @main.3, i32 0, i32 0
	call void @g_println(i8* %resolved_main.3)
	call void @fun_initialize(i32 3654898)
	%fun_cal_ret_val = call i32 @fun_random()
	%binary_srem = srem i32 %fun_cal_ret_val, 10
	%binary_add = add i32 %binary_srem, 1
	store i32 %binary_add, i32* @now, align 4
	%pointee_now = load i32, i32* @now, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_now)
	call void @g_println(i8* %fun_cal_ret_val)
	mv i32 %temp_addr_phi 0
	mv i32 %i_addr_phi 0
	br label %for_cond
while_body:
;precursors: while_cond 
;successors: while_cond 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%fun_cal_ret_val = call i32 @fun_random()
	%binary_srem = srem i32 %fun_cal_ret_val, 10
	%binary_add = add i32 %binary_srem, 1
	store i32 %binary_add, i32* %arrayptr, align 4
	br label %while_cond
for_end:
;precursors: for_cond 
;successors: while_cond 
	%pointee_now = load i32, i32* @now, align 4
	%binary_sub = sub i32 %pointee_now, 1
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %binary_sub
	%pointee_n = load i32, i32* @n, align 4
	%binary_sub = sub i32 %pointee_n, %temp_addr_phi
	store i32 %binary_sub, i32* %arrayptr, align 4
	call void @fun_show()
	call void @fun_merge()
	mv i32 %count_addr_phi 0
	br label %while_cond
for_upd:
;precursors: while_end 
;successors: for_cond 
	%pre_add = add i32 %i_addr_phi, 1
	mv i32 %temp_addr_phi %binary_add
	mv i32 %i_addr_phi %pre_add
	br label %for_cond
while_cond:
;precursors: for_end while_body 
;successors: while_end while_body 
	%count_addr_phi = phi i32 [ 0, %for_end ], [ %pre_add, %while_body ]
	%fun_cal_ret_val = call i1 @fun_win()
	br i1 %fun_cal_ret_val, label %while_end, label %while_body
while_end:
;precursors: while_cond 
;successors: rootReturn 
	%resolved_main.6 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @main.6, i32 0, i32 0
	%fun_cal_ret_val = call i8* @g_toString(i32 %count_addr_phi)
	%binary_add_string = call i8* @g_stringadd(i8* %resolved_main.6, i8* %fun_cal_ret_val)
	%resolved_main.7 = getelementptr inbounds [ 9 x i8 ], [ 9 x i8 ]* @main.7, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_main.7)
	call void @g_println(i8* %binary_add_string)
	mv i32 %i_addr_phi %i_addr_phi
	mv i32 %count_addr_phi %count_addr_phi
	mv i32 %temp_addr_phi %temp_addr_phi
	mv i32 %rootRet 0
	br label %rootReturn
while_body:
;precursors: while_cond 
;successors: while_cond 
	%resolved_main.4 = getelementptr inbounds [ 6 x i8 ], [ 6 x i8 ]* @main.4, i32 0, i32 0
	%pre_add = add i32 %count_addr_phi, 1
	%fun_cal_ret_val = call i8* @g_toString(i32 %pre_add)
	%binary_add_string = call i8* @g_stringadd(i8* %resolved_main.4, i8* %fun_cal_ret_val)
	%resolved_main.5 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @main.5, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_main.5)
	call void @g_println(i8* %binary_add_string)
	call void @fun_move()
	call void @fun_merge()
	call void @fun_show()
	mv i32 %count_addr_phi %pre_add
	br label %while_cond
if_then:
;precursors: entry 
;successors: rootReturn 
	%resolved_main.2 = getelementptr inbounds [ 80 x i8 ], [ 80 x i8 ]* @main.2, i32 0, i32 0
	call void @g_println(i8* %resolved_main.2)
	mv i32 %i_addr_phi 0
	mv i32 %count_addr_phi 0
	mv i32 %temp_addr_phi 0
	mv i32 %rootRet 1
	br label %rootReturn
rootReturn:
;precursors: if_then while_end 
;successors: 
	%i_addr_phi = phi i32 [ 0, %if_then ], [ %i_addr_phi, %while_end ]
	%count_addr_phi = phi i32 [ 0, %if_then ], [ %count_addr_phi, %while_end ]
	%temp_addr_phi = phi i32 [ 0, %if_then ], [ %temp_addr_phi, %while_end ]
	%rootRet = phi i32 [ 1, %if_then ], [ 0, %while_end ]
	ret i32 %rootRet
}
define void @fun_show(){
entry:
;precursors: 
;successors: for_cond 
	mv i32 %i_addr_phi 0
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %entry ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_arrayptr)
	%resolved_fun_show.0 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_show.0, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_fun_show.0)
	call void @g_print(i8* %binary_add_string)
	br label %for_upd
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pre_add = add i32 %i_addr_phi, 1
	mv i32 %i_addr_phi %pre_add
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: 
	%resolved_fun_show.1 = getelementptr inbounds [ 1 x i8 ], [ 1 x i8 ]* @fun_show.1, i32 0, i32 0
	call void @g_println(i8* %resolved_fun_show.1)
	ret void
}
define i32 @fun_random(){
entry:
;precursors: 
;successors: if_then else_then 
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
	br i1 %cmp_sge, label %if_then, label %else_then
if_end:
;precursors: if_then else_then 
;successors: 
	%pointee_seed = load i32, i32* @seed, align 4
	ret i32 %pointee_seed
else_then:
;precursors: entry 
;successors: if_end 
	%pointee_M = load i32, i32* @M, align 4
	%binary_add = add i32 %binary_sub, %pointee_M
	store i32 %binary_add, i32* @seed, align 4
	br label %if_end
if_then:
;precursors: entry 
;successors: if_end 
	store i32 %binary_sub, i32* @seed, align 4
	br label %if_end
}
define void @fun_initialize(i32 %param_val){
entry:
;precursors: 
;successors: 
	store i32 %param_val, i32* @seed, align 4
	ret void
}
define void @fun_merge(){
entry:
;precursors: 
;successors: for_cond 
	mv i32 %i_addr_phi 0
	mv i32 %j_addr_phi 65536
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: for_cond 
	mv i32 %i_addr_phi 0
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %entry ], [ %pre_add, %for_upd ]
	%j_addr_phi = phi i32 [ 65536, %entry ], [ %j_addr_phi, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_end
if_then:
;precursors: for_body 
;successors: for_end 
	call void @fun_swap(i32 %i_addr_phi, i32 %j_addr_phi)
	br label %for_end
for_cond:
;precursors: if_then for_upd 
;successors: for_body for_end 
	%j_addr_phi = phi i32 [ %binary_add, %if_then ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: if_then addphi_mid 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%eq = icmp eq i32 %pointee_arrayptr, 0
	br i1 %eq, label %if_then, label %addphi_mid
for_body:
;precursors: for_cond 
;successors: if_then for_upd 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %i_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%eq = icmp eq i32 %pointee_arrayptr, 0
	br i1 %eq, label %if_then, label %for_upd
if_then:
;precursors: for_body 
;successors: for_end 
	store i32 %i_addr_phi, i32* @now, align 4
	br label %for_end
if_then:
;precursors: for_body 
;successors: for_cond 
	%binary_add = add i32 %i_addr_phi, 1
	mv i32 %j_addr_phi %binary_add
	br label %for_cond
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pre_add = add i32 %i_addr_phi, 1
	mv i32 %i_addr_phi %pre_add
	br label %for_cond
for_body:
;precursors: for_cond 
;successors: if_then for_upd 
	%pointee_a = load i32*, i32** @a, align 4
	%arrayptr = getelementptr inbounds i32, i32* %pointee_a, i32 %j_addr_phi
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%neq = icmp ne i32 %pointee_arrayptr, 0
	br i1 %neq, label %if_then, label %for_upd
for_end:
;precursors: if_then for_cond 
;successors: 
	ret void
for_cond:
;precursors: for_end for_upd 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %for_end ], [ %pre_add, %for_upd ]
	%pointee_now = load i32, i32* @now, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_now
	br i1 %cmp_slt, label %for_body, label %for_end
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pre_add = add i32 %j_addr_phi, 1
	mv i32 %j_addr_phi %pre_add
	br label %for_cond
for_end:
;precursors: if_then for_cond 
;successors: for_upd 
	mv i32 %j_addr_phi %j_addr_phi
	br label %for_upd
for_upd:
;precursors: addphi_mid for_end 
;successors: for_cond 
	%pre_add = add i32 %i_addr_phi, 1
	mv i32 %i_addr_phi %pre_add
	mv i32 %j_addr_phi %j_addr_phi
	br label %for_cond
addphi_mid:
;precursors: for_body 
;successors: for_upd 
	mv i32 %j_addr_phi %j_addr_phi
	br label %for_upd
}
