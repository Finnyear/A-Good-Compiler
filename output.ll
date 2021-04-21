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
@n = global i32 zeroinitializer, align 4
@h = global i32 zeroinitializer, align 4
@now = global i32 zeroinitializer, align 4
@a = global i32* zeroinitializer, align 4
@A = global i32 zeroinitializer, align 4
@M = global i32 zeroinitializer, align 4
@Q = global i32 zeroinitializer, align 4
@R = global i32 zeroinitializer, align 4
@seed = global i32 zeroinitializer, align 4
@main.2 = private unnamed_addr constant [80 x i8] c"Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i\00", align 1
@fun_show.1 = private unnamed_addr constant [1 x i8] c"\00", align 1
@main.3 = private unnamed_addr constant [13 x i8] c"Let's start!\00", align 1
@main.4 = private unnamed_addr constant [6 x i8] c"step \00", align 1
@main.5 = private unnamed_addr constant [2 x i8] c":\00", align 1
@fun_show.0 = private unnamed_addr constant [2 x i8] c" \00", align 1
@main.6 = private unnamed_addr constant [8 x i8] c"Total: \00", align 1
@main.7 = private unnamed_addr constant [9 x i8] c" step(s)\00", align 1
define i32 @main(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: store i32 48271, i32* @A, align 4
;tail_inst: %13 = load i32, i32* @n, align 4
;terminate: br label %b.1
	store i32 48271, i32* @A, align 4
	store i32 2147483647, i32* @M, align 4
	store i32 1, i32* @seed, align 4
	%0 = mul i32 3, 7
	%1 = mul i32 %0, 10
	store i32 %1, i32* @n, align 4
	store i32 0, i32* @h, align 4
	%2 = mul i32 100, 4
	%3 = add i32 %2, 4
	%4 = call noalias i8* @malloc(i32 %3)
	%5 = bitcast i8* %4 to i32*
	store i32 100, i32* %5, align 4
	%6 = getelementptr inbounds i32, i32* %5, i32 1
	store i32* %6, i32** @a, align 4
	%7 = load i32, i32* @M, align 4
	%8 = load i32, i32* @A, align 4
	%9 = sdiv i32 %7, %8
	store i32 %9, i32* @Q, align 4
	%10 = load i32, i32* @M, align 4
	%11 = load i32, i32* @A, align 4
	%12 = srem i32 %10, %11
	store i32 %12, i32* @R, align 4
	%13 = load i32, i32* @n, align 4
	br label %b.1
b.1:
;precursors: b.7 b.0 
;successors: b.2 b.3 
;head_inst: %14 = load i32, i32* @h, align 4
;tail_inst: %15 = icmp sle i32 %14, %13
;terminate: br i1 %15, label %b.2, label %b.3
	%14 = load i32, i32* @h, align 4
	%15 = icmp sle i32 %14, %13
	br i1 %15, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.4 b.5 
;head_inst: %16 = load i32, i32* @h, align 4
;tail_inst: %21 = icmp eq i32 %13, %20
;terminate: br i1 %21, label %b.4, label %b.5
	%16 = load i32, i32* @h, align 4
	%17 = add i32 %16, 1
	%18 = load i32, i32* @h, align 4
	%19 = mul i32 %18, %17
	%20 = sdiv i32 %19, 2
	%21 = icmp eq i32 %13, %20
	br i1 %21, label %b.4, label %b.5
b.3:
;precursors: b.1 
;successors: b.6 
;head_inst: null
;tail_inst: null
;terminate: br label %b.6
	br label %b.6
b.4:
;precursors: b.2 
;successors: b.6 
;head_inst: null
;tail_inst: null
;terminate: br label %b.6
	br label %b.6
b.5:
;precursors: b.2 
;successors: b.7 
;head_inst: null
;tail_inst: null
;terminate: br label %b.7
	br label %b.7
b.6:
;precursors: b.4 b.3 
;successors: b.8 b.9 
;head_inst: null
;tail_inst: null
;terminate: br i1 %22, label %b.8, label %b.9
	%22 = phi i1 [ 1, %b.4 ], [ 0, %b.3 ]
	br i1 %22, label %b.8, label %b.9
b.7:
;precursors: b.5 
;successors: b.1 
;head_inst: %23 = load i32, i32* @h, align 4
;tail_inst: store i32 %24, i32* @h, align 4
;terminate: br label %b.1
	%23 = load i32, i32* @h, align 4
	%24 = add i32 %23, 1
	store i32 %24, i32* @h, align 4
	br label %b.1
b.8:
;precursors: b.6 
;successors: b.10 b.11 
;head_inst: %25 = getelementptr inbounds [ 13 x i8 ], [ 13 x i8 ]* @main.3, i32 0, i32 0
;tail_inst: %37 = icmp sge i32 %36, 0
;terminate: br i1 %37, label %b.10, label %b.11
	%25 = getelementptr inbounds [ 13 x i8 ], [ 13 x i8 ]* @main.3, i32 0, i32 0
	call void @g_println(i8* %25)
	store i32 3654898, i32* @seed, align 4
	%26 = load i32, i32* @seed, align 4
	%27 = load i32, i32* @Q, align 4
	%28 = srem i32 %26, %27
	%29 = load i32, i32* @A, align 4
	%30 = mul i32 %29, %28
	%31 = load i32, i32* @seed, align 4
	%32 = load i32, i32* @Q, align 4
	%33 = sdiv i32 %31, %32
	%34 = load i32, i32* @R, align 4
	%35 = mul i32 %34, %33
	%36 = sub i32 %30, %35
	%37 = icmp sge i32 %36, 0
	br i1 %37, label %b.10, label %b.11
b.9:
;precursors: b.6 
;successors: b.12 
;head_inst: %38 = getelementptr inbounds [ 80 x i8 ], [ 80 x i8 ]* @main.2, i32 0, i32 0
;tail_inst: call void @g_println(i8* %38)
;terminate: br label %b.12
	%38 = getelementptr inbounds [ 80 x i8 ], [ 80 x i8 ]* @main.2, i32 0, i32 0
	call void @g_println(i8* %38)
	br label %b.12
b.10:
;precursors: b.8 
;successors: b.13 
;head_inst: store i32 %36, i32* @seed, align 4
;tail_inst: store i32 %36, i32* @seed, align 4
;terminate: br label %b.13
	store i32 %36, i32* @seed, align 4
	br label %b.13
b.11:
;precursors: b.8 
;successors: b.13 
;head_inst: %39 = load i32, i32* @M, align 4
;tail_inst: store i32 %40, i32* @seed, align 4
;terminate: br label %b.13
	%39 = load i32, i32* @M, align 4
	%40 = add i32 %36, %39
	store i32 %40, i32* @seed, align 4
	br label %b.13
b.12:
;precursors: b.9 b.54 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 %42
	%41 = phi i32 [ 0, %b.9 ], [ %146, %b.54 ]
	%42 = phi i32 [ 1, %b.9 ], [ 0, %b.54 ]
	%43 = phi i32 [ 0, %b.9 ], [ %50, %b.54 ]
	%44 = phi i32 [ 0, %b.9 ], [ %51, %b.54 ]
	ret i32 %42
b.13:
;precursors: b.11 b.10 
;successors: b.14 
;head_inst: %45 = load i32, i32* @seed, align 4
;tail_inst: call void @g_println(i8* %49)
;terminate: br label %b.14
	%45 = load i32, i32* @seed, align 4
	%46 = srem i32 %45, 10
	%47 = add i32 %46, 1
	store i32 %47, i32* @now, align 4
	%48 = load i32, i32* @now, align 4
	%49 = call i8* @g_toString(i32 %48)
	call void @g_println(i8* %49)
	br label %b.14
b.14:
;precursors: b.32 b.13 
;successors: b.15 b.16 
;head_inst: %52 = load i32, i32* @now, align 4
;tail_inst: %54 = icmp slt i32 %50, %53
;terminate: br i1 %54, label %b.15, label %b.16
	%50 = phi i32 [ 0, %b.13 ], [ %125, %b.32 ]
	%51 = phi i32 [ 0, %b.13 ], [ %118, %b.32 ]
	%52 = load i32, i32* @now, align 4
	%53 = sub i32 %52, 1
	%54 = icmp slt i32 %50, %53
	br i1 %54, label %b.15, label %b.16
b.15:
;precursors: b.14 
;successors: b.17 b.18 
;head_inst: %55 = load i32*, i32** @a, align 4
;tail_inst: %68 = icmp sge i32 %67, 0
;terminate: br i1 %68, label %b.17, label %b.18
	%55 = load i32*, i32** @a, align 4
	%56 = getelementptr inbounds i32, i32* %55, i32 %50
	%57 = load i32, i32* @seed, align 4
	%58 = load i32, i32* @Q, align 4
	%59 = srem i32 %57, %58
	%60 = load i32, i32* @A, align 4
	%61 = mul i32 %60, %59
	%62 = load i32, i32* @seed, align 4
	%63 = load i32, i32* @Q, align 4
	%64 = sdiv i32 %62, %63
	%65 = load i32, i32* @R, align 4
	%66 = mul i32 %65, %64
	%67 = sub i32 %61, %66
	%68 = icmp sge i32 %67, 0
	br i1 %68, label %b.17, label %b.18
b.16:
;precursors: b.14 
;successors: b.19 
;head_inst: %69 = load i32, i32* @now, align 4
;tail_inst: store i32 %74, i32* %72, align 4
;terminate: br label %b.19
	%69 = load i32, i32* @now, align 4
	%70 = sub i32 %69, 1
	%71 = load i32*, i32** @a, align 4
	%72 = getelementptr inbounds i32, i32* %71, i32 %70
	%73 = load i32, i32* @n, align 4
	%74 = sub i32 %73, %51
	store i32 %74, i32* %72, align 4
	br label %b.19
b.17:
;precursors: b.15 
;successors: b.20 
;head_inst: store i32 %67, i32* @seed, align 4
;tail_inst: store i32 %67, i32* @seed, align 4
;terminate: br label %b.20
	store i32 %67, i32* @seed, align 4
	br label %b.20
b.18:
;precursors: b.15 
;successors: b.20 
;head_inst: %75 = load i32, i32* @M, align 4
;tail_inst: store i32 %76, i32* @seed, align 4
;terminate: br label %b.20
	%75 = load i32, i32* @M, align 4
	%76 = add i32 %67, %75
	store i32 %76, i32* @seed, align 4
	br label %b.20
b.19:
;precursors: b.24 b.16 
;successors: b.21 b.22 
;head_inst: %78 = load i32, i32* @now, align 4
;tail_inst: %79 = icmp slt i32 %77, %78
;terminate: br i1 %79, label %b.21, label %b.22
	%77 = phi i32 [ 0, %b.16 ], [ %96, %b.24 ]
	%78 = load i32, i32* @now, align 4
	%79 = icmp slt i32 %77, %78
	br i1 %79, label %b.21, label %b.22
b.20:
;precursors: b.18 b.17 
;successors: b.23 
;head_inst: %80 = load i32, i32* @seed, align 4
;tail_inst: store i32 %82, i32* %56, align 4
;terminate: br label %b.23
	%80 = load i32, i32* @seed, align 4
	%81 = srem i32 %80, 10
	%82 = add i32 %81, 1
	store i32 %82, i32* %56, align 4
	br label %b.23
b.21:
;precursors: b.19 
;successors: b.24 
;head_inst: %83 = load i32*, i32** @a, align 4
;tail_inst: call void @g_print(i8* %88)
;terminate: br label %b.24
	%83 = load i32*, i32** @a, align 4
	%84 = getelementptr inbounds i32, i32* %83, i32 %77
	%85 = load i32, i32* %84, align 4
	%86 = call i8* @g_toString(i32 %85)
	%87 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_show.0, i32 0, i32 0
	%88 = call i8* @g_stringadd(i8* %86, i8* %87)
	call void @g_print(i8* %88)
	br label %b.24
b.22:
;precursors: b.19 
;successors: b.25 
;head_inst: %89 = getelementptr inbounds [ 1 x i8 ], [ 1 x i8 ]* @fun_show.1, i32 0, i32 0
;tail_inst: call void @g_println(i8* %89)
;terminate: br label %b.25
	%89 = getelementptr inbounds [ 1 x i8 ], [ 1 x i8 ]* @fun_show.1, i32 0, i32 0
	call void @g_println(i8* %89)
	br label %b.25
b.23:
;precursors: b.36 b.20 
;successors: b.26 b.27 
;head_inst: %90 = load i32*, i32** @a, align 4
;tail_inst: %95 = icmp sgt i32 %93, %94
;terminate: br i1 %95, label %b.26, label %b.27
	%90 = load i32*, i32** @a, align 4
	%91 = getelementptr inbounds i32, i32* %90, i32 %50
	%92 = load i32, i32* %91, align 4
	%93 = add i32 %92, %51
	%94 = load i32, i32* @n, align 4
	%95 = icmp sgt i32 %93, %94
	br i1 %95, label %b.26, label %b.27
b.24:
;precursors: b.21 
;successors: b.19 
;head_inst: %96 = add i32 %77, 1
;tail_inst: %96 = add i32 %77, 1
;terminate: br label %b.19
	%96 = add i32 %77, 1
	br label %b.19
b.25:
;precursors: b.38 b.22 
;successors: b.28 b.29 
;head_inst: %99 = load i32, i32* @now, align 4
;tail_inst: %100 = icmp slt i32 %97, %99
;terminate: br i1 %100, label %b.28, label %b.29
	%97 = phi i32 [ 0, %b.22 ], [ %137, %b.38 ]
	%98 = phi i32 [ 65536, %b.22 ], [ %127, %b.38 ]
	%99 = load i32, i32* @now, align 4
	%100 = icmp slt i32 %97, %99
	br i1 %100, label %b.28, label %b.29
b.26:
;precursors: b.23 
;successors: b.30 b.31 
;head_inst: %101 = load i32*, i32** @a, align 4
;tail_inst: %114 = icmp sge i32 %113, 0
;terminate: br i1 %114, label %b.30, label %b.31
	%101 = load i32*, i32** @a, align 4
	%102 = getelementptr inbounds i32, i32* %101, i32 %50
	%103 = load i32, i32* @seed, align 4
	%104 = load i32, i32* @Q, align 4
	%105 = srem i32 %103, %104
	%106 = load i32, i32* @A, align 4
	%107 = mul i32 %106, %105
	%108 = load i32, i32* @seed, align 4
	%109 = load i32, i32* @Q, align 4
	%110 = sdiv i32 %108, %109
	%111 = load i32, i32* @R, align 4
	%112 = mul i32 %111, %110
	%113 = sub i32 %107, %112
	%114 = icmp sge i32 %113, 0
	br i1 %114, label %b.30, label %b.31
b.27:
;precursors: b.23 
;successors: b.32 
;head_inst: %115 = load i32*, i32** @a, align 4
;tail_inst: %118 = add i32 %51, %117
;terminate: br label %b.32
	%115 = load i32*, i32** @a, align 4
	%116 = getelementptr inbounds i32, i32* %115, i32 %50
	%117 = load i32, i32* %116, align 4
	%118 = add i32 %51, %117
	br label %b.32
b.28:
;precursors: b.25 
;successors: b.33 b.34 
;head_inst: %119 = load i32*, i32** @a, align 4
;tail_inst: %122 = icmp eq i32 %121, 0
;terminate: br i1 %122, label %b.33, label %b.34
	%119 = load i32*, i32** @a, align 4
	%120 = getelementptr inbounds i32, i32* %119, i32 %97
	%121 = load i32, i32* %120, align 4
	%122 = icmp eq i32 %121, 0
	br i1 %122, label %b.33, label %b.34
b.29:
;precursors: b.25 
;successors: b.35 
;head_inst: null
;tail_inst: null
;terminate: br label %b.35
	br label %b.35
b.30:
;precursors: b.26 
;successors: b.36 
;head_inst: store i32 %113, i32* @seed, align 4
;tail_inst: store i32 %113, i32* @seed, align 4
;terminate: br label %b.36
	store i32 %113, i32* @seed, align 4
	br label %b.36
b.31:
;precursors: b.26 
;successors: b.36 
;head_inst: %123 = load i32, i32* @M, align 4
;tail_inst: store i32 %124, i32* @seed, align 4
;terminate: br label %b.36
	%123 = load i32, i32* @M, align 4
	%124 = add i32 %113, %123
	store i32 %124, i32* @seed, align 4
	br label %b.36
b.32:
;precursors: b.27 
;successors: b.14 
;head_inst: %125 = add i32 %50, 1
;tail_inst: %125 = add i32 %50, 1
;terminate: br label %b.14
	%125 = add i32 %50, 1
	br label %b.14
b.33:
;precursors: b.28 
;successors: b.37 
;head_inst: %126 = add i32 %97, 1
;tail_inst: %126 = add i32 %97, 1
;terminate: br label %b.37
	%126 = add i32 %97, 1
	br label %b.37
b.34:
;precursors: b.28 b.42 
;successors: b.38 
;head_inst: null
;tail_inst: null
;terminate: br label %b.38
	%127 = phi i32 [ %98, %b.28 ], [ %134, %b.42 ]
	br label %b.38
b.35:
;precursors: b.29 b.48 
;successors: b.39 b.40 
;head_inst: %129 = load i32, i32* @now, align 4
;tail_inst: %130 = icmp slt i32 %128, %129
;terminate: br i1 %130, label %b.39, label %b.40
	%128 = phi i32 [ 0, %b.29 ], [ %165, %b.48 ]
	%129 = load i32, i32* @now, align 4
	%130 = icmp slt i32 %128, %129
	br i1 %130, label %b.39, label %b.40
b.36:
;precursors: b.31 b.30 
;successors: b.23 
;head_inst: %131 = load i32, i32* @seed, align 4
;tail_inst: store i32 %133, i32* %102, align 4
;terminate: br label %b.23
	%131 = load i32, i32* @seed, align 4
	%132 = srem i32 %131, 10
	%133 = add i32 %132, 1
	store i32 %133, i32* %102, align 4
	br label %b.23
b.37:
;precursors: b.33 b.51 
;successors: b.41 b.42 
;head_inst: %135 = load i32, i32* @now, align 4
;tail_inst: %136 = icmp slt i32 %134, %135
;terminate: br i1 %136, label %b.41, label %b.42
	%134 = phi i32 [ %126, %b.33 ], [ %166, %b.51 ]
	%135 = load i32, i32* @now, align 4
	%136 = icmp slt i32 %134, %135
	br i1 %136, label %b.41, label %b.42
b.38:
;precursors: b.34 
;successors: b.25 
;head_inst: %137 = add i32 %97, 1
;tail_inst: %137 = add i32 %97, 1
;terminate: br label %b.25
	%137 = add i32 %97, 1
	br label %b.25
b.39:
;precursors: b.35 
;successors: b.43 b.44 
;head_inst: %138 = load i32*, i32** @a, align 4
;tail_inst: %141 = icmp eq i32 %140, 0
;terminate: br i1 %141, label %b.43, label %b.44
	%138 = load i32*, i32** @a, align 4
	%139 = getelementptr inbounds i32, i32* %138, i32 %128
	%140 = load i32, i32* %139, align 4
	%141 = icmp eq i32 %140, 0
	br i1 %141, label %b.43, label %b.44
b.40:
;precursors: b.43 b.35 
;successors: b.45 
;head_inst: null
;tail_inst: null
;terminate: br label %b.45
	br label %b.45
b.41:
;precursors: b.37 
;successors: b.46 b.47 
;head_inst: %142 = load i32*, i32** @a, align 4
;tail_inst: %145 = icmp ne i32 %144, 0
;terminate: br i1 %145, label %b.46, label %b.47
	%142 = load i32*, i32** @a, align 4
	%143 = getelementptr inbounds i32, i32* %142, i32 %134
	%144 = load i32, i32* %143, align 4
	%145 = icmp ne i32 %144, 0
	br i1 %145, label %b.46, label %b.47
b.42:
;precursors: b.37 b.46 
;successors: b.34 
;head_inst: null
;tail_inst: null
;terminate: br label %b.34
	br label %b.34
b.43:
;precursors: b.39 
;successors: b.40 
;head_inst: store i32 %128, i32* @now, align 4
;tail_inst: store i32 %128, i32* @now, align 4
;terminate: br label %b.40
	store i32 %128, i32* @now, align 4
	br label %b.40
b.44:
;precursors: b.39 
;successors: b.48 
;head_inst: null
;tail_inst: null
;terminate: br label %b.48
	br label %b.48
b.45:
;precursors: b.40 b.98 
;successors: b.49 b.50 
;head_inst: %147 = mul i32 100, 4
;tail_inst: %154 = icmp ne i32 %152, %153
;terminate: br i1 %154, label %b.49, label %b.50
	%146 = phi i32 [ 0, %b.40 ], [ %180, %b.98 ]
	%147 = mul i32 100, 4
	%148 = add i32 %147, 4
	%149 = call noalias i8* @malloc(i32 %148)
	%150 = bitcast i8* %149 to i32*
	store i32 100, i32* %150, align 4
	%151 = getelementptr inbounds i32, i32* %150, i32 1
	%152 = load i32, i32* @now, align 4
	%153 = load i32, i32* @h, align 4
	%154 = icmp ne i32 %152, %153
	br i1 %154, label %b.49, label %b.50
b.46:
;precursors: b.41 
;successors: b.42 
;head_inst: %155 = load i32*, i32** @a, align 4
;tail_inst: store i32 %157, i32* %164, align 4
;terminate: br label %b.42
	%155 = load i32*, i32** @a, align 4
	%156 = getelementptr inbounds i32, i32* %155, i32 %97
	%157 = load i32, i32* %156, align 4
	%158 = load i32*, i32** @a, align 4
	%159 = getelementptr inbounds i32, i32* %158, i32 %97
	%160 = load i32*, i32** @a, align 4
	%161 = getelementptr inbounds i32, i32* %160, i32 %134
	%162 = load i32, i32* %161, align 4
	store i32 %162, i32* %159, align 4
	%163 = load i32*, i32** @a, align 4
	%164 = getelementptr inbounds i32, i32* %163, i32 %134
	store i32 %157, i32* %164, align 4
	br label %b.42
b.47:
;precursors: b.41 
;successors: b.51 
;head_inst: null
;tail_inst: null
;terminate: br label %b.51
	br label %b.51
b.48:
;precursors: b.44 
;successors: b.35 
;head_inst: %165 = add i32 %128, 1
;tail_inst: %165 = add i32 %128, 1
;terminate: br label %b.35
	%165 = add i32 %128, 1
	br label %b.35
b.49:
;precursors: b.45 
;successors: b.52 
;head_inst: null
;tail_inst: null
;terminate: br label %b.52
	br label %b.52
b.50:
;precursors: b.45 
;successors: b.53 
;head_inst: null
;tail_inst: null
;terminate: br label %b.53
	br label %b.53
b.51:
;precursors: b.47 
;successors: b.37 
;head_inst: %166 = add i32 %134, 1
;tail_inst: %166 = add i32 %134, 1
;terminate: br label %b.37
	%166 = add i32 %134, 1
	br label %b.37
b.52:
;precursors: b.81 b.49 b.74 
;successors: b.54 b.55 
;head_inst: null
;tail_inst: null
;terminate: br i1 %168, label %b.54, label %b.55
	%167 = phi i32 [ 65536, %b.49 ], [ %193, %b.81 ], [ %193, %b.74 ]
	%168 = phi i1 [ 0, %b.49 ], [ 0, %b.81 ], [ 1, %b.74 ]
	%169 = phi i32 [ 65536, %b.49 ], [ %219, %b.81 ], [ %219, %b.74 ]
	%170 = phi i32 [ 65536, %b.49 ], [ %195, %b.81 ], [ %195, %b.74 ]
	br i1 %168, label %b.54, label %b.55
b.53:
;precursors: b.59 b.50 
;successors: b.56 b.57 
;head_inst: %172 = load i32, i32* @now, align 4
;tail_inst: %173 = icmp slt i32 %171, %172
;terminate: br i1 %173, label %b.56, label %b.57
	%171 = phi i32 [ 0, %b.50 ], [ %192, %b.59 ]
	%172 = load i32, i32* @now, align 4
	%173 = icmp slt i32 %171, %172
	br i1 %173, label %b.56, label %b.57
b.54:
;precursors: b.52 
;successors: b.12 
;head_inst: %174 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @main.6, i32 0, i32 0
;tail_inst: call void @g_println(i8* %178)
;terminate: br label %b.12
	%174 = getelementptr inbounds [ 8 x i8 ], [ 8 x i8 ]* @main.6, i32 0, i32 0
	%175 = call i8* @g_toString(i32 %146)
	%176 = call i8* @g_stringadd(i8* %174, i8* %175)
	%177 = getelementptr inbounds [ 9 x i8 ], [ 9 x i8 ]* @main.7, i32 0, i32 0
	%178 = call i8* @g_stringadd(i8* %176, i8* %177)
	call void @g_println(i8* %178)
	br label %b.12
b.55:
;precursors: b.52 
;successors: b.58 
;head_inst: %179 = getelementptr inbounds [ 6 x i8 ], [ 6 x i8 ]* @main.4, i32 0, i32 0
;tail_inst: call void @g_println(i8* %184)
;terminate: br label %b.58
	%179 = getelementptr inbounds [ 6 x i8 ], [ 6 x i8 ]* @main.4, i32 0, i32 0
	%180 = add i32 %146, 1
	%181 = call i8* @g_toString(i32 %180)
	%182 = call i8* @g_stringadd(i8* %179, i8* %181)
	%183 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @main.5, i32 0, i32 0
	%184 = call i8* @g_stringadd(i8* %182, i8* %183)
	call void @g_println(i8* %184)
	br label %b.58
b.56:
;precursors: b.53 
;successors: b.59 
;head_inst: %185 = getelementptr inbounds i32, i32* %151, i32 %171
;tail_inst: store i32 %188, i32* %185, align 4
;terminate: br label %b.59
	%185 = getelementptr inbounds i32, i32* %151, i32 %171
	%186 = load i32*, i32** @a, align 4
	%187 = getelementptr inbounds i32, i32* %186, i32 %171
	%188 = load i32, i32* %187, align 4
	store i32 %188, i32* %185, align 4
	br label %b.59
b.57:
;precursors: b.53 
;successors: b.60 
;head_inst: null
;tail_inst: null
;terminate: br label %b.60
	br label %b.60
b.58:
;precursors: b.65 b.55 
;successors: b.61 b.62 
;head_inst: %190 = load i32, i32* @now, align 4
;tail_inst: %191 = icmp slt i32 %189, %190
;terminate: br i1 %191, label %b.61, label %b.62
	%189 = phi i32 [ 0, %b.55 ], [ %203, %b.65 ]
	%190 = load i32, i32* @now, align 4
	%191 = icmp slt i32 %189, %190
	br i1 %191, label %b.61, label %b.62
b.59:
;precursors: b.56 
;successors: b.53 
;head_inst: %192 = add i32 %171, 1
;tail_inst: %192 = add i32 %171, 1
;terminate: br label %b.53
	%192 = add i32 %171, 1
	br label %b.53
b.60:
;precursors: b.57 b.80 
;successors: b.63 b.64 
;head_inst: %196 = load i32, i32* @now, align 4
;tail_inst: %198 = icmp slt i32 %194, %197
;terminate: br i1 %198, label %b.63, label %b.64
	%193 = phi i32 [ 65536, %b.57 ], [ %215, %b.80 ]
	%194 = phi i32 [ 0, %b.57 ], [ %247, %b.80 ]
	%195 = phi i32 [ %171, %b.57 ], [ %216, %b.80 ]
	%196 = load i32, i32* @now, align 4
	%197 = sub i32 %196, 1
	%198 = icmp slt i32 %194, %197
	br i1 %198, label %b.63, label %b.64
b.61:
;precursors: b.58 
;successors: b.65 
;head_inst: %199 = load i32*, i32** @a, align 4
;tail_inst: %203 = add i32 %189, 1
;terminate: br label %b.65
	%199 = load i32*, i32** @a, align 4
	%200 = getelementptr inbounds i32, i32* %199, i32 %189
	%201 = load i32, i32* %200, align 4
	%202 = sub i32 %201, 1
	store i32 %202, i32* %200, align 4
	%203 = add i32 %189, 1
	br label %b.65
b.62:
;precursors: b.58 
;successors: b.66 
;head_inst: %204 = load i32*, i32** @a, align 4
;tail_inst: store i32 %209, i32* @now, align 4
;terminate: br label %b.66
	%204 = load i32*, i32** @a, align 4
	%205 = load i32, i32* @now, align 4
	%206 = getelementptr inbounds i32, i32* %204, i32 %205
	%207 = load i32, i32* @now, align 4
	store i32 %207, i32* %206, align 4
	%208 = load i32, i32* @now, align 4
	%209 = add i32 %208, 1
	store i32 %209, i32* @now, align 4
	br label %b.66
b.63:
;precursors: b.60 
;successors: b.67 
;head_inst: %210 = add i32 %194, 1
;tail_inst: %210 = add i32 %194, 1
;terminate: br label %b.67
	%210 = add i32 %194, 1
	br label %b.67
b.64:
;precursors: b.60 
;successors: b.68 
;head_inst: null
;tail_inst: null
;terminate: br label %b.68
	br label %b.68
b.65:
;precursors: b.61 
;successors: b.58 
;head_inst: null
;tail_inst: null
;terminate: br label %b.58
	br label %b.58
b.66:
;precursors: b.84 b.62 
;successors: b.69 b.70 
;head_inst: %213 = load i32, i32* @now, align 4
;tail_inst: %214 = icmp slt i32 %212, %213
;terminate: br i1 %214, label %b.69, label %b.70
	%211 = phi i32 [ 65536, %b.62 ], [ %236, %b.84 ]
	%212 = phi i32 [ 0, %b.62 ], [ %251, %b.84 ]
	%213 = load i32, i32* @now, align 4
	%214 = icmp slt i32 %212, %213
	br i1 %214, label %b.69, label %b.70
b.67:
;precursors: b.63 b.87 
;successors: b.71 b.72 
;head_inst: %217 = load i32, i32* @now, align 4
;tail_inst: %218 = icmp slt i32 %216, %217
;terminate: br i1 %218, label %b.71, label %b.72
	%215 = phi i32 [ %193, %b.63 ], [ %246, %b.87 ]
	%216 = phi i32 [ %210, %b.63 ], [ %256, %b.87 ]
	%217 = load i32, i32* @now, align 4
	%218 = icmp slt i32 %216, %217
	br i1 %218, label %b.71, label %b.72
b.68:
;precursors: b.88 b.64 
;successors: b.73 b.74 
;head_inst: %220 = load i32, i32* @now, align 4
;tail_inst: %221 = icmp slt i32 %219, %220
;terminate: br i1 %221, label %b.73, label %b.74
	%219 = phi i32 [ 0, %b.64 ], [ %257, %b.88 ]
	%220 = load i32, i32* @now, align 4
	%221 = icmp slt i32 %219, %220
	br i1 %221, label %b.73, label %b.74
b.69:
;precursors: b.66 
;successors: b.75 b.76 
;head_inst: %222 = load i32*, i32** @a, align 4
;tail_inst: %225 = icmp eq i32 %224, 0
;terminate: br i1 %225, label %b.75, label %b.76
	%222 = load i32*, i32** @a, align 4
	%223 = getelementptr inbounds i32, i32* %222, i32 %212
	%224 = load i32, i32* %223, align 4
	%225 = icmp eq i32 %224, 0
	br i1 %225, label %b.75, label %b.76
b.70:
;precursors: b.66 
;successors: b.77 
;head_inst: null
;tail_inst: null
;terminate: br label %b.77
	br label %b.77
b.71:
;precursors: b.67 
;successors: b.78 b.79 
;head_inst: %226 = getelementptr inbounds i32, i32* %151, i32 %194
;tail_inst: %230 = icmp sgt i32 %228, %229
;terminate: br i1 %230, label %b.78, label %b.79
	%226 = getelementptr inbounds i32, i32* %151, i32 %194
	%227 = getelementptr inbounds i32, i32* %151, i32 %216
	%228 = load i32, i32* %226, align 4
	%229 = load i32, i32* %227, align 4
	%230 = icmp sgt i32 %228, %229
	br i1 %230, label %b.78, label %b.79
b.72:
;precursors: b.67 
;successors: b.80 
;head_inst: null
;tail_inst: null
;terminate: br label %b.80
	br label %b.80
b.73:
;precursors: b.68 
;successors: b.81 b.82 
;head_inst: %231 = getelementptr inbounds i32, i32* %151, i32 %219
;tail_inst: %234 = icmp ne i32 %233, %232
;terminate: br i1 %234, label %b.81, label %b.82
	%231 = getelementptr inbounds i32, i32* %151, i32 %219
	%232 = add i32 %219, 1
	%233 = load i32, i32* %231, align 4
	%234 = icmp ne i32 %233, %232
	br i1 %234, label %b.81, label %b.82
b.74:
;precursors: b.68 
;successors: b.52 
;head_inst: null
;tail_inst: null
;terminate: br label %b.52
	br label %b.52
b.75:
;precursors: b.69 
;successors: b.83 
;head_inst: %235 = add i32 %212, 1
;tail_inst: %235 = add i32 %212, 1
;terminate: br label %b.83
	%235 = add i32 %212, 1
	br label %b.83
b.76:
;precursors: b.69 b.90 
;successors: b.84 
;head_inst: null
;tail_inst: null
;terminate: br label %b.84
	%236 = phi i32 [ %211, %b.69 ], [ %248, %b.90 ]
	br label %b.84
b.77:
;precursors: b.70 b.96 
;successors: b.85 b.86 
;head_inst: %238 = load i32, i32* @now, align 4
;tail_inst: %239 = icmp slt i32 %237, %238
;terminate: br i1 %239, label %b.85, label %b.86
	%237 = phi i32 [ 0, %b.70 ], [ %275, %b.96 ]
	%238 = load i32, i32* @now, align 4
	%239 = icmp slt i32 %237, %238
	br i1 %239, label %b.85, label %b.86
b.78:
;precursors: b.71 
;successors: b.79 
;head_inst: %240 = getelementptr inbounds i32, i32* %151, i32 %194
;tail_inst: store i32 %241, i32* %245, align 4
;terminate: br label %b.79
	%240 = getelementptr inbounds i32, i32* %151, i32 %194
	%241 = load i32, i32* %240, align 4
	%242 = getelementptr inbounds i32, i32* %151, i32 %194
	%243 = getelementptr inbounds i32, i32* %151, i32 %216
	%244 = load i32, i32* %243, align 4
	store i32 %244, i32* %242, align 4
	%245 = getelementptr inbounds i32, i32* %151, i32 %216
	store i32 %241, i32* %245, align 4
	br label %b.79
b.79:
;precursors: b.78 b.71 
;successors: b.87 
;head_inst: null
;tail_inst: null
;terminate: br label %b.87
	%246 = phi i32 [ %215, %b.71 ], [ %241, %b.78 ]
	br label %b.87
b.80:
;precursors: b.72 
;successors: b.60 
;head_inst: %247 = add i32 %194, 1
;tail_inst: %247 = add i32 %194, 1
;terminate: br label %b.60
	%247 = add i32 %194, 1
	br label %b.60
b.81:
;precursors: b.73 
;successors: b.52 
;head_inst: null
;tail_inst: null
;terminate: br label %b.52
	br label %b.52
b.82:
;precursors: b.73 
;successors: b.88 
;head_inst: null
;tail_inst: null
;terminate: br label %b.88
	br label %b.88
b.83:
;precursors: b.75 b.99 
;successors: b.89 b.90 
;head_inst: %249 = load i32, i32* @now, align 4
;tail_inst: %250 = icmp slt i32 %248, %249
;terminate: br i1 %250, label %b.89, label %b.90
	%248 = phi i32 [ %235, %b.75 ], [ %283, %b.99 ]
	%249 = load i32, i32* @now, align 4
	%250 = icmp slt i32 %248, %249
	br i1 %250, label %b.89, label %b.90
b.84:
;precursors: b.76 
;successors: b.66 
;head_inst: %251 = add i32 %212, 1
;tail_inst: %251 = add i32 %212, 1
;terminate: br label %b.66
	%251 = add i32 %212, 1
	br label %b.66
b.85:
;precursors: b.77 
;successors: b.91 b.92 
;head_inst: %252 = load i32*, i32** @a, align 4
;tail_inst: %255 = icmp eq i32 %254, 0
;terminate: br i1 %255, label %b.91, label %b.92
	%252 = load i32*, i32** @a, align 4
	%253 = getelementptr inbounds i32, i32* %252, i32 %237
	%254 = load i32, i32* %253, align 4
	%255 = icmp eq i32 %254, 0
	br i1 %255, label %b.91, label %b.92
b.86:
;precursors: b.91 b.77 
;successors: b.93 
;head_inst: null
;tail_inst: null
;terminate: br label %b.93
	br label %b.93
b.87:
;precursors: b.79 
;successors: b.67 
;head_inst: %256 = add i32 %216, 1
;tail_inst: %256 = add i32 %216, 1
;terminate: br label %b.67
	%256 = add i32 %216, 1
	br label %b.67
b.88:
;precursors: b.82 
;successors: b.68 
;head_inst: %257 = add i32 %219, 1
;tail_inst: %257 = add i32 %219, 1
;terminate: br label %b.68
	%257 = add i32 %219, 1
	br label %b.68
b.89:
;precursors: b.83 
;successors: b.94 b.95 
;head_inst: %258 = load i32*, i32** @a, align 4
;tail_inst: %261 = icmp ne i32 %260, 0
;terminate: br i1 %261, label %b.94, label %b.95
	%258 = load i32*, i32** @a, align 4
	%259 = getelementptr inbounds i32, i32* %258, i32 %248
	%260 = load i32, i32* %259, align 4
	%261 = icmp ne i32 %260, 0
	br i1 %261, label %b.94, label %b.95
b.90:
;precursors: b.83 b.94 
;successors: b.76 
;head_inst: null
;tail_inst: null
;terminate: br label %b.76
	br label %b.76
b.91:
;precursors: b.85 
;successors: b.86 
;head_inst: store i32 %237, i32* @now, align 4
;tail_inst: store i32 %237, i32* @now, align 4
;terminate: br label %b.86
	store i32 %237, i32* @now, align 4
	br label %b.86
b.92:
;precursors: b.85 
;successors: b.96 
;head_inst: null
;tail_inst: null
;terminate: br label %b.96
	br label %b.96
b.93:
;precursors: b.100 b.86 
;successors: b.97 b.98 
;head_inst: %263 = load i32, i32* @now, align 4
;tail_inst: %264 = icmp slt i32 %262, %263
;terminate: br i1 %264, label %b.97, label %b.98
	%262 = phi i32 [ 0, %b.86 ], [ %284, %b.100 ]
	%263 = load i32, i32* @now, align 4
	%264 = icmp slt i32 %262, %263
	br i1 %264, label %b.97, label %b.98
b.94:
;precursors: b.89 
;successors: b.90 
;head_inst: %265 = load i32*, i32** @a, align 4
;tail_inst: store i32 %267, i32* %274, align 4
;terminate: br label %b.90
	%265 = load i32*, i32** @a, align 4
	%266 = getelementptr inbounds i32, i32* %265, i32 %212
	%267 = load i32, i32* %266, align 4
	%268 = load i32*, i32** @a, align 4
	%269 = getelementptr inbounds i32, i32* %268, i32 %212
	%270 = load i32*, i32** @a, align 4
	%271 = getelementptr inbounds i32, i32* %270, i32 %248
	%272 = load i32, i32* %271, align 4
	store i32 %272, i32* %269, align 4
	%273 = load i32*, i32** @a, align 4
	%274 = getelementptr inbounds i32, i32* %273, i32 %248
	store i32 %267, i32* %274, align 4
	br label %b.90
b.95:
;precursors: b.89 
;successors: b.99 
;head_inst: null
;tail_inst: null
;terminate: br label %b.99
	br label %b.99
b.96:
;precursors: b.92 
;successors: b.77 
;head_inst: %275 = add i32 %237, 1
;tail_inst: %275 = add i32 %237, 1
;terminate: br label %b.77
	%275 = add i32 %237, 1
	br label %b.77
b.97:
;precursors: b.93 
;successors: b.100 
;head_inst: %276 = load i32*, i32** @a, align 4
;tail_inst: call void @g_print(i8* %281)
;terminate: br label %b.100
	%276 = load i32*, i32** @a, align 4
	%277 = getelementptr inbounds i32, i32* %276, i32 %262
	%278 = load i32, i32* %277, align 4
	%279 = call i8* @g_toString(i32 %278)
	%280 = getelementptr inbounds [ 2 x i8 ], [ 2 x i8 ]* @fun_show.0, i32 0, i32 0
	%281 = call i8* @g_stringadd(i8* %279, i8* %280)
	call void @g_print(i8* %281)
	br label %b.100
b.98:
;precursors: b.93 
;successors: b.45 
;head_inst: %282 = getelementptr inbounds [ 1 x i8 ], [ 1 x i8 ]* @fun_show.1, i32 0, i32 0
;tail_inst: call void @g_println(i8* %282)
;terminate: br label %b.45
	%282 = getelementptr inbounds [ 1 x i8 ], [ 1 x i8 ]* @fun_show.1, i32 0, i32 0
	call void @g_println(i8* %282)
	br label %b.45
b.99:
;precursors: b.95 
;successors: b.83 
;head_inst: %283 = add i32 %248, 1
;tail_inst: %283 = add i32 %248, 1
;terminate: br label %b.83
	%283 = add i32 %248, 1
	br label %b.83
b.100:
;precursors: b.97 
;successors: b.93 
;head_inst: %284 = add i32 %262, 1
;tail_inst: %284 = add i32 %262, 1
;terminate: br label %b.93
	%284 = add i32 %262, 1
	br label %b.93
}
