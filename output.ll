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
%struct.vector = type {i32*}
@cls_vector_toString.0 = private unnamed_addr constant [5 x i8] c"\22( \22\00", align 1
@cls_vector_toString.2 = private unnamed_addr constant [5 x i8] c"\22 )\22\00", align 1
@main.3 = private unnamed_addr constant [13 x i8] c"\22vector x: \22\00", align 1
@cls_vector_toString.1 = private unnamed_addr constant [5 x i8] c"\22, \22\00", align 1
@main.4 = private unnamed_addr constant [11 x i8] c"\22excited!\22\00", align 1
@main.5 = private unnamed_addr constant [13 x i8] c"\22vector y: \22\00", align 1
@main.6 = private unnamed_addr constant [10 x i8] c"\22x + y: \22\00", align 1
@main.7 = private unnamed_addr constant [10 x i8] c"\22x * y: \22\00", align 1
@main.8 = private unnamed_addr constant [17 x i8] c"\22(1 << 3) * y: \22\00", align 1
define i1 @cls_vector_copy(%struct.vector* %this, %struct.vector* %param_rhs){
entry:
;precursors: 
;successors: if_then if_end 
	store %struct.vector* null, %struct.vector** %rhs_addr, align 4
	store i32 65536, i32* %i_addr, align 4
	store %struct.vector* %param_rhs, %struct.vector** %rhs_addr, align 4
	%pointee_rhs_addr = load %struct.vector*, %struct.vector** %rhs_addr, align 4
	%eq = icmp eq %struct.vector* %pointee_rhs_addr, null
	br i1 %eq, label %if_then, label %if_end
if_then:
;precursors: entry 
;successors: rootReturn 
	br label %rootReturn
if_end:
;precursors: entry 
;successors: if_then else_then 
	%pointee_rhs_addr = load %struct.vector*, %struct.vector** %rhs_addr, align 4
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %pointee_rhs_addr)
	%eq = icmp eq i32 %fun_cal_ret_val, 0
	br i1 %eq, label %if_then, label %else_then
rootReturn:
;precursors: if_then if_end 
;successors: 
	%rootRet = phi i1 [ 0, %if_then ], [ 1, %if_end ]
	ret i1 %rootRet
if_then:
;precursors: if_end 
;successors: if_end 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	store i32* null, i32** %this.data_addr, align 4
	br label %if_end
else_then:
;precursors: if_end 
;successors: for_cond 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_rhs_addr = load %struct.vector*, %struct.vector** %rhs_addr, align 4
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %pointee_rhs_addr)
	%puresz = mul i32 %fun_cal_ret_val, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 %fun_cal_ret_val, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** %this.data_addr, align 4
	store i32 0, i32* %i_addr, align 4
	br label %for_cond
if_end:
;precursors: if_then for_end 
;successors: rootReturn 
	br label %rootReturn
