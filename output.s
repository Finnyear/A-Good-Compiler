	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	lw t0, 8(sp)
	lw a1, 0(t0)
	mv a0, zero
	call cls_A_f
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	cls_A_con_0
	.p2align	1
	.type	cls_A_con_0,@function
cls_A_con_0:
.cls_A_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_con_0, .-cls_A_con_0

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_A_f
	.p2align	1
	.type	cls_A_f,@function
cls_A_f:
.cls_A_f_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_f, .-cls_A_f

