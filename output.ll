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
@N = global i32 zeroinitializer, align 4
define i32 @fun_test(){
entry:
;precursors: 
;successors: for_cond 
	br label %for_cond
for_cond:
;precursors: entry for_body 
;successors: for_body for_end 
	%j_addr_phi = phi i32 [ 0, %entry ], [ %suf_tmp, %for_body ]
	%i_addr_phi = phi i32 [ 0, %entry ], [ %suf_tmp, %for_body ]
	%cmp_slt = icmp slt i32 %i_addr_phi, 200
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond 
	%suf_tmp = add i32 %i_addr_phi, 1
	%suf_tmp = add i32 %j_addr_phi, 1
	%suf_tmp = add i32 %suf_tmp, 1
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: 
	ret i32 %j_addr_phi
}
define void @__init(){
entry:
;precursors: 
;successors: 
	store i32 80, i32* @N, align 4
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: for_cond_inline 
	store i32 80, i32* @N, align 4
	br label %for_cond_inline
for_cond_inline:
;precursors: entry for_body_inline 
;successors: for_body_inline for_end_inline 
	%j_addr_phi = phi i32 [ 0, %entry ], [ %suf_tmp, %for_body_inline ]
	%i_addr_phi = phi i32 [ 0, %entry ], [ %suf_tmp, %for_body_inline ]
	%cmp_slt = icmp slt i32 %i_addr_phi, 200
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%suf_tmp = add i32 %i_addr_phi, 1
	%suf_tmp = add i32 %j_addr_phi, 1
	%suf_tmp = add i32 %suf_tmp, 1
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_cond_inline:
;precursors: for_end_inline for_body_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 1, %for_end_inline ], [ %suf_tmp, %for_body_inline ]
	%sum_addr_phi = phi i32 [ 0, %for_end_inline ], [ %binary_add, %for_body_inline ]
	%cmp_sle = icmp sle i32 %i_addr_phi, 100
	br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%binary_add = add i32 %sum_addr_phi, %i_addr_phi
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_cond_inline:
;precursors: for_end_inline for_body_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ %i_addr_phi, %for_end_inline ], [ %suf_tmp, %for_body_inline ]
	%sum_addr_phi = phi i32 [ %sum_addr_phi, %for_end_inline ], [ %binary_add, %for_body_inline ]
	%cmp_sge = icmp sge i32 %i_addr_phi, 1
	br i1 %cmp_sge, label %for_body_inline, label %for_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%binary_add = add i32 %sum_addr_phi, %i_addr_phi
	%suf_tmp = sub i32 %i_addr_phi, 1
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_cond_inline:
;precursors: for_end_inline for_body_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ %suf_tmp, %for_end_inline ], [ %suf_tmp, %for_body_inline ]
	%prod_addr_phi = phi i32 [ 1, %for_end_inline ], [ %binary_mul, %for_body_inline ]
	%cmp_sle = icmp sle i32 %i_addr_phi, 10
	br i1 %cmp_sle, label %for_body_inline, label %for_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%binary_mul = mul i32 %prod_addr_phi, %i_addr_phi
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_then_inline:
;precursors: for_end_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline for_end_inline 
;successors: for_cond_inline 
	%binary_add = add i32 %j_addr_phi, 1919
	br label %for_cond_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