for_cond:
;precursors: else_then for_upd 
;successors: for_body for_end 
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_i_addr, %fun_cal_ret_val
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data_addr, i32 %pointee_i_addr
	%pointee_rhs_addr = load %struct.vector*, %struct.vector** %rhs_addr, align 4
	%this.data = getelementptr inbounds %struct.vector, %struct.vector* %pointee_rhs_addr, i32 0, i32 0
	%pointee_this.data = load i32*, i32** %this.data, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data, i32 %pointee_i_addr
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: if_end 
	br label %if_end
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%pre_add = add i32 %pointee_i_addr, 1
	store i32 %pre_add, i32 %pointee_i_addr, align 4
	br label %for_cond
}
define void @cls_vector_con_0(%struct.vector* %this){
entry:
;precursors: 
;successors: 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%puresz = mul i32 10, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 10, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** %this.data_addr, align 4
	ret void
}
define %struct.vector* @cls_vector_scalarInPlaceMultiply(%struct.vector* %this, i32 %param_c){
entry:
;precursors: 
;successors: if_then if_end 
	store i32 65536, i32* %c_addr, align 4
	store i32 65536, i32* %i_addr, align 4
	store i32 %param_c, i32* %c_addr, align 4
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%eq = icmp eq i32* %pointee_this.data_addr, null
	br i1 %eq, label %if_then, label %if_end
if_then:
;precursors: entry 
;successors: rootReturn 
	br label %rootReturn
if_end:
;precursors: entry 
;successors: for_cond 
	store i32 0, i32* %i_addr, align 4
	br label %for_cond
rootReturn:
;precursors: if_then for_end 
;successors: 
	%rootRet = phi i8* [ null, %if_then ], [ %this, %for_end ]
	ret i8* %rootRet
for_cond:
;precursors: if_end for_upd 
;successors: for_body for_end 
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_i_addr, %fun_cal_ret_val
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%this.data = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data = load i32*, i32** %this.data, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data, i32 %pointee_i_addr
	%this.data = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data = load i32*, i32** %this.data, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data, i32 %pointee_i_addr
	%pointee_c_addr = load i32, i32* %c_addr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%binary_mul = mul i32 %pointee_c_addr, %pointee_arrayptr
	store i32 %binary_mul, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: rootReturn 
	br label %rootReturn
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%pre_add = add i32 %pointee_i_addr, 1
	store i32 %pre_add, i32 %pointee_i_addr, align 4
	br label %for_cond
}
define i8* @cls_vector_toString(%struct.vector* %this){
entry:
;precursors: 
;successors: if_then if_end 
	store i8* null, i8** %temp_addr, align 4
	store i32 65536, i32* %i_addr, align 4
	%resolved_cls_vector_toString.0 = getelementptr inbounds [ 5 x i8 ], [ 5 x i8 ]* @cls_vector_toString.0, i32 0, i32 0
	store i8* %resolved_cls_vector_toString.0, i8** %temp_addr, align 4
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%cmp_sgt = icmp sgt i32 %fun_cal_ret_val, 0
	br i1 %cmp_sgt, label %if_then, label %if_end
if_then:
;precursors: entry 
;successors: if_end 
	%fun_cal_ret_val = call i8* @cls_vector_toString(%struct.vector* %this)
	%pointee_temp_addr = load i8*, i8** %temp_addr, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %pointee_temp_addr, i8* %fun_cal_ret_val)
	store i8* %binary_add_string, i8** %temp_addr, align 4
	br label %if_end
if_end:
;precursors: entry if_then 
;successors: for_cond 
	store i32 1, i32* %i_addr, align 4
	br label %for_cond
