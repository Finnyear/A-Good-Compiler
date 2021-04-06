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
%struct.A = type {i32, i32}
@object = global %struct.A* zeroinitializer, align 4
define %struct.A* @cls_A_set(%struct.A* %this, i32 %param_xx, i32 %param_yy){
entry:
;precursors: 
;successors: 
	%this.x_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%pointee_this.x_addr = load i32, i32* %this.x_addr, align 4
	%this.y_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 1
	%pointee_this.y_addr = load i32, i32* %this.y_addr, align 4
	%fun_cal_ret_val = call %struct.A* @cls_A_set(%struct.A* %this, i32 %pointee_this.x_addr, i32 %pointee_this.y_addr)
	%this.x = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%pointee_this.x = load i32, i32* %this.x, align 4
	%this.y = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%pointee_this.y = load i32, i32* %this.y, align 4
	%fun_cal_ret_val = call %struct.A* @cls_A_set(%struct.A* %fun_cal_ret_val, i32 %pointee_this.x, i32 %pointee_this.y)
	%fun_cal_ret_val = call %struct.A* @cls_A_set(%struct.A* %fun_cal_ret_val, i32 %param_xx, i32 %param_yy)
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %fun_cal_ret_val)
	ret %struct.A* %fun_cal_ret_val
}
define %struct.A* @cls_A_getThis(%struct.A* %this){
entry:
;precursors: 
;successors: 
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %this)
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %fun_cal_ret_val)
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %fun_cal_ret_val)
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %fun_cal_ret_val)
	%fun_cal_ret_val = call %struct.A* @cls_A_copy(%struct.A* %fun_cal_ret_val, %struct.A* %this)
	ret %struct.A* %fun_cal_ret_val
}
define null @cls_A_con_0(){
entry:
;precursors: 
;successors: 
	ret void
}
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define %struct.A* @cls_A_copy(%struct.A* %this, %struct.A* %param_other){
entry:
;precursors: 
;successors: 
	ret %struct.A* %this
}
define i32 @main(){
entry:
;precursors: 
;successors: 
	call void @__init()
	%pointee_object = load %struct.A*, %struct.A** @object, align 4
	call void @cls_A_func1(%struct.A* %pointee_object, i32 2, i32 3)
	%pointee_object = load %struct.A*, %struct.A** @object, align 4
	%fun_cal_ret_val = call %struct.A* @cls_A_set(%struct.A* %pointee_object, i32 0, i32 1)
	%fun_cal_ret_val = call %struct.A* @cls_A_set(%struct.A* %fun_cal_ret_val, i32 1, i32 0)
	%pointee_object = load %struct.A*, %struct.A** @object, align 4
	%pointee_object = load %struct.A*, %struct.A** @object, align 4
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %pointee_object)
	%fun_cal_ret_val = call %struct.A* @cls_A_copy(%struct.A* %pointee_object, %struct.A* %fun_cal_ret_val)
	%pointee_object = load %struct.A*, %struct.A** @object, align 4
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %pointee_object)
	%fun_cal_ret_val = call %struct.A* @cls_A_getThis(%struct.A* %fun_cal_ret_val)
	%fun_cal_ret_val = call %struct.A* @cls_A_copy(%struct.A* %fun_cal_ret_val, %struct.A* %fun_cal_ret_val)
	ret i32 0
}
define void @cls_A_func1(%struct.A* %this, i32 %param_x, i32 %param_y){
entry:
;precursors: 
;successors: 
	%this.x = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%pointee_this.x = load i32, i32* %this.x, align 4
	%binary_mul = mul i32 %pointee_this.x, %param_x
	%this.y = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%pointee_this.y = load i32, i32* %this.y, align 4
	%binary_mul = mul i32 %pointee_this.y, %param_y
	call void @cls_A_func2(%struct.A* %this, i32 %binary_mul, i32 %binary_mul)
	ret void
}
define void @cls_A_func2(%struct.A* %this, i32 %param_xx, i32 %param_yy){
entry:
;precursors: 
;successors: 
	%this.x_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%this.x = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%pointee_this.x_addr = load i32, i32* %this.x_addr, align 4
	%pointee_this.x = load i32, i32* %this.x, align 4
	%binary_mul = mul i32 %pointee_this.x_addr, %pointee_this.x
	%this.y_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 1
	%this.y = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	%pointee_this.y_addr = load i32, i32* %this.y_addr, align 4
	%pointee_this.y = load i32, i32* %this.y, align 4
	%binary_mul = mul i32 %pointee_this.y_addr, %pointee_this.y
	call void @cls_A_func1(%struct.A* %this, i32 %binary_mul, i32 %binary_mul)
	ret void
}
