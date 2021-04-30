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
%struct.taskSSA = type {i32}
%struct.taskConst = type {}
%struct.taskNTT = type {i32, i32, i32*, i32*, i32, i32, i32}
%struct.taskInline = type {i32}
%struct.taskStress = type {i32}
@cls_taskStress_con_0.0 = private unnamed_addr constant [4 x i8] c"wtf\00", align 1
define i32 @main(){
entry:
;precursors: 
;successors: while_cond_inline 
;head_inst: %malloc = call noalias i8* @malloc(i32 4)
;tail_inst: %this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
;terminate: br label %while_cond_inline
	%malloc = call noalias i8* @malloc(i32 4)
	%new_class_ptr = bitcast i8* %malloc to %struct.taskInline*
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	store i32 19260817, i32* %this.rng_seed_addr, align 4
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	%this.rng_seed_addr = getelementptr inbounds %struct.taskInline, %struct.taskInline* %new_class_ptr, i32 0, i32 0
	br label %while_cond_inline
while_cond_inline:
;precursors: entry rootReturn_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %pointee_this.rng_seed_addr = load i32, i32* %this.rng_seed_addr, align 4
;tail_inst: %cmp_sge = icmp sge i32 %binary_xor, 0
;terminate: br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%sum_addr_phi = phi i32 [ 0, %entry ], [ %binary_xor, %rootReturn_inline ]
	%pointee_this.rng_seed_addr = load i32, i32* %this.rng_seed_addr, align 4
	%binary_shl = shl i32 %pointee_this.rng_seed_addr, 13
	%binary_xor = xor i32 %pointee_this.rng_seed_addr, %binary_shl
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
if_then_inline_inline_inline:
;precursors: while_cond_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_ashr = ashr i32 %binary_xor, 17
;tail_inst: %binary_ashr = ashr i32 %binary_xor, 17
;terminate: br label %rootReturn_inline_inline_inline
	%binary_ashr = ashr i32 %binary_xor, 17
	br label %rootReturn_inline_inline_inline
else_then_inline_inline_inline:
;precursors: while_cond_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, -2147483648
;tail_inst: %binary_or = or i32 16384, %binary_ashr
;terminate: br label %rootReturn_inline_inline_inline
	%binary_xor = xor i32 %binary_xor, -2147483648
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 16384, %binary_ashr
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: if_then_inline_inline_inline else_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, %rootRet
;tail_inst: %cmp_sge = icmp sge i32 %binary_xor, 0
;terminate: br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline_inline ], [ %binary_or, %else_then_inline_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	store i32 %binary_xor, i32* %this.rng_seed_addr, align 4
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_and = and i32 %binary_and, 255
	%pointee_this.rng_seed_addr = load i32, i32* %this.rng_seed_addr, align 4
	%binary_shl = shl i32 %pointee_this.rng_seed_addr, 13
	%binary_xor = xor i32 %pointee_this.rng_seed_addr, %binary_shl
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
if_then_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_ashr = ashr i32 %binary_xor, 17
;tail_inst: %binary_ashr = ashr i32 %binary_xor, 17
;terminate: br label %rootReturn_inline_inline_inline
	%binary_ashr = ashr i32 %binary_xor, 17
	br label %rootReturn_inline_inline_inline
else_then_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, -2147483648
;tail_inst: %binary_or = or i32 16384, %binary_ashr
;terminate: br label %rootReturn_inline_inline_inline
	%binary_xor = xor i32 %binary_xor, -2147483648
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 16384, %binary_ashr
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline if_then_inline_inline_inline 
;successors: while_body_inline while_end_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, %rootRet
;tail_inst: %neq = icmp ne i32 %binary_and, %binary_and
;terminate: br i1 %neq, label %while_body_inline, label %while_end_inline
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline_inline ], [ %binary_or, %else_then_inline_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	store i32 %binary_xor, i32* %this.rng_seed_addr, align 4
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_and = and i32 %binary_and, 255
	%neq = icmp ne i32 %binary_and, %binary_and
	br i1 %neq, label %while_body_inline, label %while_end_inline
while_body_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %pointee_this.rng_seed_addr = load i32, i32* %this.rng_seed_addr, align 4
;tail_inst: %cmp_sge = icmp sge i32 %binary_xor, 0
;terminate: br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%pointee_this.rng_seed_addr = load i32, i32* %this.rng_seed_addr, align 4
	%binary_shl = shl i32 %pointee_this.rng_seed_addr, 13
	%binary_xor = xor i32 %pointee_this.rng_seed_addr, %binary_shl
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
while_end_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: if_then if_end 
;head_inst: %binary_xor = xor i32 %sum_addr_phi, 5647
;tail_inst: %neq = icmp ne i32 %binary_xor, 0
;terminate: br i1 %neq, label %if_then, label %if_end
	%binary_xor = xor i32 %sum_addr_phi, 5647
	%neq = icmp ne i32 %binary_xor, 0
	br i1 %neq, label %if_then, label %if_end
if_then_inline_inline_inline:
;precursors: while_body_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_ashr = ashr i32 %binary_xor, 17
;tail_inst: %binary_ashr = ashr i32 %binary_xor, 17
;terminate: br label %rootReturn_inline_inline_inline
	%binary_ashr = ashr i32 %binary_xor, 17
	br label %rootReturn_inline_inline_inline
else_then_inline_inline_inline:
;precursors: while_body_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, -2147483648
;tail_inst: %binary_or = or i32 16384, %binary_ashr
;terminate: br label %rootReturn_inline_inline_inline
	%binary_xor = xor i32 %binary_xor, -2147483648
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 16384, %binary_ashr
	br label %rootReturn_inline_inline_inline
if_then:
;precursors: while_end_inline 
;successors: rootReturn 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn
	br label %rootReturn
if_end:
;precursors: while_end_inline 
;successors: rootReturn 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn
	br label %rootReturn
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, %rootRet
;tail_inst: %cmp_sge = icmp sge i32 %binary_xor, 0
;terminate: br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline_inline ], [ %binary_or, %else_then_inline_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	store i32 %binary_xor, i32* %this.rng_seed_addr, align 4
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_add = add i32 %binary_and, 1
	%pointee_this.rng_seed_addr = load i32, i32* %this.rng_seed_addr, align 4
	%binary_shl = shl i32 %pointee_this.rng_seed_addr, 13
	%binary_xor = xor i32 %pointee_this.rng_seed_addr, %binary_shl
	%cmp_sge = icmp sge i32 %binary_xor, 0
	br i1 %cmp_sge, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
rootReturn:
;precursors: if_then if_end 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 %rootRet
	%rootRet = phi i32 [ -1, %if_then ], [ 0, %if_end ]
	ret i32 %rootRet
if_then_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_ashr = ashr i32 %binary_xor, 17
;tail_inst: %binary_ashr = ashr i32 %binary_xor, 17
;terminate: br label %rootReturn_inline_inline_inline
	%binary_ashr = ashr i32 %binary_xor, 17
	br label %rootReturn_inline_inline_inline
else_then_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, -2147483648
;tail_inst: %binary_or = or i32 16384, %binary_ashr
;terminate: br label %rootReturn_inline_inline_inline
	%binary_xor = xor i32 %binary_xor, -2147483648
	%binary_ashr = ashr i32 %binary_xor, 17
	%binary_or = or i32 16384, %binary_ashr
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: if_then_inline_inline_inline else_then_inline_inline_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_xor = xor i32 %binary_xor, %rootRet
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_add, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%rootRet = phi i32 [ %binary_ashr, %if_then_inline_inline_inline ], [ %binary_or, %else_then_inline_inline_inline ]
	%binary_xor = xor i32 %binary_xor, %rootRet
	%binary_shl = shl i32 %binary_xor, 5
	%binary_xor = xor i32 %binary_xor, %binary_shl
	store i32 %binary_xor, i32* %this.rng_seed_addr, align 4
	%binary_and = and i32 %binary_xor, 1073741823
	%binary_add = add i32 %binary_and, 1
	%cmp_sgt = icmp sgt i32 %binary_add, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
if_then_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_add, %binary_add
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_add, %binary_add
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: rootReturn_inline_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_add, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_add, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: while_cond_inline 
;head_inst: %binary_xor = xor i32 %sum_addr_phi, %rootRet
;tail_inst: %binary_xor = xor i32 %sum_addr_phi, %rootRet
;terminate: br label %while_cond_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_add, %else_then_inline ]
	%binary_xor = xor i32 %sum_addr_phi, %rootRet
	br label %while_cond_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_add, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %fun_cal_ret_val = call i32 @cls_taskInline_gcd(%struct.taskInline* %new_class_ptr, i32 %binary_srem, i32 %binary_srem)
