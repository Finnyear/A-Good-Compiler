	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	null
	null
	slt t0, s0, t0
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t1, a0, 4
	lui t0, %hi(a)
	sw t1, %lo(a)(t0)
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	__init, .-__init

	.type	a,@object
	.section	.bss
	.globl	a
	.p2align	2
a:
.La$local:
	.word	0
	.size	a, 4

