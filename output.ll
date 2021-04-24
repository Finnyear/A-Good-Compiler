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
define i32 @fun_test(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: null
;tail_inst: null
;terminate: br label %b.1
	br label %b.1
b.1:
;precursors: b.0 b.8 
;successors: b.2 b.3 
;head_inst: %2 = icmp slt i32 %1, 200
;tail_inst: %2 = icmp slt i32 %1, 200
;terminate: br i1 %2, label %b.2, label %b.3
	%0 = phi i32 [ 0, %b.0 ], [ %5, %b.8 ]
	%1 = phi i32 [ 0, %b.0 ], [ %7, %b.8 ]
	%2 = icmp slt i32 %1, 200
	br i1 %2, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.4 
;head_inst: null
;tail_inst: null
;terminate: br label %b.4
	br label %b.4
b.3:
;precursors: b.1 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 %0
	ret i32 %0
b.4:
;precursors: b.2 
;successors: b.5 
;head_inst: null
;tail_inst: null
;terminate: br label %b.5
	br label %b.5
b.5:
;precursors: b.4 
;successors: b.6 
;head_inst: null
;tail_inst: null
;terminate: br label %b.6
	br label %b.6
b.6:
;precursors: b.5 
;successors: b.7 
;head_inst: %3 = add i32 %1, 1
;tail_inst: %4 = add i32 %0, 1
;terminate: br label %b.7
	%3 = add i32 %1, 1
	%4 = add i32 %0, 1
	br label %b.7
b.7:
;precursors: b.6 
;successors: b.8 
;head_inst: null
;tail_inst: null
;terminate: br label %b.8
	%5 = phi i32 [ %4, %b.6 ], [ %binary_sdiv, %else_then ]
	%6 = phi i32 [ %3, %b.6 ], [ %1, %else_then ]
	br label %b.8
b.8:
;precursors: b.7 
;successors: b.1 
;head_inst: %7 = add i32 %6, 1
;tail_inst: %7 = add i32 %6, 1
;terminate: br label %b.1
	%7 = add i32 %6, 1
	br label %b.1
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
;precursors: b.8 b.0 
;successors: b.2 b.3 
;head_inst: %2 = icmp slt i32 %0, 200
;tail_inst: %2 = icmp slt i32 %0, 200
;terminate: br i1 %2, label %b.2, label %b.3
	%0 = phi i32 [ 0, %b.0 ], [ %8, %b.8 ]
	%1 = phi i32 [ 0, %b.0 ], [ %6, %b.8 ]
	%2 = icmp slt i32 %0, 200
	br i1 %2, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.4 
;head_inst: null
;tail_inst: null
;terminate: br label %b.4
	br label %b.4
b.3:
;precursors: b.1 
;successors: 
;head_inst: %3 = sub i32 %1, 100
;tail_inst: %3 = sub i32 %1, 100
;terminate: ret i32 %3
	%3 = sub i32 %1, 100
	ret i32 %3
b.4:
;precursors: b.2 
;successors: b.5 
;head_inst: null
;tail_inst: null
;terminate: br label %b.5
	br label %b.5
b.5:
;precursors: b.4 
;successors: b.6 
;head_inst: null
;tail_inst: null
;terminate: br label %b.6
	br label %b.6
b.6:
;precursors: b.5 
;successors: b.7 
;head_inst: %4 = add i32 %0, 1
;tail_inst: %5 = add i32 %1, 1
;terminate: br label %b.7
	%4 = add i32 %0, 1
	%5 = add i32 %1, 1
	br label %b.7
b.7:
;precursors: b.6 
;successors: b.8 
;head_inst: null
;tail_inst: null
;terminate: br label %b.8
	%6 = phi i32 [ %5, %b.6 ], [ %binary_sdiv, %else_then_inline ]
	%7 = phi i32 [ %4, %b.6 ], [ %0, %else_then_inline ]
	br label %b.8
b.8:
;precursors: b.7 
;successors: b.1 
;head_inst: %8 = add i32 %7, 1
;tail_inst: %8 = add i32 %7, 1
;terminate: br label %b.1
	%8 = add i32 %7, 1
	br label %b.1
}
