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

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	lui t0, %hi(j)
	sw zero, %lo(j)(t0)
.main_b.1: 
	lw t1, j
	li t0, 5
	blt t1, t0, .main_b.2
.main_b.3: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.main_b.2: 
	lw t1, n
	li t0, 1
	beq t1, t0, .main_b.4
.main_b.5: 
	lw t0, j
	addi t1, t0, 1
	lui t0, %hi(j)
	sw t1, %lo(j)(t0)
	j .main_b.1
.main_b.4: 
	lw t1, j
	lui t0, %hi(r)
	sw t1, %lo(r)(t0)
	j .main_b.5
	.size	main, .-main

	.type	r,@object
	.section	.bss
	.globl	r
	.p2align	2
r:
.Lr$local:
	.word	0
	.size	r, 4

	.type	j,@object
	.section	.bss
	.globl	j
	.p2align	2
j:
.Lj$local:
	.word	0
	.size	j, 4

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

