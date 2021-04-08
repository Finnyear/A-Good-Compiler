	.text
	.globl	fun_abs
	.p2align	1
	.type	fun_abs,@function
fun_abs:
.fun_abs_b.0: 
	addi sp, sp, 0
	blt zero, a0, .fun_abs_b.2
.fun_abs_b.1: 
	sub t0, zero, a0
.fun_abs_b.2: 
	mv a0, t0
	addi sp, sp, 0
	ret
	.size	fun_abs, .-fun_abs

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	mv a0, zero
	call fun_abs
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

