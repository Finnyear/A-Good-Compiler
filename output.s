	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -32
	sw s0, 12(sp)
	sw s1, 16(sp)
	sw s2, 20(sp)
	sw s3, 24(sp)
	sw s4, 28(sp)
	sw ra, 8(sp)
	call __init
	null
	null
	slt t0, s0, t0
	addi a0, t0, 4
	call malloc
	mv s1, a0
	sw s0, 0(s1)
	addi t0, s1, 4
	mv s0, t0
	null
.main_arrayincr: 
	addi s3, t0, 1
	null
	bge t1, t0, .main_arraybody
.main_arrayend: 
	mv t0, s0
	sw zero, 0(t0)
	mv t0, s0
	lw t0, 0(t0)
	addi t0, t0, -4
	lw a0, 0(t0)
	call g_toString
	call g_println
	null
	null
	slt t0, s1, t0
	addi a0, t0, 4
	call malloc
	sw s1, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s0)
.main_for_cond: 
	null
	blt zero, t0, .main_for_body
.main_for_end: 
	mv t0, s0
	lw t0, 0(t0)
	addi t0, t0, 36
	lw a0, 0(t0)
	call g_toString
	call g_println
.main_while_cond: 
.main_arraybody: 
	slli t0, t0, 2
	add t0, s1, t0
	mv s4, t0
	null
	null
	slt t0, s2, t0
	addi a0, t0, 4
	call malloc
	sw s2, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s4)
	mv t0, s3
	j .main_arrayincr
.main_for_body: 
	mv t0, s0
	lw t0, 0(t0)
	slli t1, zero, 0
	sw t1, 0(t0)
.main_for_upd: 
	null
	addi t0, t0, 0
	sw t0, 0(zero)
	j .main_for_cond
.main_while_body: 
.main_addphi_mid: 
.main_while_end: 
	lw s0, 12(sp)
	lw s1, 16(sp)
	lw s2, 20(sp)
	lw s3, 24(sp)
	lw s4, 28(sp)
	lw ra, 8(sp)
	addi sp, sp, 32
	ret
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