;terminate: br label %rootReturn_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%fun_cal_ret_val = call i32 @cls_taskInline_gcd(%struct.taskInline* %new_class_ptr, i32 %binary_srem, i32 %binary_srem)
	br label %rootReturn_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
rootReturn_inline:
;precursors: if_then_inline else_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %fun_cal_ret_val, %if_then_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
}
define i32 @cls_taskInline_gcd(%struct.taskInline* %this, i32 %param_x, i32 %param_y){
entry:
;precursors: 
;successors: if_then else_then 
;head_inst: %cmp_sgt = icmp sgt i32 %param_y, 0
;tail_inst: %cmp_sgt = icmp sgt i32 %param_y, 0
;terminate: br i1 %cmp_sgt, label %if_then, label %else_then
	%cmp_sgt = icmp sgt i32 %param_y, 0
	br i1 %cmp_sgt, label %if_then, label %else_then
if_then:
;precursors: entry 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %param_x, %param_y
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %param_x, %param_y
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then:
;precursors: entry 
;successors: rootReturn 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn
	br label %rootReturn
if_then_inline:
;precursors: if_then 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %param_y, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %param_y, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline:
;precursors: if_then 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn:
;precursors: else_then rootReturn_inline 
;successors: 
;head_inst: null
;tail_inst: null
;terminate: ret i32 %rootRet
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %param_x, %else_then ]
	ret i32 %rootRet
