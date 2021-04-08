	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	lw t0, x
	beq t0, zero, .main_b.1
.main_b.2: 
	la a0, .main.1
	call g_print
	j .main_b.3
.main_b.1: 
	la a0, .main.0
	call g_print
.main_b.3: 
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
	lui t0, %hi(x)
	sw zero, %lo(x)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.type	x,@object
	.section	.bss
	.globl	x
	.p2align	2
x:
.Lx$local:
	.word	0
	.size	x, 4

	.type	.main.0,@object
	.section	.rodata
.main.0:
	.asciz	"YES"
	.size	.main.0, 4

	.type	.main.1,@object
	.section	.rodata
.main.1:
	.asciz	"NO"
	.size	.main.1, 3

