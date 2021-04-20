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
define i32 @fun_test(i32 %param_q, i32 %param_w, i32 %param_e, i32 %param_r, i32 %param_t, i32 %param_y, i32 %param_u, i32 %param_i, i32 %param_o, i32 %param_p){
entry:
;precursors: 
;successors: if_then else_then 
	%eq = icmp eq i32 %param_q, %param_w
	br i1 %eq, label %if_then, label %else_then
if_then:
;precursors: entry 
;successors: if_then lor_cond 
	%neq = icmp ne i32 %param_w, %param_e
	br i1 %neq, label %if_then, label %lor_cond
else_then:
;precursors: entry 
;successors: rootReturn 
	%binary_add = add i32 %param_q, %param_w
	%binary_add = add i32 %binary_add, %param_q
	%rootRet = add i32 %binary_add, 0
	br label %rootReturn
if_then:
;precursors: if_then lor_cond 
;successors: rootReturn 
	%fun_cal_ret_val = call i32 @fun_test(i32 %param_w, i32 %param_e, i32 %param_r, i32 %param_t, i32 %param_y, i32 %param_u, i32 %param_i, i32 %param_o, i32 %param_p, i32 %param_q)
	%binary_add = add i32 %fun_cal_ret_val, 1
	%rootRet = add i32 %binary_add, 0
	br label %rootReturn
lor_cond:
;precursors: if_then 
;successors: if_then else_then 
	%neq = icmp ne i32 %param_e, %param_r
	br i1 %neq, label %if_then, label %else_then
rootReturn:
;precursors: if_then else_then else_then 
;successors: 
	%rootRet = phi i32 [ %binary_add, %if_then ], [ %binary_add, %else_then ], [ %binary_add, %else_then ]
	ret i32 %rootRet
else_then:
;precursors: lor_cond 
;successors: rootReturn 
	%binary_sub = sub i32 %param_y, 1
	%binary_sub = sub i32 %param_u, 2
	%fun_cal_ret_val = call i32 @fun_test(i32 %param_w, i32 %param_e, i32 %param_r, i32 %param_t, i32 %binary_sub, i32 %binary_sub, i32 %param_i, i32 %param_o, i32 %param_p, i32 %param_q)
	%binary_add = add i32 %fun_cal_ret_val, 2
	%rootRet = add i32 %binary_add, 0
	br label %rootReturn
}
define i32 @main(){
entry:
;precursors: 
;successors: for_body 
	%w_addr_phi = add i32 65536, 0
	%rng_seed_addr_phi = add i32 19260817, 0
	%y_addr_phi = add i32 65536, 0
	%zz_addr_phi = add i32 65536, 0
	%u_addr_phi = add i32 65536, 0
	%z_addr_phi = add i32 65536, 0
	%x_addr_phi = add i32 65536, 0
	%sum_addr_phi = add i32 0, 0
	%v_addr_phi = add i32 65536, 0
	br label %for_body
for_body:
;precursors: for_upd entry 
;successors: if_then_inline_inline else_then_inline_inline 
	%w_addr_phi = phi i32 [ 65536, %entry ], [ %binary_and, %for_upd ]
	%rng_seed_addr_phi = phi i32 [ 19260817, %entry ], [ %binary_and, %for_upd ]
	%y_addr_phi = phi i32 [ 65536, %entry ], [ %binary_and, %for_upd ]
	%zz_addr_phi = phi i32 [ 65536, %entry ], [ %binary_and, %for_upd ]
	%u_addr_phi = phi i32 [ 65536, %entry ], [ %binary_and, %for_upd ]
	%z_addr_phi = phi i32 [ 65536, %entry ], [ %binary_and, %for_upd ]
	%x_addr_phi = phi i32 [ 65536, %entry ], [ %binary_and, %for_upd ]
	%sum_addr_phi = phi i32 [ 0, %entry ], [ %binary_xor, %for_upd ]
	%v_addr_phi = phi i32 [ 65536, %entry ], [ %binary_and, %for_upd ]
	%binary_shl = shl i32 %rng_seed_addr_phi, 13
	%binary_xor = xor i32 %rng_seed_addr_phi, %binary_shl
	%binary_shl = shl i32 1, 31
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline, label %else_then_inline_inline
if_then_inline_inline:
;precursors: for_body 
;successors: rootReturn_inline_inline 
	%binary_ashr = ashr i32 %binary_xor, 17
	%rootRet = add i32 %binary_ashr, 0
	br label %rootReturn_inline_inline
else_then_inline_inline:
;precursors: for_body 
;successors: rootReturn_inline_inline 
	%binary_sub = sub i32 31, 17
	%binary_shl = shl i32 1, %binary_sub
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 %binary_shl, %binary_ashr
	%rootRet = add i32 %binary_or, 0
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline if_then_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline ], [ %binary_or, %else_then_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_shl = shl i32 %binary_and, 13
	%binary_xor = xor i32 %binary_and, %binary_shl
	%binary_shl = shl i32 1, 31
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline, label %else_then_inline_inline
if_then_inline_inline:
;precursors: rootReturn_inline_inline 
;successors: rootReturn_inline_inline 
	%binary_ashr = ashr i32 %binary_xor, 17
	%rootRet = add i32 %binary_ashr, 0
	br label %rootReturn_inline_inline
else_then_inline_inline:
;precursors: rootReturn_inline_inline 
;successors: rootReturn_inline_inline 
	%binary_sub = sub i32 31, 17
	%binary_shl = shl i32 1, %binary_sub
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 %binary_shl, %binary_ashr
	%rootRet = add i32 %binary_or, 0
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline if_then_inline_inline 
;successors: if_then for_end 
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline ], [ %binary_or, %else_then_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_and = and i32 %binary_and, 255
	%binary_and = and i32 %binary_and, 255
	%neq = icmp ne i32 %binary_and, %binary_and
	br i1 %neq, label %if_then, label %for_end
if_then:
;precursors: rootReturn_inline_inline 
;successors: if_then_inline else_then_inline 
	%binary_shl = shl i32 %binary_and, 13
	%binary_xor = xor i32 %binary_and, %binary_shl
	%binary_shl = shl i32 1, 31
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline, label %else_then_inline
for_end:
;precursors: rootReturn_inline_inline 
;successors: 
	%binary_sub = sub i32 %sum_addr_phi, 19
	ret i32 %binary_sub
if_then_inline:
;precursors: if_then 
;successors: rootReturn_inline 
	%binary_ashr = ashr i32 %binary_xor, 17
	%rootRet = add i32 %binary_ashr, 0
	br label %rootReturn_inline
else_then_inline:
;precursors: if_then 
;successors: rootReturn_inline 
	%binary_sub = sub i32 31, 17
	%binary_shl = shl i32 1, %binary_sub
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 %binary_shl, %binary_ashr
	%rootRet = add i32 %binary_or, 0
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline if_then_inline 
;successors: if_then_inline else_then_inline 
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline ], [ %binary_or, %else_then_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_shl = shl i32 %binary_and, 13
	%binary_xor = xor i32 %binary_and, %binary_shl
	%binary_shl = shl i32 1, 31
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline, label %else_then_inline
if_then_inline:
;precursors: rootReturn_inline 
;successors: rootReturn_inline 
	%binary_ashr = ashr i32 %binary_xor, 17
	%rootRet = add i32 %binary_ashr, 0
	br label %rootReturn_inline
else_then_inline:
;precursors: rootReturn_inline 
;successors: rootReturn_inline 
	%binary_sub = sub i32 31, 17
	%binary_shl = shl i32 1, %binary_sub
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 %binary_shl, %binary_ashr
	%rootRet = add i32 %binary_or, 0
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline if_then_inline 
;successors: if_then_inline else_then_inline 
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline ], [ %binary_or, %else_then_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_shl = shl i32 %binary_and, 13
	%binary_xor = xor i32 %binary_and, %binary_shl
	%binary_shl = shl i32 1, 31
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline, label %else_then_inline
if_then_inline:
;precursors: rootReturn_inline 
;successors: rootReturn_inline 
	%binary_ashr = ashr i32 %binary_xor, 17
	%rootRet = add i32 %binary_ashr, 0
	br label %rootReturn_inline
else_then_inline:
;precursors: rootReturn_inline 
;successors: rootReturn_inline 
	%binary_sub = sub i32 31, 17
	%binary_shl = shl i32 1, %binary_sub
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 %binary_shl, %binary_ashr
	%rootRet = add i32 %binary_or, 0
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline if_then_inline 
;successors: if_then_inline_inline else_then_inline_inline 
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline ], [ %binary_or, %else_then_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_shl = shl i32 %binary_and, 13
	%binary_xor = xor i32 %binary_and, %binary_shl
	%binary_shl = shl i32 1, 31
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline, label %else_then_inline_inline
if_then_inline_inline:
;precursors: rootReturn_inline 
;successors: rootReturn_inline_inline 
	%binary_ashr = ashr i32 %binary_xor, 17
	%rootRet = add i32 %binary_ashr, 0
	br label %rootReturn_inline_inline
else_then_inline_inline:
;precursors: rootReturn_inline 
;successors: rootReturn_inline_inline 
	%binary_sub = sub i32 31, 17
	%binary_shl = shl i32 1, %binary_sub
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 %binary_shl, %binary_ashr
	%rootRet = add i32 %binary_or, 0
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline if_then_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline ], [ %binary_or, %else_then_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_shl = shl i32 %binary_and, 13
	%binary_xor = xor i32 %binary_and, %binary_shl
	%binary_shl = shl i32 1, 31
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline, label %else_then_inline_inline
if_then_inline_inline:
;precursors: rootReturn_inline_inline 
;successors: rootReturn_inline_inline 
	%binary_ashr = ashr i32 %binary_xor, 17
	%rootRet = add i32 %binary_ashr, 0
	br label %rootReturn_inline_inline
else_then_inline_inline:
;precursors: rootReturn_inline_inline 
;successors: rootReturn_inline_inline 
	%binary_sub = sub i32 31, 17
	%binary_shl = shl i32 1, %binary_sub
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 %binary_shl, %binary_ashr
	%rootRet = add i32 %binary_or, 0
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline if_then_inline_inline 
;successors: for_upd 
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline ], [ %binary_or, %else_then_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_and = and i32 %binary_and, 3
	%binary_ashr = ashr i32 %binary_and, 28
	%binary_and = and i32 %binary_and, 1
	%binary_ashr = ashr i32 %binary_and, 29
	%binary_ashr = ashr i32 %binary_and, 25
	%binary_and = and i32 %binary_and, 31
	%binary_ashr = ashr i32 %binary_and, 15
	%binary_and = and i32 %binary_and, 32767
	%binary_ashr = ashr i32 %binary_and, 15
	%binary_and = and i32 %binary_and, 32767
	%fun_cal_ret_val = call i32 @fun_test(i32 %binary_and, i32 %binary_ashr, i32 %binary_and, i32 %binary_ashr, i32 %binary_ashr, i32 %binary_and, i32 %binary_ashr, i32 %binary_and, i32 %binary_ashr, i32 %binary_and)
	%binary_xor = xor i32 %sum_addr_phi, %fun_cal_ret_val
	br label %for_upd
for_upd:
;precursors: rootReturn_inline_inline 
;successors: for_body 
	%w_addr_phi = add i32 %binary_and, 0
	%rng_seed_addr_phi = add i32 %binary_and, 0
	%y_addr_phi = add i32 %binary_and, 0
	%zz_addr_phi = add i32 %binary_and, 0
	%u_addr_phi = add i32 %binary_and, 0
	%z_addr_phi = add i32 %binary_and, 0
	%x_addr_phi = add i32 %binary_and, 0
	%sum_addr_phi = add i32 %binary_xor, 0
	%v_addr_phi = add i32 %binary_and, 0
	br label %for_body
}
