	.text
	.globl	cls_C_Me
	.p2align	1
	.type	cls_C_Me,@function
cls_C_Me:
.cls_C_Me_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_C_Me, .-cls_C_Me

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	fun_count
	.p2align	1
	.type	fun_count,@function
fun_count:
.fun_count_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	lui t0, %hi(countA)
	sw zero, %lo(countA)(t0)
	lui t0, %hi(countB)
	sw zero, %lo(countB)(t0)
	lui t0, %hi(countC)
	sw zero, %lo(countC)(t0)
	null
	mv a0, s0
	call malloc
	call cls_B_con_0
	lw a0, countA
	call g_toString
	la a1, .fun_count.1
	call g_stringadd
	mv s1, a0
	lw a0, countB
	call g_toString
	mv a1, a0
	mv a0, s1
	call g_stringadd
	la a1, .fun_count.1
	call g_stringadd
	mv s1, a0
	lw a0, countC
	call g_toString
	mv a1, a0
	mv a0, s1
	call g_stringadd
	call g_println
	null
	lui t0, %hi(countA)
	sw s1, %lo(countA)(t0)
	lui t0, %hi(countB)
	sw s1, %lo(countB)(t0)
	lui t0, %hi(countC)
	sw s1, %lo(countC)(t0)
	mv a0, s0
	call malloc
	call cls_B_con_0
	lw t0, countA
	addi a0, t0, -1
	call g_toString
	la a1, .fun_count.1
	call g_stringadd
	mv s0, a0
	lw t0, countB
	addi a0, t0, -1
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	la a1, .fun_count.1
	call g_stringadd
	mv s0, a0
	lw t0, countC
	addi a0, t0, -1
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	call g_print
	la a0, .fun_count.2
	call g_print
	lw a0, something
	call cls_C_Me
	lw s0, 0(a0)
	lw t0, something
	lw a0, 0(t0)
	call l_string_length
	addi a2, a0, -1
	mv a0, s0
	mv a1, s1
	call l_string_substring
	call l_string_parseInt
	call g_toString
	call g_println
	lw t0, something
	lw a0, 0(t0)
	null
	andi a1, t0, 42
	call l_string_ord
	call g_toString
	mv s0, a0
	lw t0, something
	lw a1, 0(t0)
	mv a0, s0
	call g_stringlt
	beqz a0, .fun_count_else_then
.fun_count_if_then: 
	lw t0, something
	la a1, .fun_count.3
	lw a0, 0(t0)
	call g_stringadd
	mv a1, s0
	call g_stringadd
	call g_println
.fun_count_if_end: 
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.fun_count_else_then: 
	lw t0, something
	la a1, .fun_count.4
	lw a0, 0(t0)
	call g_stringadd
	mv a1, s0
	call g_stringadd
	call g_println
	j .fun_count_if_end
	.size	fun_count, .-fun_count

	.globl	cls_A_con_0
	.p2align	1
	.type	cls_A_con_0,@function
cls_A_con_0:
.cls_A_con_0_entry: 
	addi sp, sp, -48
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw s3, 16(sp)
	sw s4, 20(sp)
	sw s5, 24(sp)
	sw s6, 28(sp)
	sw s7, 32(sp)
	sw s8, 36(sp)
	sw s9, 40(sp)
	sw s10, 44(sp)
	sw ra, 0(sp)
	mv s1, a0
	mv t0, s1
	addi a0, t0, 12
	lw t2, countA
	addi t1, t2, 1
	lui t0, %hi(countA)
	sw t1, %lo(countA)(t0)
	sw t2, 0(a0)
	mv t0, s1
	addi t0, t0, 12
	lw t1, 0(t0)
	null
	slt t0, t1, t0
	beq t0, zero, .cls_A_con_0_if_then
.cls_A_con_0_else_then: 
	mv t0, s1
	sw zero, 0(t0)
.cls_A_con_0_if_end: 
	mv t0, s1
	addi s2, t0, 8
	null
	slli t0, s0, 1
	addi a0, t0, 4
	call malloc
	null
	sw t0, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s2)
	mv t0, s1
	addi t0, t0, 8
	lw t0, 0(t0)
	mv s3, t0
	null
	slt t0, s2, s0
	addi a0, t0, 4
	call malloc
	mv s4, a0
	sw s2, 0(s4)
	addi t0, s4, 4
	mv s6, t0
	null
