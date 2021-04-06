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
%struct.A = type {%struct.A*, %struct.B*, %struct.C***, i32}
%struct.B = type {i32, %struct.C*}
%struct.C = type {i32, i8*}
@countA = global i32 zeroinitializer, align 4
@countB = global i32 zeroinitializer, align 4
@countC = global i32 zeroinitializer, align 4
@something = global %struct.C* zeroinitializer, align 4
@cls_A_con_0.0 = private unnamed_addr constant [8 x i8] c"\22Oops!\22\00", align 1
@main.5 = private unnamed_addr constant [4 x i8] c"\22,\22\00", align 1
@main.6 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1
@fun_count.3 = private unnamed_addr constant [4 x i8] c"\22>\22\00", align 1
@fun_count.4 = private unnamed_addr constant [5 x i8] c"\22<=\22\00", align 1
@fun_count.1 = private unnamed_addr constant [4 x i8] c"\22 \22\00", align 1
@fun_count.2 = private unnamed_addr constant [4 x i8] c"\22\0A\22\00", align 1
define void @fun_count(){
entry:
;precursors: 
;successors: if_then else_then 
	store i32 0, i32* @countA, align 4
	store i32 0, i32* @countB, align 4
	store i32 0, i32* @countC, align 4
	%malloc = call noalias i8* @malloc(i32 8)
	%new_class_ptr = bitcast i8* %malloc to %struct.B*
	call void @cls_B_con_0(%struct.B* %new_class_ptr)
	%pointee_countA = load i32, i32* @countA, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_countA)
	%resolved_fun_count.1 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @fun_count.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_fun_count.1)
	%pointee_countB = load i32, i32* @countB, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_countB)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	%resolved_fun_count.1 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @fun_count.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_fun_count.1)
	%pointee_countC = load i32, i32* @countC, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_countC)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	store i32 1, i32* @countA, align 4
	store i32 1, i32* @countB, align 4
	store i32 1, i32* @countC, align 4
	%malloc = call noalias i8* @malloc(i32 8)
	%new_class_ptr = bitcast i8* %malloc to %struct.B*
	call void @cls_B_con_0(%struct.B* %new_class_ptr)
	%pointee_countA = load i32, i32* @countA, align 4
	%binary_sub = sub i32 %pointee_countA, 1
	%fun_cal_ret_val = call i8* @g_toString(i32 %binary_sub)
	%resolved_fun_count.1 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @fun_count.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_fun_count.1)
	%pointee_countB = load i32, i32* @countB, align 4
	%binary_sub = sub i32 %pointee_countB, 1
	%fun_cal_ret_val = call i8* @g_toString(i32 %binary_sub)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	%resolved_fun_count.1 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @fun_count.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_fun_count.1)
	%pointee_countC = load i32, i32* @countC, align 4
	%binary_sub = sub i32 %pointee_countC, 1
	%fun_cal_ret_val = call i8* @g_toString(i32 %binary_sub)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_print(i8* %binary_add_string)
	%resolved_fun_count.2 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @fun_count.2, i32 0, i32 0
	call void @g_print(i8* %resolved_fun_count.2)
	%pointee_something = load %struct.C*, %struct.C** @something, align 4
	%fun_cal_ret_val = call %struct.C* @cls_C_Me(%struct.C* %pointee_something)
	%this.str = getelementptr inbounds %struct.C, %struct.C* %fun_cal_ret_val, i32 0, i32 0
	%pointee_this.str = load i8*, i8** %this.str, align 4
	%pointee_something = load %struct.C*, %struct.C** @something, align 4
	%this.str = getelementptr inbounds %struct.C, %struct.C* %pointee_something, i32 0, i32 0
	%pointee_this.str = load i8*, i8** %this.str, align 4
	%fun_cal_ret_val = call i32 @l_string_length(i8* %pointee_this.str)
	%binary_sub = sub i32 %fun_cal_ret_val, 1
	%fun_cal_ret_val = call i8* @l_string_substring(i8* %pointee_this.str, i32 1, i32 %binary_sub)
	%fun_cal_ret_val = call i32 @l_string_parseInt(i8* %fun_cal_ret_val)
	%fun_cal_ret_val = call i8* @g_toString(i32 %fun_cal_ret_val)
	call void @g_println(i8* %fun_cal_ret_val)
	%pointee_something = load %struct.C*, %struct.C** @something, align 4
	%this.str = getelementptr inbounds %struct.C, %struct.C* %pointee_something, i32 0, i32 0
	%pointee_this.str = load i8*, i8** %this.str, align 4
	%binary_and = and i32 42, 21
	%fun_cal_ret_val = call i32 @l_string_ord(i8* %pointee_this.str, i32 %binary_and)
	%fun_cal_ret_val = call i8* @g_toString(i32 %fun_cal_ret_val)
	%pointee_something = load %struct.C*, %struct.C** @something, align 4
	%this.str = getelementptr inbounds %struct.C, %struct.C* %pointee_something, i32 0, i32 0
	%pointee_this.str = load i8*, i8** %this.str, align 4
	%cmp_string = call i1 @g_stringlt(i8* %fun_cal_ret_val, i8* %pointee_this.str)
	br i1 %cmp_string, label %if_then, label %else_then
