	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -32
	sw s0, 16(sp)
	sw s1, 20(sp)
	sw s2, 24(sp)
	sw s3, 28(sp)
	sw ra, 12(sp)
	li t1, 48271
	lui t0, %hi(A)
	sw t1, %lo(A)(t0)
	li t1, 2147483647
	lui t0, %hi(M)
	sw t1, %lo(M)(t0)
	li t1, 1
	lui t0, %hi(seed)
	sw t1, %lo(seed)(t0)
	li t1, 3
	li t0, 7
	mul t1, t1, t0
	li t0, 10
	mul t1, t1, t0
	lui t0, %hi(n)
	sw t1, %lo(n)(t0)
	lui t0, %hi(h)
	sw zero, %lo(h)(t0)
	li s0, 100
	li t0, 4
	mul t0, s0, t0
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t1, a0, 4
	lui t0, %hi(a)
	sw t1, %lo(a)(t0)
	lui t0, %hi(M)
	lw t1, %lo(M)(t0)
	lui t0, %hi(A)
	lw t0, %lo(A)(t0)
	div t1, t1, t0
	lui t0, %hi(Q)
	sw t1, %lo(Q)(t0)
	lui t0, %hi(M)
	lw t1, %lo(M)(t0)
	lui t0, %hi(A)
	lw t0, %lo(A)(t0)
	rem t1, t1, t0
	lui t0, %hi(R)
	sw t1, %lo(R)(t0)
	lui t0, %hi(n)
	lw t2, %lo(n)(t0)
.main_b.1: 
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	bge t2, t0, .main_b.2
.main_b.3: 
	mv t0, zero
.main_b.6: 
	beqz t0, .main_b.8
.main_b.7: 
	la a0, .main.3
	call g_println
	li t1, 3654898
	lui t0, %hi(seed)
	sw t1, %lo(seed)(t0)
	lui t0, %hi(seed)
	lw t1, %lo(seed)(t0)
	lui t0, %hi(Q)
	lw t0, %lo(Q)(t0)
	rem t1, t1, t0
	lui t0, %hi(A)
	lw t0, %lo(A)(t0)
	mul t2, t0, t1
	lui t0, %hi(seed)
	lw t1, %lo(seed)(t0)
	lui t0, %hi(Q)
	lw t0, %lo(Q)(t0)
	div t1, t1, t0
	lui t0, %hi(R)
	lw t0, %lo(R)(t0)
	mul t0, t0, t1
	sub t1, t2, t0
	bge t1, zero, .main_b.9
.main_b.10: 
	lui t0, %hi(M)
	lw t0, %lo(M)(t0)
	add t1, t1, t0
	lui t0, %hi(seed)
	sw t1, %lo(seed)(t0)
	j .main_b.12
.main_b.2: 
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	addi t1, t0, 1
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	mul t1, t0, t1
	li t0, 2
	div t0, t1, t0
	beq t2, t0, .main_b.4
.main_b.5: 
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	addi t1, t0, 1
	lui t0, %hi(h)
	sw t1, %lo(h)(t0)
	j .main_b.1
.main_b.4: 
	li t0, 1
	j .main_b.6
.main_b.8: 
	la a0, .main.2
	call g_println
	li t0, 0
	li a0, 1
	li t0, 0
	li t0, 0
.main_b.11: 
	lw s0, 16(sp)
	lw s1, 20(sp)
	lw s2, 24(sp)
	lw s3, 28(sp)
	lw ra, 12(sp)
	addi sp, sp, 32
	ret
.main_b.9: 
	lui t0, %hi(seed)
	sw t1, %lo(seed)(t0)
.main_b.12: 
	lui t0, %hi(seed)
	lw t1, %lo(seed)(t0)
	li t0, 10
	rem t0, t1, t0
	addi t1, t0, 1
	lui t0, %hi(now)
	sw t1, %lo(now)(t0)
	lui t0, %hi(now)
	lw a0, %lo(now)(t0)
	call g_toString
	call g_println
	li s3, 0
	li s1, 0
.main_b.13: 
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	addi t0, t0, -1
	blt s3, t0, .main_b.14
.main_b.15: 
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	addi t2, t0, -1
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, t2, 2
	add t1, t1, t0
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	sub t0, t0, s1
	sw t0, 0(t1)
	li s0, 0
.main_b.18: 
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	blt s0, t0, .main_b.20
.main_b.21: 
	la a0, .fun_show.1
	call g_println
	li t0, 0
	li t1, 65536
.main_b.24: 
	lui t2, %hi(now)
	lw t2, %lo(now)(t2)
	blt t0, t2, .main_b.27
