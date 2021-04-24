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
define i32 @fun_gcd(i32 %0, i32 %1){
b.0:
;precursors: 
;successors: b.1 b.2 
;head_inst: %2 = srem i32 %0, %1
;tail_inst: %3 = icmp eq i32 %2, 0
;terminate: br i1 %3, label %b.1, label %b.2
	%2 = srem i32 %0, %1
	%3 = icmp eq i32 %2, 0
	br i1 %3, label %b.1, label %b.2
b.1:
;precursors: b.0 
;successors: b.3 
;head_inst: null
;tail_inst: null
;terminate: br label %b.3
	br label %b.3
b.2:
;precursors: b.0 
;successors: b.4 b.5 
;head_inst: %4 = srem i32 %0, %1
;tail_inst: %6 = icmp eq i32 %5, 0
;terminate: br i1 %6, label %b.4, label %b.5
	%4 = srem i32 %0, %1
	%5 = srem i32 %1, %4
	%6 = icmp eq i32 %5, 0
	br i1 %6, label %b.4, label %b.5
b.3:
;precursors: b.1 b.6 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 %7
	%7 = phi i32 [ %1, %b.1 ], [ %10, %b.6 ]
	ret i32 %7
b.4:
;precursors: b.2 
;successors: b.6 
;head_inst: null
;tail_inst: null
;terminate: br label %b.6
	br label %b.6
b.5:
;precursors: b.2 
;successors: b.6 
;head_inst: %8 = srem i32 %1, %4
;tail_inst: %9 = call i32 @fun_gcd(i32 %4, i32 %8)
;terminate: br label %b.6
	%8 = srem i32 %1, %4
	%9 = call i32 @fun_gcd(i32 %4, i32 %8)
	br label %b.6
b.6:
;precursors: b.4 b.5 
;successors: b.3 
;head_inst: null
;tail_inst: null
;terminate: br label %b.3
	%10 = phi i32 [ %4, %b.4 ], [ %9, %b.5 ]
	br label %b.3
}
define void @__init(){
b.0:
;precursors: 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret void
	ret void
}
define i32 @main(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: null
;tail_inst: null
;terminate: br label %b.1
	br label %b.1
b.1:
;precursors: b.0 
;successors: b.2 
;head_inst: null
;tail_inst: null
;terminate: br label %b.2
	br label %b.2
b.2:
;precursors: b.1 
;successors: b.3 
;head_inst: %1 = call i8* @g_toString(i32 %0)
;tail_inst: call void @g_println(i8* %1)
;terminate: br label %b.3
	%0 = phi i32 [ 1, %b.1 ], [ %fun_cal_ret_val, %else_then_inline ]
	%1 = call i8* @g_toString(i32 %0)
	call void @g_println(i8* %1)
	br label %b.3
b.3:
;precursors: b.2 
;successors: b.4 
;head_inst: %2 = call i32 @fun_gcd(i32 3087, i32 1029)
;tail_inst: %2 = call i32 @fun_gcd(i32 3087, i32 1029)
;terminate: br label %b.4
	%2 = call i32 @fun_gcd(i32 3087, i32 1029)
	br label %b.4
b.4:
;precursors: b.3 
;successors: b.5 
;head_inst: %4 = call i8* @g_toString(i32 %3)
;tail_inst: call void @g_println(i8* %4)
;terminate: br label %b.5
	%3 = phi i32 [ 3087, %if_then_inline ], [ %2, %b.3 ]
	%4 = call i8* @g_toString(i32 %3)
	call void @g_println(i8* %4)
	br label %b.5
b.5:
;precursors: b.4 
;successors: b.6 
;head_inst: %5 = call i32 @fun_gcd(i32 1539, i32 1368)
;tail_inst: %5 = call i32 @fun_gcd(i32 1539, i32 1368)
;terminate: br label %b.6
	%5 = call i32 @fun_gcd(i32 1539, i32 1368)
	br label %b.6
b.6:
;precursors: b.5 
;successors: 
;head_inst: %7 = call i8* @g_toString(i32 %6)
;tail_inst: call void @g_println(i8* %7)
;terminate: ret i32 0
	%6 = phi i32 [ 1539, %if_then_inline ], [ %5, %b.5 ]
	%7 = call i8* @g_toString(i32 %6)
	call void @g_println(i8* %7)
	ret i32 0
}