for_cond:
;precursors: if_end for_upd 
;successors: for_body for_end 
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_i_addr, %fun_cal_ret_val
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%resolved_cls_vector_toString.1 = getelementptr inbounds [ 5 x i8 ], [ 5 x i8 ]* @cls_vector_toString.1, i32 0, i32 0
	%pointee_temp_addr = load i8*, i8** %temp_addr, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %pointee_temp_addr, i8* %resolved_cls_vector_toString.1)
	%fun_cal_ret_val = call i8* @cls_vector_toString(%struct.vector* %this)
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %fun_cal_ret_val)
	store i8* %binary_add_string, i8** %temp_addr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: 
	%resolved_cls_vector_toString.2 = getelementptr inbounds [ 5 x i8 ], [ 5 x i8 ]* @cls_vector_toString.2, i32 0, i32 0
	%pointee_temp_addr = load i8*, i8** %temp_addr, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %pointee_temp_addr, i8* %resolved_cls_vector_toString.2)
	store i8* %binary_add_string, i8** %temp_addr, align 4
	ret i8** %temp_addr
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%pre_add = add i32 %pointee_i_addr, 1
	store i32 %pre_add, i32 %pointee_i_addr, align 4
	br label %for_cond
}
define i32 @cls_vector_dot(%struct.vector* %this, %struct.vector* %param_rhs){
entry:
;precursors: 
;successors: while_cond 
	store i32 65536, i32* %result_addr, align 4
	store i32 65536, i32* %i_addr, align 4
	store %struct.vector* null, %struct.vector** %rhs_addr, align 4
	store %struct.vector* %param_rhs, %struct.vector** %rhs_addr, align 4
	store i32 0, i32* %i_addr, align 4
	store i32 0, i32* %result_addr, align 4
	br label %while_cond
while_cond:
;precursors: entry while_body 
;successors: while_body while_end 
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_i_addr, %fun_cal_ret_val
	br i1 %cmp_slt, label %while_body, label %while_end
while_body:
;precursors: while_cond 
;successors: while_cond 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data_addr, i32 %pointee_i_addr
	%pointee_rhs_addr = load %struct.vector*, %struct.vector** %rhs_addr, align 4
	%this.data = getelementptr inbounds %struct.vector, %struct.vector* %pointee_rhs_addr, i32 0, i32 0
	%pointee_this.data = load i32*, i32** %this.data, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data, i32 %pointee_i_addr
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%binary_mul = mul i32 %pointee_arrayptr, %pointee_arrayptr
	store i32 %binary_mul, i32* %result_addr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%pre_add = add i32 %pointee_i_addr, 1
	store i32 %pre_add, i32 %pointee_i_addr, align 4
	br label %while_cond
while_end:
;precursors: while_cond 
;successors: 
	ret i32* %result_addr
}
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define void @cls_vector_init(%struct.vector* %this, i32* %param_vec){
entry:
;precursors: 
;successors: if_then if_end 
	store i32 65536, i32* %i_addr, align 4
	store i32* null, i32** %vec_addr, align 4
	store i32* %param_vec, i32** %vec_addr, align 4
	%pointee_vec_addr = load i32*, i32** %vec_addr, align 4
	%eq = icmp eq i32* %pointee_vec_addr, null
	br i1 %eq, label %if_then, label %if_end
if_then:
;precursors: entry 
;successors: rootReturn 
	br label %rootReturn
if_end:
;precursors: entry 
;successors: for_cond 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_vec_addr = load i32*, i32** %vec_addr, align 4
	%metaptr = getelementptr inbounds i32, i32* %pointee_vec_addr, i32 -1
	%array_size = load i32, i32* %metaptr, align 4
	%puresz = mul i32 %array_size, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 %array_size, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** %this.data_addr, align 4
	store i32 0, i32* %i_addr, align 4
	br label %for_cond
rootReturn:
;precursors: if_then for_end 
;successors: 
	ret void
for_cond:
;precursors: if_end for_upd 
;successors: for_body for_end 
	%pointee_vec_addr = load i32*, i32** %vec_addr, align 4
	%metaptr = getelementptr inbounds i32, i32* %pointee_vec_addr, i32 -1
	%array_size = load i32, i32* %metaptr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_i_addr, %array_size
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data_addr, i32 %pointee_i_addr
	%pointee_vec_addr = load i32*, i32** %vec_addr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_vec_addr, i32 %pointee_i_addr
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	store i32 %pointee_arrayptr, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: rootReturn 
	br label %rootReturn
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%pre_add = add i32 %pointee_i_addr, 1
	store i32 %pre_add, i32 %pointee_i_addr, align 4
	br label %for_cond
}
define i32 @main(){
entry:
;precursors: 
;successors: for_cond 
	store %struct.vector* null, %struct.vector** %y_addr, align 4
	store i32* null, i32** %a_addr, align 4
	store %struct.vector* null, %struct.vector** %x_addr, align 4
	store i32 65536, i32* %i_addr, align 4
	call void @__init()
	%malloc = call noalias i8* @malloc(i32 4)
	%new_class_ptr = bitcast i8* %malloc to %struct.vector*
	call void @cls_vector_con_0(%struct.vector* %new_class_ptr)
	store %struct.vector* %new_class_ptr, %struct.vector** %x_addr, align 4
	%puresz = mul i32 10, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 10, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	store i32* %new_array, i32** %a_addr, align 4
	store i32 0, i32* %i_addr, align 4
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_i_addr, 10
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_a_addr = load i32*, i32** %a_addr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_a_addr, i32 %pointee_i_addr
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%binary_sub = sub i32 9, %pointee_i_addr
	store i32 %binary_sub, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: if_then if_end 
	%pointee_x_addr = load %struct.vector*, %struct.vector** %x_addr, align 4
	%pointee_a_addr = load i32*, i32** %a_addr, align 4
	call void @cls_vector_init(%struct.vector* %pointee_x_addr, i32* %pointee_a_addr)
	%resolved_main.3 = getelementptr inbounds [ 13 x i8 ], [ 13 x i8 ]* @main.3, i32 0, i32 0
	call void @g_print(i8* %resolved_main.3)
	%pointee_x_addr = load %struct.vector*, %struct.vector** %x_addr, align 4
	%fun_cal_ret_val = call i8* @cls_vector_toString(%struct.vector* %pointee_x_addr)
	call void @g_println(i8* %fun_cal_ret_val)
	%malloc = call noalias i8* @malloc(i32 4)
	%new_class_ptr = bitcast i8* %malloc to %struct.vector*
	call void @cls_vector_con_0(%struct.vector* %new_class_ptr)
	store %struct.vector* %new_class_ptr, %struct.vector** %y_addr, align 4
	%pointee_y_addr = load %struct.vector*, %struct.vector** %y_addr, align 4
	%pointee_x_addr = load %struct.vector*, %struct.vector** %x_addr, align 4
	%fun_cal_ret_val = call i1 @cls_vector_copy(%struct.vector* %pointee_y_addr, %struct.vector* %pointee_x_addr)
	%pointee_y_addr = load %struct.vector*, %struct.vector** %y_addr, align 4
	%fun_cal_ret_val = call i1 @cls_vector_set(%struct.vector* %pointee_y_addr, i32 3, i32 817)
	br i1 %fun_cal_ret_val, label %if_then, label %if_end
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%pre_add = add i32 %pointee_i_addr, 1
	store i32 %pre_add, i32 %pointee_i_addr, align 4
	br label %for_cond
if_then:
;precursors: for_end 
;successors: if_end 
	%resolved_main.4 = getelementptr inbounds [ 11 x i8 ], [ 11 x i8 ]* @main.4, i32 0, i32 0
	call void @g_println(i8* %resolved_main.4)
	br label %if_end
if_end:
;precursors: for_end if_then 
;successors: 
	%resolved_main.5 = getelementptr inbounds [ 13 x i8 ], [ 13 x i8 ]* @main.5, i32 0, i32 0
	call void @g_print(i8* %resolved_main.5)
	%pointee_y_addr = load %struct.vector*, %struct.vector** %y_addr, align 4
	%fun_cal_ret_val = call i8* @cls_vector_toString(%struct.vector* %pointee_y_addr)
	call void @g_println(i8* %fun_cal_ret_val)
	%resolved_main.6 = getelementptr inbounds [ 10 x i8 ], [ 10 x i8 ]* @main.6, i32 0, i32 0
	call void @g_print(i8* %resolved_main.6)
	%pointee_x_addr = load %struct.vector*, %struct.vector** %x_addr, align 4
	%pointee_y_addr = load %struct.vector*, %struct.vector** %y_addr, align 4
	%fun_cal_ret_val = call %struct.vector* @cls_vector_add(%struct.vector* %pointee_x_addr, %struct.vector* %pointee_y_addr)
	%fun_cal_ret_val = call i8* @cls_vector_toString(%struct.vector* %fun_cal_ret_val)
	call void @g_println(i8* %fun_cal_ret_val)
	%resolved_main.7 = getelementptr inbounds [ 10 x i8 ], [ 10 x i8 ]* @main.7, i32 0, i32 0
	call void @g_print(i8* %resolved_main.7)
	%pointee_x_addr = load %struct.vector*, %struct.vector** %x_addr, align 4
	%pointee_y_addr = load %struct.vector*, %struct.vector** %y_addr, align 4
	%fun_cal_ret_val = call i32 @cls_vector_dot(%struct.vector* %pointee_x_addr, %struct.vector* %pointee_y_addr)
	%fun_cal_ret_val = call i8* @g_toString(i32 %fun_cal_ret_val)
	call void @g_println(i8* %fun_cal_ret_val)
	%resolved_main.8 = getelementptr inbounds [ 17 x i8 ], [ 17 x i8 ]* @main.8, i32 0, i32 0
	call void @g_print(i8* %resolved_main.8)
	%pointee_x_addr = load %struct.vector*, %struct.vector** %x_addr, align 4
	%binary_shl = shl i32 1, 3
	%fun_cal_ret_val = call %struct.vector* @cls_vector_scalarInPlaceMultiply(%struct.vector* %pointee_x_addr, i32 %binary_shl)
	%fun_cal_ret_val = call i8* @cls_vector_toString(%struct.vector* %fun_cal_ret_val)
	call void @g_println(i8* %fun_cal_ret_val)
	ret i32 0
}
define i1 @cls_vector_set(%struct.vector* %this, i32 %param_idx, i32 %param_value){
entry:
;precursors: 
;successors: if_then if_end 
	store i32 65536, i32* %value_addr, align 4
	store i32 65536, i32* %idx_addr, align 4
	store i32 %param_idx, i32* %idx_addr, align 4
	store i32 %param_value, i32* %value_addr, align 4
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%pointee_idx_addr = load i32, i32* %idx_addr, align 4
	%cmp_slt = icmp slt i32 %fun_cal_ret_val, %pointee_idx_addr
	br i1 %cmp_slt, label %if_then, label %if_end
if_then:
;precursors: entry 
;successors: rootReturn 
	br label %rootReturn
if_end:
;precursors: entry 
;successors: rootReturn 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%pointee_idx_addr = load i32, i32* %idx_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data_addr, i32 %pointee_idx_addr
	%pointee_value_addr = load i32, i32* %value_addr, align 4
	store i32 %pointee_value_addr, i32* %arrayptr, align 4
	br label %rootReturn
rootReturn:
;precursors: if_then if_end 
;successors: 
	%rootRet = phi i1 [ 0, %if_then ], [ 1, %if_end ]
	ret i1 %rootRet
}
define i32 @cls_vector_getDim(%struct.vector* %this){
entry:
;precursors: 
;successors: if_then if_end 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%eq = icmp eq i32* %pointee_this.data_addr, null
	br i1 %eq, label %if_then, label %if_end
if_then:
;precursors: entry 
;successors: rootReturn 
	br label %rootReturn
if_end:
;precursors: entry 
;successors: rootReturn 
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%metaptr = getelementptr inbounds i32, i32* %pointee_this.data_addr, i32 -1
	%array_size = load i32, i32* %metaptr, align 4
	br label %rootReturn
rootReturn:
;precursors: if_then if_end 
;successors: 
	%rootRet = phi i32 [ 0, %if_then ], [ %array_size, %if_end ]
	ret i32 %rootRet
}
define %struct.vector* @cls_vector_add(%struct.vector* %this, %struct.vector* %param_rhs){
entry:
;precursors: 
;successors: if_then lor_cond 
	store i32 65536, i32* %i_addr, align 4
	store %struct.vector* null, %struct.vector** %rhs_addr, align 4
	store %struct.vector* null, %struct.vector** %temp_addr, align 4
	store %struct.vector* %param_rhs, %struct.vector** %rhs_addr, align 4
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%pointee_rhs_addr = load %struct.vector*, %struct.vector** %rhs_addr, align 4
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %pointee_rhs_addr)
	%neq = icmp ne i32 %fun_cal_ret_val, %fun_cal_ret_val
	br i1 %neq, label %if_then, label %lor_cond
