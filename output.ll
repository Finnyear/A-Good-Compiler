declare i32 @g_getInt()
declare void @g_println(i8* %s)
declare i8* @l_string_substring(i8* %s, i32 %left, i32 %right)
declare i32 @l_string_parseInt(i8* %s)
declare void @g_printInt(i32 %v)
declare i8 @l_string_ord(i8* %s)
declare void @g_print(i8* %s)
declare void @g_printlnInt(i32 %v)
declare i8* @g_toString(i32 %i)
declare i8* @g_getString()
declare i32 @l_string_length(i8* %s)
%struct.A = type {i32}
define void @cls_A_set(%struct.A* %this){
entry:
;precursors: 
;successors: 
	%this.x_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	store i32 1, i32* %this.x_addr, align 4
	ret void
}
define void @cls_A_con_0(%struct.A* %this){
entry:
;precursors: 
;successors: 
	%this.x_addr = getelementptr inbounds %struct.A, %struct.A* %this, i32 0, i32 0
	store i32 0, i32* %this.x_addr, align 4
	ret void
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
	call void @cls_A_set(i8* null)
	%this.null = getelementptr inbounds %struct.A, i8* null, i32 0, i32 0
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* %this.null, align 4
	ret i32 0
}
