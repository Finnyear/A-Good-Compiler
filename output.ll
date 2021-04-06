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
%struct.A = type {%struct.B*, i8*}
%struct.B = type {%struct.A*, %struct.B*}
%struct.f = type {}
define void @cls_A_con_0(%struct.A* %this){
entry:
;precursors: 
;successors: 
	ret void
}
define i32 @cls_A_aabc(%struct.A* %this, i32 %param_abc){
entry:
;precursors: 
;successors: 
	ret i32* %abc_addr
}
define void @cls_B_D(%struct.B* %this){
entry:
;precursors: 
;successors: 
	ret void
}
define void @cls_B_t(%struct.B* %this){
entry:
;precursors: 
;successors: 
	call void @cls_B_D(%struct.B* %this)
	ret void
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
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: 
	call void @__init()
	%puresz = mul i32 1, 4
	%matasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %matasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 1, i32* %allocbitcast, align 4
	%new_array = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%puresz = mul i32 4, 4
	%matasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %matasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 4, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%new_array = bitcast i32* %allocoffset to i32***
	%fun_cal_ret_val = call i32 @g_getInt()
	%fun_cal_ret_val = call i8* @g_toString(i32 %fun_cal_ret_val)
	%fun_cal_ret_val = call i32 @l_string_length(i8* %fun_cal_ret_val)
	%fun_cal_ret_val = call i8* @g_toString(i32 %fun_cal_ret_val)
	call void @g_println(i8* %fun_cal_ret_val)
	ret i32 0
}
define null @cls_f_con_0(){
entry:
;precursors: 
;successors: 
	ret void
}