.main_b.28: 
	li t0, 0
.main_b.34: 
	lui t1, %hi(now)
	lw t1, %lo(now)(t1)
	blt t0, t1, .main_b.37
.main_b.38: 
	li s0, 0
.main_b.42: 
	li s2, 100
	li t0, 4
	mul t0, s2, t0
	addi a0, t0, 4
	call malloc
	sw s2, 0(a0)
	addi a0, a0, 4
	lui t0, %hi(now)
	lw t1, %lo(now)(t0)
	lui t0, %hi(h)
	lw t0, %lo(h)(t0)
	bne t1, t0, .main_b.45
.main_b.46: 
	li t2, 0
.main_b.48: 
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	blt t2, t0, .main_b.51
.main_b.52: 
	li t0, 65536
	li t1, 0
.main_b.55: 
	lui a1, %hi(now)
	lw a1, %lo(now)(a1)
	addi a1, a1, -1
	blt t1, a1, .main_b.58
.main_b.59: 
	li t1, 0
.main_b.62: 
	lui a1, %hi(now)
	lw a1, %lo(now)(a1)
	blt t1, a1, .main_b.67
.main_b.68: 
	li t0, 1
	j .main_b.47
.main_b.14: 
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, s3, 2
	add t0, t1, t0
	lui t1, %hi(seed)
	lw t2, %lo(seed)(t1)
	lui t1, %hi(Q)
	lw t1, %lo(Q)(t1)
	rem t2, t2, t1
	lui t1, %hi(A)
	lw t1, %lo(A)(t1)
	mul a0, t1, t2
	lui t1, %hi(seed)
	lw t2, %lo(seed)(t1)
	lui t1, %hi(Q)
	lw t1, %lo(Q)(t1)
	div t2, t2, t1
	lui t1, %hi(R)
	lw t1, %lo(R)(t1)
	mul t1, t1, t2
	sub t2, a0, t1
	bge t2, zero, .main_b.16
.main_b.17: 
	lui t1, %hi(M)
	lw t1, %lo(M)(t1)
	add t2, t2, t1
	lui t1, %hi(seed)
	sw t2, %lo(seed)(t1)
	j .main_b.19
.main_b.16: 
	lui t1, %hi(seed)
	sw t2, %lo(seed)(t1)
.main_b.19: 
	lui t1, %hi(seed)
	lw t2, %lo(seed)(t1)
	li t1, 10
	rem t1, t2, t1
	addi t1, t1, 1
	sw t1, 0(t0)
.main_b.22: 
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, s3, 2
	add t0, t1, t0
	lw t0, 0(t0)
	add t1, t0, s1
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	blt t0, t1, .main_b.25
.main_b.26: 
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, s3, 2
	add t0, t1, t0
	lw t0, 0(t0)
	add t0, s1, t0
.main_b.31: 
	addi t1, s3, 1
	mv s3, t1
	mv s1, t0
	j .main_b.13
.main_b.20: 
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, s0, 2
	add t0, t1, t0
	lw a0, 0(t0)
	call g_toString
	la a1, .fun_show.0
	call g_stringadd
	call g_print
.main_b.23: 
	addi t0, s0, 1
	mv s0, t0
	j .main_b.18
.main_b.25: 
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, s3, 2
	add t0, t1, t0
	lui t1, %hi(seed)
	lw t2, %lo(seed)(t1)
	lui t1, %hi(Q)
	lw t1, %lo(Q)(t1)
	rem t2, t2, t1
	lui t1, %hi(A)
	lw t1, %lo(A)(t1)
	mul a0, t1, t2
	lui t1, %hi(seed)
	lw t2, %lo(seed)(t1)
	lui t1, %hi(Q)
	lw t1, %lo(Q)(t1)
	div t2, t2, t1
	lui t1, %hi(R)
	lw t1, %lo(R)(t1)
	mul t1, t1, t2
	sub t2, a0, t1
	bge t2, zero, .main_b.29
.main_b.30: 
	lui t1, %hi(M)
	lw t1, %lo(M)(t1)
	add t2, t2, t1
	lui t1, %hi(seed)
	sw t2, %lo(seed)(t1)
	j .main_b.35
.main_b.27: 
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t0, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, .main_b.32
.main_b.33: 
	addi t0, t0, 1
	j .main_b.24
.main_b.29: 
	lui t1, %hi(seed)
	sw t2, %lo(seed)(t1)
.main_b.35: 
	lui t1, %hi(seed)
	lw t2, %lo(seed)(t1)
	li t1, 10
	rem t1, t2, t1
	addi t1, t1, 1
	sw t1, 0(t0)
	j .main_b.22
