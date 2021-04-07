	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	call g_getInt
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	lw t1, n
	li t0 , 1
	beq t1, t0, .main_b.1
.main_b.2: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.main_b.1: 
	li t1 , 1
	lui t0, %hi(r)
	sw t1, %lo(r)(t0)
	lw a0, r
	call g_printInt
	j .main_b.2
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

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

	.type	r,@object
	.section	.bss
	.globl	r
	.p2align	2
r:
.Lr$local:
	.word	0
	.size	r, 4

