	.text
	.globl	cls_vector_con_0
	.p2align	1
	.type	cls_vector_con_0,@function
cls_vector_con_0:
.cls_vector_con_0_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	mv s1, a0
	null
	null
	slt t0, s0, t0
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s1)
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
	.size	cls_vector_con_0, .-cls_vector_con_0

	.globl	cls_vector_toString
	.p2align	1
	.type	cls_vector_toString,@function
cls_vector_toString:
.cls_vector_toString_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	mv s0, a0
	la s1, .cls_vector_toString.0
	mv a0, s0
	call cls_vector_getDim
	slt t0, zero, a0
	beqz t0, .cls_vector_toString_addphi_mid
.cls_vector_toString_if_then: 
	mv a0, s0
	call cls_vector_toString
	mv a1, a0
	mv a0, s1
	call g_stringadd
.cls_vector_toString_if_end: 
	mv s1, a0
.cls_vector_toString_for_cond: 
	mv a0, s0
	call cls_vector_getDim
	null
	blt t0, a0, .cls_vector_toString_for_body
.cls_vector_toString_for_end: 
	la a1, .cls_vector_toString.2
	mv a0, s1
	call g_stringadd
	lw a0, 0(sp)
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.cls_vector_toString_addphi_mid: 
	mv a0, s1
	j .cls_vector_toString_if_end
.cls_vector_toString_for_body: 
	la a1, .cls_vector_toString.1
	mv a0, s1
	call g_stringadd
	mv s1, a0
	mv a0, s0
	call cls_vector_toString
	mv a1, a0
	mv a0, s1
	call g_stringadd
.cls_vector_toString_for_upd: 
	null
	addi t0, t1, 1
	sw t0, 0(t1)
	mv s1, a0
	j .cls_vector_toString_for_cond
	.size	cls_vector_toString, .-cls_vector_toString

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_vector_scalarInPlaceMultiply
	.p2align	1
	.type	cls_vector_scalarInPlaceMultiply,@function
cls_vector_scalarInPlaceMultiply:
.cls_vector_scalarInPlaceMultiply_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	mv s0, a0
	mv s1, a1
	mv t0, s0
	lw t0, 0(t0)
	beq t0, zero, .cls_vector_scalarInPlaceMultiply_if_then
.cls_vector_scalarInPlaceMultiply_if_end: 
.cls_vector_scalarInPlaceMultiply_if_then: 
	mv t0, zero
	null
.cls_vector_scalarInPlaceMultiply_rootReturn: 
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.cls_vector_scalarInPlaceMultiply_for_body: 
	mv t0, s0
	lw t1, 0(t0)
	mv t0, s0
	lw t0, 0(t0)
	lw t0, 0(t0)
	slt t0, s1, t0
	sw t0, 0(t1)
.cls_vector_scalarInPlaceMultiply_for_upd: 
	null
	addi t0, t0, 0
	sw t0, 0(zero)
.cls_vector_scalarInPlaceMultiply_for_cond: 
	mv a0, s0
	call cls_vector_getDim
	blt zero, a0, .cls_vector_scalarInPlaceMultiply_for_body
.cls_vector_scalarInPlaceMultiply_for_end: 
	mv t0, s0
	null
	j .cls_vector_scalarInPlaceMultiply_rootReturn
	.size	cls_vector_scalarInPlaceMultiply, .-cls_vector_scalarInPlaceMultiply

	.globl	cls_vector_init
	.p2align	1
	.type	cls_vector_init,@function
cls_vector_init:
.cls_vector_init_entry: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	mv s0, a0
	mv s2, a1
	beq s2, zero, .cls_vector_init_if_then
.cls_vector_init_if_end: 
	addi t0, s2, -4
	lw s1, 0(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call malloc
	sw s1, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s0)
.cls_vector_init_for_cond: 
	addi t0, s2, -4
	lw t0, 0(t0)
	blt zero, t0, .cls_vector_init_for_body
.cls_vector_init_for_end: 
	null
	j .cls_vector_init_rootReturn
.cls_vector_init_if_then: 
	null
.cls_vector_init_rootReturn: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
.cls_vector_init_for_body: 
	mv t0, s0
	lw t1, 0(t0)
	mv t0, s2
	lw t0, 0(t0)
	sw t0, 0(t1)
.cls_vector_init_for_upd: 
	null
	addi t0, t0, 0
	sw t0, 0(zero)
	j .cls_vector_init_for_cond
	.size	cls_vector_init, .-cls_vector_init

	.globl	cls_vector_add
	.p2align	1
	.type	cls_vector_add,@function