.cls_A_con_0_arrayincr: 
	addi s0, t0, 1
	null
	bge t1, t0, .cls_A_con_0_arraybody
.cls_A_con_0_arrayend: 
	addi t0, s6, 8
	lw t0, 0(t0)
	addi t0, t0, 12
	lw t0, 0(t0)
	addi t0, t0, 12
	lw t0, 0(t0)
	sw t0, 0(s3)
	mv t0, s1
	addi t0, t0, 8
	lw t0, 0(t0)
	addi t0, t0, 4
	sw zero, 0(t0)
	mv t0, s1
	addi t0, t0, 8
	lw t0, 0(t0)
	addi t0, t0, -4
	lw t0, 0(t0)
	xori t0, t0, 2
	snez t0, t0
	beqz t0, .cls_A_con_0_addphi_mid
.cls_A_con_0_if_then: 
	la a0, .cls_A_con_0.0
	call g_println
.cls_A_con_0_if_end: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw s3, 16(sp)
	lw s4, 20(sp)
	lw s5, 24(sp)
	lw s6, 28(sp)
	lw s7, 32(sp)
	lw s8, 36(sp)
	lw s9, 40(sp)
	lw s10, 44(sp)
	lw ra, 0(sp)
	addi sp, sp, 48
	ret
.cls_A_con_0_if_then: 
	mv s0, s1
	null
	call malloc
	mv s2, a0
	mv a0, s2
	call cls_A_con_0
	sw s2, 0(s0)
	lw t1, countB
	null
	slt t0, t1, t0
	beq t0, zero, .cls_A_con_0_if_then
.cls_A_con_0_else_then: 
	mv t0, s1
	addi t0, t0, 4
	sw zero, 0(t0)
	j .cls_A_con_0_if_end
.cls_A_con_0_if_then: 
	mv t0, s1
	addi s2, t0, 4
	null
	call malloc
	mv s0, a0
	mv a0, s0
	call cls_B_con_0
	sw s0, 0(s2)
.cls_A_con_0_if_end: 
.cls_A_con_0_arraybody: 
	slli t0, t0, 2
	add s2, s4, t0
	null
	null
	slt t0, s5, t0
	addi a0, t0, 4
	call malloc
	mv s9, a0
	sw s5, 0(s9)
	addi t0, s9, 4
	sw t0, 0(s2)
	null
.cls_A_con_0_arrayincr: 
	addi s10, t0, 1
	null
	bge t1, t0, .cls_A_con_0_arraybody
.cls_A_con_0_arrayend: 
	mv t0, s0
	j .cls_A_con_0_arrayincr
.cls_A_con_0_addphi_mid: 
.cls_A_con_0_arraybody: 
	slli t0, t0, 2
	add t0, s9, t0
	mv s7, t0
	null
	null
	slt t0, s5, t0
	addi a0, t0, 4
	call malloc
	mv s2, a0
	sw s5, 0(s2)
	addi t0, s2, 4
	sw t0, 0(s7)
	null
.cls_A_con_0_arrayincr: 
	addi s8, t0, 1
	null
	bge t1, t0, .cls_A_con_0_arraybody
.cls_A_con_0_arrayend: 
	mv t0, s10
	j .cls_A_con_0_arrayincr
.cls_A_con_0_arraybody: 
	slli t0, t0, 2
	add t0, s2, t0
	mv s7, t0
	null
	null
	slt t0, s5, t0
	addi a0, t0, 4
	call malloc
	sw s5, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s7)
	mv t0, s8
	j .cls_A_con_0_arrayincr
	.size	cls_A_con_0, .-cls_A_con_0

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	call __init
	null
.main_for_body: 
	xori t0, s0, 891
	andi t0, t0, 759
	xori t0, t0, 666
	seqz t0, t0
	null
	slt t1, t1, zero
	beq t0, t1, .main_if_then
