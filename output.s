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
	call g_getInt
	lui t0, %hi(t)
	sw a0, %lo(t)(t0)
	lui t0, %hi(i)
	sw zero, %lo(i)(t0)
.main_b.1: 
	lw t1, i
	lw t0, t
	blt t1, t0, .main_b.2
.main_b.3: 
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.main_b.2: 
	lw t0, i
	addi t1, t0, 1
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_b.1
	.size	main, .-main

	.type	t,@object
	.section	.bss
	.globl	t
	.p2align	2
t:
.Lt$local:
	.word	0
	.size	t, 4

	.type	i,@object
	.section	.bss
	.globl	i
	.p2align	2
i:
.Li$local:
	.word	0
	.size	i, 4

