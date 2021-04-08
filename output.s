	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	li a0, 2
	li a1, 1
	call fun_qpow
	call g_printlnInt
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	fun_qpow
	.p2align	1
	.type	fun_qpow,@function
fun_qpow:
.fun_qpow_b.0: 
	addi sp, sp, -32
	sw s0, 20(sp)
	sw s1, 24(sp)
	sw s2, 28(sp)
	sw ra, 16(sp)
	mv s0, a0
	mv s1, a1
	mv a0, s0
	call g_printlnInt
	li s2, 1
.fun_qpow_b.1: 
	blt zero, s1, .fun_qpow_b.2
.fun_qpow_b.3: 
	lw a0, 12(sp)
	lw s0, 20(sp)
	lw s1, 24(sp)
	lw s2, 28(sp)
	lw ra, 16(sp)
	addi sp, sp, 32
	ret
.fun_qpow_b.2: 
	mv a0, s0
	call g_printlnInt
	mv a0, s1
	call g_printlnInt
	mv a0, s2
	call g_printlnInt
	andi t1, s1, 1
	li t0, 1
	beq t1, t0, .fun_qpow_b.4
.fun_qpow_b.5: 
	mv t0, s2
	j .fun_qpow_b.6
.fun_qpow_b.4: 
	mul t0, s2, s0
.fun_qpow_b.6: 
	mul t2, s0, s0
	li t1, 2
	div t1, s1, t1
	mv s1, t1
	mv s2, t0
	mv s0, t2
	j .fun_qpow_b.1
	.size	fun_qpow, .-fun_qpow

