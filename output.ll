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
%struct.Animals = type {%struct.Cat*, %struct.Lamb*}
%struct.Cat = type {}
%struct.Lamb = type {}
@cls_Cat_greet.0 = private unnamed_addr constant [15 x i8] c"\22MIAOMIAOMIAO\22\00", align 1
@cls_Lamb_greet.1 = private unnamed_addr constant [12 x i8] c"\22MIEMIEMIE\22\00", align 1
define void @cls_Animals_greet(%struct.Animals* %this){
entry:
;precursors: 
;successors: 
	%this.c_addr = getelementptr inbounds %struct.Animals, %struct.Animals* %this, i32 0, i32 0
	%pointee_this.c_addr = load %struct.Cat*, %struct.Cat** %this.c_addr, align 4
	call void @cls_Cat_greet(%struct.Cat* %pointee_this.c_addr)
	%this.l_addr = getelementptr inbounds %struct.Animals, %struct.Animals* %this, i32 0, i32 1
	%pointee_this.l_addr = load %struct.Lamb*, %struct.Lamb** %this.l_addr, align 4
	call void @cls_Lamb_greet(%struct.Lamb* %pointee_this.l_addr)
	ret void
}
define void @cls_Animals_con_0(%struct.Animals* %this){
entry:
;precursors: 
;successors: 
	%this.c_addr = getelementptr inbounds %struct.Animals, %struct.Animals* %this, i32 0, i32 0
	%malloc = call noalias i8* @malloc(i32 0)
	%new_class_ptr = bitcast i8* %malloc to %struct.Cat*
	store %struct.Cat* %new_class_ptr, %struct.Cat** %this.c_addr, align 4
	%this.l_addr = getelementptr inbounds %struct.Animals, %struct.Animals* %this, i32 0, i32 1
	%malloc = call noalias i8* @malloc(i32 0)
	%new_class_ptr = bitcast i8* %malloc to %struct.Lamb*
	store %struct.Lamb* %new_class_ptr, %struct.Lamb** %this.l_addr, align 4
	ret void
}
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define null @cls_Cat_con_0(){
entry:
;precursors: 
;successors: 
	ret void
}
define null @cls_Lamb_con_0(){
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
	%malloc = call noalias i8* @malloc(i32 0)
	%new_class_ptr = bitcast i8* %malloc to %struct.Cat*
	%malloc = call noalias i8* @malloc(i32 0)
	%new_class_ptr = bitcast i8* %malloc to %struct.Lamb*
	%malloc = call noalias i8* @malloc(i32 8)
	%new_class_ptr = bitcast i8* %malloc to %struct.Animals*
	call void @cls_Animals_con_0(%struct.Animals* %new_class_ptr)
	%this.c = getelementptr inbounds %struct.Animals, %struct.Animals* %new_class_ptr, i32 0, i32 0
	store %struct.Cat* %new_class_ptr, %struct.Cat** %this.c, align 4
	%this.l = getelementptr inbounds %struct.Animals, %struct.Animals* %new_class_ptr, i32 0, i32 0
	store %struct.Lamb* %new_class_ptr, %struct.Lamb** %this.l, align 4
	call void @cls_Animals_greet(%struct.Animals* %new_class_ptr)
	ret i32 0
}
define void @cls_Lamb_greet(%struct.Lamb* %this){
entry:
;precursors: 
;successors: 
	%resolved_cls_Lamb_greet.1 = getelementptr inbounds [ 12 x i8 ], [ 12 x i8 ]* @cls_Lamb_greet.1, i32 0, i32 0
	call void @g_println(i8* %resolved_cls_Lamb_greet.1)
	ret void
}
define void @cls_Cat_greet(%struct.Cat* %this){
entry:
;precursors: 
;successors: 
	%resolved_cls_Cat_greet.0 = getelementptr inbounds [ 15 x i8 ], [ 15 x i8 ]* @cls_Cat_greet.0, i32 0, i32 0
	call void @g_println(i8* %resolved_cls_Cat_greet.0)
	ret void
}
