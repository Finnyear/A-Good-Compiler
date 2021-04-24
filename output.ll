declare i32 @g_getInt()
declare void @g_println(i8* %0)
declare i8* @malloc(i32 %0)
declare i8* @g_stringadd(i8* %0, i8* %1)
declare i32 @l_string_parseInt(i8* %0)
declare void @g_print(i8* %0)
declare i1 @g_stringge(i8* %0, i8* %1)
declare void @g_printlnInt(i32 %0)
declare i8* @g_toString(i32 %0)
declare i1 @g_stringle(i8* %0, i8* %1)
declare i32 @l_string_length(i8* %0)
declare i1 @g_stringne(i8* %0, i8* %1)
declare i8* @l_string_substring(i8* %0, i32 %1, i32 %2)
declare void @g_printInt(i32 %0)
declare i8 @l_string_ord(i8* %0)
declare i1 @g_stringgt(i8* %0, i8* %1)
declare i1 @g_stringeq(i8* %0, i8* %1)
declare i8* @g_getString()
declare i1 @g_stringlt(i8* %0, i8* %1)
@N = global i32 zeroinitializer, align 4
@b = global i8* zeroinitializer, align 4
@resultCount = global i32 zeroinitializer, align 4
@main.0 = private unnamed_addr constant [2 x i8] c" \00", align 1
@main.1 = private unnamed_addr constant [8 x i8] c"Total: \00", align 1
define void @__init(){
b.0:
;precursors: 
;successors: 
;head_inst: store i32 15000, i32* @N, align 4
;tail_inst: store i32 0, i32* @resultCount, align 4
;terminate: ret void
	store i32 15000, i32* @N, align 4
	%0 = call noalias i8* @malloc(i32 15005)
	%1 = bitcast i8* %0 to i32*
	store i32 15001, i32* %1, align 4
	%2 = getelementptr inbounds i32, i32* %1, i32 1
	%3 = bitcast i32* %2 to i8*
	store i8* %3, i8** @b, align 4
	store i32 0, i32* @resultCount, align 4
	ret void
}
define i32 @main(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: store i32 15000, i32* @N, align 4
;tail_inst: store i32 0, i32* @resultCount, align 4
;terminate: br label %b.1
	store i32 15000, i32* @N, align 4
	%0 = call noalias i8* @malloc(i32 15005)
	%1 = bitcast i8* %0 to i32*
	store i32 15001, i32* %1, align 4
	%2 = getelementptr inbounds i32, i32* %1, i32 1
	%3 = bitcast i32* %2 to i8*
	store i8* %3, i8** @b, align 4
	store i32 0, i32* @resultCount, align 4
	br label %b.1
b.1:
;precursors: b.4 b.0 
;successors: b.2 b.3 
;head_inst: %5 = load i32, i32* @N, align 4
;tail_inst: %6 = icmp sle i32 %4, %5
;terminate: br i1 %6, label %b.2, label %b.3
	%4 = phi i32 [ 1, %b.0 ], [ %9, %b.4 ]
	%5 = load i32, i32* @N, align 4
	%6 = icmp sle i32 %4, %5
	br i1 %6, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.4 
;head_inst: %7 = load i8*, i8** @b, align 4
;tail_inst: store i8 1, i8* %8, align 1
;terminate: br label %b.4
	%7 = load i8*, i8** @b, align 4
	%8 = getelementptr inbounds i8, i8* %7, i32 %4
	store i8 1, i8* %8, align 1
	br label %b.4
b.3:
;precursors: b.1 
;successors: b.5 
;head_inst: null
;tail_inst: null
;terminate: br label %b.5
	br label %b.5
b.4:
;precursors: b.2 
;successors: b.1 
;head_inst: %9 = add i32 %4, 1
;tail_inst: %9 = add i32 %4, 1
;terminate: br label %b.1
	%9 = add i32 %4, 1
	br label %b.1
b.5:
;precursors: b.3 b.12 
;successors: b.6 b.7 
;head_inst: %11 = load i32, i32* @N, align 4
;tail_inst: %12 = icmp sle i32 %10, %11
;terminate: br i1 %12, label %b.6, label %b.7
	%10 = phi i32 [ 2, %b.3 ], [ %27, %b.12 ]
	%11 = load i32, i32* @N, align 4
	%12 = icmp sle i32 %10, %11
	br i1 %12, label %b.6, label %b.7
b.6:
;precursors: b.5 
;successors: b.8 b.9 
;head_inst: %13 = load i8*, i8** @b, align 4
;tail_inst: %16 = zext i8 %15 to i1
;terminate: br i1 %16, label %b.8, label %b.9
	%13 = load i8*, i8** @b, align 4
	%14 = getelementptr inbounds i8, i8* %13, i32 %10
	%15 = load i8, i8* %14, align 1
	%16 = zext i8 %15 to i1
	br i1 %16, label %b.8, label %b.9
b.7:
;precursors: b.5 
;successors: 
;head_inst: %17 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @main.1, i32 0, i32 0
;tail_inst: call void @g_println(i8* %20)
;terminate: ret i32 0
	%17 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @main.1, i32 0, i32 0
	%18 = load i32, i32* @resultCount, align 4
	%19 = call i8* @g_toString(i32 %18)
	%20 = call i8* @g_stringadd(i8* %17, i8* %19)
	call void @g_println(i8* %20)
	ret i32 0
b.8:
;precursors: b.6 
;successors: b.10 b.11 
;head_inst: %21 = icmp sgt i32 %10, 3
;tail_inst: %21 = icmp sgt i32 %10, 3
;terminate: br i1 %21, label %b.10, label %b.11
	%21 = icmp sgt i32 %10, 3
	br i1 %21, label %b.10, label %b.11
b.9:
;precursors: b.6 b.16 
;successors: b.12 
;head_inst: null
;tail_inst: null
;terminate: br label %b.12
	br label %b.12
b.10:
;precursors: b.8 
;successors: b.13 b.11 
;head_inst: %22 = sub i32 %10, 2
;tail_inst: %26 = zext i8 %25 to i1
;terminate: br i1 %26, label %b.13, label %b.11
	%22 = sub i32 %10, 2
	%23 = load i8*, i8** @b, align 4
	%24 = getelementptr inbounds i8, i8* %23, i32 %22
	%25 = load i8, i8* %24, align 1
	%26 = zext i8 %25 to i1
	br i1 %26, label %b.13, label %b.11
b.11:
;precursors: b.8 b.10 b.13 
;successors: b.14 
;head_inst: null
;tail_inst: null
;terminate: br label %b.14
	br label %b.14
b.12:
;precursors: b.9 
;successors: b.5 
;head_inst: %27 = add i32 %10, 1
;tail_inst: %27 = add i32 %10, 1
;terminate: br label %b.5
	%27 = add i32 %10, 1
	br label %b.5
b.13:
;precursors: b.10 
;successors: b.11 
;head_inst: %28 = load i32, i32* @resultCount, align 4
;tail_inst: call void @g_println(i8* %35)
;terminate: br label %b.11
	%28 = load i32, i32* @resultCount, align 4
	%29 = add i32 %28, 1
	store i32 %29, i32* @resultCount, align 4
	%30 = sub i32 %10, 2
	%31 = call i8* @g_toString(i32 %30)
	%32 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @main.0, i32 0, i32 0
	%33 = call i8* @g_stringadd(i8* %31, i8* %32)
	%34 = call i8* @g_toString(i32 %10)
	%35 = call i8* @g_stringadd(i8* %33, i8* %34)
	call void @g_println(i8* %35)
	br label %b.11
b.14:
;precursors: b.11 b.15 
;successors: b.15 b.16 
;head_inst: %37 = mul i32 %10, %36
;tail_inst: %39 = icmp sle i32 %37, %38
;terminate: br i1 %39, label %b.15, label %b.16
	%36 = phi i32 [ 2, %b.11 ], [ %43, %b.15 ]
	%37 = mul i32 %10, %36
	%38 = load i32, i32* @N, align 4
	%39 = icmp sle i32 %37, %38
	br i1 %39, label %b.15, label %b.16
b.15:
;precursors: b.14 
;successors: b.14 
;head_inst: %40 = mul i32 %10, %36
;tail_inst: %43 = add i32 %36, 1
;terminate: br label %b.14
	%40 = mul i32 %10, %36
	%41 = load i8*, i8** @b, align 4
	%42 = getelementptr inbounds i8, i8* %41, i32 %40
	store i8 0, i8* %42, align 1
	%43 = add i32 %36, 1
	br label %b.14
b.16:
;precursors: b.14 
;successors: b.9 
;head_inst: null
;tail_inst: null
;terminate: br label %b.9
	br label %b.9
}
