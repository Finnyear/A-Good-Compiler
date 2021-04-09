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
@b = global i8* zeroinitializer, align 4
@resultCount = global i32 zeroinitializer, align 4
@main.0 = private unnamed_addr constant [2 x i8] c" \00", align 1
@main.1 = private unnamed_addr constant [8 x i8] c"Total: \00", align 1
define void @__init(){
entry:
;precursors: 
;successors: 
	store i32 15000, i32* @N, align 4
	%puresz = mul i32 15001, 1
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 15001, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%new_array = bitcast i32* %allocoffset to i8*
	store i8* %new_array, i8** @b, align 4
	store i32 0, i32* @resultCount, align 4
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: for_cond 
	call void @__init()
	mv i32 %i_addr_phi 1
	br label %for_cond
for_cond:
;precursors: for_end for_upd 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 2, %for_end ], [ %suf_tmp, %for_upd ]
	%count_addr_phi = phi i32 [ 65536, %for_end ], [ %count_addr_phi, %for_upd ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_sle = icmp sle i32 %i_addr_phi, %pointee_N
	br i1 %cmp_sle, label %for_body, label %for_end
land_cond:
;precursors: if_then 
;successors: if_then if_end 
	%binary_sub = sub i32 %i_addr_phi, 2
	%pointee_b = load i8*, i8** @b, align 4
	%arrayptr = getelementptr inbounds i8, i8* %pointee_b, i32 %binary_sub
	%pointee_arrayptr = load i8, i8* %arrayptr, align 1
	%zext_pointee_arrayptr = zext i8 %pointee_arrayptr to i1
	br i1 %zext_pointee_arrayptr, label %if_then, label %if_end
for_upd:
;precursors: addphi_mid while_end 
;successors: for_cond 
	%suf_tmp = add i32 %i_addr_phi, 1
	mv i32 %i_addr_phi %suf_tmp
	mv i32 %count_addr_phi %count_addr_phi
	br label %for_cond
for_body:
;precursors: for_cond 
;successors: if_then addphi_mid 
	%pointee_b = load i8*, i8** @b, align 4
	%arrayptr = getelementptr inbounds i8, i8* %pointee_b, i32 %i_addr_phi
	%pointee_arrayptr = load i8, i8* %arrayptr, align 1
	%zext_pointee_arrayptr = zext i8 %pointee_arrayptr to i1
	br i1 %zext_pointee_arrayptr, label %if_then, label %addphi_mid
if_end:
;precursors: if_then land_cond if_then 
;successors: while_cond 
	mv i32 %count_addr_phi 2
	br label %while_cond
while_end:
;precursors: while_cond 
;successors: for_upd 
	mv i32 %count_addr_phi %count_addr_phi
	br label %for_upd
if_then:
;precursors: for_body 
;successors: land_cond if_end 
	%cmp_sgt = icmp sgt i32 %i_addr_phi, 3
	br i1 %cmp_sgt, label %land_cond, label %if_end
if_then:
;precursors: land_cond 
;successors: if_end 
	%pointee_resultCount = load i32, i32* @resultCount, align 4
	%suf_tmp = add i32 %pointee_resultCount, 1
	store i32 %suf_tmp, i32* @resultCount, align 4
	%binary_sub = sub i32 %i_addr_phi, 2
	%fun_cal_ret_val = call i8* @g_toString(i32 %binary_sub)
	%resolved_main.0 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @main.0, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_main.0)
	%fun_cal_ret_val = call i8* @g_toString(i32 %i_addr_phi)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	br label %if_end
for_end:
;precursors: for_cond 
;successors: for_cond 
	mv i32 %i_addr_phi 2
	mv i32 %count_addr_phi 65536
	br label %for_cond
while_body:
;precursors: while_cond 
;successors: while_cond 
	%binary_mul = mul i32 %i_addr_phi, %count_addr_phi
	%pointee_b = load i8*, i8** @b, align 4
	%arrayptr = getelementptr inbounds i8, i8* %pointee_b, i32 %binary_mul
	store i8 0, i8* %arrayptr, align 1
	%suf_tmp = add i32 %count_addr_phi, 1
	mv i32 %count_addr_phi %suf_tmp
	br label %while_cond
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_b = load i8*, i8** @b, align 4
	%arrayptr = getelementptr inbounds i8, i8* %pointee_b, i32 %i_addr_phi
	store i8 1, i8* %arrayptr, align 1
	br label %for_upd
while_cond:
;precursors: if_end while_body 
;successors: while_body while_end 
	%count_addr_phi = phi i32 [ 2, %if_end ], [ %suf_tmp, %while_body ]
	%binary_mul = mul i32 %i_addr_phi, %count_addr_phi
	%pointee_N = load i32, i32* @N, align 4
	%cmp_sle = icmp sle i32 %binary_mul, %pointee_N
	br i1 %cmp_sle, label %while_body, label %while_end
for_upd:
;precursors: for_body 
;successors: for_cond 
	%suf_tmp = add i32 %i_addr_phi, 1
	mv i32 %i_addr_phi %suf_tmp
	br label %for_cond
for_end:
;precursors: for_cond 
;successors: 
	%resolved_main.1 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @main.1, i32 0, i32 0
	%pointee_resultCount = load i32, i32* @resultCount, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_resultCount)
	%binary_add_string = call i8* @g_stringadd(i8* %resolved_main.1, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	ret i32 0
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%i_addr_phi = phi i32 [ 1, %entry ], [ %suf_tmp, %for_upd ]
	%pointee_N = load i32, i32* @N, align 4
	%cmp_sle = icmp sle i32 %i_addr_phi, %pointee_N
	br i1 %cmp_sle, label %for_body, label %for_end
addphi_mid:
;precursors: for_body 
;successors: for_upd 
	mv i32 %count_addr_phi %count_addr_phi
	br label %for_upd
}
