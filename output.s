	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call g_getInt
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	lui t0, %hi(n)
	lw a0, %lo(n)(t0)
	li a1, -1
	call fun_find
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	fun_find
	.p2align	1
	.type	fun_find,@function
fun_find:
.fun_find_b.0: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	mv s1, a0
	mv s2, a1
	li t0, 1
	beq s1, t0, .fun_find_b.1
.fun_find_b.2: 
	li t0, 2
.fun_find_b.4: 
	mul t1, t0, t0
	bge s1, t1, .fun_find_b.7
.fun_find_b.8: 
	li t0, 1
	j .fun_find_b.3
.fun_find_b.1: 
	mv t0, zero
.fun_find_b.3: 
	beqz t0, .fun_find_b.6
.fun_find_b.5: 
	blt zero, s2, .fun_find_b.9
.fun_find_b.10: 
	la a0, .fun_find.2
	call g_println
	mv a0, s1
	call g_toString
	call g_println
	j .fun_find_b.15
.fun_find_b.6: 
	li t0, -1
	beq s2, t0, .fun_find_b.11
.fun_find_b.12: 
	addi t0, s1, -1
	mv s0, t0
.fun_find_b.17: 
	li t0, 1
	beq s0, t0, .fun_find_b.20
.fun_find_b.21: 
	li t0, 2
.fun_find_b.25: 
	mul t1, t0, t0
	bge s0, t1, .fun_find_b.32
.fun_find_b.33: 
	li t0, 1
	j .fun_find_b.24
.fun_find_b.7: 
	rem t1, s1, t0
	beq t1, zero, .fun_find_b.13
.fun_find_b.14: 
	addi t0, t0, 1
	j .fun_find_b.4
.fun_find_b.9: 
	la a0, .fun_find.0
	call g_println
	mv a0, s2
	call g_toString
	la a1, .fun_find.1
	call g_stringadd
	mv s0, a0
	mv a0, s1
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	call g_println
.fun_find_b.15: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
.fun_find_b.11: 
	addi t0, s1, -2
	mv s0, t0
.fun_find_b.16: 
	li t0, 1
	beq s0, t0, .fun_find_b.18
.fun_find_b.19: 
	li t0, 2
.fun_find_b.23: 
	mul t1, t0, t0
	bge s0, t1, .fun_find_b.28
.fun_find_b.29: 
	li t0, 1
	j .fun_find_b.22
.fun_find_b.13: 
	mv t0, zero
	j .fun_find_b.3
.fun_find_b.18: 
	mv t0, zero
.fun_find_b.22: 
	beqz t0, .fun_find_b.27
.fun_find_b.26: 
	sub s2, s1, s0
	li t0, 1
	beq s2, t0, .fun_find_b.34
.fun_find_b.35: 
	li t0, 2
.fun_find_b.43: 
	mul t1, t0, t0
	bge s2, t1, .fun_find_b.48
.fun_find_b.49: 
	li t0, 1
	j .fun_find_b.42
.fun_find_b.20: 
	mv t0, zero
.fun_find_b.24: 
	beqz t0, .fun_find_b.31
.fun_find_b.30: 
	sub t2, s1, s0
	li t0, 1
	beq t2, t0, .fun_find_b.38
.fun_find_b.39: 
	li t0, 2
.fun_find_b.45: 
	mul t1, t0, t0
	bge t2, t1, .fun_find_b.51
.fun_find_b.52: 
	li t0, 1
	j .fun_find_b.44
.fun_find_b.27: 
	addi t0, s0, -1
	mv s0, t0
	j .fun_find_b.16
.fun_find_b.28: 
	rem t1, s0, t0
	beq t1, zero, .fun_find_b.36
.fun_find_b.37: 
	addi t0, t0, 1
	j .fun_find_b.23
.fun_find_b.31: 
	addi t0, s0, -1
	mv s0, t0
	j .fun_find_b.17
.fun_find_b.32: 
	rem t1, s0, t0
	beq t1, zero, .fun_find_b.40
.fun_find_b.41: 
	addi t0, t0, 1
	j .fun_find_b.25
.fun_find_b.34: 
	mv t0, zero
.fun_find_b.42: 
	beqz t0, .fun_find_b.47
.fun_find_b.46: 
	blt zero, s0, .fun_find_b.53
.fun_find_b.54: 
	la a0, .fun_find.2
	call g_println
	mv a0, s2
	call g_toString
	call g_println
	j .fun_find_b.15
.fun_find_b.36: 
	mv t0, zero
	j .fun_find_b.22
.fun_find_b.38: 
	mv t0, zero
.fun_find_b.44: 
	beqz t0, .fun_find_b.31
.fun_find_b.50: 
	la a0, .fun_find.3
	call g_println
	mv a0, s2
	call g_toString
	la a1, .fun_find.1
	call g_stringadd
	mv s2, a0
	mv a0, s0
	call g_toString
	mv a1, a0
	mv a0, s2
	call g_stringadd
	la a1, .fun_find.1
	call g_stringadd
	mv s2, a0
	sub a0, s1, s0
	call g_toString
	mv a1, a0
	mv a0, s2
	call g_stringadd
	call g_println
	j .fun_find_b.15
