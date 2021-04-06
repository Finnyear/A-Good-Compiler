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
%struct.Fibonacci = type {i32, i32}
define i32 @cls_Fibonacci_calc(%struct.Fibonacci* %this, i32 %param_cur_num){
entry:
;precursors: 
;successors: if_then else_then 
	store i32 65536, i32* %cur_num_addr, align 4
	store i32 %param_cur_num, i32* %cur_num_addr, align 4
	%pointee_cur_num_addr = load i32, i32* %cur_num_addr, align 4
	%eq = icmp eq i32 %pointee_cur_num_addr, 0
	br i1 %eq, label %if_then, label %else_then
if_then:
;precursors: entry 
;successors: rootReturn 
	br label %rootReturn
else_then:
;precursors: entry 
;successors: rootReturn 
	%pointee_cur_num_addr = load i32, i32* %cur_num_addr, align 4
	%binary_sub = sub i32 %pointee_cur_num_addr, 1
	%fun_cal_ret_val = call i32 @cls_Fibonacci_calc(%struct.Fibonacci* %this, i32 %binary_sub)
	%pointee_cur_num_addr = load i32, i32* %cur_num_addr, align 4
	%binary_mul = mul i32 %pointee_cur_num_addr, %fun_cal_ret_val
	br label %rootReturn
rootReturn:
;precursors: if_then else_then 
;successors: 
	%rootRet = phi i32 [ 1, %if_then ], [ %binary_mul, %else_then ]
	ret i32 %rootRet
}
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define void @cls_Fibonacci_reset(%struct.Fibonacci* %this){
entry:
;precursors: 
;successors: 
	%this.x_addr = getelementptr inbounds %struct.Fibonacci, %struct.Fibonacci* %this, i32 0, i32 0
	store i32 0, i32* %this.x_addr, align 4
	%this.result_addr = getelementptr inbounds %struct.Fibonacci, %struct.Fibonacci* %this, i32 0, i32 1
	store i32 0, i32* %this.result_addr, align 4
	ret void
}
define void @cls_Fibonacci_set_problem(%struct.Fibonacci* %this, i32 %param_x_in){
entry:
;precursors: 
;successors: 
	store i32 65536, i32* %x_in_addr, align 4
	store i32 %param_x_in, i32* %x_in_addr, align 4
	call void @cls_Fibonacci_reset(%struct.Fibonacci* %this)
	%this.x_addr = getelementptr inbounds %struct.Fibonacci, %struct.Fibonacci* %this, i32 0, i32 0
	%pointee_x_in_addr = load i32, i32* %x_in_addr, align 4
	store i32 %pointee_x_in_addr, i32* %this.x_addr, align 4
	ret void
}
define i32 @cls_Fibonacci_get_result(%struct.Fibonacci* %this){
entry:
;precursors: 
;successors: 
	%this.result_addr = getelementptr inbounds %struct.Fibonacci, %struct.Fibonacci* %this, i32 0, i32 1
	%this.x_addr = getelementptr inbounds %struct.Fibonacci, %struct.Fibonacci* %this, i32 0, i32 0
	%pointee_this.x_addr = load i32, i32* %this.x_addr, align 4
	%fun_cal_ret_val = call i32 @cls_Fibonacci_calc(%struct.Fibonacci* %this, i32 %pointee_this.x_addr)
	store i32 %fun_cal_ret_val, i32* %this.result_addr, align 4
	%this.result_addr = getelementptr inbounds %struct.Fibonacci, %struct.Fibonacci* %this, i32 0, i32 1
	ret i32* %this.result_addr
}
define i32 @main(){
entry:
;precursors: 
;successors: for_cond 
	store i32 65536, i32* %x_addr, align 4
	store %struct.Fibonacci* null, %struct.Fibonacci** %teacher_addr, align 4
	call void @__init()
	%malloc = call noalias i8* @malloc(i32 8)
	%new_class_ptr = bitcast i8* %malloc to %struct.Fibonacci*
	store %struct.Fibonacci* %new_class_ptr, %struct.Fibonacci** %teacher_addr, align 4
	store i32 0, i32* %x_addr, align 4
	br label %for_cond
for_cond:
;precursors: entry for_upd 
;successors: for_body for_end 
	%pointee_x_addr = load i32, i32* %x_addr, align 4
	%cmp_slt = icmp slt i32 %pointee_x_addr, 5
	br i1 %cmp_slt, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: for_upd 
	%pointee_teacher_addr = load %struct.Fibonacci*, %struct.Fibonacci** %teacher_addr, align 4
	%pointee_x_addr = load i32, i32* %x_addr, align 4
	call void @cls_Fibonacci_set_problem(%struct.Fibonacci* %pointee_teacher_addr, i32 %pointee_x_addr)
	%pointee_teacher_addr = load %struct.Fibonacci*, %struct.Fibonacci** %teacher_addr, align 4
	%fun_cal_ret_val = call i32 @cls_Fibonacci_get_result(%struct.Fibonacci* %pointee_teacher_addr)
	%fun_cal_ret_val = call i8* @g_toString(i32 %fun_cal_ret_val)
	call void @g_println(i8* %fun_cal_ret_val)
	br label %for_upd
for_end:
;precursors: for_cond 
;successors: 
	ret i32 0
for_upd:
;precursors: for_body 
;successors: for_cond 
	%pointee_x_addr = load i32, i32* %x_addr, align 4
	%suf_tmp = add i32 %pointee_x_addr, 1
	store i32 %suf_tmp, i32* %x_addr, align 4
	br label %for_cond
}
define null @cls_Fibonacci_con_0(){
entry:
;precursors: 
;successors: 
	ret void
}
