	.text
	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
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

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	call __init
	call g_getInt
	lui t0, %hi(m)
	sw a0, %lo(m)(t0)
	call g_getInt
	lui t0, %hi(k)
	sw a0, %lo(k)(t0)
	lui t0, %hi(i)
	sw zero, %lo(i)(t0)
.main_b.1: 
	lw t1, i
	lw t0, m
	blt t1, t0, .main_b.2
.main_b.3: 
	lui t0, %hi(i)
	sw zero, %lo(i)(t0)
.main_b.5: 
	lw t1, a
	lw t0, i
	slli t0, t0, 2
	add t2, t1, t0
	lw t0, k
	addi t0, t0, -1
	lw t1, a
	slli t0, t0, 2
	add t0, t1, t0
	lw t1, 0(t2)
	lw t0, 0(t0)
	slt t0, t1, t0
	xori t0, t0, 1
	beqz t0, .main_b.7
.main_b.6: 
	lw t1, a
	lw t0, i
	slli t0, t0, 2
	add t0, t1, t0
	lw t0, 0(t0)
	slt t0, zero, t0
	beqz t0, .main_b.9
.main_b.8: 
	lw t1, i
	lw t0, m
	slt t0, t1, t0
	beqz t0, .main_b.12
.main_b.11: 
.main_b.2: 
	lw t1, a
	lw t0, i
	slli t0, t0, 2
	add s0, t1, t0
	call g_getInt
	sw a0, 0(s0)
.main_b.4: 
	lw t0, i
	addi t1, t0, 1
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_b.1
.main_b.7: 
.main_b.9: 
.main_b.10: 
	lw a0, i
	call g_printInt
	mv a0, zero
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
.main_b.12: 
.main_b.13: 
	lw t0, i
	addi t1, t0, 1
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_b.5
	.size	main, .-main

	.type	m,@object
	.section	.bss
	.globl	m
	.p2align	2
m:
.Lm$local:
	.word	0
	.size	m, 4

	.type	k,@object
	.section	.bss
	.globl	k
	.p2align	2
k:
.Lk$local:
	.word	0
	.size	k, 4

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