.fun_find_b.40: 
	mv t0, zero
	j .fun_find_b.24
.fun_find_b.47: 
	li t0, -1
	beq s0, t0, .fun_find_b.55
.fun_find_b.56: 
	addi t0, s2, -1
	mv s1, t0
.fun_find_b.62: 
	li t0, 1
	beq s1, t0, .fun_find_b.65
.fun_find_b.66: 
	li t0, 2
.fun_find_b.70: 
	mul t1, t0, t0
	bge s1, t1, .fun_find_b.77
.fun_find_b.78: 
	li t0, 1
	j .fun_find_b.69
.fun_find_b.48: 
	rem t1, s2, t0
	beq t1, zero, .fun_find_b.57
.fun_find_b.58: 
	addi t0, t0, 1
	j .fun_find_b.43
.fun_find_b.51: 
	rem t1, t2, t0
	beq t1, zero, .fun_find_b.59
.fun_find_b.60: 
	addi t0, t0, 1
	j .fun_find_b.45
.fun_find_b.53: 
	la a0, .fun_find.0
	call g_println
	mv a0, s0
	call g_toString
	la a1, .fun_find.1
	call g_stringadd
	mv s0, a0
	mv a0, s2
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	call g_println
	j .fun_find_b.15
.fun_find_b.55: 
	addi a1, s2, -2
.fun_find_b.61: 
	li t0, 1
	beq a1, t0, .fun_find_b.63
.fun_find_b.64: 
	li t0, 2
.fun_find_b.68: 
	mul t1, t0, t0
	bge a1, t1, .fun_find_b.73
.fun_find_b.74: 
	li t0, 1
	j .fun_find_b.67
.fun_find_b.57: 
	mv t0, zero
	j .fun_find_b.42
.fun_find_b.59: 
	mv t0, zero
	j .fun_find_b.44
.fun_find_b.63: 
	mv t0, zero
.fun_find_b.67: 
	beqz t0, .fun_find_b.72
.fun_find_b.71: 
	sub a0, s2, a1
	call fun_find
	j .fun_find_b.15
.fun_find_b.65: 
	mv t0, zero
.fun_find_b.69: 
	beqz t0, .fun_find_b.76
.fun_find_b.75: 
	sub t2, s2, s1
	li t0, 1
	beq t2, t0, .fun_find_b.81
.fun_find_b.82: 
	li t0, 2
.fun_find_b.86: 
	mul t1, t0, t0
	bge t2, t1, .fun_find_b.88
.fun_find_b.89: 
	li t0, 1
	j .fun_find_b.85
.fun_find_b.72: 
	addi a1, a1, -1
	j .fun_find_b.61
.fun_find_b.73: 
	rem t1, a1, t0
	beq t1, zero, .fun_find_b.79
.fun_find_b.80: 
	addi t0, t0, 1
	j .fun_find_b.68
.fun_find_b.76: 
	addi t0, s1, -1
	mv s1, t0
	j .fun_find_b.62
.fun_find_b.77: 
	rem t1, s1, t0
	beq t1, zero, .fun_find_b.83
.fun_find_b.84: 
	addi t0, t0, 1
	j .fun_find_b.70
.fun_find_b.79: 
	mv t0, zero
	j .fun_find_b.67
.fun_find_b.81: 
	mv t0, zero
.fun_find_b.85: 
	beqz t0, .fun_find_b.76
.fun_find_b.87: 
	la a0, .fun_find.3
	call g_println
	mv a0, s0
	call g_toString
	la a1, .fun_find.1
	call g_stringadd
	mv s0, a0
	mv a0, s1
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	la a1, .fun_find.1
	call g_stringadd
	mv s0, a0
	sub a0, s2, s1
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	call g_println
	j .fun_find_b.15
.fun_find_b.83: 
	mv t0, zero
	j .fun_find_b.69
.fun_find_b.88: 
	rem t1, t2, t0
	beq t1, zero, .fun_find_b.90
.fun_find_b.91: 
	addi t0, t0, 1
	j .fun_find_b.86
.fun_find_b.90: 
	mv t0, zero
	j .fun_find_b.85
	.size	fun_find, .-fun_find

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

	.type	.fun_find.1,@object
	.section	.rodata
.fun_find.1:
	.asciz	" "
	.size	.fun_find.1, 2

	.type	.fun_find.0,@object
	.section	.rodata
.fun_find.0:
	.asciz	"2"
	.size	.fun_find.0, 2

	.type	.fun_find.2,@object
	.section	.rodata
.fun_find.2:
	.asciz	"1"
	.size	.fun_find.2, 2

	.type	.fun_find.3,@object
	.section	.rodata
.fun_find.3:
	.asciz	"3"
	.size	.fun_find.3, 2