if_then_inline:
;precursors: if_then_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline:
;precursors: else_then_inline rootReturn_inline 
;successors: rootReturn 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %param_y, %else_then_inline ]
	br label %rootReturn
if_then_inline_inline:
;precursors: if_then_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline:
;precursors: rootReturn_inline_inline else_then_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline
if_then_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline
if_then_inline_inline:
;precursors: if_then_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline:
;precursors: rootReturn_inline_inline else_then_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline:
;precursors: if_then_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline:
;precursors: rootReturn_inline_inline else_then_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline:
;precursors: rootReturn_inline_inline else_then_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline else_then_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline, label %else_then_inline
else_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	br label %rootReturn_inline
rootReturn_inline_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline_inline rootReturn_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline:
;precursors: if_then_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline:
;precursors: rootReturn_inline_inline else_then_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline ]
	br label %rootReturn_inline_inline_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline else_then_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline, label %else_then_inline_inline
else_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	br label %rootReturn_inline_inline
rootReturn_inline_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline else_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline:
;precursors: else_then_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline else_then_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline, label %else_then_inline_inline_inline
else_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	br label %rootReturn_inline_inline_inline
rootReturn_inline_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline:
;precursors: else_then_inline_inline_inline rootReturn_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline
if_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline
else_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline rootReturn_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline_inline
if_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: if_then_inline_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %cmp_sgt = icmp sgt i32 %binary_srem, 0
;terminate: br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%cmp_sgt = icmp sgt i32 %binary_srem, 0
	br i1 %cmp_sgt, label %if_then_inline_inline_inline_inline_inline_inline, label %else_then_inline_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline
if_then_inline_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline_inline 
;head_inst: %binary_srem = srem i32 %binary_srem, %binary_srem
;tail_inst: %fun_cal_ret_val = call i32 @cls_taskInline_gcd(%struct.taskInline* %this, i32 %binary_srem, i32 %binary_srem)
;terminate: br label %rootReturn_inline_inline_inline_inline_inline_inline
	%binary_srem = srem i32 %binary_srem, %binary_srem
	%fun_cal_ret_val = call i32 @cls_taskInline_gcd(%struct.taskInline* %this, i32 %binary_srem, i32 %binary_srem)
	br label %rootReturn_inline_inline_inline_inline_inline_inline
else_then_inline_inline_inline_inline_inline_inline:
;precursors: if_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline_inline
	br label %rootReturn_inline_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline_inline:
;precursors: rootReturn_inline_inline_inline_inline_inline_inline else_then_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	%rootRet = phi i32 [ %rootRet, %rootReturn_inline_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline_inline
rootReturn_inline_inline_inline_inline_inline_inline:
;precursors: else_then_inline_inline_inline_inline_inline_inline if_then_inline_inline_inline_inline_inline_inline 
;successors: rootReturn_inline_inline_inline_inline_inline 
;head_inst: null
;tail_inst: null
;terminate: br label %rootReturn_inline_inline_inline_inline_inline
	%rootRet = phi i32 [ %fun_cal_ret_val, %if_then_inline_inline_inline_inline_inline_inline ], [ %binary_srem, %else_then_inline_inline_inline_inline_inline_inline ]
	br label %rootReturn_inline_inline_inline_inline_inline
}
