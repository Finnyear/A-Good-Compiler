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
	addi sp, sp, -32
	sw s0, 12(sp)
	sw s1, 16(sp)
	sw s2, 20(sp)
	sw s3, 24(sp)
	sw s4, 28(sp)
	sw ra, 8(sp)
	call __init
	li s0, 2801
	slli t0, s0, 2
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi s2, a0, 4
	li t2, 0
.main_b.1: 
	li t0, 2800
	sub t0, t2, t0
	bne t0, zero, .main_b.2
.main_b.3: 
	li t0, 0
	li t1, 2800
	li t0, 0
	li a0, 0
.main_b.5: 
	slli t2, t1, 1
	beq t2, zero, .main_b.6
.main_b.7: 
	li a1, 0
	mv t0, t1
.main_b.8: 
	slli a2, t0, 2
	add a2, s2, a2
	lw a3, 0(a2)
	li a2, 10000
	mul a2, a3, a2
	add a3, a1, a2
	slli a1, t0, 2
	add a2, s2, a1
	addi a1, t2, -1
	rem t2, a3, a1
	sw t2, 0(a2)
	div s1, a3, a1
	addi s4, a1, -1
	addi s0, t0, -1
	beq s0, zero, .main_b.9
.main_b.10: 
	mul a1, s1, s0
	mv t2, s4
	mv t0, s0
	j .main_b.8
.main_b.2: 
	slli t0, t2, 2
	add a0, s2, t0
	li t1, 10000
	li t0, 5
	div t0, t1, t0
	sw t0, 0(a0)
.main_b.4: 
	addi t2, t2, 1
	j .main_b.1
.main_b.6: 
	la a0, .main.0
	call g_print
	mv a0, zero
	lw s0, 12(sp)
	lw s1, 16(sp)
	lw s2, 20(sp)
	lw s3, 24(sp)
	lw s4, 28(sp)
	lw ra, 8(sp)
	addi sp, sp, 32
	ret
.main_b.9: 
	addi s3, t1, -14
	li t0, 10000
	div t0, s1, t0
	add a0, a0, t0
	call g_toString
	call g_print
.main_b.11: 
	li t0, 10000
	rem a0, s1, t0
	mv t0, s1
	mv t1, s3
	mv t2, s0
	mv t0, s4
	j .main_b.5
	.size	main, .-main

	.type	.main.0,@object
	.section	.rodata
.main.0:
	.asciz	"\n"
	.size	.main.0, 2

