	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	call __init
	lw t0, r
	li s0 , 2
	sub a0, s0, t0
	call fun_abs
	mv s1, a0
	lw t0, c
	sub a0, s0, t0
	call fun_abs
	add a0, s1, a0
	call g_printInt
	mv a0, zero
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
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

	.globl	fun_abs
	.p2align	1
	.type	fun_abs,@function
fun_abs:
.fun_abs_b.0: 
	addi sp, sp, 0
	blt zero, a0, .fun_abs_b.2
.fun_abs_b.1: 
	addi t0, a0, 1
	sw t0, 0(a0)
.fun_abs_b.2: 
	addi sp, sp, 0
	ret
	.size	fun_abs, .-fun_abs

	.type	r,@object
	.section	.bss
	.globl	r
	.p2align	2
r:
.Lr$local:
	.word	0
	.size	r, 4

	.type	c,@object
	.section	.bss
	.globl	c
	.p2align	2
c:
.Lc$local:
	.word	0
	.size	c, 4