if_then:
;precursors: entry 
;successors: if_end 
	%pointee_something = load %struct.C*, %struct.C** @something, align 4
	%this.str = getelementptr inbounds %struct.C, %struct.C* %pointee_something, i32 0, i32 0
	%resolved_fun_count.3 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @fun_count.3, i32 0, i32 0
	%pointee_this.str = load i8*, i8** %this.str, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %pointee_this.str, i8* %resolved_fun_count.3)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	br label %if_end
else_then:
;precursors: entry 
;successors: if_end 
	%pointee_something = load %struct.C*, %struct.C** @something, align 4
	%this.str = getelementptr inbounds %struct.C, %struct.C* %pointee_something, i32 0, i32 0
	%resolved_fun_count.4 = getelementptr inbounds [ 5 x i8 ], [ 5 x i8 ]* @fun_count.4, i32 0, i32 0
	%pointee_this.str = load i8*, i8** %this.str, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %pointee_this.str, i8* %resolved_fun_count.4)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	call void @g_println(i8* %binary_add_string)
	br label %if_end
if_end:
;precursors: if_then else_then 
;successors: 
	ret void
}
define void @cls_A_con_0(%struct.A* %this){
entry:
;precursors: 
;successors: if_then else_then 
	%this.idx_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 3
	%pointee_countA = load i32, i32* @countA, align 4
	%suf_tmp = add i32 %pointee_countA, 1
	store i32 %suf_tmp, i32* @countA, align 4
	store i32 %pointee_countA, i32* %this.idx_addr, align 4
	%this.idx_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 3
	%pointee_this.idx_addr = load i32, i32* %this.idx_addr, align 4
	%binary_srem = srem i32 %pointee_this.idx_addr, 2
	%eq = icmp eq i32 %binary_srem, 0
	br i1 %eq, label %if_then, label %else_then
if_then:
;precursors: entry 
;successors: if_then else_then 
	%this.a_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%malloc = call noalias i8* @malloc(i32 16)
	%new_class_ptr = bitcast i8* %malloc to %struct.A*
	call void @cls_A_con_0(%struct.A* %new_class_ptr)
	store %struct.A* %new_class_ptr, %struct.A** %this.a_addr, align 4
	%pointee_countB = load i32, i32* @countB, align 4
	%binary_srem = srem i32 %pointee_countB, 2
	%eq = icmp eq i32 %binary_srem, 0
	br i1 %eq, label %if_then, label %else_then
else_then:
;precursors: entry 
;successors: if_end 
	%this.a_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	store %struct.A* null, %struct.A** %this.a_addr, align 4
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_end 
	%this.b_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 1
	%malloc = call noalias i8* @malloc(i32 8)
	%new_class_ptr = bitcast i8* %malloc to %struct.B*
	call void @cls_B_con_0(%struct.B* %new_class_ptr)
	store %struct.B* %new_class_ptr, %struct.B** %this.b_addr, align 4
	br label %if_end
else_then:
;precursors: if_then 
;successors: if_end 
	%this.b_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 1
	store %struct.B* null, %struct.B** %this.b_addr, align 4
	br label %if_end
if_end:
;precursors: if_end else_then 
;successors: arrayincr 
	%this.c_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 2
	%puresz = mul i32 2, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 2, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%new_array = bitcast i32* %allocoffset to %struct.C***
	store %struct.C*** %new_array, %struct.C**** %this.c_addr, align 4
	%this.c_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 2
	%pointee_this.c_addr = load %struct.C***, %struct.C**** %this.c_addr, align 4
	%arrayptr = getelementptr inbounds %struct.C***, %struct.C*** %pointee_this.c_addr, i32 0
	%puresz = mul i32 6, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 6, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%new_array = bitcast i32* %allocoffset to %struct.C*****
	mv i32 %counter 0
	br label %arrayincr
if_end:
;precursors: if_then else_then 
;successors: if_end 
	br label %if_end
arrayincr:
;precursors: if_end arrayend 
;successors: arraybody arrayend 
	%counter = phi i32 [ 0, %if_end ], [ %countertmp, %arrayend ]
	%countertmp = add i32 %counter, 1
	%branchjudge = icmp sle i32 %counter, 6
	br i1 %branchjudge, label %arraybody, label %arrayend
arraybody:
;precursors: arrayincr 
;successors: arrayincr 
	%arrayptr = getelementptr inbounds i32, i32* %allocbitcast, i32 %counter
	%castedptr = bitcast i32* %arrayptr to %struct.C*****
	%puresz = mul i32 6, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 6, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%array_malloc = bitcast i32* %allocoffset to %struct.C****
	store %struct.C**** %array_malloc, %struct.C***** %castedptr, align 4
	mv i32 %counter 0
	br label %arrayincr
arrayend:
;precursors: arrayincr 
;successors: if_then addphi_mid 
	%arrayptr = getelementptr inbounds %struct.C****, %struct.C***** %new_array, i32 2
	%pointee_arrayptr = load %struct.C****, %struct.C***** %arrayptr, align 4
	%arrayptr = getelementptr inbounds %struct.C****, %struct.C**** %pointee_arrayptr, i32 3
	%pointee_arrayptr = load %struct.C***, %struct.C**** %arrayptr, align 4
	%arrayptr = getelementptr inbounds %struct.C***, %struct.C*** %pointee_arrayptr, i32 3
	%pointee_arrayptr = load %struct.C**, %struct.C*** %arrayptr, align 4
	store %struct.C** %pointee_arrayptr, %struct.C*** %arrayptr, align 4
	%this.c_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 2
	%pointee_this.c_addr = load %struct.C***, %struct.C**** %this.c_addr, align 4
	%arrayptr = getelementptr inbounds %struct.C***, %struct.C*** %pointee_this.c_addr, i32 1
	store %struct.C** null, %struct.C*** %arrayptr, align 4
	%this.c_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 2
	%pointee_this.c_addr = load %struct.C***, %struct.C**** %this.c_addr, align 4
	%bitcastptr = bitcast %struct.C*** %pointee_this.c_addr to i32*
	%metaptr = getelementptr inbounds i32, i32* %bitcastptr, i32 -1
	%array_size = load i32, i32* %metaptr, align 4
	%neq = icmp ne i32 %array_size, 2
	br i1 %neq, label %if_then, label %addphi_mid
arrayincr:
;precursors: arraybody arrayend 
;successors: arraybody arrayend 
	%counter = phi i32 [ 0, %arraybody ], [ %countertmp, %arrayend ]
	%countertmp = add i32 %counter, 1
	%branchjudge = icmp sle i32 %counter, 6
	br i1 %branchjudge, label %arraybody, label %arrayend
if_then:
;precursors: arrayend 
;successors: if_end 
	%resolved_cls_A_con_0.0 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @cls_A_con_0.0, i32 0, i32 0
	call void @g_println(i8* %resolved_cls_A_con_0.0)
	br label %if_end
addphi_mid:
;precursors: arrayend 
;successors: if_end 
	br label %if_end
arraybody:
;precursors: arrayincr 
;successors: arrayincr 
	%arrayptr = getelementptr inbounds i32, i32* %allocbitcast, i32 %counter
	%castedptr = bitcast i32* %arrayptr to %struct.C****
	%puresz = mul i32 6, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 6, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%array_malloc = bitcast i32* %allocoffset to %struct.C***
	store %struct.C*** %array_malloc, %struct.C**** %castedptr, align 4
	mv i32 %counter 0
	br label %arrayincr
arrayend:
;precursors: arrayincr 
;successors: arrayincr 
	mv i32 %counter %countertmp
	br label %arrayincr
if_end:
;precursors: if_then addphi_mid 
;successors: 
	ret void
arrayincr:
;precursors: arraybody arraybody 
;successors: arraybody arrayend 
	%counter = phi i32 [ 0, %arraybody ], [ %countertmp, %arraybody ]
	%countertmp = add i32 %counter, 1
	%branchjudge = icmp sle i32 %counter, 6
	br i1 %branchjudge, label %arraybody, label %arrayend
arraybody:
;precursors: arrayincr 
;successors: arrayincr 
	%arrayptr = getelementptr inbounds i32, i32* %allocbitcast, i32 %counter
	%castedptr = bitcast i32* %arrayptr to %struct.C***
	%puresz = mul i32 6, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 6, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%array_malloc = bitcast i32* %allocoffset to %struct.C**
	store %struct.C** %array_malloc, %struct.C*** %castedptr, align 4
	mv i32 %counter %countertmp
	br label %arrayincr
arrayend:
;precursors: arrayincr 
;successors: arrayincr 
	mv i32 %counter %countertmp
	br label %arrayincr
}
define %struct.C* @cls_C_Me(%struct.C* %this){
entry:
;precursors: 
;successors: 
	ret %struct.C* %this
}
define %struct.C** @cls_A_getc0(%struct.A* %this){
entry:
;precursors: 
;successors: 
	%this.c_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 2
	%pointee_this.c_addr = load %struct.C***, %struct.C**** %this.c_addr, align 4
	%arrayptr = getelementptr inbounds %struct.C***, %struct.C*** %pointee_this.c_addr, i32 0
	ret %struct.C*** %arrayptr
}
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define void @cls_B_con_0(%struct.B* %this){
entry:
;precursors: 
;successors: 
	%this.idx_addr = getelementptr inbounds %struct.B, %struct.B* %this, i32 0, i32 0
	%pointee_countB = load i32, i32* @countB, align 4
	%suf_tmp = add i32 %pointee_countB, 1
	store i32 %suf_tmp, i32* @countB, align 4
	store i32 %pointee_countB, i32* %this.idx_addr, align 4
	%this.c_addr = getelementptr inbounds %struct.B, %struct.B* %this, i32 0, i32 1
	%malloc = call noalias i8* @malloc(i32 16)
	%new_class_ptr = bitcast i8* %malloc to %struct.A*
	call void @cls_A_con_0(%struct.A* %new_class_ptr)
	%fun_cal_ret_val = call %struct.C** @cls_A_getc0(%struct.A* %new_class_ptr)
	%arrayptr = getelementptr inbounds %struct.C*, %struct.C** %fun_cal_ret_val, i32 0
	%pointee_arrayptr = load %struct.C*, %struct.C** %arrayptr, align 4
	%fun_cal_ret_val = call %struct.C* @cls_C_Me(%struct.C* %pointee_arrayptr)
	%fun_cal_ret_val = call %struct.C* @cls_C_Me(%struct.C* %fun_cal_ret_val)
	store %struct.C* %fun_cal_ret_val, %struct.C** %this.c_addr, align 4
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: for_body 
	call void @__init()
	mv i32 %i_addr_phi 0
	br label %for_body
for_body:
;precursors: entry for_upd 
;successors: if_then if_end 
	%i_addr_phi = phi i32 [ 0, %entry ], [ %suf_tmp, %for_upd ]
	%binary_xor = xor i32 %i_addr_phi, 891
	%binary_and = and i32 %binary_xor, 759
	%eq = icmp eq i32 %binary_and, 666
	%pre_lnot = xor i1 1, 0
	%ext_%eq = zext i1 %eq to i32
	%ext_%pre_lnot = zext i1 %pre_lnot to i32
	%eq = icmp eq i32 %ext_%eq, %ext_%pre_lnot
	br i1 %eq, label %if_then, label %if_end
if_then:
;precursors: for_body 
;successors: for_end 
	%fun_cal_ret_val = call i8* @g_toString(i32 %i_addr_phi)
	call void @g_println(i8* %fun_cal_ret_val)
	%fun_cal_ret_val = call i8* @g_toString(i32 0)
	call void @g_println(i8* %fun_cal_ret_val)
	%fun_cal_ret_val = call i8* @g_toString(i32 1)
	call void @g_println(i8* %fun_cal_ret_val)
	call void @fun_count()
	br label %for_end
if_end:
;precursors: for_body 
;successors: for_upd 
	br label %for_upd
for_end:
;precursors: if_then 
;successors: while_cond 
	br label %while_cond
for_upd:
;precursors: if_end 
;successors: for_body 
	%suf_tmp = add i32 %i_addr_phi, 1
	mv i32 %i_addr_phi %suf_tmp
	br label %for_body
while_cond:
;precursors: for_end if_then if_end 
;successors: while_body while_end 
	br i1 1, label %while_body, label %while_end
while_body:
;precursors: while_cond 
;successors: if_then if_end 
	%binary_srem = srem i32 %i_addr_phi, 2
	%eq = icmp eq i32 %binary_srem, 0
	br i1 %eq, label %if_then, label %if_end
while_end:
;precursors: while_cond 
;successors: 
	%resolved_main.6 = getelementptr inbounds [ 3 x i8 ], [ 3 x i8 ]* @main.6, i32 0, i32 0
	call void @g_println(i8* %resolved_main.6)
	ret i32 0
if_then:
;precursors: while_body 
;successors: while_cond 
	br label %while_cond
if_end:
;precursors: while_body 
;successors: while_cond 
	%fun_cal_ret_val = call i8* @g_toString(i32 %i_addr_phi)
	%resolved_main.5 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @main.5, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %fun_cal_ret_val, i8* %resolved_main.5)
	call void @g_print(i8* %binary_add_string)
	br label %while_cond
}
define void @cls_C_con_0(%struct.C* %this){
entry:
;precursors: 
;successors: 
	%this.idx = getelementptr inbounds %struct.C, %struct.C* %this, i32 0, i32 0
	%pointee_countC = load i32, i32* @countC, align 4
	%suf_tmp = add i32 %pointee_countC, 1
	store i32 %suf_tmp, i32* @countC, align 4
	store i32 %pointee_countC, i32* %this.idx, align 4
	%this.str_addr = getelementptr inbounds %struct.C, %struct.C* %this, i32 0, i32 1
	%this.idx_addr = getelementptr inbounds %struct.C, %struct.C* %this, i32 0, i32 0
	%pointee_this.idx_addr = load i32, i32* %this.idx_addr, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_this.idx_addr)
	store i8* %fun_cal_ret_val, i8** %this.str_addr, align 4
	%fun_cal_ret_val = call %struct.C* @cls_C_Me(%struct.C* %this)
	store %struct.C* %fun_cal_ret_val, %struct.C** @something, align 4
	ret void
}
