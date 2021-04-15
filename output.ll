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
@main.0 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
define void @__init(){
b.0:
;precursors: 
;successors: 
	ret void
}
define i32 @main(){
b.0:
;precursors: 
;successors: b.1 
	call void @__init()
	%0 = mul i32 2801, 4
	%1 = add i32 %0, 4
	%2 = call noalias i8* @malloc(i32 %1)
	%3 = bitcast i8* %2 to i32*
	store i32 2801, i32* %3, align 4
	%4 = getelementptr inbounds i32, i32* %3, i32 1
	br label %b.1
b.1:
;precursors: b.0 b.4 
;successors: b.2 b.3 
	%5 = phi i32 [ 0, %b.0 ], [ %10, %b.4 ]
	%6 = sub i32 %5, 2800
	%7 = icmp ne i32 %6, 0
	br i1 %7, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.4 
	%8 = getelementptr inbounds i32, i32* %4, i32 %5
	%9 = sdiv i32 10000, 5
	store i32 %9, i32* %8, align 4
	br label %b.4
b.3:
;precursors: b.1 
;successors: b.5 
	br label %b.5
b.4:
;precursors: b.2 
;successors: b.1 
	%10 = add i32 %5, 1
	br label %b.1
b.5:
;precursors: b.3 b.14 
;successors: b.6 b.7 
	%11 = phi i32 [ 0, %b.3 ], [ %29, %b.14 ]
	%12 = phi i32 [ 2800, %b.3 ], [ %33, %b.14 ]
	%13 = phi i32 [ %5, %b.3 ], [ %31, %b.14 ]
	%14 = phi i32 [ 0, %b.3 ], [ %30, %b.14 ]
	%15 = phi i32 [ 0, %b.3 ], [ %38, %b.14 ]
	%16 = mul i32 %12, 2
	%17 = icmp eq i32 %16, 0
	br i1 %17, label %b.6, label %b.7
b.6:
;precursors: b.5 
;successors: b.8 
	br label %b.8
b.7:
;precursors: b.5 
;successors: b.9 
	br label %b.9
b.8:
;precursors: b.6 
;successors: 
	%18 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @main.0, i32 0, i32 0
	call void @g_print(i8* %18)
	ret i32 0
b.9:
;precursors: b.7 b.13 
;successors: b.10 b.11 
	%19 = phi i32 [ 0, %b.7 ], [ %37, %b.13 ]
	%20 = phi i32 [ %16, %b.7 ], [ %30, %b.13 ]
	%21 = phi i32 [ %12, %b.7 ], [ %31, %b.13 ]
	%22 = getelementptr inbounds i32, i32* %4, i32 %21
	%23 = load i32, i32* %22, align 4
	%24 = mul i32 %23, 10000
	%25 = add i32 %19, %24
	%26 = getelementptr inbounds i32, i32* %4, i32 %21
	%27 = sub i32 %20, 1
	%28 = srem i32 %25, %27
	store i32 %28, i32* %26, align 4
	%29 = sdiv i32 %25, %27
	%30 = sub i32 %27, 1
	%31 = sub i32 %21, 1
	%32 = icmp eq i32 %31, 0
	br i1 %32, label %b.10, label %b.11
b.10:
;precursors: b.9 
;successors: b.12 
	br label %b.12
b.11:
;precursors: b.9 
;successors: b.13 
	br label %b.13
b.12:
;precursors: b.10 
;successors: b.14 
	%33 = sub i32 %12, 14
	%34 = sdiv i32 %29, 10000
	%35 = add i32 %15, %34
	%36 = call i8* @g_toString(i32 %35)
	call void @g_print(i8* %36)
	br label %b.14
b.13:
;precursors: b.11 
;successors: b.9 
	%37 = mul i32 %29, %31
	br label %b.9
b.14:
;precursors: b.12 
;successors: b.5 
	%38 = srem i32 %29, 10000
	br label %b.5
}