.main_if_end: 
.main_if_then: 
	mv a0, s0
	call g_toString
	call g_println
	mv a0, zero
	call g_toString
	call g_println
	null
	call g_toString
	call g_println
	call fun_count
.main_for_end: 
.main_for_upd: 
	addi t0, s0, 1
	mv s0, t0
	j .main_for_body
.main_while_body: 
	null
	slt t0, s0, t0
	beq t0, zero, .main_if_then
.main_if_end: 
	mv a0, s0
	call g_toString
	la a1, .main.5
	call g_stringadd
	call g_print
.main_while_cond: 
.main_while_end: 
	la a0, .main.6
	call g_println
	mv a0, zero
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
.main_if_then: 
	.size	main, .-main

	.globl	cls_A_getc0
	.p2align	1
	.type	cls_A_getc0,@function
cls_A_getc0:
.cls_A_getc0_entry: 
	addi sp, sp, 0
	addi t0, a0, 8
	lw a0, 0(t0)
	addi sp, sp, 0
	ret
	.size	cls_A_getc0, .-cls_A_getc0

	.globl	cls_C_con_0
	.p2align	1
	.type	cls_C_con_0,@function
cls_C_con_0:
.cls_C_con_0_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	mv s1, a0
	mv t0, s1
	lw a0, countC
	addi t2, a0, 1
	lui t1, %hi(countC)
	sw t2, %lo(countC)(t1)
	sw a0, 0(t0)
	mv t0, s1
	addi s0, t0, 4
	mv t0, s1
	lw a0, 0(t0)
	call g_toString
	sw a0, 0(s0)
	mv a0, s1
	call cls_C_Me
	lui t0, %hi(something)
	sw a0, %lo(something)(t0)
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
	.size	cls_C_con_0, .-cls_C_con_0

	.globl	cls_B_con_0
	.p2align	1
	.type	cls_B_con_0,@function
cls_B_con_0:
.cls_B_con_0_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	lw t2, countB
	addi t1, t2, 1
	lui t0, %hi(countB)
	sw t1, %lo(countB)(t0)
	sw t2, 0(a0)
	addi s0, a0, 4
	null
	call malloc
	mv s1, a0
	mv a0, s1
	call cls_A_con_0
	mv a0, s1
	call cls_A_getc0
	lw a0, 0(a0)
	call cls_C_Me
	call cls_C_Me
	sw a0, 0(s0)
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
	.size	cls_B_con_0, .-cls_B_con_0

	.type	countB,@object
	.section	.bss
	.globl	countB
	.p2align	2
countB:
.LcountB$local:
	.word	0
	.size	countB, 4

	.type	countC,@object
	.section	.bss
	.globl	countC
	.p2align	2
countC:
.LcountC$local:
	.word	0
	.size	countC, 4

	.type	countA,@object
	.section	.bss
	.globl	countA
	.p2align	2
countA:
.LcountA$local:
	.word	0
	.size	countA, 4

	.type	something,@object
	.section	.bss
	.globl	something
	.p2align	2
something:
.Lsomething$local:
	.word	0
	.size	something, 4

	.type	.main.6,@object
	.section	.rodata
.main.6:
	.asciz	"\"\""
	.size	.main.6, 3

	.type	.main.5,@object
	.section	.rodata
.main.5:
	.asciz	"\",\""
	.size	.main.5, 4

	.type	.fun_count.1,@object
	.section	.rodata
.fun_count.1:
	.asciz	"\" \""
	.size	.fun_count.1, 4

	.type	.fun_count.2,@object
	.section	.rodata
.fun_count.2:
	.asciz	"\"\n\""
	.size	.fun_count.2, 4

	.type	.cls_A_con_0.0,@object
	.section	.rodata
.cls_A_con_0.0:
	.asciz	"\"Oops!\""
	.size	.cls_A_con_0.0, 8

	.type	.fun_count.4,@object
	.section	.rodata
.fun_count.4:
	.asciz	"\"<=\""
	.size	.fun_count.4, 5

	.type	.fun_count.3,@object
	.section	.rodata
.fun_count.3:
	.asciz	"\">\""
	.size	.fun_count.3, 4