.main_b.32: 
	addi t1, t0, 1
.main_b.36: 
	lui t2, %hi(now)
	lw t2, %lo(now)(t2)
	blt t1, t2, .main_b.39
	j .main_b.33
.main_b.37: 
	lui t1, %hi(a)
	lw t2, %lo(a)(t1)
	slli t1, t0, 2
	add t1, t2, t1
	lw t1, 0(t1)
	beq t1, zero, .main_b.40
.main_b.41: 
	addi t0, t0, 1
	j .main_b.34
.main_b.39: 
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t1, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bne t2, zero, .main_b.43
.main_b.44: 
	addi t1, t1, 1
	j .main_b.36
.main_b.40: 
	lui t1, %hi(now)
	sw t0, %lo(now)(t1)
	j .main_b.38
.main_b.43: 
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t0, 2
	add t2, a0, t2
	lw a2, 0(t2)
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t0, 2
	add a1, a0, t2
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t1, 2
	add t2, a0, t2
	lw t2, 0(t2)
	sw t2, 0(a1)
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t1, 2
	add t2, a0, t2
	sw a2, 0(t2)
	j .main_b.33
.main_b.45: 
	li t0, 65536
	mv t0, zero
	li t1, 65536
	li t2, 65536
.main_b.47: 
	beqz t0, .main_b.50
.main_b.49: 
	la s2, .main.6
	mv a0, s0
	call g_toString
	mv a1, a0
	mv a0, s2
	call g_stringadd
	la a1, .main.7
	call g_stringadd
	call g_println
	mv t0, s0
	li a0, 0
	mv t0, s3
	mv t0, s1
	j .main_b.11
.main_b.50: 
	la s2, .main.4
	addi s0, s0, 1
	mv a0, s0
	call g_toString
	mv a1, a0
	mv a0, s2
	call g_stringadd
	la a1, .main.5
	call g_stringadd
	call g_println
	li t0, 0
.main_b.53: 
	lui t1, %hi(now)
	lw t1, %lo(now)(t1)
	blt t0, t1, .main_b.56
.main_b.57: 
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	slli t0, t0, 2
	add t1, t1, t0
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	sw t0, 0(t1)
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	addi t1, t0, 1
	lui t0, %hi(now)
	sw t1, %lo(now)(t0)
	li t0, 65536
	li t1, 0
.main_b.60: 
	lui t2, %hi(now)
	lw t2, %lo(now)(t2)
	blt t1, t2, .main_b.63
.main_b.64: 
	li t0, 0
.main_b.71: 
	lui t1, %hi(now)
	lw t1, %lo(now)(t1)
	blt t0, t1, .main_b.77
.main_b.78: 
	li s2, 0
.main_b.82: 
	lui t0, %hi(now)
	lw t0, %lo(now)(t0)
	blt s2, t0, .main_b.85
.main_b.86: 
	la a0, .fun_show.1
	call g_println
	j .main_b.42
.main_b.51: 
	slli t0, t2, 2
	add a1, a0, t0
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, t2, 2
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, 0(a1)
.main_b.54: 
	addi t2, t2, 1
	j .main_b.48
.main_b.56: 
	lui t1, %hi(a)
	lw t2, %lo(a)(t1)
	slli t1, t0, 2
	add t2, t2, t1
	lw t1, 0(t2)
	addi t1, t1, -1
	sw t1, 0(t2)
	addi t0, t0, 1
	j .main_b.53
.main_b.58: 
	addi t2, t1, 1
.main_b.61: 
	lui a1, %hi(now)
	lw a1, %lo(now)(a1)
	blt t2, a1, .main_b.65
.main_b.66: 
	addi t1, t1, 1
	j .main_b.55
.main_b.63: 
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t1, 2
	add t2, a0, t2
	lw t2, 0(t2)
	beq t2, zero, .main_b.69
.main_b.70: 
	addi t1, t1, 1
	j .main_b.60
.main_b.65: 
	slli a1, t1, 2
	add a2, a0, a1
	slli a1, t2, 2
	add a1, a0, a1
	lw a2, 0(a2)
	lw a1, 0(a1)
	blt a1, a2, .main_b.72
.main_b.73: 
	addi t2, t2, 1
	j .main_b.61
.main_b.67: 
	slli a1, t1, 2
	add a1, a0, a1
	addi a2, t1, 1
	lw a1, 0(a1)
	bne a1, a2, .main_b.74
.main_b.75: 
	addi t1, t1, 1
	j .main_b.62
