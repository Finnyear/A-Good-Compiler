declare i32 @g_getInt()
declare void @g_println(i8* %s)
declare i8* @malloc(i32 %a)
declare i8* @l_string_substring(i8* %s, i32 %left, i32 %right)
declare i32 @l_string_parseInt(i8* %s)
declare void @g_printInt(i32 %v)
declare i8 @l_string_ord(i8* %s)
declare void @g_print(i8* %s)
declare void @g_printlnInt(i32 %v)
declare i8* @g_toString(i32 %i)
declare i8* @g_getString()
declare i32 @l_string_length(i8* %s)
@n = global i32 zeroinitializer, align 4
@p = global i32 zeroinitializer, align 4
@k = global i32 zeroinitializer, align 4
@i = global i32 zeroinitializer, align 4
@main.0 = private unnamed_addr constant [6 x i8] c"\22<< \22\00", align 1
@main.1 = private unnamed_addr constant [4 x i8] c"\22(\22\00", align 1
@main.2 = private unnamed_addr constant [5 x i8] c"\22) \22\00", align 1
@main.3 = private unnamed_addr constant [4 x i8] c"\22 \22\00", align 1
@main.4 = private unnamed_addr constant [6 x i8] c"\22>> \22\00", align 1
define void @__init(){
entry:
;precursors: 
;successors: 
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: if_then addphi_mid 
	call void @__init()
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @n, align 4
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @p, align 4
	%fun_cal_ret_val = call i32 @g_getInt()
	store i32 %fun_cal_ret_val, i32* @k, align 4
	%pointee_const = load i32, i32* @p, align 4
	%pointee_const = load i32, i32* @k, align 4
	%binary_sub = sub i32 %pointee_const, %pointee_const
	%cmp_sgt = icmp sgt i32 %binary_sub, 1
	br i1 %cmp_sgt, label %if_then, label %addphi_mid
if_then:
;precursors: entry 
;successors: if_end 
	%resolved_main.0 = getelementptr inbounds [ 6 x i8 ], [ 6 x i8 ]* @main.0, i32 0, i32 0
	call void @g_print(i8* %resolved_main.0)
	br label %if_end
addphi_mid:
;precursors: entry 
;successors: if_end 
	br label %if_end
if_end:
;precursors: if_then addphi_mid 
;successors: for_cond 
	%pointee_const = load i32, i32* @p, align 4
	%pointee_const = load i32, i32* @k, align 4
	%binary_sub = sub i32 %pointee_const, %pointee_const
	store i32 %binary_sub, i32* @i, align 4
	br label %for_cond
for_cond:
;precursors: if_end for_upd 
;successors: for_body for_end 
	%pointee_const = load i32, i32* @p, align 4
	%pointee_const = load i32, i32* @k, align 4
	%binary_add = add i32 %pointee_const, %pointee_const
	%pointee_const = load i32, i32* @i, align 4
	%cmp_sle = icmp sle i32 %pointee_const, %binary_add
	br i1 %cmp_sle, label %for_body, label %for_end
for_body:
;precursors: for_cond 
;successors: land_cond addphi_mid 
	%pointee_const = load i32, i32* @i, align 4
	%cmp_sle = icmp sle i32 1, %pointee_const
	br i1 %cmp_sle, label %land_cond, label %addphi_mid
for_end:
;precursors: for_cond 
;successors: if_then addphi_mid 
	%pointee_const = load i32, i32* @p, align 4
	%pointee_const = load i32, i32* @k, align 4
	%binary_add = add i32 %pointee_const, %pointee_const
	%pointee_const = load i32, i32* @n, align 4
	%cmp_slt = icmp slt i32 %binary_add, %pointee_const
	br i1 %cmp_slt, label %if_then, label %addphi_mid
land_cond:
;precursors: for_body 
;successors: if_then addphi_mid 
	%pointee_const = load i32, i32* @i, align 4
	%pointee_const = load i32, i32* @n, align 4
	%cmp_sle = icmp sle i32 %pointee_const, %pointee_const
	br i1 %cmp_sle, label %if_then, label %addphi_mid
addphi_mid:
;precursors: for_body 
;successors: if_end 
	br label %if_end
if_then:
;precursors: for_end 
;successors: if_end 
	%resolved_main.4 = getelementptr inbounds [ 6 x i8 ], [ 6 x i8 ]* @main.4, i32 0, i32 0
	call void @g_print(i8* %resolved_main.4)
	br label %if_end
addphi_mid:
;precursors: for_end 
;successors: if_end 
	br label %if_end
if_then:
;precursors: land_cond 
;successors: if_then else_then 
	%pointee_const = load i32, i32* @i, align 4
	%pointee_const = load i32, i32* @p, align 4
	%eq = icmp eq i32 %pointee_const, %pointee_const
	br i1 %eq, label %if_then, label %else_then
addphi_mid:
;precursors: land_cond 
;successors: if_end 
	br label %if_end
if_end:
;precursors: if_end addphi_mid addphi_mid 
;successors: for_upd 
	br label %for_upd
if_end:
;precursors: if_then addphi_mid 
;successors: 
	ret i32 0
if_then:
;precursors: if_then 
;successors: if_end 
	%resolved_main.1 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @main.1, i32 0, i32 0
	call void @g_print(i8* %resolved_main.1)
	%pointee_const = load i32, i32* @i, align 4
	%fun_cal_ret_val = call i8* @g_toString(i32 %pointee_const)
	call void @g_print(i8* %fun_cal_ret_val)
	%resolved_main.2 = getelementptr inbounds [ 5 x i8 ], [ 5 x i8 ]* @main.2, i32 0, i32 0
	call void @g_print(i8* %resolved_main.2)
	br label %if_end
else_then:
;precursors: if_then 
;successors: if_end 
	%pointee_const = load i32, i32* @i, align 4
	call void @g_printInt(i32 %pointee_const)
	%resolved_main.3 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @main.3, i32 0, i32 0
	call void @g_print(i8* %resolved_main.3)
	br label %if_end
for_upd:
;precursors: if_end 
;successors: for_cond 
	%pointee_const = load i32, i32* @i, align 4
	%suf_tmp = add i32 %pointee_const, 1
	store i32 %suf_tmp, i32* @i, align 4
	br label %for_cond
if_end:
;precursors: if_then else_then 
;successors: if_end 
	br label %if_end
}
