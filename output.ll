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
%struct.A = type {i1}
@a = global i8* zeroinitializer, align 4
@main.1 = private unnamed_addr constant [4 x i8] c"\22 \22\00", align 1
@__init.0 = private unnamed_addr constant [9 x i8] c"\22\0A\0A\0A\22\5C\22\22\00", align 1
define null @cls_A_con_0(){
entry:
;precursors: 
;successors: 
	ret void
}
define void @__init(){
entry:
;precursors: 
;successors: 
	%resolved___init.0 = getelementptr inbounds [ 9 x i8 ], [ 9 x i8 ]* @__init.0, i32 0, i32 0
	store i8* %resolved___init.0, i8** @a, align 4
	ret void
}
define i32 @main(){
entry:
;precursors: 
;successors: if_then addphi_mid 
	call void @__init()
	%resolved_main.1 = getelementptr inbounds [ 4 x i8 ], [ 4 x i8 ]* @main.1, i32 0, i32 0
	%pointee_a = load i8*, i8** @a, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %pointee_a, i8* %resolved_main.1)
	%pointee_a = load i8*, i8** @a, align 4
	%binary_add_string = call i8* @g_stringadd(i8* %binary_add_string, i8* %pointee_a)
	call void @g_println(i8* %binary_add_string)
	%puresz = mul i32 2, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 2, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%new_array = bitcast i32* %allocoffset to i32***
	br i1 1, label %if_then, label %addphi_mid
if_then:
;precursors: entry 
;successors: if_then addphi_mid 
	%arrayptr = getelementptr inbounds i32***, i32*** %new_array, i32 1
	%pointee_arrayptr = load i32**, i32*** %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32**, i32** %pointee_arrayptr, i32 1
	%pointee_arrayptr = load i32*, i32** %arrayptr, align 4
	%arrayptr = getelementptr inbounds i32***, i32*** %new_array, i32 1
	%pointee_arrayptr = load i32**, i32*** %arrayptr, align 4
	%puresz = mul i32 2, 4
	%metasz = add i32 %puresz, 4
	%allocptr = call noalias i8* @malloc(i32 %metasz)
	%allocbitcast = bitcast i8* %allocptr to i32*
	store i32 2, i32* %allocbitcast, align 4
	%allocoffset = getelementptr inbounds i32, i32* %allocbitcast, i32 1
	%new_array = bitcast i32* %allocoffset to %struct.A***
	%arrayptr = getelementptr inbounds %struct.A***, %struct.A*** %new_array, i32 1
	%pointee_arrayptr = load %struct.A**, %struct.A*** %arrayptr, align 4
	%arrayptr = getelementptr inbounds %struct.A**, %struct.A** %pointee_arrayptr, i32 1
	%pointee_arrayptr = load %struct.A*, %struct.A** %arrayptr, align 4
	%this.b = getelementptr inbounds %struct.A, %struct.A* %pointee_arrayptr, i32 0, i32 0
	%pointee_this.b = load i1, i1* %this.b, align 1
	br i1 %pointee_this.b, label %if_then, label %addphi_mid
addphi_mid:
;precursors: entry 
;successors: if_end 
	mv i8* %b_addr_phi null
	mv i8* %c_addr_phi null
	mv i8* %a_addr_phi null
	br label %if_end
if_then:
;precursors: if_then 
;successors: if_end 
	br label %if_end
addphi_mid:
;precursors: if_then 
;successors: if_end 
	br label %if_end
if_end:
;precursors: if_end addphi_mid 
;successors: 
	%b_addr_phi = phi i32* [ null, %addphi_mid ], [ %pointee_arrayptr, %if_end ]
	%c_addr_phi = phi i32** [ null, %addphi_mid ], [ %pointee_arrayptr, %if_end ]
	%a_addr_phi = phi %struct.A*** [ null, %addphi_mid ], [ %new_array, %if_end ]
	ret i32 0
if_end:
;precursors: if_then addphi_mid 
;successors: if_end 
	mv i32* %b_addr_phi %pointee_arrayptr
	mv i32** %c_addr_phi %pointee_arrayptr
	mv %struct.A*** %a_addr_phi %new_array
	br label %if_end
}