cls_vector_add:
.cls_vector_add_entry: 
	addi sp, sp, -32
	sw s0, 20(sp)
	sw s1, 24(sp)
	sw s2, 28(sp)
	sw ra, 16(sp)
	mv s1, a0
	mv s0, a1
	mv a0, s1
	call cls_vector_getDim
	mv s2, a0
	mv a0, s0
	call cls_vector_getDim
	slt t0, s2, a0
	snez t0, t0
	beqz t0, .cls_vector_add_lor_cond
.cls_vector_add_addphi_mid: 
.cls_vector_add_lor_cond: 
	mv a0, s1
	call cls_vector_getDim
	xori t0, a0, 0
	seqz t0, t0
	beqz t0, .cls_vector_add_if_end
.cls_vector_add_addphi_mid: 
.cls_vector_add_if_then: 
	mv t0, zero
	mv t0, zero
	null
.cls_vector_add_rootReturn: 
	lw s0, 20(sp)
	lw s1, 24(sp)
	lw s2, 28(sp)
	lw ra, 16(sp)
	addi sp, sp, 32
	ret
.cls_vector_add_if_end: 
	null
	call malloc
	mv s2, a0
	mv a0, s2
	call cls_vector_con_0
.cls_vector_add_for_cond: 
	mv a0, s1
	call cls_vector_getDim
	blt zero, a0, .cls_vector_add_for_body
.cls_vector_add_for_end: 
	lw t0, 12(sp)
	mv t0, s2
	null
	j .cls_vector_add_rootReturn
.cls_vector_add_for_body: 
	mv t0, s2
	lw t1, 0(t0)
	mv t0, s1
	lw t2, 0(t0)
	mv t0, s0
	lw t0, 0(t0)
	lw t2, 0(t2)
	lw t0, 0(t0)
	slt t0, t2, t0
	sw t0, 0(t1)
.cls_vector_add_for_upd: 
	null
	addi t0, t0, 0
	sw t0, 0(zero)
	j .cls_vector_add_for_cond
	.size	cls_vector_add, .-cls_vector_add

	.globl	cls_vector_getDim
	.p2align	1
	.type	cls_vector_getDim,@function
cls_vector_getDim:
.cls_vector_getDim_entry: 
	addi sp, sp, 0
	lw t0, 0(a0)
	beq t0, zero, .cls_vector_getDim_if_then
.cls_vector_getDim_if_end: 
	lw t0, 0(a0)
	addi t0, t0, -4
	lw t0, 0(t0)
	j .cls_vector_getDim_rootReturn
.cls_vector_getDim_if_then: 
	null
.cls_vector_getDim_rootReturn: 
	addi sp, sp, 0
	ret
	.size	cls_vector_getDim, .-cls_vector_getDim

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	call __init
	null
	mv a0, s1
	call malloc
	mv s0, a0
	mv a0, s0
	call cls_vector_con_0
	null
	slt t0, s2, s1
	addi a0, t0, 4
	call malloc
	sw s2, 0(a0)
	addi a1, a0, 4
.main_for_cond: 
	null
	blt zero, t0, .main_for_body
.main_for_end: 
	mv a0, s0
	call cls_vector_init
	la a0, .main.3
	call g_print
	mv a0, s0
	call cls_vector_toString
	call g_println
	null
	call malloc
	mv s1, a0
	mv a0, s1
	call cls_vector_con_0
	mv a0, s1
	mv a1, s0
	call cls_vector_copy
	mv a0, s1
	null
	null
	call cls_vector_set
	beqz a0, .main_addphi_mid
.main_if_then: 
	la a0, .main.4
	call g_println
.main_if_end: 
	la a0, .main.5
	call g_print
	mv a0, s1
	call cls_vector_toString
	call g_println
	la a0, .main.6
	call g_print
	mv a0, s0
	mv a1, s1
	call cls_vector_add
	call cls_vector_toString
	call g_println
	la a0, .main.7
	call g_print
	mv a0, s0
	mv a1, s1
	call cls_vector_dot
	call g_toString
	call g_println
	la a0, .main.8
	call g_print
	null
	slli a1, t0, 3
	mv a0, s0
	call cls_vector_scalarInPlaceMultiply
	call cls_vector_toString
	call g_println
	mv a0, zero
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
.main_for_body: 
	null
	addi t0, t0, 0
	sw t0, 0(a1)
.main_for_upd: 
	null
	addi t0, t0, 0
	sw t0, 0(zero)
	j .main_for_cond
