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
%struct.A = type {i32}
define null @cls_A_con_0(){
entry:
;precursors: 
;successors: 
	ret void
}
define void @cls_A_f(%struct.A* %this, i32 %param_p){
entry:
;precursors: 
;successors: 
	store i32 65536, i32* %p_addr, align 4
	store i32 %param_p, i32* %p_addr, align 4
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
	store i32 65536, i32* %x_addr, align 4
	store %struct.A* null, %struct.A** %a_addr, align 4
	call void @__init()
	%pointee_a_addr = load %struct.A*, %struct.A** %a_addr, align 4
	%pointee_x_addr = load i32, i32* %x_addr, align 4
	call void @cls_A_f(%struct.A* %pointee_a_addr, i32 %pointee_x_addr)
	ret i32 0
}
