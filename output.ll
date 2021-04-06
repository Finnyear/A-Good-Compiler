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
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: arrayincr 
	call void @__init()
	%puresz = mul i32 3, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 3, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%new_array = bitcast i32* %allocoffset to i32**
	mv i32 %counter 0
	br label %arrayincr
arrayincr:
;precursors: entry arraybody 
;successors: arraybody arrayend 
	%counter = phi i32 [ 0, %entry ], [ %countertmp, %arraybody ]
	%countertmp = add i32 %counter, 1
	%branchjudge = icmp sle i32 %counter, 3
	br i1 %branchjudge, label %arraybody, label %arrayend
arraybody:
;precursors: arrayincr 
;successors: arrayincr 
	%arrayptr = getelementptr inbounds i32, i32* %allocbitcast, i32 %counter
	%castedptr = bitcast i32* %arrayptr to i32**
	%puresz = mul i32 3, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 3, i32* %allocbitcast, align 4
	%array_malloc = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %array_malloc, i32** %castedptr, align 4
	mv i32 %counter %countertmp
	br label %arrayincr
arrayend:
;precursors: arrayincr 
;successors: for_cond 
	%arrayptr = getelementptr inbounds i32**, i32** %new_array, i32 0
	store i32* null, i32** %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32**, i32** %new_array, i32 0
	%pointee_arrayptr = load i32*, i32** %arrayptr, align 4
	%metaptr = getelementptr inbounds i32, i32* %pointee_arrayptr, i32 -1
	%array_size = load i32, i32* %metaptr, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %array_size)
	call void @g_println(i8* %fun_cal_ret_val)
	%arrayptr = getelementptr inbounds i32**, i32** %new_array, i32 0
	%puresz = mul i32 10, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 10, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** %arrayptr, align 4
	br label %for_cond
for_cond:
;precursors: arrayend for_upd 
;successors: for_body for_end 
	%cmp_slt = icmp slt i32 0, 10
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%arrayptr = getelementptr inbounds i32**, i32** %new_array, i32 0
	%pointee_arrayptr = load i32*, i32** %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_arrayptr, i32 0
	%binary_mul = mul i32 0, 0
	store i32 %binary_mul, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: while_cond 
	%arrayptr = getelementptr inbounds i32**, i32** %new_array, i32 0
	%pointee_arrayptr = load i32*, i32** %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_arrayptr, i32 9
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_arrayptr)
	call void @g_println(i8* %fun_cal_ret_val)
	br label %while_cond
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pre_add = add i32 0, 1
	store i32 %pre_add, i32 0, align 4
	br label %for_cond
while_cond:
;precursors: for_end 
;successors: while_body addphi_mid 
	br i1 1, label %while_body, label %addphi_mid
while_body:
;precursors: while_cond 
;successors: while_end 
	br label %while_end
addphi_mid:
;precursors: while_cond 
;successors: while_end 
	br label %while_end
while_end:
;precursors: while_body addphi_mid 
;successors: 
	ret i32 0
}