.main_addphi_mid: 
	.size	main, .-main

	.globl	cls_vector_set
	.p2align	1
	.type	cls_vector_set,@function
cls_vector_set:
.cls_vector_set_entry: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	mv s2, a0
	mv s0, a1
	mv s1, a2
	mv a0, s2
	call cls_vector_getDim
	blt a0, s0, .cls_vector_set_if_then
.cls_vector_set_if_end: 
	mv t0, s2
	lw t1, 0(t0)
	slli t0, s0, 2
	add t0, t1, t0
	sw s1, 0(t0)
	null
	j .cls_vector_set_rootReturn
.cls_vector_set_if_then: 
	mv t0, zero
.cls_vector_set_rootReturn: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
	.size	cls_vector_set, .-cls_vector_set

	.globl	cls_vector_copy
	.p2align	1
	.type	cls_vector_copy,@function
cls_vector_copy:
.cls_vector_copy_entry: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	mv s0, a0
	mv s2, a1
	beq s2, zero, .cls_vector_copy_if_then
.cls_vector_copy_if_end: 
	mv a0, s2
	call cls_vector_getDim
	beq a0, zero, .cls_vector_copy_if_then
.cls_vector_copy_else_then: 
	mv a0, s2
	call cls_vector_getDim
	mv s1, a0
	slli t0, s1, 2
	addi a0, t0, 4
	call malloc
	sw s1, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s0)
.cls_vector_copy_for_cond: 
	mv a0, s0
	call cls_vector_getDim
	blt zero, a0, .cls_vector_copy_for_body
.cls_vector_copy_for_end: 
	null
	j .cls_vector_copy_if_end
.cls_vector_copy_if_then: 
	mv t1, zero
	null
.cls_vector_copy_rootReturn: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
.cls_vector_copy_if_then: 
	mv t0, s0
	sw zero, 0(t0)
	null
.cls_vector_copy_if_end: 
	null
	j .cls_vector_copy_rootReturn
.cls_vector_copy_for_body: 
	mv t0, s0
	lw t1, 0(t0)
	mv t0, s2
	lw t0, 0(t0)
	lw t0, 0(t0)
	sw t0, 0(t1)
.cls_vector_copy_for_upd: 
	null
	addi t0, t0, 0
	sw t0, 0(zero)
	j .cls_vector_copy_for_cond
	.size	cls_vector_copy, .-cls_vector_copy

	.globl	cls_vector_dot
	.p2align	1
	.type	cls_vector_dot,@function
cls_vector_dot:
.cls_vector_dot_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	mv s0, a0
	mv s1, a1
	null
.cls_vector_dot_while_cond: 
	mv a0, s0
	call cls_vector_getDim
	blt zero, a0, .cls_vector_dot_while_body
.cls_vector_dot_while_end: 
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.cls_vector_dot_while_body: 
	mv t0, s0
	lw t1, 0(t0)
	mv t0, s1
	lw t0, 0(t0)
	lw t1, 0(t1)
	lw t0, 0(t0)
	slt t0, t1, t0
	null
	addi t1, t1, 0
	sw t1, 0(zero)
	j .cls_vector_dot_while_cond
	.size	cls_vector_dot, .-cls_vector_dot

	.type	.main.3,@object
	.section	.rodata
.main.3:
	.asciz	"\"vector x: \""
	.size	.main.3, 13

	.type	.main.8,@object
	.section	.rodata
.main.8:
	.asciz	"\"(1 << 3) * y: \""
	.size	.main.8, 17

	.type	.cls_vector_toString.2,@object
	.section	.rodata
.cls_vector_toString.2:
	.asciz	"\" )\""
	.size	.cls_vector_toString.2, 5

	.type	.main.4,@object
	.section	.rodata
.main.4:
	.asciz	"\"excited!\""
	.size	.main.4, 11

	.type	.main.6,@object
	.section	.rodata
.main.6:
	.asciz	"\"x + y: \""
	.size	.main.6, 10

	.type	.cls_vector_toString.0,@object
	.section	.rodata
.cls_vector_toString.0:
	.asciz	"\"( \""
	.size	.cls_vector_toString.0, 5

	.type	.cls_vector_toString.1,@object
	.section	.rodata
.cls_vector_toString.1:
	.asciz	"\", \""
	.size	.cls_vector_toString.1, 5

	.type	.main.7,@object
	.section	.rodata
.main.7:
	.asciz	"\"x * y: \""
	.size	.main.7, 10

	.type	.main.5,@object
	.section	.rodata
.main.5:
	.asciz	"\"vector y: \""
	.size	.main.5, 13

