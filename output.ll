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
define i32 @fun_test(){
b.0:
;precursors: 
;successors: b.1 
	br label %b.1
b.1:
;precursors: b.0 b.2 
;successors: b.2 b.3 
	%0 = phi i32 [ 0, %b.0 ], [ %4, %b.2 ]
	%1 = phi i32 [ 0, %b.0 ], [ %5, %b.2 ]
	%2 = icmp slt i32 %1, 200
	br i1 %2, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.1 
	%3 = add i32 %1, 1
	%4 = add i32 %0, 1
	%5 = add i32 %3, 1
	br label %b.1
b.3:
;precursors: b.1 
;successors: 
	ret i32 %0
}
define void @__init(){
b.0:
;precursors: 
;successors: 
	store i32 80, i32* @N, align 4
	ret void
}
define i32 @main(){
b.0:
;precursors: 
;successors: b.1 
	store i32 80, i32* @N, align 4
	br label %b.1
b.1:
;precursors: b.0 b.2 
;successors: b.2 b.3 
	%0 = phi i32 [ 0, %b.0 ], [ %4, %b.2 ]
	%1 = phi i32 [ 0, %b.0 ], [ %5, %b.2 ]
	%2 = icmp slt i32 %1, 200
	br i1 %2, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.1 
	%3 = add i32 %1, 1
	%4 = add i32 %0, 1
	%5 = add i32 %3, 1
	br label %b.1
b.3:
;precursors: b.1 
;successors: b.4 
	br label %b.4
b.4:
;precursors: b.3 b.5 
;successors: b.5 b.6 
	%6 = phi i32 [ 1, %b.3 ], [ %10, %b.5 ]
	%7 = phi i32 [ 0, %b.3 ], [ %9, %b.5 ]
	%8 = icmp sle i32 %6, 100
	br i1 %8, label %b.5, label %b.6
b.5:
;precursors: b.4 
;successors: b.4 
	%9 = add i32 %7, %6
	%10 = add i32 %6, 1
	br label %b.4
b.6:
;precursors: b.4 
;successors: b.7 
	br label %b.7
b.7:
;precursors: b.6 b.8 
;successors: b.8 b.9 
	%11 = phi i32 [ %6, %b.6 ], [ %15, %b.8 ]
	%12 = phi i32 [ %7, %b.6 ], [ %14, %b.8 ]
	%13 = icmp sge i32 %11, 1
	br i1 %13, label %b.8, label %b.9
b.8:
;precursors: b.7 
;successors: b.7 
	%14 = add i32 %12, %11
	%15 = sub i32 %11, 1
	br label %b.7
b.9:
;precursors: b.7 
;successors: b.10 
	%16 = add i32 %11, 1
	br label %b.10
b.10:
;precursors: b.9 b.11 
;successors: b.11 b.12 
	%17 = phi i32 [ %16, %b.9 ], [ %21, %b.11 ]
	%18 = phi i32 [ 1, %b.9 ], [ %20, %b.11 ]
	%19 = icmp sle i32 %17, 10
	br i1 %19, label %b.11, label %b.12
b.11:
;precursors: b.10 
;successors: b.10 
	%20 = mul i32 %18, %17
	%21 = add i32 %17, 1
	br label %b.10
b.12:
;precursors: b.10 
;successors: b.13 b.14 
	%22 = icmp eq i32 %12, 10100
	br i1 %22, label %b.13, label %b.14
b.13:
;precursors: b.12 
;successors: b.15 b.16 
	%23 = icmp eq i32 %12, 10100
	br i1 %23, label %b.15, label %b.16
b.14:
;precursors: b.16 b.12 
;successors: b.17 
	%24 = add i32 %0, 1919
	br label %b.17
b.15:
;precursors: b.13 
;successors: b.18 b.19 
	%25 = icmp eq i32 %12, 10100
	br i1 %25, label %b.18, label %b.19
b.16:
;precursors: b.13 b.19 
;successors: b.14 
	br label %b.14
b.17:
;precursors: b.29 b.14 
;successors: b.20 b.21 
	%26 = phi i32 [ 0, %b.14 ], [ %39, %b.29 ]
	%27 = load i32, i32* @N, align 4
	%28 = icmp slt i32 %26, %27
	br i1 %28, label %b.20, label %b.21
b.18:
;precursors: b.15 
;successors: b.22 b.23 
	%29 = icmp eq i32 %12, 10100
	br i1 %29, label %b.22, label %b.23
b.19:
;precursors: b.23 b.15 
;successors: b.16 
	br label %b.16
b.20:
;precursors: b.17 
;successors: b.24 
	br label %b.24
b.21:
;precursors: b.17 
;successors: b.25 
	br label %b.25
b.22:
;precursors: b.18 
;successors: b.26 b.27 
	%30 = icmp eq i32 %12, 10100
	br i1 %30, label %b.26, label %b.27
b.23:
;precursors: b.27 b.18 
;successors: b.19 
	br label %b.19
b.24:
;precursors: b.20 b.28 
;successors: b.28 b.29 
	%31 = phi i32 [ 0, %b.20 ], [ %38, %b.28 ]
	%32 = load i32, i32* @N, align 4
	%33 = icmp slt i32 %31, %32
	br i1 %33, label %b.28, label %b.29
b.25:
;precursors: b.21 b.30 
;successors: b.30 b.31 
	%34 = phi i32 [ 0, %b.21 ], [ %40, %b.30 ]
	%35 = load i32, i32* @N, align 4
	%36 = icmp slt i32 %34, %35
	br i1 %36, label %b.30, label %b.31
b.26:
;precursors: b.22 
;successors: b.32 b.33 
	%37 = icmp eq i32 %12, 10100
	br i1 %37, label %b.32, label %b.33
b.27:
;precursors: b.22 b.33 
;successors: b.23 
	br label %b.23
b.28:
;precursors: b.24 
;successors: b.24 
	%38 = add i32 %31, 1
	br label %b.24
b.29:
;precursors: b.24 
;successors: b.17 
	%39 = add i32 %26, 1
	br label %b.17
b.30:
;precursors: b.25 
;successors: b.25 
	%40 = add i32 %34, 1
	br label %b.25
b.31:
;precursors: b.25 
;successors: 
	%41 = add i32 %24, 114514
	%42 = sub i32 %41, 50997
	ret i32 %42
b.32:
;precursors: b.26 
;successors: b.34 b.35 
	%43 = icmp eq i32 %12, 10100
	br i1 %43, label %b.34, label %b.35
b.33:
;precursors: b.35 b.26 
;successors: b.27 
	br label %b.27
b.34:
;precursors: b.32 
;successors: b.36 b.37 
	%44 = icmp eq i32 %12, 10100
	br i1 %44, label %b.36, label %b.37
b.35:
;precursors: b.37 b.32 
;successors: b.33 
	br label %b.33
b.36:
;precursors: b.34 
;successors: b.38 b.39 
	%45 = icmp eq i32 %12, 10100
	br i1 %45, label %b.38, label %b.39
b.37:
;precursors: b.34 b.39 
;successors: b.35 
	br label %b.35
b.38:
;precursors: b.36 
;successors: b.40 b.41 
	%46 = icmp eq i32 %12, 10100
	br i1 %46, label %b.40, label %b.41
b.39:
;precursors: b.41 b.36 
;successors: b.37 
	br label %b.37
b.40:
;precursors: b.38 
;successors: b.42 b.43 
	%47 = icmp eq i32 %12, 10100
	br i1 %47, label %b.42, label %b.43
b.41:
;precursors: b.38 b.43 
;successors: b.39 
	br label %b.39
b.42:
;precursors: b.40 
;successors: b.44 b.45 
	%48 = icmp eq i32 %12, 10100
	br i1 %48, label %b.44, label %b.45
b.43:
;precursors: b.40 b.45 
;successors: b.41 
	br label %b.41
b.44:
;precursors: b.42 
;successors: b.46 b.47 
	%49 = icmp eq i32 %12, 10100
	br i1 %49, label %b.46, label %b.47
b.45:
;precursors: b.42 b.47 
;successors: b.43 
	br label %b.43
b.46:
;precursors: b.44 
;successors: b.48 b.49 
	%50 = icmp eq i32 %12, 10100
	br i1 %50, label %b.48, label %b.49
b.47:
;precursors: b.44 b.49 
;successors: b.45 
	br label %b.45
b.48:
;precursors: b.46 
;successors: b.50 b.51 
	%51 = icmp eq i32 %12, 10100
	br i1 %51, label %b.50, label %b.51
b.49:
;precursors: b.46 b.51 
;successors: b.47 
	br label %b.47
b.50:
;precursors: b.48 
;successors: b.52 b.53 
	%52 = icmp eq i32 %12, 10100
	br i1 %52, label %b.52, label %b.53
b.51:
;precursors: b.48 b.53 
;successors: b.49 
	br label %b.49
b.52:
;precursors: b.50 
;successors: b.54 b.55 
	%53 = icmp eq i32 %12, 10100
	br i1 %53, label %b.54, label %b.55
b.53:
;precursors: b.50 b.55 
;successors: b.51 
	br label %b.51
b.54:
;precursors: b.52 
;successors: b.56 b.57 
	%54 = icmp eq i32 %12, 10100
	br i1 %54, label %b.56, label %b.57
b.55:
;precursors: b.57 b.52 
;successors: b.53 
	br label %b.53
b.56:
;precursors: b.54 
;successors: b.58 b.59 
	%55 = icmp eq i32 %12, 10100
	br i1 %55, label %b.58, label %b.59
b.57:
;precursors: b.54 b.59 
;successors: b.55 
	br label %b.55
b.58:
;precursors: b.56 
;successors: b.60 b.61 
	%56 = icmp eq i32 %12, 10100
	br i1 %56, label %b.60, label %b.61
b.59:
;precursors: b.61 b.56 
;successors: b.57 
	br label %b.57
b.60:
;precursors: b.58 
;successors: b.62 b.63 
	%57 = icmp eq i32 %12, 10100
	br i1 %57, label %b.62, label %b.63
b.61:
;precursors: b.58 b.63 
;successors: b.59 
	br label %b.59
b.62:
;precursors: b.60 
;successors: b.64 b.65 
	%58 = icmp eq i32 %12, 10100
	br i1 %58, label %b.64, label %b.65
b.63:
;precursors: b.65 b.60 
;successors: b.61 
	br label %b.61
b.64:
;precursors: b.62 
;successors: b.66 b.67 
	%59 = icmp eq i32 %12, 10100
	br i1 %59, label %b.66, label %b.67
b.65:
;precursors: b.67 b.62 
;successors: b.63 
	br label %b.63
b.66:
;precursors: b.64 
;successors: b.68 b.69 
	%60 = icmp eq i32 %12, 10100
	br i1 %60, label %b.68, label %b.69
b.67:
;precursors: b.69 b.64 
;successors: b.65 
	br label %b.65
b.68:
;precursors: b.66 
;successors: b.70 b.71 
	%61 = icmp eq i32 %12, 10100
	br i1 %61, label %b.70, label %b.71
b.69:
;precursors: b.71 b.66 
;successors: b.67 
	br label %b.67
b.70:
;precursors: b.68 
;successors: b.72 b.73 
	%62 = icmp eq i32 %12, 10100
	br i1 %62, label %b.72, label %b.73
b.71:
;precursors: b.68 b.73 
;successors: b.69 
	br label %b.69
b.72:
;precursors: b.70 
;successors: b.74 b.75 
	%63 = icmp eq i32 %12, 10100
	br i1 %63, label %b.74, label %b.75
b.73:
;precursors: b.70 b.75 
;successors: b.71 
	br label %b.71
b.74:
;precursors: b.72 
;successors: b.76 b.77 
	%64 = icmp eq i32 %12, 10100
	br i1 %64, label %b.76, label %b.77
b.75:
;precursors: b.77 b.72 
;successors: b.73 
	br label %b.73
b.76:
;precursors: b.74 
;successors: b.78 b.79 
	%65 = icmp eq i32 %12, 10100
	br i1 %65, label %b.78, label %b.79
b.77:
;precursors: b.74 b.79 
;successors: b.75 
	br label %b.75
b.78:
;precursors: b.76 
;successors: b.80 b.81 
	%66 = icmp eq i32 %12, 10100
	br i1 %66, label %b.80, label %b.81
b.79:
;precursors: b.81 b.76 
;successors: b.77 
	br label %b.77
b.80:
;precursors: b.78 
;successors: b.82 b.83 
	%67 = icmp eq i32 %12, 10100
	br i1 %67, label %b.82, label %b.83
b.81:
;precursors: b.83 b.78 
;successors: b.79 
	br label %b.79
b.82:
;precursors: b.80 
;successors: b.84 b.85 
	%68 = icmp eq i32 %12, 10100
	br i1 %68, label %b.84, label %b.85
b.83:
;precursors: b.85 b.80 
;successors: b.81 
	br label %b.81
b.84:
;precursors: b.82 
;successors: b.86 b.87 
	%69 = icmp eq i32 %18, 3628800
	br i1 %69, label %b.86, label %b.87
b.85:
;precursors: b.82 b.87 
;successors: b.83 
	br label %b.83
b.86:
;precursors: b.84 
;successors: b.88 b.89 
	%70 = icmp eq i32 %12, 10100
	br i1 %70, label %b.88, label %b.89
b.87:
;precursors: b.84 b.89 
;successors: b.85 
	br label %b.85
b.88:
;precursors: b.86 
;successors: b.90 b.91 
	%71 = icmp eq i32 %18, 3628800
	br i1 %71, label %b.90, label %b.91
b.89:
;precursors: b.91 b.86 
;successors: b.87 
	br label %b.87
b.90:
;precursors: b.88 
;successors: b.91 
	br label %b.91
b.91:
;precursors: b.90 b.88 
;successors: b.89 
	br label %b.89
}
define i32 @fun_naivedce(){
b.0:
;precursors: 
;successors: b.1 
	br label %b.1
b.1:
;precursors: b.0 b.2 
;successors: b.2 b.3 
	%0 = phi i32 [ 0, %b.0 ], [ %3, %b.2 ]
	%1 = phi i32 [ 1, %b.0 ], [ %4, %b.2 ]
	%2 = icmp sle i32 %1, 100
	br i1 %2, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.1 
	%3 = add i32 %0, %1
	%4 = add i32 %1, 1
	br label %b.1
b.3:
;precursors: b.1 
;successors: b.4 
	br label %b.4
b.4:
;precursors: b.3 b.5 
;successors: b.5 b.6 
	%5 = phi i32 [ %0, %b.3 ], [ %8, %b.5 ]
	%6 = phi i32 [ %1, %b.3 ], [ %9, %b.5 ]
	%7 = icmp sge i32 %6, 1
	br i1 %7, label %b.5, label %b.6
b.5:
;precursors: b.4 
;successors: b.4 
	%8 = add i32 %5, %6
	%9 = sub i32 %6, 1
	br label %b.4
b.6:
;precursors: b.4 
;successors: b.7 
	%10 = add i32 %6, 1
	br label %b.7
b.7:
;precursors: b.6 b.8 
;successors: b.8 b.9 
	%11 = phi i32 [ 1, %b.6 ], [ %14, %b.8 ]
	%12 = phi i32 [ %10, %b.6 ], [ %15, %b.8 ]
	%13 = icmp sle i32 %12, 10
	br i1 %13, label %b.8, label %b.9
b.8:
;precursors: b.7 
;successors: b.7 
	%14 = mul i32 %11, %12
	%15 = add i32 %12, 1
	br label %b.7
b.9:
;precursors: b.7 
;successors: b.10 b.11 
	%16 = icmp eq i32 %5, 10100
	br i1 %16, label %b.10, label %b.11
b.10:
;precursors: b.9 
;successors: b.12 b.13 
	%17 = icmp eq i32 %5, 10100
	br i1 %17, label %b.12, label %b.13
b.11:
;precursors: b.13 b.9 
;successors: 
	ret i32 1919
b.12:
;precursors: b.10 
;successors: b.14 b.15 
	%18 = icmp eq i32 %5, 10100
	br i1 %18, label %b.14, label %b.15
b.13:
;precursors: b.10 b.15 
;successors: b.11 
	br label %b.11
b.14:
;precursors: b.12 
;successors: b.16 b.17 
	%19 = icmp eq i32 %5, 10100
	br i1 %19, label %b.16, label %b.17
b.15:
;precursors: b.12 b.17 
;successors: b.13 
	br label %b.13
b.16:
;precursors: b.14 
;successors: b.18 b.19 
	%20 = icmp eq i32 %5, 10100
	br i1 %20, label %b.18, label %b.19
b.17:
;precursors: b.14 b.19 
;successors: b.15 
	br label %b.15
b.18:
;precursors: b.16 
;successors: b.20 b.21 
	%21 = icmp eq i32 %5, 10100
	br i1 %21, label %b.20, label %b.21
b.19:
;precursors: b.16 b.21 
;successors: b.17 
	br label %b.17
b.20:
;precursors: b.18 
;successors: b.22 b.23 
	%22 = icmp eq i32 %5, 10100
	br i1 %22, label %b.22, label %b.23
b.21:
;precursors: b.18 b.23 
;successors: b.19 
	br label %b.19
b.22:
;precursors: b.20 
;successors: b.24 b.25 
	%23 = icmp eq i32 %5, 10100
	br i1 %23, label %b.24, label %b.25
b.23:
;precursors: b.20 b.25 
;successors: b.21 
	br label %b.21
b.24:
;precursors: b.22 
;successors: b.26 b.27 
	%24 = icmp eq i32 %5, 10100
	br i1 %24, label %b.26, label %b.27
b.25:
;precursors: b.22 b.27 
;successors: b.23 
	br label %b.23
b.26:
;precursors: b.24 
;successors: b.28 b.29 
	%25 = icmp eq i32 %5, 10100
	br i1 %25, label %b.28, label %b.29
b.27:
;precursors: b.29 b.24 
;successors: b.25 
	br label %b.25
b.28:
;precursors: b.26 
;successors: b.30 b.31 
	%26 = icmp eq i32 %5, 10100
	br i1 %26, label %b.30, label %b.31
b.29:
;precursors: b.26 b.31 
;successors: b.27 
	br label %b.27
b.30:
;precursors: b.28 
;successors: b.32 b.33 
	%27 = icmp eq i32 %5, 10100
	br i1 %27, label %b.32, label %b.33
b.31:
;precursors: b.28 b.33 
;successors: b.29 
	br label %b.29
b.32:
;precursors: b.30 
;successors: b.34 b.35 
	%28 = icmp eq i32 %5, 10100
	br i1 %28, label %b.34, label %b.35
b.33:
;precursors: b.30 b.35 
;successors: b.31 
	br label %b.31
b.34:
;precursors: b.32 
;successors: b.36 b.37 
	%29 = icmp eq i32 %5, 10100
	br i1 %29, label %b.36, label %b.37
b.35:
;precursors: b.32 b.37 
;successors: b.33 
	br label %b.33
b.36:
;precursors: b.34 
;successors: b.38 b.39 
	%30 = icmp eq i32 %5, 10100
	br i1 %30, label %b.38, label %b.39
b.37:
;precursors: b.34 b.39 
;successors: b.35 
	br label %b.35
b.38:
;precursors: b.36 
;successors: b.40 b.41 
	%31 = icmp eq i32 %5, 10100
	br i1 %31, label %b.40, label %b.41
b.39:
;precursors: b.36 b.41 
;successors: b.37 
	br label %b.37
b.40:
;precursors: b.38 
;successors: b.42 b.43 
	%32 = icmp eq i32 %5, 10100
	br i1 %32, label %b.42, label %b.43
b.41:
;precursors: b.38 b.43 
;successors: b.39 
	br label %b.39
b.42:
;precursors: b.40 
;successors: b.44 b.45 
	%33 = icmp eq i32 %5, 10100
	br i1 %33, label %b.44, label %b.45
b.43:
;precursors: b.40 b.45 
;successors: b.41 
	br label %b.41
b.44:
;precursors: b.42 
;successors: b.46 b.47 
	%34 = icmp eq i32 %5, 10100
	br i1 %34, label %b.46, label %b.47
b.45:
;precursors: b.42 b.47 
;successors: b.43 
	br label %b.43
b.46:
;precursors: b.44 
;successors: b.48 b.49 
	%35 = icmp eq i32 %5, 10100
	br i1 %35, label %b.48, label %b.49
b.47:
;precursors: b.44 b.49 
;successors: b.45 
	br label %b.45
b.48:
;precursors: b.46 
;successors: b.50 b.51 
	%36 = icmp eq i32 %5, 10100
	br i1 %36, label %b.50, label %b.51
b.49:
;precursors: b.46 b.51 
;successors: b.47 
	br label %b.47
b.50:
;precursors: b.48 
;successors: b.52 b.53 
	%37 = icmp eq i32 %5, 10100
	br i1 %37, label %b.52, label %b.53
b.51:
;precursors: b.48 b.53 
;successors: b.49 
	br label %b.49
b.52:
;precursors: b.50 
;successors: b.54 b.55 
	%38 = icmp eq i32 %5, 10100
	br i1 %38, label %b.54, label %b.55
b.53:
;precursors: b.50 b.55 
;successors: b.51 
	br label %b.51
b.54:
;precursors: b.52 
;successors: b.56 b.57 
	%39 = icmp eq i32 %5, 10100
	br i1 %39, label %b.56, label %b.57
b.55:
;precursors: b.52 b.57 
;successors: b.53 
	br label %b.53
b.56:
;precursors: b.54 
;successors: b.58 b.59 
	%40 = icmp eq i32 %5, 10100
	br i1 %40, label %b.58, label %b.59
b.57:
;precursors: b.54 b.59 
;successors: b.55 
	br label %b.55
b.58:
;precursors: b.56 
;successors: b.60 b.61 
	%41 = icmp eq i32 %5, 10100
	br i1 %41, label %b.60, label %b.61
b.59:
;precursors: b.56 b.61 
;successors: b.57 
	br label %b.57
b.60:
;precursors: b.58 
;successors: b.62 b.63 
	%42 = icmp eq i32 %5, 10100
	br i1 %42, label %b.62, label %b.63
b.61:
;precursors: b.58 b.63 
;successors: b.59 
	br label %b.59
b.62:
;precursors: b.60 
;successors: b.64 b.65 
	%43 = icmp eq i32 %5, 10100
	br i1 %43, label %b.64, label %b.65
b.63:
;precursors: b.60 b.65 
;successors: b.61 
	br label %b.61
b.64:
;precursors: b.62 
;successors: b.66 b.67 
	%44 = icmp eq i32 %5, 10100
	br i1 %44, label %b.66, label %b.67
b.65:
;precursors: b.62 b.67 
;successors: b.63 
	br label %b.63
b.66:
;precursors: b.64 
;successors: b.68 b.69 
	%45 = icmp eq i32 %5, 10100
	br i1 %45, label %b.68, label %b.69
b.67:
;precursors: b.64 b.69 
;successors: b.65 
	br label %b.65
b.68:
;precursors: b.66 
;successors: b.70 b.71 
	%46 = icmp eq i32 %5, 10100
	br i1 %46, label %b.70, label %b.71
b.69:
;precursors: b.66 b.71 
;successors: b.67 
	br label %b.67
b.70:
;precursors: b.68 
;successors: b.72 b.73 
	%47 = icmp eq i32 %5, 10100
	br i1 %47, label %b.72, label %b.73
b.71:
;precursors: b.68 b.73 
;successors: b.69 
	br label %b.69
b.72:
;precursors: b.70 
;successors: b.74 b.75 
	%48 = icmp eq i32 %11, 3628800
	br i1 %48, label %b.74, label %b.75
b.73:
;precursors: b.70 b.75 
;successors: b.71 
	br label %b.71
b.74:
;precursors: b.72 
;successors: b.76 b.77 
	%49 = icmp eq i32 %5, 10100
	br i1 %49, label %b.76, label %b.77
b.75:
;precursors: b.77 b.72 
;successors: b.73 
	br label %b.73
b.76:
;precursors: b.74 
;successors: b.78 b.79 
	%50 = icmp eq i32 %11, 3628800
	br i1 %50, label %b.78, label %b.79
b.77:
;precursors: b.79 b.74 
;successors: b.75 
	br label %b.75
b.78:
;precursors: b.76 
;successors: b.79 
	br label %b.79
b.79:
;precursors: b.76 b.78 
;successors: b.77 
	br label %b.77
}
define i32 @fun_dceconst(){
b.0:
;precursors: 
;successors: b.1 
	br label %b.1
b.1:
;precursors: b.0 b.7 
;successors: b.2 b.3 
	%0 = phi i32 [ 0, %b.0 ], [ %10, %b.7 ]
	%1 = load i32, i32* @N, align 4
	%2 = icmp slt i32 %0, %1
	br i1 %2, label %b.2, label %b.3
b.2:
;precursors: b.1 
;successors: b.4 
	br label %b.4
b.3:
;precursors: b.1 
;successors: b.5 
	br label %b.5
b.4:
;precursors: b.2 b.6 
;successors: b.6 b.7 
	%3 = phi i32 [ 0, %b.2 ], [ %9, %b.6 ]
	%4 = load i32, i32* @N, align 4
	%5 = icmp slt i32 %3, %4
	br i1 %5, label %b.6, label %b.7
b.5:
;precursors: b.3 b.8 
;successors: b.8 b.9 
	%6 = phi i32 [ 0, %b.3 ], [ %11, %b.8 ]
	%7 = load i32, i32* @N, align 4
	%8 = icmp slt i32 %6, %7
	br i1 %8, label %b.8, label %b.9
b.6:
;precursors: b.4 
;successors: b.4 
	%9 = add i32 %3, 1
	br label %b.4
b.7:
;precursors: b.4 
;successors: b.1 
	%10 = add i32 %0, 1
	br label %b.1
b.8:
;precursors: b.5 
;successors: b.5 
	%11 = add i32 %6, 1
	br label %b.5
b.9:
;precursors: b.5 
;successors: 
	ret i32 114514
}
