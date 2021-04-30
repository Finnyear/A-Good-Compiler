	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	li a0, 84
	call malloc
	li t0, 20
	sw t0, 0(a0)
	addi t1, a0, 4
	lui t0, %hi(a)
	sw t1, %lo(a)(t0)
	call g_getInt
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	lui t0, %hi(i)
	sw zero, %lo(i)(t0)
	lui t0, %hi(n)
	lw s0, %lo(n)(t0)
	lui t0, %hi(a)
	lw s2, %lo(a)(t0)
.main_b.1: 
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	blt t0, s0, .main_b.2
.main_b.3: 
	lui t0, %hi(n)
	lw t1, %lo(n)(t0)
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	lui t0, %hi(a)
	lw a0, %lo(a)(t0)
	lui t0, %hi(a)
	lw a1, %lo(a)(t0)
	lui t0, %hi(n)
	lw a2, %lo(n)(t0)
.main_b.4: 
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	blt zero, t0, .main_b.5
.main_b.6: 
	mv a0, zero
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
.main_b.2: 
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	slli t0, t0, 2
	add s1, s2, t0
	call g_getInt
	sw a0, 0(s1)
	lui t0, %hi(i)
	lw t0, %lo(i)(t0)
	addi t1, t0, 1
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_b.1
.main_b.5: 
	lui t0, %hi(i)
	lw a4, %lo(i)(t0)
	addi a3, a4, -1
	div a5, a2, a4
	li t2, 0
.main_b.7: 
	blt t2, a5, .main_b.8
.main_b.9: 
	li t0, 0
.main_b.11: 
	blt zero, t0, .main_b.14
.main_b.15: 
	lui t0, %hi(i)
	lw t1, %lo(i)(t0)
	li t0, 2
	div t1, t1, t0
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_b.4
.main_b.8: 
	mul a7, t2, a4
	mul a6, t2, a4
	li t0, 0
	li t1, 0
.main_b.10: 
	blt t0, a3, .main_b.12
.main_b.13: 
	beqz t1, .main_b.19
.main_b.18: 
	addi t2, t2, 1
	j .main_b.7
.main_b.12: 
	add t3, a7, t0
	slli t3, t3, 2
	add t4, a0, t3
	add t3, a6, t0
	addi t3, t3, 1
	slli t3, t3, 2
	add t3, a1, t3
	lw t4, 0(t4)
	lw t3, 0(t3)
	blt t3, t4, .main_b.16
.main_b.17: 
	addi t0, t0, 1
	j .main_b.10
.main_b.14: 
	lui t0, %hi(i)
	lw a0, %lo(i)(t0)
	call g_toString
	call g_print
	j .main_b.6
.main_b.16: 
	li t1, 1
	j .main_b.17
.main_b.19: 
	li t0, 1
	j .main_b.11
	.size	main, .-main

	.type	i,@object
	.section	.bss
	.globl	i
	.p2align	2
i:
.Li$local:
	.word	0
	.size	i, 4

	.type	a,@object
	.section	.bss
	.globl	a
	.p2align	2
a:
.La$local:
	.word	0
	.size	a, 4

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

