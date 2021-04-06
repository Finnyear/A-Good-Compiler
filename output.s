	.text
	.globl	cls_f_con_0
	.p2align	1
	.type	cls_f_con_0,@function
cls_f_con_0:
.cls_f_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_f_con_0, .-cls_f_con_0

	.globl	cls_A_con_0
	.p2align	1
	.type	cls_A_con_0,@function
cls_A_con_0:
.cls_A_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_con_0, .-cls_A_con_0

	.globl	cls_B_t
	.p2align	1
	.type	cls_B_t,@function
cls_B_t:
.cls_B_t_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call cls_B_D
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	cls_B_t, .-cls_B_t

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_B_D
	.p2align	1
	.type	cls_B_D,@function
cls_B_D:
.cls_B_D_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_B_D, .-cls_B_D

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
	slli t0, s0, 0
	addi a0, t0, 4
	call malloc
	null
	sw t0, 0(a0)
	addi t0, a0, 4
	slli t0, s0, 2
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t0, a0, 4
	call g_getInt
	call g_toString
	call l_string_length
	call g_toString
	call g_println
	mv a0, zero
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	cls_B_con_0
	.p2align	1
	.type	cls_B_con_0,@function
cls_B_con_0:
.cls_B_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_B_con_0, .-cls_B_con_0

	.globl	cls_A_aabc
	.p2align	1
	.type	cls_A_aabc,@function
cls_A_aabc:
.cls_A_aabc_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_aabc, .-cls_A_aabc

