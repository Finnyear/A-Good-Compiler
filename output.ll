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
define i32 @fun_qpow(i32 %param_a, i32 %param_p, i32 %param_mod){
entry:
;precursors: 
;successors: while_cond 
	mv i32 %y_addr_phi %param_a
	mv i32 %p_addr_phi %param_p
	mv i32 %t_addr_phi 1
	br label %while_cond
while_body:
;precursors: while_cond 
;successors: if_then addphi_mid 
	%binary_and = and i32 %p_addr_phi, 1
	%eq = icmp eq i32 %binary_and, 1
	br i1 %eq, label %if_then, label %addphi_mid
if_then:
;precursors: while_body 
;successors: if_end 
	%binary_mul = mul i32 %t_addr_phi, %y_addr_phi
	%binary_srem = srem i32 %binary_mul, %param_mod
	mv i32 %t_addr_phi %binary_srem
	br label %if_end
while_end:
;precursors: while_cond 
;successors: 
	ret i32 %t_addr_phi
while_cond:
;precursors: entry if_end 
;successors: while_body while_end 
	%y_addr_phi = phi i32 [ %param_a, %entry ], [ %binary_srem, %if_end ]
	%p_addr_phi = phi i32 [ %param_p, %entry ], [ %binary_sdiv, %if_end ]
	%t_addr_phi = phi i32 [ 1, %entry ], [ %t_addr_phi, %if_end ]
	%cmp_sgt = icmp sgt i32 %p_addr_phi, 0
	br i1 %cmp_sgt, label %while_body, label %while_end
if_end:
;precursors: if_then addphi_mid 
;successors: while_cond 
	%t_addr_phi = phi i32 [ %t_addr_phi, %addphi_mid ], [ %binary_srem, %if_then ]
	%binary_mul = mul i32 %y_addr_phi, %y_addr_phi
	%binary_srem = srem i32 %binary_mul, %param_mod
	%binary_sdiv = sdiv i32 %p_addr_phi, 2
	mv i32 %y_addr_phi %binary_srem
	mv i32 %p_addr_phi %binary_sdiv
	mv i32 %t_addr_phi %t_addr_phi
	br label %while_cond
addphi_mid:
;precursors: while_body 
;successors: if_end 
	mv i32 %t_addr_phi %t_addr_phi
	br label %if_end
}
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
	%fun_cal_ret_val = call i32 @fun_qpow(i32 2, i32 10, i32 10000)
	%fun_cal_ret_val = call i8* @g_toString(i32 %fun_cal_ret_val)
	call void @g_println(i8* %fun_cal_ret_val)
	ret i32 0
}