if_then:
;precursors: entry lor_cond 
;successors: rootReturn 
	br label %rootReturn
lor_cond:
;precursors: entry 
;successors: if_then if_end 
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%eq = icmp eq i32 %fun_cal_ret_val, 0
	br i1 %eq, label %if_then, label %if_end
rootReturn:
;precursors: if_then for_end 
;successors: 
	%rootRet = phi i8* [ null, %if_then ], [ %temp_addr, %for_end ]
	ret i8* %rootRet
if_end:
;precursors: lor_cond 
;successors: for_cond 
	%malloc = call noalias i8* @malloc(i32 4)
	%new_class_ptr = bitcast i8* %malloc to %struct.vector*
	call void @cls_vector_con_0(%struct.vector* %new_class_ptr)
	store %struct.vector* %new_class_ptr, %struct.vector** %temp_addr, align 4
	store i32 0, i32* %i_addr, align 4
	br label %for_cond
for_cond:
;precursors: if_end for_upd 
;successors: for_body for_end 
	%fun_cal_ret_val = call i32 @cls_vector_getDim(%struct.vector* %this)
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_i_addr, %fun_cal_ret_val
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_temp_addr = load %struct.vector*, %struct.vector** %temp_addr, align 4
	%this.data = getelementptr inbounds %struct.vector, %struct.vector* %pointee_temp_addr, i32 0, i32 0
	%pointee_this.data = load i32*, i32** %this.data, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data, i32 %pointee_i_addr
	%this.data_addr = getelementptr inbounds %struct.vector, %struct.vector* %this, i32 0, i32 0
	%pointee_this.data_addr = load i32*, i32** %this.data_addr, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data_addr, i32 %pointee_i_addr
	%pointee_rhs_addr = load %struct.vector*, %struct.vector** %rhs_addr, align 4
	%this.data = getelementptr inbounds %struct.vector, %struct.vector* %pointee_rhs_addr, i32 0, i32 0
	%pointee_this.data = load i32*, i32** %this.data, align 4
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%arrayptr = getelementptr inbounds i32*, i32* %pointee_this.data, i32 %pointee_i_addr
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%pointee_arrayptr = load i32, i32* %arrayptr, align 4
	%binary_add = add i32 %pointee_arrayptr, %pointee_arrayptr
	store i32 %binary_add, i32* %arrayptr, align 4
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: rootReturn 
	br label %rootReturn
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_i_addr = load i32, i32* %i_addr, align 4
	%pre_add = add i32 %pointee_i_addr, 1
	store i32 %pre_add, i32 %pointee_i_addr, align 4
	br label %for_cond
}
