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
@rng_seed = global i32 zeroinitializer, align 4
define i32 @fun_rng(){
b.0:
;precursors: 
;successors: b.1 b.2 
;head_inst: %0 = load i32, i32* @rng_seed, align 4
;tail_inst: %3 = icmp sge i32 %2, 0
;terminate: br i1 %3, label %b.1, label %b.2
	%0 = load i32, i32* @rng_seed, align 4
	%1 = shl i32 %0, 13
	%2 = xor i32 %0, %1
	%3 = icmp sge i32 %2, 0
	br i1 %3, label %b.1, label %b.2
b.1:
;precursors: b.0 
;successors: b.3 
;head_inst: %4 = ashr i32 %2, 17
;tail_inst: %4 = ashr i32 %2, 17
;terminate: br label %b.3
	%4 = ashr i32 %2, 17
	br label %b.3
b.2:
;precursors: b.0 
;successors: b.3 
;head_inst: %5 = xor i32 %2, -2147483648
;tail_inst: %7 = or i32 16384, %6
;terminate: br label %b.3
	%5 = xor i32 %2, -2147483648
	%6 = ashr i32 %5, 17
	%7 = or i32 16384, %6
	br label %b.3
b.3:
;precursors: b.2 b.1 
;successors: 
;head_inst: %9 = xor i32 %2, %8
;tail_inst: %12 = and i32 %11, 1073741823
;terminate: ret i32 %12
	%8 = phi i32 [ %4, %b.1 ], [ %7, %b.2 ]
	%9 = xor i32 %2, %8
	%10 = shl i32 %9, 5
	%11 = xor i32 %9, %10
	store i32 %11, i32* @rng_seed, align 4
	%12 = and i32 %11, 1073741823
	ret i32 %12
}
define i32 @fun_unsigned_shr(i32 %0, i32 %1){
b.0:
;precursors: 
;successors: b.1 b.2 
;head_inst: %2 = icmp sge i32 %0, 0
;tail_inst: %2 = icmp sge i32 %0, 0
;terminate: br i1 %2, label %b.1, label %b.2
	%2 = icmp sge i32 %0, 0
	br i1 %2, label %b.1, label %b.2
b.1:
;precursors: b.0 
;successors: b.3 
;head_inst: %3 = ashr i32 %0, %1
;tail_inst: %3 = ashr i32 %0, %1
;terminate: br label %b.3
	%3 = ashr i32 %0, %1
	br label %b.3
b.2:
;precursors: b.0 
;successors: b.3 
;head_inst: %4 = sub i32 31, %1
;tail_inst: %8 = or i32 %5, %7
;terminate: br label %b.3
	%4 = sub i32 31, %1
	%5 = shl i32 1, %4
	%6 = xor i32 %0, -2147483648
	%7 = ashr i32 %6, %1
	%8 = or i32 %5, %7
	br label %b.3
b.3:
;precursors: b.1 b.2 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 %9
	%9 = phi i32 [ %3, %b.1 ], [ %8, %b.2 ]
	ret i32 %9
}
define void @__init(){
b.0:
;precursors: 
;successors: 
;head_inst: store i32 19260817, i32* @rng_seed, align 4
;tail_inst: store i32 19260817, i32* @rng_seed, align 4
;terminate: ret void
	store i32 19260817, i32* @rng_seed, align 4
	ret void
}
define i32 @fun_unsigned_shl(i32 %0, i32 %1){
b.0:
;precursors: 
;successors: 
;head_inst: %2 = shl i32 %0, %1
;tail_inst: %2 = shl i32 %0, %1
;terminate: ret i32 %2
	%2 = shl i32 %0, %1
	ret i32 %2
}
define i32 @main(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: store i32 19260817, i32* @rng_seed, align 4
;tail_inst: store i32 19260817, i32* @rng_seed, align 4
;terminate: br label %b.1
	store i32 19260817, i32* @rng_seed, align 4
	br label %b.1
b.1:
;precursors: b.2 b.0 
;successors: b.2 b.3 
;head_inst: %0 = load i32, i32* @rng_seed, align 4
;tail_inst: %2 = icmp ne i32 %1, 0
;terminate: br i1 %2, label %b.2, label %b.3
	%0 = load i32, i32* @rng_seed, align 4
	%1 = srem i32 %0, 100
	%2 = icmp ne i32 %1, 0
	br i1 %2, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.1 
;head_inst: %3 = load i32, i32* @rng_seed, align 4
;tail_inst: store i32 %4, i32* @rng_seed, align 4
;terminate: br label %b.1
	%3 = load i32, i32* @rng_seed, align 4
	%4 = sub i32 %3, 1
	store i32 %4, i32* @rng_seed, align 4
	br label %b.1
b.3:
;precursors: b.1 
;successors: b.4 b.5 
;head_inst: %5 = load i32, i32* @rng_seed, align 4
;tail_inst: %8 = icmp sge i32 %7, 0
;terminate: br i1 %8, label %b.4, label %b.5
	%5 = load i32, i32* @rng_seed, align 4
	%6 = shl i32 %5, 13
	%7 = xor i32 %5, %6
	%8 = icmp sge i32 %7, 0
	br i1 %8, label %b.4, label %b.5
b.4:
;precursors: b.3 
;successors: b.6 
;head_inst: %9 = ashr i32 %7, 17
;tail_inst: %9 = ashr i32 %7, 17
;terminate: br label %b.6
	%9 = ashr i32 %7, 17
	br label %b.6
b.5:
;precursors: b.3 
;successors: b.6 
;head_inst: %10 = xor i32 %7, -2147483648
;tail_inst: %12 = or i32 16384, %11
;terminate: br label %b.6
	%10 = xor i32 %7, -2147483648
	%11 = ashr i32 %10, 17
	%12 = or i32 16384, %11
	br label %b.6
b.6:
;precursors: b.4 b.5 
;successors: b.7 b.8 
;head_inst: %14 = xor i32 %7, %13
;tail_inst: %21 = icmp sge i32 %20, 0
;terminate: br i1 %21, label %b.7, label %b.8
	%13 = phi i32 [ %9, %b.4 ], [ %12, %b.5 ]
	%14 = xor i32 %7, %13
	%15 = shl i32 %14, 5
	%16 = xor i32 %14, %15
	store i32 %16, i32* @rng_seed, align 4
	%17 = and i32 %16, 1073741823
	%18 = load i32, i32* @rng_seed, align 4
	%19 = shl i32 %18, 13
	%20 = xor i32 %18, %19
	%21 = icmp sge i32 %20, 0
	br i1 %21, label %b.7, label %b.8
b.7:
;precursors: b.6 
;successors: b.9 
;head_inst: %22 = ashr i32 %20, 17
;tail_inst: %22 = ashr i32 %20, 17
;terminate: br label %b.9
	%22 = ashr i32 %20, 17
	br label %b.9
b.8:
;precursors: b.6 
;successors: b.9 
;head_inst: %23 = xor i32 %20, -2147483648
;tail_inst: %25 = or i32 16384, %24
;terminate: br label %b.9
	%23 = xor i32 %20, -2147483648
	%24 = ashr i32 %23, 17
	%25 = or i32 16384, %24
	br label %b.9
b.9:
;precursors: b.7 b.8 
;successors: b.10 
;head_inst: %27 = xor i32 %20, %26
;tail_inst: %32 = add i32 %31, 100000
;terminate: br label %b.10
	%26 = phi i32 [ %22, %b.7 ], [ %25, %b.8 ]
	%27 = xor i32 %20, %26
	%28 = shl i32 %27, 5
	%29 = xor i32 %27, %28
	store i32 %29, i32* @rng_seed, align 4
	%30 = and i32 %29, 1073741823
	%31 = and i32 %30, 127
	%32 = add i32 %31, 100000
	br label %b.10
b.10:
;precursors: b.13 b.9 
;successors: b.11 b.12 
;head_inst: %34 = icmp slt i32 %33, %32
;tail_inst: %34 = icmp slt i32 %33, %32
;terminate: br i1 %34, label %b.11, label %b.12
	%33 = phi i32 [ 0, %b.9 ], [ %35, %b.13 ]
	%34 = icmp slt i32 %33, %32
	br i1 %34, label %b.11, label %b.12
b.11:
;precursors: b.10 
;successors: b.13 
;head_inst: null
;tail_inst: null
;terminate: br label %b.13
	br label %b.13
b.12:
;precursors: b.10 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 0
	ret i32 0
b.13:
;precursors: b.11 
;successors: b.10 
;head_inst: %35 = add i32 %33, 1
;tail_inst: %35 = add i32 %33, 1
;terminate: br label %b.10
	%35 = add i32 %33, 1
	br label %b.10
}