.main_b.69: 
	addi t0, t1, 1
.main_b.76: 
	lui t2, %hi(now)
	lw t2, %lo(now)(t2)
	blt t0, t2, .main_b.79
	j .main_b.70
.main_b.72: 
	slli t0, t1, 2
	add t0, a0, t0
	lw t0, 0(t0)
	slli a1, t1, 2
	add a2, a0, a1
	slli a1, t2, 2
	add a1, a0, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	slli a1, t2, 2
	add a1, a0, a1
	sw t0, 0(a1)
	j .main_b.73
.main_b.74: 
	mv t0, zero
	j .main_b.47
.main_b.77: 
	lui t1, %hi(a)
	lw t2, %lo(a)(t1)
	slli t1, t0, 2
	add t1, t2, t1
	lw t1, 0(t1)
	beq t1, zero, .main_b.80
.main_b.81: 
	addi t0, t0, 1
	j .main_b.71
.main_b.79: 
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t0, 2
	add t2, a0, t2
	lw t2, 0(t2)
	bne t2, zero, .main_b.83
.main_b.84: 
	addi t0, t0, 1
	j .main_b.76
.main_b.80: 
	lui t1, %hi(now)
	sw t0, %lo(now)(t1)
	j .main_b.78
.main_b.83: 
	lui t2, %hi(a)
	lw a0, %lo(a)(t2)
	slli t2, t1, 2
	add t2, a0, t2
	lw t2, 0(t2)
	lui a0, %hi(a)
	lw a1, %lo(a)(a0)
	slli a0, t1, 2
	add a2, a1, a0
	lui a0, %hi(a)
	lw a1, %lo(a)(a0)
	slli a0, t0, 2
	add a0, a1, a0
	lw a0, 0(a0)
	sw a0, 0(a2)
	lui a0, %hi(a)
	lw a1, %lo(a)(a0)
	slli a0, t0, 2
	add a0, a1, a0
	sw t2, 0(a0)
	j .main_b.70
.main_b.85: 
	lui t0, %hi(a)
	lw t1, %lo(a)(t0)
	slli t0, s2, 2
	add t0, t1, t0
	lw a0, 0(t0)
	call g_toString
	la a1, .fun_show.0
	call g_stringadd
	call g_print
.main_b.87: 
	addi t0, s2, 1
	mv s2, t0
	j .main_b.82
	.size	main, .-main

	.type	M,@object
	.section	.bss
	.globl	M
	.p2align	2
M:
.LM$local:
	.word	0
	.size	M, 4

	.type	seed,@object
	.section	.bss
	.globl	seed
	.p2align	2
seed:
.Lseed$local:
	.word	0
	.size	seed, 4

	.type	A,@object
	.section	.bss
	.globl	A
	.p2align	2
A:
.LA$local:
	.word	0
	.size	A, 4

	.type	h,@object
	.section	.bss
	.globl	h
	.p2align	2
h:
.Lh$local:
	.word	0
	.size	h, 4

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

	.type	a,@object
	.section	.bss
	.globl	a
	.p2align	2
a:
.La$local:
	.word	0
	.size	a, 4

	.type	Q,@object
	.section	.bss
	.globl	Q
	.p2align	2
Q:
.LQ$local:
	.word	0
	.size	Q, 4

	.type	R,@object
	.section	.bss
	.globl	R
	.p2align	2
R:
.LR$local:
	.word	0
	.size	R, 4

	.type	now,@object
	.section	.bss
	.globl	now
	.p2align	2
now:
.Lnow$local:
	.word	0
	.size	now, 4

	.type	.fun_show.0,@object
	.section	.rodata
.fun_show.0:
	.asciz	" "
	.size	.fun_show.0, 2

	.type	.main.4,@object
	.section	.rodata
.main.4:
	.asciz	"step "
	.size	.main.4, 6

	.type	.main.7,@object
	.section	.rodata
.main.7:
	.asciz	" step(s)"
	.size	.main.7, 9

	.type	.main.6,@object
	.section	.rodata
.main.6:
	.asciz	"Total: "
	.size	.main.6, 8

	.type	.main.5,@object
	.section	.rodata
.main.5:
	.asciz	":"
	.size	.main.5, 2

	.type	.main.2,@object
	.section	.rodata
.main.2:
	.asciz	"Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i"
	.size	.main.2, 80

	.type	.fun_show.1,@object
	.section	.rodata
.fun_show.1:
	.asciz	""
	.size	.fun_show.1, 1

	.type	.main.3,@object
	.section	.rodata
.main.3:
	.asciz	"Let's start!"
	.size	.main.3, 13

