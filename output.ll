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
%struct.TA = type {i8*, i32}
@init_anger = global i32 zeroinitializer, align 4
@work_anger = global i32 zeroinitializer, align 4
@main.3 = private unnamed_addr constant [15 x i8] c"the leading TA\00", align 1
@main.4 = private unnamed_addr constant [16 x i8] c"the striking TA\00", align 1
@fun_work.2 = private unnamed_addr constant [23 x i8] c" wants to give up!!!!!\00", align 1
@main.5 = private unnamed_addr constant [3 x i8] c"MR\00", align 1
@fun_work.1 = private unnamed_addr constant [22 x i8] c" enjoys this work. XD\00", align 1
@main.6 = private unnamed_addr constant [5 x i8] c"Mars\00", align 1
@fun_work.0 = private unnamed_addr constant [3 x i8] c", \00", align 1
define void @__init(){
entry:
;precursors: 
;successors: 
	store i32 100, i32* @init_anger, align 4
	store i32 10, i32* @work_anger, align 4
	ret void
}
define void @fun_work(i8* %param_st, %struct.TA* %param_ta){
entry:
;precursors: 
;successors: if_then else_then 
	%this.anger = getelementptr inbounds %struct.TA, %struct.TA* %param_ta, i32 0, i32 1
	%pointee_this.anger = load i32, i32* %this.anger, align 4
	%cmp_sle = icmp sle i32 %pointee_this.anger, 100
	br i1 %cmp_sle, label %if_then, label %else_then
else_then:
;precursors: entry 
;successors: if_end 
	%resolved_fun_work.0 = getelementptr inbounds [ 3 x i8 ], [ 3 x i8 ]* @fun_work.0, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %param_st, i8* %resolved_fun_work.0)
	%this.state = getelementptr inbounds %struct.TA, %struct.TA* %param_ta, i32 0, i32 0
	%pointee_this.state = load i8*, i8** %this.state, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %pointee_this.state)
	%resolved_fun_work.2 = getelementptr inbounds [ 23 x i8 ], [ 23 x i8 ]* @fun_work.2, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_fun_work.2)
	call void @g_println(i8* %binary_add_string)
	br label %if_end
if_then:
;precursors: entry 
;successors: if_end 
	%resolved_fun_work.0 = getelementptr inbounds [ 3 x i8 ], [ 3 x i8 ]* @fun_work.0, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %param_st, i8* %resolved_fun_work.0)
	%this.state = getelementptr inbounds %struct.TA, %struct.TA* %param_ta, i32 0, i32 0
	%pointee_this.state = load i8*, i8** %this.state, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %pointee_this.state)
	%resolved_fun_work.1 = getelementptr inbounds [ 22 x i8 ], [ 22 x i8 ]* @fun_work.1, i32 0, i32 0
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %resolved_fun_work.1)
	call void @g_println(i8* %binary_add_string)
	br label %if_end
if_end:
;precursors: if_then else_then 
;successors: 
	%this.anger = getelementptr inbounds %struct.TA, %struct.TA* %param_ta, i32 0, i32 1
	%this.anger = getelementptr inbounds %struct.TA, %struct.TA* %param_ta, i32 0, i32 1
	%pointee_this.anger = load i32, i32* %this.anger, align 4
	%pointee_work_anger = load i32, i32* @work_anger, align 4
	%binary_add = add i32 %pointee_this.anger, %pointee_work_anger
	store i32 %binary_add, i32* %this.anger, align 4
	ret void
}
define null @cls_TA_con_0(){
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
	%malloc = call noalias i8* @malloc(i32 8)
	%new_class_ptr = bitcast i8* %malloc to %struct.TA*
	%this.state = getelementptr inbounds %struct.TA, %struct.TA* %new_class_ptr, i32 0, i32 0
	%resolved_main.3 = getelementptr inbounds [ 15 x i8 ], [ 15 x i8 ]* @main.3, i32 0, i32 0
	store i8* %resolved_main.3, i8** %this.state, align 4
	%this.anger = getelementptr inbounds %struct.TA, %struct.TA* %new_class_ptr, i32 0, i32 1
	store i32 0, i32* %this.anger, align 4
	%malloc = call noalias i8* @malloc(i32 8)
	%new_class_ptr = bitcast i8* %malloc to %struct.TA*
	%this.state = getelementptr inbounds %struct.TA, %struct.TA* %new_class_ptr, i32 0, i32 0
	%resolved_main.4 = getelementptr inbounds [ 16 x i8 ], [ 16 x i8 ]* @main.4, i32 0, i32 0
	store i8* %resolved_main.4, i8** %this.state, align 4
	%this.anger = getelementptr inbounds %struct.TA, %struct.TA* %new_class_ptr, i32 0, i32 1
	%pointee_init_anger = load i32, i32* @init_anger, align 4
	store i32 %pointee_init_anger, i32* %this.anger, align 4
	%resolved_main.5 = getelementptr inbounds [ 3 x i8 ], [ 3 x i8 ]* @main.5, i32 0, i32 0
	call void @fun_work(i8* %resolved_main.5, %struct.TA* %new_class_ptr)
	%resolved_main.6 = getelementptr inbounds [ 5 x i8 ], [ 5 x i8 ]* @main.6, i32 0, i32 0
	call void @fun_work(i8* %resolved_main.6, %struct.TA* %new_class_ptr)
	%resolved_main.6 = getelementptr inbounds [ 5 x i8 ], [ 5 x i8 ]* @main.6, i32 0, i32 0
	call void @fun_work(i8* %resolved_main.6, %struct.TA* %new_class_ptr)
	ret i32 0
}
