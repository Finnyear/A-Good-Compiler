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
	li a1, 10
	li a2, 10000
	call fun_qpow
	call g_toString
	call g_println
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
	addi sp, sp, 0
	mv t0, a0
	li a0, 1
.fun_qpow_b.1: 
	blt zero, a1, .fun_qpow_b.2
.fun_qpow_b.3: 
	addi sp, sp, 0
	ret
.fun_qpow_b.2: 
	andi t2, a1, 1
	li t1, 1
	beq t2, t1, .fun_qpow_b.4
.fun_qpow_b.5: 
	mul t0, t0, t0
	rem t0, t0, a2
	li t1, 2
	div a1, a1, t1
	j .fun_qpow_b.1
.fun_qpow_b.4: 
	mul t1, a0, t0
	rem a0, t1, a2
	j .fun_qpow_b.5
	.size	fun_qpow, .-fun_qpow

