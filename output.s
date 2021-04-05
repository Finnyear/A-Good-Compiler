	.text
	.globl	cls_A_set
	.p2align	1
	.type	cls_A_set,@function
cls_A_set:
.cls_A_set_entry: 
	addi sp, sp, 0
	null
	sw t0, 0(a0)
	addi sp, sp, 0
	ret
	.size	cls_A_set, .-cls_A_set

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	call __init
	mv a0, zero
	call cls_A_set
	mv s0, zero
	call g_getInt
	sw a0, 0(s0)
	mv a0, zero
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_A_con_0
	.p2align	1
	.type	cls_A_con_0,@function
cls_A_con_0:
.cls_A_con_0_entry: 
	addi sp, sp, 0
	sw zero, 0(a0)
	addi sp, sp, 0
	ret
	.size	cls_A_con_0, .-cls_A_con_0