for_cond_inline:
;precursors: for_end_inline if_end_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %if_end_inline ], [ %suf_tmp, %for_end_inline ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_N
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	br label %for_cond_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
for_cond_inline:
;precursors: for_body_inline for_body_inline 
;successors: for_body_inline for_end_inline 
	%j_addr_phi = phi i32 [ 0, %for_body_inline ], [ %suf_tmp, %for_body_inline ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_N
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
for_cond_inline:
;precursors: for_end_inline for_body_inline 
;successors: for_body_inline for_end_inline 
	%i_addr_phi = phi i32 [ 0, %for_end_inline ], [ %suf_tmp, %for_body_inline ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_N
	br i1 %cmp_slt, label %for_body_inline, label %for_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%suf_tmp = add i32 %j_addr_phi, 1
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_body_inline:
;precursors: for_cond_inline 
;successors: for_cond_inline 
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond_inline
for_end_inline:
;precursors: for_cond_inline 
;successors: 
	%binary_add = add i32 %binary_add, 114514
	%binary_sub = sub i32 %binary_add, 50997
	ret i32 %binary_sub
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %prod_addr_phi, 3628800
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_end_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline if_end_inline 
	%eq = icmp eq i32 %prod_addr_phi, 3628800
	br i1 %eq, label %if_then_inline, label %if_end_inline
if_end_inline:
;precursors: if_end_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
if_end_inline:
;precursors: if_then_inline if_then_inline 
;successors: if_end_inline 
	br label %if_end_inline
}
define i32 @fun_naivedce(){
entry:
;precursors: 
;successors: for_cond 
	br label %for_cond
for_cond:
;precursors: entry for_body 
;successors: for_body for_end 
	%sum_addr_phi = phi i32 [ 0, %entry ], [ %binary_add, %for_body ]
	%i_addr_phi = phi i32 [ 1, %entry ], [ %suf_tmp, %for_body ]
	%cmp_sle = icmp sle i32 %i_addr_phi, 100
	br i1 %cmp_sle, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond 
	%binary_add = add i32 %sum_addr_phi, %i_addr_phi
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: for_cond 
	br label %for_cond
for_cond:
;precursors: for_end for_body 
;successors: for_body for_end 
	%sum_addr_phi = phi i32 [ %sum_addr_phi, %for_end ], [ %binary_add, %for_body ]
	%i_addr_phi = phi i32 [ %i_addr_phi, %for_end ], [ %suf_tmp, %for_body ]
	%cmp_sge = icmp sge i32 %i_addr_phi, 1
	br i1 %cmp_sge, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond 
	%binary_add = add i32 %sum_addr_phi, %i_addr_phi
	%suf_tmp = sub i32 %i_addr_phi, 1
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: for_cond 
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond
for_cond:
;precursors: for_end for_body 
;successors: for_body for_end 
	%prod_addr_phi = phi i32 [ 1, %for_end ], [ %binary_mul, %for_body ]
	%i_addr_phi = phi i32 [ %suf_tmp, %for_end ], [ %suf_tmp, %for_body ]
	%cmp_sle = icmp sle i32 %i_addr_phi, 10
	br i1 %cmp_sle, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond 
	%binary_mul = mul i32 %prod_addr_phi, %i_addr_phi
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_then:
;precursors: for_end 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_end for_end 
;successors: 
	ret i32 1919
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_end if_then 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %prod_addr_phi, 3628800
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_then if_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %sum_addr_phi, 10100
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_end if_then 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_then if_end 
	%eq = icmp eq i32 %prod_addr_phi, 3628800
	br i1 %eq, label %if_then, label %if_end
if_end:
;precursors: if_end if_then 
;successors: if_end 
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_end 
	br label %if_end
if_end:
;precursors: if_then if_then 
;successors: if_end 
	br label %if_end
}
define i32 @fun_dceconst(){
entry:
;precursors: 
;successors: for_cond 
	br label %for_cond
for_cond:
;precursors: entry for_end 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %entry ], [ %suf_tmp, %for_end ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_N
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond 
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: for_cond 
	br label %for_cond
for_cond:
;precursors: for_body for_body 
;successors: for_body for_end 
	%j_addr_phi = phi i32 [ 0, %for_body ], [ %suf_tmp, %for_body ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_slt = icmp slt i32 %j_addr_phi, %pointee_N
	br i1 %cmp_slt, label %for_body, label %for_end
for_cond:
;precursors: for_end for_body 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 0, %for_end ], [ %suf_tmp, %for_body ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_slt = icmp slt i32 %i_addr_phi, %pointee_N
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_cond 
	%suf_tmp = add i32 %j_addr_phi, 1
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: for_cond 
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond
for_body:
;precursors: for_cond 
;successors: for_cond 
	%suf_tmp = add i32 %i_addr_phi, 1
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: 
	ret i32 114514
}
