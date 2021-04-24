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
@w = global i32 zeroinitializer, align 4
@N = global i32 zeroinitializer, align 4
define i32 @fun_wppp(){
b.0:
;precursors: 
;successors: 
;head_inst: %0 = load i32, i32* @w, align 4
;tail_inst: store i32 %31, i32* @w, align 4
;terminate: ret i32 %31
	%0 = load i32, i32* @w, align 4
	%1 = add i32 %0, 1
	store i32 %1, i32* @w, align 4
	%2 = load i32, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	%4 = load i32, i32* @w, align 4
	%5 = add i32 %4, 1
	store i32 %5, i32* @w, align 4
	%6 = load i32, i32* @w, align 4
	%7 = add i32 %6, 1
	store i32 %7, i32* @w, align 4
	%8 = load i32, i32* @w, align 4
	%9 = add i32 %8, 1
	store i32 %9, i32* @w, align 4
	%10 = load i32, i32* @w, align 4
	%11 = add i32 %10, 1
	store i32 %11, i32* @w, align 4
	%12 = load i32, i32* @w, align 4
	%13 = add i32 %12, 1
	store i32 %13, i32* @w, align 4
	%14 = load i32, i32* @w, align 4
	%15 = add i32 %14, 1
	store i32 %15, i32* @w, align 4
	%16 = load i32, i32* @w, align 4
	%17 = add i32 %16, 1
	store i32 %17, i32* @w, align 4
	%18 = load i32, i32* @w, align 4
	%19 = add i32 %18, 1
	store i32 %19, i32* @w, align 4
	%20 = load i32, i32* @w, align 4
	%21 = add i32 %20, 1
	store i32 %21, i32* @w, align 4
	%22 = load i32, i32* @w, align 4
	%23 = add i32 %22, 1
	store i32 %23, i32* @w, align 4
	%24 = load i32, i32* @w, align 4
	%25 = add i32 %24, 1
	store i32 %25, i32* @w, align 4
	%26 = load i32, i32* @w, align 4
	%27 = add i32 %26, 1
	store i32 %27, i32* @w, align 4
	%28 = load i32, i32* @w, align 4
	%29 = add i32 %28, 1
	store i32 %29, i32* @w, align 4
	%30 = load i32, i32* @w, align 4
	%31 = add i32 %30, 1
	store i32 %31, i32* @w, align 4
	ret i32 %31
}
define i32 @fun_add65536(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 65536
;tail_inst: %1 = add i32 %0, 65536
;terminate: ret i32 %1
	%1 = add i32 %0, 65536
	ret i32 %1
}
define i32 @fun_block(){
b.0:
;precursors: 
;successors: 
;head_inst: %0 = call i32 @fun_block()
;tail_inst: %0 = call i32 @fun_block()
;terminate: ret i32 %0
	%0 = call i32 @fun_block()
	ret i32 %0
}
define i32 @fun_add2048(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 2048
;tail_inst: %1 = add i32 %0, 2048
;terminate: ret i32 %1
	%1 = add i32 %0, 2048
	ret i32 %1
}
define i32 @fun_add262144(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 262144
;tail_inst: %1 = add i32 %0, 262144
;terminate: ret i32 %1
	%1 = add i32 %0, 262144
	ret i32 %1
}
define i32 @fun_add128(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 128
;tail_inst: %1 = add i32 %0, 128
;terminate: ret i32 %1
	%1 = add i32 %0, 128
	ret i32 %1
}
define i32 @main(){
b.0:
;precursors: 
;successors: 
;head_inst: store i32 0, i32* @w, align 4
;tail_inst: %1 = sub i32 %0, 3
;terminate: ret i32 %1
	store i32 0, i32* @w, align 4
	store i32 1, i32* @N, align 4
	%0 = call i32 @fun_sanity_check()
	%1 = sub i32 %0, 3
	ret i32 %1
}
define i32 @fun_wP(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: null
;tail_inst: null
;terminate: br label %b.1
	br label %b.1
b.1:
;precursors: b.0 b.11 
;successors: b.2 
;head_inst: %4 = ashr i32 %1, 1
;tail_inst: %4 = ashr i32 %1, 1
;terminate: br label %b.2
	%0 = phi i32 [ 65536, %b.0 ], [ %4, %b.11 ]
	%1 = phi i32 [ 3, %b.0 ], [ %20, %b.11 ]
	%2 = phi i32 [ 65536, %b.0 ], [ %10, %b.11 ]
	%3 = phi i32 [ 65536, %b.0 ], [ %5, %b.11 ]
	%4 = ashr i32 %1, 1
	br label %b.2
b.2:
;precursors: b.1 b.9 
;successors: b.3 b.4 
;head_inst: %6 = icmp slt i32 %5, %4
;tail_inst: %6 = icmp slt i32 %5, %4
;terminate: br i1 %6, label %b.3, label %b.4
	%5 = phi i32 [ 2, %b.1 ], [ %19, %b.9 ]
	%6 = icmp slt i32 %5, %4
	br i1 %6, label %b.3, label %b.4
b.3:
;precursors: b.2 
;successors: b.5 b.6 
;head_inst: %7 = srem i32 %1, %5
;tail_inst: %8 = icmp eq i32 %7, 0
;terminate: br i1 %8, label %b.5, label %b.6
	%7 = srem i32 %1, %5
	%8 = icmp eq i32 %7, 0
	br i1 %8, label %b.5, label %b.6
b.4:
;precursors: b.2 b.5 
;successors: b.7 b.8 
;head_inst: %11 = icmp sgt i32 %9, 0
;tail_inst: %11 = icmp sgt i32 %9, 0
;terminate: br i1 %11, label %b.7, label %b.8
	%9 = phi i32 [ %1, %b.2 ], [ %12, %b.5 ]
	%10 = phi i32 [ 1, %b.2 ], [ 0, %b.5 ]
	%11 = icmp sgt i32 %9, 0
	br i1 %11, label %b.7, label %b.8
b.5:
;precursors: b.3 
;successors: b.4 
;head_inst: %12 = add i32 %1, 1
;tail_inst: %12 = add i32 %1, 1
;terminate: br label %b.4
	%12 = add i32 %1, 1
	br label %b.4
b.6:
;precursors: b.3 
;successors: b.9 
;head_inst: null
;tail_inst: null
;terminate: br label %b.9
	br label %b.9
b.7:
;precursors: b.4 
;successors: b.10 b.8 
;head_inst: %13 = add i32 %9, %10
;tail_inst: %15 = icmp eq i32 %14, 0
;terminate: br i1 %15, label %b.10, label %b.8
	%13 = add i32 %9, %10
	%14 = srem i32 %13, 9
	%15 = icmp eq i32 %14, 0
	br i1 %15, label %b.10, label %b.8
b.8:
;precursors: b.4 b.7 
;successors: b.11 
;head_inst: %16 = load i32, i32* @N, align 4
;tail_inst: %18 = add i32 %9, %10
;terminate: br label %b.11
	%16 = load i32, i32* @N, align 4
	%17 = add i32 %16, %10
	store i32 %17, i32* @N, align 4
	%18 = add i32 %9, %10
	br label %b.11
b.9:
;precursors: b.6 
;successors: b.2 
;head_inst: %19 = add i32 %5, 1
;tail_inst: %19 = add i32 %5, 1
;terminate: br label %b.2
	%19 = add i32 %5, 1
	br label %b.2
b.10:
;precursors: b.7 
;successors: b.12 
;head_inst: null
;tail_inst: null
;terminate: br label %b.12
	br label %b.12
b.11:
;precursors: b.8 
;successors: b.1 
;head_inst: %20 = add i32 %18, 1
;tail_inst: %20 = add i32 %18, 1
;terminate: br label %b.1
	%20 = add i32 %18, 1
	br label %b.1
b.12:
;precursors: b.10 
;successors: b.13 b.14 
;head_inst: %21 = load i32, i32* @w, align 4
;tail_inst: %248 = icmp eq i32 %247, 0
;terminate: br i1 %248, label %b.13, label %b.14
	%21 = load i32, i32* @w, align 4
	%22 = add i32 %21, 1
	store i32 %22, i32* @w, align 4
	%23 = load i32, i32* @w, align 4
	%24 = add i32 %23, 1
	store i32 %24, i32* @w, align 4
	%25 = load i32, i32* @w, align 4
	%26 = add i32 %25, 1
	store i32 %26, i32* @w, align 4
	%27 = load i32, i32* @w, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* @w, align 4
	%29 = load i32, i32* @w, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* @w, align 4
	%31 = load i32, i32* @w, align 4
	%32 = add i32 %31, 1
	store i32 %32, i32* @w, align 4
	%33 = load i32, i32* @w, align 4
	%34 = add i32 %33, 1
	store i32 %34, i32* @w, align 4
	%35 = load i32, i32* @w, align 4
	%36 = add i32 %35, 1
	store i32 %36, i32* @w, align 4
	%37 = load i32, i32* @w, align 4
	%38 = add i32 %37, 1
	store i32 %38, i32* @w, align 4
	%39 = load i32, i32* @w, align 4
	%40 = add i32 %39, 1
	store i32 %40, i32* @w, align 4
	%41 = load i32, i32* @w, align 4
	%42 = add i32 %41, 1
	store i32 %42, i32* @w, align 4
	%43 = load i32, i32* @w, align 4
	%44 = add i32 %43, 1
	store i32 %44, i32* @w, align 4
	%45 = load i32, i32* @w, align 4
	%46 = add i32 %45, 1
	store i32 %46, i32* @w, align 4
	%47 = load i32, i32* @w, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* @w, align 4
	%49 = load i32, i32* @w, align 4
	%50 = add i32 %49, 1
	store i32 %50, i32* @w, align 4
	%51 = load i32, i32* @w, align 4
	%52 = add i32 %51, 1
	store i32 %52, i32* @w, align 4
	%53 = load i32, i32* @w, align 4
	%54 = add i32 %53, 1
	store i32 %54, i32* @w, align 4
	%55 = load i32, i32* @w, align 4
	%56 = add i32 %55, 1
	store i32 %56, i32* @w, align 4
	%57 = load i32, i32* @w, align 4
	%58 = add i32 %57, 1
	store i32 %58, i32* @w, align 4
	%59 = load i32, i32* @w, align 4
	%60 = add i32 %59, 1
	store i32 %60, i32* @w, align 4
	%61 = load i32, i32* @w, align 4
	%62 = add i32 %61, 1
	store i32 %62, i32* @w, align 4
	%63 = load i32, i32* @w, align 4
	%64 = add i32 %63, 1
	store i32 %64, i32* @w, align 4
	%65 = load i32, i32* @w, align 4
	%66 = add i32 %65, 1
	store i32 %66, i32* @w, align 4
	%67 = load i32, i32* @w, align 4
	%68 = add i32 %67, 1
	store i32 %68, i32* @w, align 4
	%69 = load i32, i32* @w, align 4
	%70 = add i32 %69, 1
	store i32 %70, i32* @w, align 4
	%71 = load i32, i32* @w, align 4
	%72 = add i32 %71, 1
	store i32 %72, i32* @w, align 4
	%73 = load i32, i32* @w, align 4
	%74 = add i32 %73, 1
	store i32 %74, i32* @w, align 4
	%75 = load i32, i32* @w, align 4
	%76 = add i32 %75, 1
	store i32 %76, i32* @w, align 4
	%77 = load i32, i32* @w, align 4
	%78 = add i32 %77, 1
	store i32 %78, i32* @w, align 4
	%79 = load i32, i32* @w, align 4
	%80 = add i32 %79, 1
	store i32 %80, i32* @w, align 4
	%81 = load i32, i32* @w, align 4
	%82 = add i32 %81, 1
	store i32 %82, i32* @w, align 4
	%83 = load i32, i32* @w, align 4
	%84 = add i32 %83, 1
	store i32 %84, i32* @w, align 4
	%85 = load i32, i32* @w, align 4
	%86 = add i32 %85, 1
	store i32 %86, i32* @w, align 4
	%87 = load i32, i32* @w, align 4
	%88 = add i32 %87, 1
	store i32 %88, i32* @w, align 4
	%89 = load i32, i32* @w, align 4
	%90 = add i32 %89, 1
	store i32 %90, i32* @w, align 4
	%91 = load i32, i32* @w, align 4
	%92 = add i32 %91, 1
	store i32 %92, i32* @w, align 4
	%93 = load i32, i32* @w, align 4
	%94 = add i32 %93, 1
	store i32 %94, i32* @w, align 4
	%95 = load i32, i32* @w, align 4
	%96 = add i32 %95, 1
	store i32 %96, i32* @w, align 4
	%97 = load i32, i32* @w, align 4
	%98 = add i32 %97, 1
	store i32 %98, i32* @w, align 4
	%99 = load i32, i32* @w, align 4
	%100 = add i32 %99, 1
	store i32 %100, i32* @w, align 4
	%101 = load i32, i32* @w, align 4
	%102 = add i32 %101, 1
	store i32 %102, i32* @w, align 4
	%103 = load i32, i32* @w, align 4
	%104 = add i32 %103, 1
	store i32 %104, i32* @w, align 4
	%105 = load i32, i32* @w, align 4
	%106 = add i32 %105, 1
	store i32 %106, i32* @w, align 4
	%107 = load i32, i32* @w, align 4
	%108 = add i32 %107, 1
	store i32 %108, i32* @w, align 4
	%109 = load i32, i32* @w, align 4
	%110 = add i32 %109, 1
	store i32 %110, i32* @w, align 4
	%111 = load i32, i32* @w, align 4
	%112 = add i32 %111, 1
	store i32 %112, i32* @w, align 4
	%113 = load i32, i32* @w, align 4
	%114 = add i32 %113, 1
	store i32 %114, i32* @w, align 4
	%115 = load i32, i32* @w, align 4
	%116 = add i32 %115, 1
	store i32 %116, i32* @w, align 4
	%117 = load i32, i32* @w, align 4
	%118 = add i32 %117, 1
	store i32 %118, i32* @w, align 4
	%119 = load i32, i32* @w, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* @w, align 4
	%121 = load i32, i32* @w, align 4
	%122 = add i32 %121, 1
	store i32 %122, i32* @w, align 4
	%123 = load i32, i32* @w, align 4
	%124 = add i32 %123, 1
	store i32 %124, i32* @w, align 4
	%125 = load i32, i32* @w, align 4
	%126 = add i32 %125, 1
	store i32 %126, i32* @w, align 4
	%127 = load i32, i32* @w, align 4
	%128 = add i32 %127, 1
	store i32 %128, i32* @w, align 4
	%129 = load i32, i32* @w, align 4
	%130 = add i32 %129, 1
	store i32 %130, i32* @w, align 4
	%131 = load i32, i32* @w, align 4
	%132 = add i32 %131, 1
	store i32 %132, i32* @w, align 4
	%133 = load i32, i32* @w, align 4
	%134 = add i32 %133, 1
	store i32 %134, i32* @w, align 4
	%135 = load i32, i32* @w, align 4
	%136 = add i32 %135, 1
	store i32 %136, i32* @w, align 4
	%137 = load i32, i32* @w, align 4
	%138 = add i32 %137, 1
	store i32 %138, i32* @w, align 4
	%139 = load i32, i32* @w, align 4
	%140 = add i32 %139, 1
	store i32 %140, i32* @w, align 4
	%141 = load i32, i32* @w, align 4
	%142 = add i32 %141, 1
	store i32 %142, i32* @w, align 4
	%143 = load i32, i32* @w, align 4
	%144 = add i32 %143, 1
	store i32 %144, i32* @w, align 4
	%145 = load i32, i32* @w, align 4
	%146 = add i32 %145, 1
	store i32 %146, i32* @w, align 4
	%147 = load i32, i32* @w, align 4
	%148 = add i32 %147, 1
	store i32 %148, i32* @w, align 4
	%149 = load i32, i32* @w, align 4
	%150 = add i32 %149, 1
	store i32 %150, i32* @w, align 4
	%151 = load i32, i32* @w, align 4
	%152 = add i32 %151, 1
	store i32 %152, i32* @w, align 4
	%153 = load i32, i32* @w, align 4
	%154 = add i32 %153, 1
	store i32 %154, i32* @w, align 4
	%155 = load i32, i32* @w, align 4
	%156 = add i32 %155, 1
	store i32 %156, i32* @w, align 4
	%157 = load i32, i32* @w, align 4
	%158 = add i32 %157, 1
	store i32 %158, i32* @w, align 4
	%159 = load i32, i32* @w, align 4
	%160 = add i32 %159, 1
	store i32 %160, i32* @w, align 4
	%161 = load i32, i32* @w, align 4
	%162 = add i32 %161, 1
	store i32 %162, i32* @w, align 4
	%163 = load i32, i32* @w, align 4
	%164 = add i32 %163, 1
	store i32 %164, i32* @w, align 4
	%165 = load i32, i32* @w, align 4
	%166 = add i32 %165, 1
	store i32 %166, i32* @w, align 4
	%167 = load i32, i32* @w, align 4
	%168 = add i32 %167, 1
	store i32 %168, i32* @w, align 4
	%169 = load i32, i32* @w, align 4
	%170 = add i32 %169, 1
	store i32 %170, i32* @w, align 4
	%171 = load i32, i32* @w, align 4
	%172 = add i32 %171, 1
	store i32 %172, i32* @w, align 4
	%173 = load i32, i32* @w, align 4
	%174 = add i32 %173, 1
	store i32 %174, i32* @w, align 4
	%175 = load i32, i32* @w, align 4
	%176 = add i32 %175, 1
	store i32 %176, i32* @w, align 4
	%177 = load i32, i32* @w, align 4
	%178 = add i32 %177, 1
	store i32 %178, i32* @w, align 4
	%179 = load i32, i32* @w, align 4
	%180 = add i32 %179, 1
	store i32 %180, i32* @w, align 4
	%181 = load i32, i32* @w, align 4
	%182 = add i32 %181, 1
	store i32 %182, i32* @w, align 4
	%183 = load i32, i32* @w, align 4
	%184 = add i32 %183, 1
	store i32 %184, i32* @w, align 4
	%185 = load i32, i32* @w, align 4
	%186 = add i32 %185, 1
	store i32 %186, i32* @w, align 4
	%187 = load i32, i32* @w, align 4
	%188 = add i32 %187, 1
	store i32 %188, i32* @w, align 4
	%189 = load i32, i32* @w, align 4
	%190 = add i32 %189, 1
	store i32 %190, i32* @w, align 4
	%191 = load i32, i32* @w, align 4
	%192 = add i32 %191, 1
	store i32 %192, i32* @w, align 4
	%193 = load i32, i32* @w, align 4
	%194 = add i32 %193, 1
	store i32 %194, i32* @w, align 4
	%195 = load i32, i32* @w, align 4
	%196 = add i32 %195, 1
	store i32 %196, i32* @w, align 4
	%197 = load i32, i32* @w, align 4
	%198 = add i32 %197, 1
	store i32 %198, i32* @w, align 4
	%199 = load i32, i32* @w, align 4
	%200 = add i32 %199, 1
	store i32 %200, i32* @w, align 4
	%201 = load i32, i32* @w, align 4
	%202 = add i32 %201, 1
	store i32 %202, i32* @w, align 4
	%203 = load i32, i32* @w, align 4
	%204 = add i32 %203, 1
	store i32 %204, i32* @w, align 4
	%205 = load i32, i32* @w, align 4
	%206 = add i32 %205, 1
	store i32 %206, i32* @w, align 4
	%207 = load i32, i32* @w, align 4
	%208 = add i32 %207, 1
	store i32 %208, i32* @w, align 4
	%209 = load i32, i32* @w, align 4
	%210 = add i32 %209, 1
	store i32 %210, i32* @w, align 4
	%211 = load i32, i32* @w, align 4
	%212 = add i32 %211, 1
	store i32 %212, i32* @w, align 4
	%213 = load i32, i32* @w, align 4
	%214 = add i32 %213, 1
	store i32 %214, i32* @w, align 4
	%215 = load i32, i32* @w, align 4
	%216 = add i32 %215, 1
	store i32 %216, i32* @w, align 4
	%217 = load i32, i32* @w, align 4
	%218 = add i32 %217, 1
	store i32 %218, i32* @w, align 4
	%219 = load i32, i32* @w, align 4
	%220 = add i32 %219, 1
	store i32 %220, i32* @w, align 4
	%221 = load i32, i32* @w, align 4
	%222 = add i32 %221, 1
	store i32 %222, i32* @w, align 4
	%223 = load i32, i32* @w, align 4
	%224 = add i32 %223, 1
	store i32 %224, i32* @w, align 4
	%225 = load i32, i32* @w, align 4
	%226 = add i32 %225, 1
	store i32 %226, i32* @w, align 4
	%227 = load i32, i32* @w, align 4
	%228 = add i32 %227, 1
	store i32 %228, i32* @w, align 4
	%229 = load i32, i32* @w, align 4
	%230 = add i32 %229, 1
	store i32 %230, i32* @w, align 4
	%231 = load i32, i32* @w, align 4
	%232 = add i32 %231, 1
	store i32 %232, i32* @w, align 4
	%233 = load i32, i32* @w, align 4
	%234 = add i32 %233, 1
	store i32 %234, i32* @w, align 4
	%235 = load i32, i32* @w, align 4
	%236 = add i32 %235, 1
	store i32 %236, i32* @w, align 4
	%237 = load i32, i32* @w, align 4
	%238 = add i32 %237, 1
	store i32 %238, i32* @w, align 4
	%239 = load i32, i32* @w, align 4
	%240 = add i32 %239, 1
	store i32 %240, i32* @w, align 4
	%241 = load i32, i32* @w, align 4
	%242 = add i32 %241, 1
	store i32 %242, i32* @w, align 4
	%243 = load i32, i32* @w, align 4
	%244 = add i32 %243, 1
	store i32 %244, i32* @w, align 4
	%245 = load i32, i32* @N, align 4
	%246 = add i32 %245, %244
	%247 = srem i32 %246, 2
	%248 = icmp eq i32 %247, 0
	br i1 %248, label %b.13, label %b.14
b.13:
;precursors: b.12 
;successors: b.15 
;head_inst: %249 = load i32, i32* @N, align 4
;tail_inst: %252 = sub i32 %251, 4
;terminate: br label %b.15
	%249 = load i32, i32* @N, align 4
	%250 = add i32 %249, 524288
	%251 = sub i32 %250, 524288
	%252 = sub i32 %251, 4
	br label %b.15
b.14:
;precursors: b.12 
;successors: b.15 
;head_inst: %253 = call i32 @fun_block()
;tail_inst: %260 = call i32 @fun_bblock()
;terminate: br label %b.15
	%253 = call i32 @fun_block()
	%254 = call i32 @fun_block()
	%255 = call i32 @fun_block()
	%256 = call i32 @fun_block()
	%257 = call i32 @fun_wpppp()
	%258 = call i32 @fun_wpppp()
	%259 = call i32 @fun_bblock()
	%260 = call i32 @fun_bblock()
	br label %b.15
b.15:
;precursors: b.13 b.14 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 %261
	%261 = phi i32 [ %252, %b.13 ], [ %260, %b.14 ]
	ret i32 %261
}
define i32 @fun_wpppp(){
b.0:
;precursors: 
;successors: 
;head_inst: %0 = load i32, i32* @w, align 4
;tail_inst: store i32 %223, i32* @w, align 4
;terminate: ret i32 %223
	%0 = load i32, i32* @w, align 4
	%1 = add i32 %0, 1
	store i32 %1, i32* @w, align 4
	%2 = load i32, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	%4 = load i32, i32* @w, align 4
	%5 = add i32 %4, 1
	store i32 %5, i32* @w, align 4
	%6 = load i32, i32* @w, align 4
	%7 = add i32 %6, 1
	store i32 %7, i32* @w, align 4
	%8 = load i32, i32* @w, align 4
	%9 = add i32 %8, 1
	store i32 %9, i32* @w, align 4
	%10 = load i32, i32* @w, align 4
	%11 = add i32 %10, 1
	store i32 %11, i32* @w, align 4
	%12 = load i32, i32* @w, align 4
	%13 = add i32 %12, 1
	store i32 %13, i32* @w, align 4
	%14 = load i32, i32* @w, align 4
	%15 = add i32 %14, 1
	store i32 %15, i32* @w, align 4
	%16 = load i32, i32* @w, align 4
	%17 = add i32 %16, 1
	store i32 %17, i32* @w, align 4
	%18 = load i32, i32* @w, align 4
	%19 = add i32 %18, 1
	store i32 %19, i32* @w, align 4
	%20 = load i32, i32* @w, align 4
	%21 = add i32 %20, 1
	store i32 %21, i32* @w, align 4
	%22 = load i32, i32* @w, align 4
	%23 = add i32 %22, 1
	store i32 %23, i32* @w, align 4
	%24 = load i32, i32* @w, align 4
	%25 = add i32 %24, 1
	store i32 %25, i32* @w, align 4
	%26 = load i32, i32* @w, align 4
	%27 = add i32 %26, 1
	store i32 %27, i32* @w, align 4
	%28 = load i32, i32* @w, align 4
	%29 = add i32 %28, 1
	store i32 %29, i32* @w, align 4
	%30 = load i32, i32* @w, align 4
	%31 = add i32 %30, 1
	store i32 %31, i32* @w, align 4
	%32 = load i32, i32* @w, align 4
	%33 = add i32 %32, 1
	store i32 %33, i32* @w, align 4
	%34 = load i32, i32* @w, align 4
	%35 = add i32 %34, 1
	store i32 %35, i32* @w, align 4
	%36 = load i32, i32* @w, align 4
	%37 = add i32 %36, 1
	store i32 %37, i32* @w, align 4
	%38 = load i32, i32* @w, align 4
	%39 = add i32 %38, 1
	store i32 %39, i32* @w, align 4
	%40 = load i32, i32* @w, align 4
	%41 = add i32 %40, 1
	store i32 %41, i32* @w, align 4
	%42 = load i32, i32* @w, align 4
	%43 = add i32 %42, 1
	store i32 %43, i32* @w, align 4
	%44 = load i32, i32* @w, align 4
	%45 = add i32 %44, 1
	store i32 %45, i32* @w, align 4
	%46 = load i32, i32* @w, align 4
	%47 = add i32 %46, 1
	store i32 %47, i32* @w, align 4
	%48 = load i32, i32* @w, align 4
	%49 = add i32 %48, 1
	store i32 %49, i32* @w, align 4
	%50 = load i32, i32* @w, align 4
	%51 = add i32 %50, 1
	store i32 %51, i32* @w, align 4
	%52 = load i32, i32* @w, align 4
	%53 = add i32 %52, 1
	store i32 %53, i32* @w, align 4
	%54 = load i32, i32* @w, align 4
	%55 = add i32 %54, 1
	store i32 %55, i32* @w, align 4
	%56 = load i32, i32* @w, align 4
	%57 = add i32 %56, 1
	store i32 %57, i32* @w, align 4
	%58 = load i32, i32* @w, align 4
	%59 = add i32 %58, 1
	store i32 %59, i32* @w, align 4
	%60 = load i32, i32* @w, align 4
	%61 = add i32 %60, 1
	store i32 %61, i32* @w, align 4
	%62 = load i32, i32* @w, align 4
	%63 = add i32 %62, 1
	store i32 %63, i32* @w, align 4
	%64 = load i32, i32* @w, align 4
	%65 = add i32 %64, 1
	store i32 %65, i32* @w, align 4
	%66 = load i32, i32* @w, align 4
	%67 = add i32 %66, 1
	store i32 %67, i32* @w, align 4
	%68 = load i32, i32* @w, align 4
	%69 = add i32 %68, 1
	store i32 %69, i32* @w, align 4
	%70 = load i32, i32* @w, align 4
	%71 = add i32 %70, 1
	store i32 %71, i32* @w, align 4
	%72 = load i32, i32* @w, align 4
	%73 = add i32 %72, 1
	store i32 %73, i32* @w, align 4
	%74 = load i32, i32* @w, align 4
	%75 = add i32 %74, 1
	store i32 %75, i32* @w, align 4
	%76 = load i32, i32* @w, align 4
	%77 = add i32 %76, 1
	store i32 %77, i32* @w, align 4
	%78 = load i32, i32* @w, align 4
	%79 = add i32 %78, 1
	store i32 %79, i32* @w, align 4
	%80 = load i32, i32* @w, align 4
	%81 = add i32 %80, 1
	store i32 %81, i32* @w, align 4
	%82 = load i32, i32* @w, align 4
	%83 = add i32 %82, 1
	store i32 %83, i32* @w, align 4
	%84 = load i32, i32* @w, align 4
	%85 = add i32 %84, 1
	store i32 %85, i32* @w, align 4
	%86 = load i32, i32* @w, align 4
	%87 = add i32 %86, 1
	store i32 %87, i32* @w, align 4
	%88 = load i32, i32* @w, align 4
	%89 = add i32 %88, 1
	store i32 %89, i32* @w, align 4
	%90 = load i32, i32* @w, align 4
	%91 = add i32 %90, 1
	store i32 %91, i32* @w, align 4
	%92 = load i32, i32* @w, align 4
	%93 = add i32 %92, 1
	store i32 %93, i32* @w, align 4
	%94 = load i32, i32* @w, align 4
	%95 = add i32 %94, 1
	store i32 %95, i32* @w, align 4
	%96 = load i32, i32* @w, align 4
	%97 = add i32 %96, 1
	store i32 %97, i32* @w, align 4
	%98 = load i32, i32* @w, align 4
	%99 = add i32 %98, 1
	store i32 %99, i32* @w, align 4
	%100 = load i32, i32* @w, align 4
	%101 = add i32 %100, 1
	store i32 %101, i32* @w, align 4
	%102 = load i32, i32* @w, align 4
	%103 = add i32 %102, 1
	store i32 %103, i32* @w, align 4
	%104 = load i32, i32* @w, align 4
	%105 = add i32 %104, 1
	store i32 %105, i32* @w, align 4
	%106 = load i32, i32* @w, align 4
	%107 = add i32 %106, 1
	store i32 %107, i32* @w, align 4
	%108 = load i32, i32* @w, align 4
	%109 = add i32 %108, 1
	store i32 %109, i32* @w, align 4
	%110 = load i32, i32* @w, align 4
	%111 = add i32 %110, 1
	store i32 %111, i32* @w, align 4
	%112 = load i32, i32* @w, align 4
	%113 = add i32 %112, 1
	store i32 %113, i32* @w, align 4
	%114 = load i32, i32* @w, align 4
	%115 = add i32 %114, 1
	store i32 %115, i32* @w, align 4
	%116 = load i32, i32* @w, align 4
	%117 = add i32 %116, 1
	store i32 %117, i32* @w, align 4
	%118 = load i32, i32* @w, align 4
	%119 = add i32 %118, 1
	store i32 %119, i32* @w, align 4
	%120 = load i32, i32* @w, align 4
	%121 = add i32 %120, 1
	store i32 %121, i32* @w, align 4
	%122 = load i32, i32* @w, align 4
	%123 = add i32 %122, 1
	store i32 %123, i32* @w, align 4
	%124 = load i32, i32* @w, align 4
	%125 = add i32 %124, 1
	store i32 %125, i32* @w, align 4
	%126 = load i32, i32* @w, align 4
	%127 = add i32 %126, 1
	store i32 %127, i32* @w, align 4
	%128 = load i32, i32* @w, align 4
	%129 = add i32 %128, 1
	store i32 %129, i32* @w, align 4
	%130 = load i32, i32* @w, align 4
	%131 = add i32 %130, 1
	store i32 %131, i32* @w, align 4
	%132 = load i32, i32* @w, align 4
	%133 = add i32 %132, 1
	store i32 %133, i32* @w, align 4
	%134 = load i32, i32* @w, align 4
	%135 = add i32 %134, 1
	store i32 %135, i32* @w, align 4
	%136 = load i32, i32* @w, align 4
	%137 = add i32 %136, 1
	store i32 %137, i32* @w, align 4
	%138 = load i32, i32* @w, align 4
	%139 = add i32 %138, 1
	store i32 %139, i32* @w, align 4
	%140 = load i32, i32* @w, align 4
	%141 = add i32 %140, 1
	store i32 %141, i32* @w, align 4
	%142 = load i32, i32* @w, align 4
	%143 = add i32 %142, 1
	store i32 %143, i32* @w, align 4
	%144 = load i32, i32* @w, align 4
	%145 = add i32 %144, 1
	store i32 %145, i32* @w, align 4
	%146 = load i32, i32* @w, align 4
	%147 = add i32 %146, 1
	store i32 %147, i32* @w, align 4
	%148 = load i32, i32* @w, align 4
	%149 = add i32 %148, 1
	store i32 %149, i32* @w, align 4
	%150 = load i32, i32* @w, align 4
	%151 = add i32 %150, 1
	store i32 %151, i32* @w, align 4
	%152 = load i32, i32* @w, align 4
	%153 = add i32 %152, 1
	store i32 %153, i32* @w, align 4
	%154 = load i32, i32* @w, align 4
	%155 = add i32 %154, 1
	store i32 %155, i32* @w, align 4
	%156 = load i32, i32* @w, align 4
	%157 = add i32 %156, 1
	store i32 %157, i32* @w, align 4
	%158 = load i32, i32* @w, align 4
	%159 = add i32 %158, 1
	store i32 %159, i32* @w, align 4
	%160 = load i32, i32* @w, align 4
	%161 = add i32 %160, 1
	store i32 %161, i32* @w, align 4
	%162 = load i32, i32* @w, align 4
	%163 = add i32 %162, 1
	store i32 %163, i32* @w, align 4
	%164 = load i32, i32* @w, align 4
	%165 = add i32 %164, 1
	store i32 %165, i32* @w, align 4
	%166 = load i32, i32* @w, align 4
	%167 = add i32 %166, 1
	store i32 %167, i32* @w, align 4
	%168 = load i32, i32* @w, align 4
	%169 = add i32 %168, 1
	store i32 %169, i32* @w, align 4
	%170 = load i32, i32* @w, align 4
	%171 = add i32 %170, 1
	store i32 %171, i32* @w, align 4
	%172 = load i32, i32* @w, align 4
	%173 = add i32 %172, 1
	store i32 %173, i32* @w, align 4
	%174 = load i32, i32* @w, align 4
	%175 = add i32 %174, 1
	store i32 %175, i32* @w, align 4
	%176 = load i32, i32* @w, align 4
	%177 = add i32 %176, 1
	store i32 %177, i32* @w, align 4
	%178 = load i32, i32* @w, align 4
	%179 = add i32 %178, 1
	store i32 %179, i32* @w, align 4
	%180 = load i32, i32* @w, align 4
	%181 = add i32 %180, 1
	store i32 %181, i32* @w, align 4
	%182 = load i32, i32* @w, align 4
	%183 = add i32 %182, 1
	store i32 %183, i32* @w, align 4
	%184 = load i32, i32* @w, align 4
	%185 = add i32 %184, 1
	store i32 %185, i32* @w, align 4
	%186 = load i32, i32* @w, align 4
	%187 = add i32 %186, 1
	store i32 %187, i32* @w, align 4
	%188 = load i32, i32* @w, align 4
	%189 = add i32 %188, 1
	store i32 %189, i32* @w, align 4
	%190 = load i32, i32* @w, align 4
	%191 = add i32 %190, 1
	store i32 %191, i32* @w, align 4
	%192 = load i32, i32* @w, align 4
	%193 = add i32 %192, 1
	store i32 %193, i32* @w, align 4
	%194 = load i32, i32* @w, align 4
	%195 = add i32 %194, 1
	store i32 %195, i32* @w, align 4
	%196 = load i32, i32* @w, align 4
	%197 = add i32 %196, 1
	store i32 %197, i32* @w, align 4
	%198 = load i32, i32* @w, align 4
	%199 = add i32 %198, 1
	store i32 %199, i32* @w, align 4
	%200 = load i32, i32* @w, align 4
	%201 = add i32 %200, 1
	store i32 %201, i32* @w, align 4
	%202 = load i32, i32* @w, align 4
	%203 = add i32 %202, 1
	store i32 %203, i32* @w, align 4
	%204 = load i32, i32* @w, align 4
	%205 = add i32 %204, 1
	store i32 %205, i32* @w, align 4
	%206 = load i32, i32* @w, align 4
	%207 = add i32 %206, 1
	store i32 %207, i32* @w, align 4
	%208 = load i32, i32* @w, align 4
	%209 = add i32 %208, 1
	store i32 %209, i32* @w, align 4
	%210 = load i32, i32* @w, align 4
	%211 = add i32 %210, 1
	store i32 %211, i32* @w, align 4
	%212 = load i32, i32* @w, align 4
	%213 = add i32 %212, 1
	store i32 %213, i32* @w, align 4
	%214 = load i32, i32* @w, align 4
	%215 = add i32 %214, 1
	store i32 %215, i32* @w, align 4
	%216 = load i32, i32* @w, align 4
	%217 = add i32 %216, 1
	store i32 %217, i32* @w, align 4
	%218 = load i32, i32* @w, align 4
	%219 = add i32 %218, 1
	store i32 %219, i32* @w, align 4
	%220 = load i32, i32* @w, align 4
	%221 = add i32 %220, 1
	store i32 %221, i32* @w, align 4
	%222 = load i32, i32* @w, align 4
	%223 = add i32 %222, 1
	store i32 %223, i32* @w, align 4
	ret i32 %223
}
define i32 @fun_add8192(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 8192
;tail_inst: %1 = add i32 %0, 8192
;terminate: ret i32 %1
	%1 = add i32 %0, 8192
	ret i32 %1
}
define i32 @fun_sanity_check(){
b.0:
;precursors: 
;successors: b.1 
;head_inst: null
;tail_inst: null
;terminate: br label %b.1
	br label %b.1
b.1:
;precursors: b.11 b.0 
;successors: b.2 
;head_inst: %4 = ashr i32 %1, 1
;tail_inst: %4 = ashr i32 %1, 1
;terminate: br label %b.2
	%0 = phi i32 [ 65536, %b.0 ], [ %4, %b.11 ]
	%1 = phi i32 [ 3, %b.0 ], [ %20, %b.11 ]
	%2 = phi i32 [ 65536, %b.0 ], [ %10, %b.11 ]
	%3 = phi i32 [ 65536, %b.0 ], [ %5, %b.11 ]
	%4 = ashr i32 %1, 1
	br label %b.2
b.2:
;precursors: b.9 b.1 
;successors: b.3 b.4 
;head_inst: %6 = icmp slt i32 %5, %4
;tail_inst: %6 = icmp slt i32 %5, %4
;terminate: br i1 %6, label %b.3, label %b.4
	%5 = phi i32 [ 2, %b.1 ], [ %19, %b.9 ]
	%6 = icmp slt i32 %5, %4
	br i1 %6, label %b.3, label %b.4
b.3:
;precursors: b.2 
;successors: b.5 b.6 
;head_inst: %7 = srem i32 %1, %5
;tail_inst: %8 = icmp eq i32 %7, 0
;terminate: br i1 %8, label %b.5, label %b.6
	%7 = srem i32 %1, %5
	%8 = icmp eq i32 %7, 0
	br i1 %8, label %b.5, label %b.6
b.4:
;precursors: b.2 b.5 
;successors: b.7 b.8 
;head_inst: %11 = icmp sgt i32 %9, 0
;tail_inst: %11 = icmp sgt i32 %9, 0
;terminate: br i1 %11, label %b.7, label %b.8
	%9 = phi i32 [ %1, %b.2 ], [ %12, %b.5 ]
	%10 = phi i32 [ 1, %b.2 ], [ 0, %b.5 ]
	%11 = icmp sgt i32 %9, 0
	br i1 %11, label %b.7, label %b.8
b.5:
;precursors: b.3 
;successors: b.4 
;head_inst: %12 = add i32 %1, 1
;tail_inst: %12 = add i32 %1, 1
;terminate: br label %b.4
	%12 = add i32 %1, 1
	br label %b.4
b.6:
;precursors: b.3 
;successors: b.9 
;head_inst: null
;tail_inst: null
;terminate: br label %b.9
	br label %b.9
b.7:
;precursors: b.4 
;successors: b.10 b.8 
;head_inst: %13 = add i32 %9, %10
;tail_inst: %15 = icmp eq i32 %14, 0
;terminate: br i1 %15, label %b.10, label %b.8
	%13 = add i32 %9, %10
	%14 = srem i32 %13, 9
	%15 = icmp eq i32 %14, 0
	br i1 %15, label %b.10, label %b.8
b.8:
;precursors: b.4 b.7 
;successors: b.11 
;head_inst: %16 = load i32, i32* @N, align 4
;tail_inst: %18 = add i32 %9, %10
;terminate: br label %b.11
	%16 = load i32, i32* @N, align 4
	%17 = add i32 %16, %10
	store i32 %17, i32* @N, align 4
	%18 = add i32 %9, %10
	br label %b.11
b.9:
;precursors: b.6 
;successors: b.2 
;head_inst: %19 = add i32 %5, 1
;tail_inst: %19 = add i32 %5, 1
;terminate: br label %b.2
	%19 = add i32 %5, 1
	br label %b.2
b.10:
;precursors: b.7 
;successors: b.12 
;head_inst: null
;tail_inst: null
;terminate: br label %b.12
	br label %b.12
b.11:
;precursors: b.8 
;successors: b.1 
;head_inst: %20 = add i32 %18, 1
;tail_inst: %20 = add i32 %18, 1
;terminate: br label %b.1
	%20 = add i32 %18, 1
	br label %b.1
b.12:
;precursors: b.10 
;successors: b.13 b.14 
;head_inst: %21 = load i32, i32* @w, align 4
;tail_inst: %248 = icmp eq i32 %247, 0
;terminate: br i1 %248, label %b.13, label %b.14
	%21 = load i32, i32* @w, align 4
	%22 = add i32 %21, 1
	store i32 %22, i32* @w, align 4
	%23 = load i32, i32* @w, align 4
	%24 = add i32 %23, 1
	store i32 %24, i32* @w, align 4
	%25 = load i32, i32* @w, align 4
	%26 = add i32 %25, 1
	store i32 %26, i32* @w, align 4
	%27 = load i32, i32* @w, align 4
	%28 = add i32 %27, 1
	store i32 %28, i32* @w, align 4
	%29 = load i32, i32* @w, align 4
	%30 = add i32 %29, 1
	store i32 %30, i32* @w, align 4
	%31 = load i32, i32* @w, align 4
	%32 = add i32 %31, 1
	store i32 %32, i32* @w, align 4
	%33 = load i32, i32* @w, align 4
	%34 = add i32 %33, 1
	store i32 %34, i32* @w, align 4
	%35 = load i32, i32* @w, align 4
	%36 = add i32 %35, 1
	store i32 %36, i32* @w, align 4
	%37 = load i32, i32* @w, align 4
	%38 = add i32 %37, 1
	store i32 %38, i32* @w, align 4
	%39 = load i32, i32* @w, align 4
	%40 = add i32 %39, 1
	store i32 %40, i32* @w, align 4
	%41 = load i32, i32* @w, align 4
	%42 = add i32 %41, 1
	store i32 %42, i32* @w, align 4
	%43 = load i32, i32* @w, align 4
	%44 = add i32 %43, 1
	store i32 %44, i32* @w, align 4
	%45 = load i32, i32* @w, align 4
	%46 = add i32 %45, 1
	store i32 %46, i32* @w, align 4
	%47 = load i32, i32* @w, align 4
	%48 = add i32 %47, 1
	store i32 %48, i32* @w, align 4
	%49 = load i32, i32* @w, align 4
	%50 = add i32 %49, 1
	store i32 %50, i32* @w, align 4
	%51 = load i32, i32* @w, align 4
	%52 = add i32 %51, 1
	store i32 %52, i32* @w, align 4
	%53 = load i32, i32* @w, align 4
	%54 = add i32 %53, 1
	store i32 %54, i32* @w, align 4
	%55 = load i32, i32* @w, align 4
	%56 = add i32 %55, 1
	store i32 %56, i32* @w, align 4
	%57 = load i32, i32* @w, align 4
	%58 = add i32 %57, 1
	store i32 %58, i32* @w, align 4
	%59 = load i32, i32* @w, align 4
	%60 = add i32 %59, 1
	store i32 %60, i32* @w, align 4
	%61 = load i32, i32* @w, align 4
	%62 = add i32 %61, 1
	store i32 %62, i32* @w, align 4
	%63 = load i32, i32* @w, align 4
	%64 = add i32 %63, 1
	store i32 %64, i32* @w, align 4
	%65 = load i32, i32* @w, align 4
	%66 = add i32 %65, 1
	store i32 %66, i32* @w, align 4
	%67 = load i32, i32* @w, align 4
	%68 = add i32 %67, 1
	store i32 %68, i32* @w, align 4
	%69 = load i32, i32* @w, align 4
	%70 = add i32 %69, 1
	store i32 %70, i32* @w, align 4
	%71 = load i32, i32* @w, align 4
	%72 = add i32 %71, 1
	store i32 %72, i32* @w, align 4
	%73 = load i32, i32* @w, align 4
	%74 = add i32 %73, 1
	store i32 %74, i32* @w, align 4
	%75 = load i32, i32* @w, align 4
	%76 = add i32 %75, 1
	store i32 %76, i32* @w, align 4
	%77 = load i32, i32* @w, align 4
	%78 = add i32 %77, 1
	store i32 %78, i32* @w, align 4
	%79 = load i32, i32* @w, align 4
	%80 = add i32 %79, 1
	store i32 %80, i32* @w, align 4
	%81 = load i32, i32* @w, align 4
	%82 = add i32 %81, 1
	store i32 %82, i32* @w, align 4
	%83 = load i32, i32* @w, align 4
	%84 = add i32 %83, 1
	store i32 %84, i32* @w, align 4
	%85 = load i32, i32* @w, align 4
	%86 = add i32 %85, 1
	store i32 %86, i32* @w, align 4
	%87 = load i32, i32* @w, align 4
	%88 = add i32 %87, 1
	store i32 %88, i32* @w, align 4
	%89 = load i32, i32* @w, align 4
	%90 = add i32 %89, 1
	store i32 %90, i32* @w, align 4
	%91 = load i32, i32* @w, align 4
	%92 = add i32 %91, 1
	store i32 %92, i32* @w, align 4
	%93 = load i32, i32* @w, align 4
	%94 = add i32 %93, 1
	store i32 %94, i32* @w, align 4
	%95 = load i32, i32* @w, align 4
	%96 = add i32 %95, 1
	store i32 %96, i32* @w, align 4
	%97 = load i32, i32* @w, align 4
	%98 = add i32 %97, 1
	store i32 %98, i32* @w, align 4
	%99 = load i32, i32* @w, align 4
	%100 = add i32 %99, 1
	store i32 %100, i32* @w, align 4
	%101 = load i32, i32* @w, align 4
	%102 = add i32 %101, 1
	store i32 %102, i32* @w, align 4
	%103 = load i32, i32* @w, align 4
	%104 = add i32 %103, 1
	store i32 %104, i32* @w, align 4
	%105 = load i32, i32* @w, align 4
	%106 = add i32 %105, 1
	store i32 %106, i32* @w, align 4
	%107 = load i32, i32* @w, align 4
	%108 = add i32 %107, 1
	store i32 %108, i32* @w, align 4
	%109 = load i32, i32* @w, align 4
	%110 = add i32 %109, 1
	store i32 %110, i32* @w, align 4
	%111 = load i32, i32* @w, align 4
	%112 = add i32 %111, 1
	store i32 %112, i32* @w, align 4
	%113 = load i32, i32* @w, align 4
	%114 = add i32 %113, 1
	store i32 %114, i32* @w, align 4
	%115 = load i32, i32* @w, align 4
	%116 = add i32 %115, 1
	store i32 %116, i32* @w, align 4
	%117 = load i32, i32* @w, align 4
	%118 = add i32 %117, 1
	store i32 %118, i32* @w, align 4
	%119 = load i32, i32* @w, align 4
	%120 = add i32 %119, 1
	store i32 %120, i32* @w, align 4
	%121 = load i32, i32* @w, align 4
	%122 = add i32 %121, 1
	store i32 %122, i32* @w, align 4
	%123 = load i32, i32* @w, align 4
	%124 = add i32 %123, 1
	store i32 %124, i32* @w, align 4
	%125 = load i32, i32* @w, align 4
	%126 = add i32 %125, 1
	store i32 %126, i32* @w, align 4
	%127 = load i32, i32* @w, align 4
	%128 = add i32 %127, 1
	store i32 %128, i32* @w, align 4
	%129 = load i32, i32* @w, align 4
	%130 = add i32 %129, 1
	store i32 %130, i32* @w, align 4
	%131 = load i32, i32* @w, align 4
	%132 = add i32 %131, 1
	store i32 %132, i32* @w, align 4
	%133 = load i32, i32* @w, align 4
	%134 = add i32 %133, 1
	store i32 %134, i32* @w, align 4
	%135 = load i32, i32* @w, align 4
	%136 = add i32 %135, 1
	store i32 %136, i32* @w, align 4
	%137 = load i32, i32* @w, align 4
	%138 = add i32 %137, 1
	store i32 %138, i32* @w, align 4
	%139 = load i32, i32* @w, align 4
	%140 = add i32 %139, 1
	store i32 %140, i32* @w, align 4
	%141 = load i32, i32* @w, align 4
	%142 = add i32 %141, 1
	store i32 %142, i32* @w, align 4
	%143 = load i32, i32* @w, align 4
	%144 = add i32 %143, 1
	store i32 %144, i32* @w, align 4
	%145 = load i32, i32* @w, align 4
	%146 = add i32 %145, 1
	store i32 %146, i32* @w, align 4
	%147 = load i32, i32* @w, align 4
	%148 = add i32 %147, 1
	store i32 %148, i32* @w, align 4
	%149 = load i32, i32* @w, align 4
	%150 = add i32 %149, 1
	store i32 %150, i32* @w, align 4
	%151 = load i32, i32* @w, align 4
	%152 = add i32 %151, 1
	store i32 %152, i32* @w, align 4
	%153 = load i32, i32* @w, align 4
	%154 = add i32 %153, 1
	store i32 %154, i32* @w, align 4
	%155 = load i32, i32* @w, align 4
	%156 = add i32 %155, 1
	store i32 %156, i32* @w, align 4
	%157 = load i32, i32* @w, align 4
	%158 = add i32 %157, 1
	store i32 %158, i32* @w, align 4
	%159 = load i32, i32* @w, align 4
	%160 = add i32 %159, 1
	store i32 %160, i32* @w, align 4
	%161 = load i32, i32* @w, align 4
	%162 = add i32 %161, 1
	store i32 %162, i32* @w, align 4
	%163 = load i32, i32* @w, align 4
	%164 = add i32 %163, 1
	store i32 %164, i32* @w, align 4
	%165 = load i32, i32* @w, align 4
	%166 = add i32 %165, 1
	store i32 %166, i32* @w, align 4
	%167 = load i32, i32* @w, align 4
	%168 = add i32 %167, 1
	store i32 %168, i32* @w, align 4
	%169 = load i32, i32* @w, align 4
	%170 = add i32 %169, 1
	store i32 %170, i32* @w, align 4
	%171 = load i32, i32* @w, align 4
	%172 = add i32 %171, 1
	store i32 %172, i32* @w, align 4
	%173 = load i32, i32* @w, align 4
	%174 = add i32 %173, 1
	store i32 %174, i32* @w, align 4
	%175 = load i32, i32* @w, align 4
	%176 = add i32 %175, 1
	store i32 %176, i32* @w, align 4
	%177 = load i32, i32* @w, align 4
	%178 = add i32 %177, 1
	store i32 %178, i32* @w, align 4
	%179 = load i32, i32* @w, align 4
	%180 = add i32 %179, 1
	store i32 %180, i32* @w, align 4
	%181 = load i32, i32* @w, align 4
	%182 = add i32 %181, 1
	store i32 %182, i32* @w, align 4
	%183 = load i32, i32* @w, align 4
	%184 = add i32 %183, 1
	store i32 %184, i32* @w, align 4
	%185 = load i32, i32* @w, align 4
	%186 = add i32 %185, 1
	store i32 %186, i32* @w, align 4
	%187 = load i32, i32* @w, align 4
	%188 = add i32 %187, 1
	store i32 %188, i32* @w, align 4
	%189 = load i32, i32* @w, align 4
	%190 = add i32 %189, 1
	store i32 %190, i32* @w, align 4
	%191 = load i32, i32* @w, align 4
	%192 = add i32 %191, 1
	store i32 %192, i32* @w, align 4
	%193 = load i32, i32* @w, align 4
	%194 = add i32 %193, 1
	store i32 %194, i32* @w, align 4
	%195 = load i32, i32* @w, align 4
	%196 = add i32 %195, 1
	store i32 %196, i32* @w, align 4
	%197 = load i32, i32* @w, align 4
	%198 = add i32 %197, 1
	store i32 %198, i32* @w, align 4
	%199 = load i32, i32* @w, align 4
	%200 = add i32 %199, 1
	store i32 %200, i32* @w, align 4
	%201 = load i32, i32* @w, align 4
	%202 = add i32 %201, 1
	store i32 %202, i32* @w, align 4
	%203 = load i32, i32* @w, align 4
	%204 = add i32 %203, 1
	store i32 %204, i32* @w, align 4
	%205 = load i32, i32* @w, align 4
	%206 = add i32 %205, 1
	store i32 %206, i32* @w, align 4
	%207 = load i32, i32* @w, align 4
	%208 = add i32 %207, 1
	store i32 %208, i32* @w, align 4
	%209 = load i32, i32* @w, align 4
	%210 = add i32 %209, 1
	store i32 %210, i32* @w, align 4
	%211 = load i32, i32* @w, align 4
	%212 = add i32 %211, 1
	store i32 %212, i32* @w, align 4
	%213 = load i32, i32* @w, align 4
	%214 = add i32 %213, 1
	store i32 %214, i32* @w, align 4
	%215 = load i32, i32* @w, align 4
	%216 = add i32 %215, 1
	store i32 %216, i32* @w, align 4
	%217 = load i32, i32* @w, align 4
	%218 = add i32 %217, 1
	store i32 %218, i32* @w, align 4
	%219 = load i32, i32* @w, align 4
	%220 = add i32 %219, 1
	store i32 %220, i32* @w, align 4
	%221 = load i32, i32* @w, align 4
	%222 = add i32 %221, 1
	store i32 %222, i32* @w, align 4
	%223 = load i32, i32* @w, align 4
	%224 = add i32 %223, 1
	store i32 %224, i32* @w, align 4
	%225 = load i32, i32* @w, align 4
	%226 = add i32 %225, 1
	store i32 %226, i32* @w, align 4
	%227 = load i32, i32* @w, align 4
	%228 = add i32 %227, 1
	store i32 %228, i32* @w, align 4
	%229 = load i32, i32* @w, align 4
	%230 = add i32 %229, 1
	store i32 %230, i32* @w, align 4
	%231 = load i32, i32* @w, align 4
	%232 = add i32 %231, 1
	store i32 %232, i32* @w, align 4
	%233 = load i32, i32* @w, align 4
	%234 = add i32 %233, 1
	store i32 %234, i32* @w, align 4
	%235 = load i32, i32* @w, align 4
	%236 = add i32 %235, 1
	store i32 %236, i32* @w, align 4
	%237 = load i32, i32* @w, align 4
	%238 = add i32 %237, 1
	store i32 %238, i32* @w, align 4
	%239 = load i32, i32* @w, align 4
	%240 = add i32 %239, 1
	store i32 %240, i32* @w, align 4
	%241 = load i32, i32* @w, align 4
	%242 = add i32 %241, 1
	store i32 %242, i32* @w, align 4
	%243 = load i32, i32* @w, align 4
	%244 = add i32 %243, 1
	store i32 %244, i32* @w, align 4
	%245 = load i32, i32* @N, align 4
	%246 = add i32 %245, %244
	%247 = srem i32 %246, 2
	%248 = icmp eq i32 %247, 0
	br i1 %248, label %b.13, label %b.14
b.13:
;precursors: b.12 
;successors: b.15 
;head_inst: %249 = load i32, i32* @N, align 4
;tail_inst: %252 = sub i32 %251, 4
;terminate: br label %b.15
	%249 = load i32, i32* @N, align 4
	%250 = add i32 %249, 524288
	%251 = sub i32 %250, 524288
	%252 = sub i32 %251, 4
	br label %b.15
b.14:
;precursors: b.12 
;successors: b.15 
;head_inst: %253 = call i32 @fun_block()
;tail_inst: %263 = call i32 @fun_bblock()
;terminate: br label %b.15
	%253 = call i32 @fun_block()
	%254 = call i32 @fun_block()
	%255 = call i32 @fun_block()
	%256 = call i32 @fun_block()
	%257 = call i32 @fun_wpppp()
	%258 = call i32 @fun_wpppp()
	%259 = call i32 @fun_bblock()
	%260 = call i32 @fun_wpppp()
	%261 = call i32 @fun_wpppp()
	%262 = call i32 @fun_bblock()
	%263 = call i32 @fun_bblock()
	br label %b.15
b.15:
;precursors: b.13 b.14 
;successors: 
;head_inst: %265 = add i32 %264, 1
;tail_inst: %265 = add i32 %264, 1
;terminate: ret i32 %265
	%264 = phi i32 [ %252, %b.13 ], [ %263, %b.14 ]
	%265 = add i32 %264, 1
	ret i32 %265
}
define i32 @fun_add4096(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 4096
;tail_inst: %1 = add i32 %0, 4096
;terminate: ret i32 %1
	%1 = add i32 %0, 4096
	ret i32 %1
}
define i32 @fun_add16384(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 16384
;tail_inst: %1 = add i32 %0, 16384
;terminate: ret i32 %1
	%1 = add i32 %0, 16384
	ret i32 %1
}
define i32 @fun_add64(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 64
;tail_inst: %1 = add i32 %0, 64
;terminate: ret i32 %1
	%1 = add i32 %0, 64
	ret i32 %1
}
define i32 @fun_add256(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 256
;tail_inst: %1 = add i32 %0, 256
;terminate: ret i32 %1
	%1 = add i32 %0, 256
	ret i32 %1
}
define i32 @fun_add1024(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 1024
;tail_inst: %1 = add i32 %0, 1024
;terminate: ret i32 %1
	%1 = add i32 %0, 1024
	ret i32 %1
}
define i32 @fun_add512(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 512
;tail_inst: %1 = add i32 %0, 512
;terminate: ret i32 %1
	%1 = add i32 %0, 512
	ret i32 %1
}
define i32 @fun_bblock(){
b.0:
;precursors: 
;successors: 
;head_inst: %0 = call i32 @fun_wpppp()
;tail_inst: %12 = call i32 @fun_bblock()
;terminate: ret i32 %12
	%0 = call i32 @fun_wpppp()
	%1 = call i32 @fun_wpppp()
	%2 = call i32 @fun_wpppp()
	%3 = call i32 @fun_wpppp()
	%4 = call i32 @fun_bblock()
	%5 = call i32 @fun_wpppp()
	%6 = call i32 @fun_wpppp()
	%7 = call i32 @fun_bblock()
	%8 = call i32 @fun_bblock()
	%9 = call i32 @fun_wpppp()
	%10 = call i32 @fun_wpppp()
	%11 = call i32 @fun_bblock()
	%12 = call i32 @fun_bblock()
	ret i32 %12
}
define i32 @fun_wpp(){
b.0:
;precursors: 
;successors: 
;head_inst: %0 = load i32, i32* @w, align 4
;tail_inst: store i32 %3, i32* @w, align 4
;terminate: ret i32 %3
	%0 = load i32, i32* @w, align 4
	%1 = add i32 %0, 1
	store i32 %1, i32* @w, align 4
	%2 = load i32, i32* @w, align 4
	%3 = add i32 %2, 1
	store i32 %3, i32* @w, align 4
	ret i32 %3
}
define i32 @fun_add32768(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 32768
;tail_inst: %1 = add i32 %0, 32768
;terminate: ret i32 %1
	%1 = add i32 %0, 32768
	ret i32 %1
}
define void @__init(){
b.0:
;precursors: 
;successors: 
;head_inst: store i32 0, i32* @w, align 4
;tail_inst: store i32 1, i32* @N, align 4
;terminate: ret void
	store i32 0, i32* @w, align 4
	store i32 1, i32* @N, align 4
	ret void
}
define i32 @fun_add8(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 8
;tail_inst: %1 = add i32 %0, 8
;terminate: ret i32 %1
	%1 = add i32 %0, 8
	ret i32 %1
}
define i32 @fun_add16(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 16
;tail_inst: %1 = add i32 %0, 16
;terminate: ret i32 %1
	%1 = add i32 %0, 16
	ret i32 %1
}
define i32 @fun_add524288(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 524288
;tail_inst: %1 = add i32 %0, 524288
;terminate: ret i32 %1
	%1 = add i32 %0, 524288
	ret i32 %1
}
define i32 @fun_add4(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 4
;tail_inst: %1 = add i32 %0, 4
;terminate: ret i32 %1
	%1 = add i32 %0, 4
	ret i32 %1
}
define i32 @fun_add32(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 32
;tail_inst: %1 = add i32 %0, 32
;terminate: ret i32 %1
	%1 = add i32 %0, 32
	ret i32 %1
}
define i32 @fun_add131072(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 131072
;tail_inst: %1 = add i32 %0, 131072
;terminate: ret i32 %1
	%1 = add i32 %0, 131072
	ret i32 %1
}
define i32 @fun_add1(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 1
;tail_inst: %1 = add i32 %0, 1
;terminate: ret i32 %1
	%1 = add i32 %0, 1
	ret i32 %1
}
define i32 @fun_add2(i32 %0){
b.0:
;precursors: 
;successors: 
;head_inst: %1 = add i32 %0, 2
;tail_inst: %1 = add i32 %0, 2
;terminate: ret i32 %1
	%1 = add i32 %0, 2
	ret i32 %1
}
