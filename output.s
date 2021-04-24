	.text
	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	li t1, 15000
	lui t0, %hi(N)
	sw t1, %lo(N)(t0)
	li a0, 15005
	call malloc
	li t0, 15001
	sw t0, 0(a0)
	addi t0, a0, 4
	lui t1, %hi(b)
	sw t0, %lo(b)(t1)
	lui t0, %hi(resultCount)
	sw zero, %lo(resultCount)(t0)
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	__init, .-__init

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	li t1, 15000
	lui t0, %hi(N)
	sw t1, %lo(N)(t0)
	li a0, 15005
	call malloc
	li t0, 15001
	sw t0, 0(a0)
	addi t0, a0, 4
	lui t1, %hi(b)
	sw t0, %lo(b)(t1)
	lui t0, %hi(resultCount)
	sw zero, %lo(resultCount)(t0)
	li t0, 1
.main_b.1: 
	lui t1, %hi(N)
	lw t1, %lo(N)(t1)
	bge t1, t0, .main_b.2
.main_b.3: 
	li s1, 2
.main_b.5: 
	lui t0, %hi(N)
	lw t0, %lo(N)(t0)
	bge t0, s1, .main_b.6
.main_b.7: 
	la s0, .main.1
	lui t0, %hi(resultCount)
	lw a0, %lo(resultCount)(t0)
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	call g_println
	mv a0, zero
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.main_b.2: 
	lui t1, %hi(b)
	lw t2, %lo(b)(t1)
	slli t1, t0, 0
	add t2, t2, t1
	li t1, 1
	sb t1, 0(t2)
.main_b.4: 
	addi t0, t0, 1
	j .main_b.1
.main_b.6: 
	lui t0, %hi(b)
	lw t1, %lo(b)(t0)
	slli t0, s1, 0
	add t0, t1, t0
	lb t0, 0(t0)
	beqz t0, .main_b.9
.main_b.8: 
	li t0, 3
	blt t0, s1, .main_b.10
.main_b.11: 
	li t0, 2
.main_b.13: 
	mul t2, s1, t0
	lui t1, %hi(N)
	lw t1, %lo(N)(t1)
	bge t1, t2, .main_b.14
.main_b.9: 
	addi t0, s1, 1
	mv s1, t0
	j .main_b.5
.main_b.10: 
	addi t2, s1, -2
	lui t0, %hi(b)
	lw t1, %lo(b)(t0)
	slli t0, t2, 0
	add t0, t1, t0
	lb t0, 0(t0)
	beqz t0, .main_b.11
.main_b.12: 
	lui t0, %hi(resultCount)
	lw t0, %lo(resultCount)(t0)
	addi t1, t0, 1
	lui t0, %hi(resultCount)
	sw t1, %lo(resultCount)(t0)
	addi a0, s1, -2
	call g_toString
	la a1, .main.0
	call g_stringadd
	mv s0, a0
	mv a0, s1
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	call g_println
	j .main_b.11
.main_b.14: 
	mul a0, s1, t0
	lui t1, %hi(b)
	lw t2, %lo(b)(t1)
	slli t1, a0, 0
	add t1, t2, t1
	sb zero, 0(t1)
	addi t0, t0, 1
	j .main_b.13
	.size	main, .-main

	.type	N,@object
	.section	.bss
	.globl	N
	.p2align	2
N:
.LN$local:
	.word	0
	.size	N, 4

	.type	resultCount,@object
	.section	.bss
	.globl	resultCount
	.p2align	2
resultCount:
.LresultCount$local:
	.word	0
	.size	resultCount, 4

	.type	b,@object
	.section	.bss
	.globl	b
	.p2align	2
b:
.Lb$local:
	.word	0
	.size	b, 4

	.type	.main.0,@object
	.section	.rodata
.main.0:
	.asciz	" "
	.size	.main.0, 2

	.type	.main.1,@object
	.section	.rodata
.main.1:
	.asciz	"Total: "
	.size	.main.1, 8

