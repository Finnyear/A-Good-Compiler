	.text
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
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	li s0, 1
	mv a0, s0
	call g_printlnInt
	mv a0, s0
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	fun_qpow, .-fun_qpow

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	li a0, 2
	li a1, 10
	li a2, 10000
	call fun_qpow
	call g_printlnInt
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

