	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -48
	sw s0, 12(sp)
	sw s1, 16(sp)
	sw s2, 20(sp)
	sw s3, 24(sp)
	sw s4, 28(sp)
	sw s5, 32(sp)
	sw s6, 36(sp)
	sw s7, 40(sp)
	sw s8, 44(sp)
	sw ra, 8(sp)
	li a0, 4
	call malloc
	mv s0, a0
	li t0, 19260817
	sw t0, 0(s0)
	mv s3, s0
	mv s6, s0
	mv s8, s0
	mv s7, s0
	mv s4, s0
	mv s5, s0
	mv s1, s0
	li s2, 0
.main_b.1: 
	lw t1, 0(s3)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.2
.main_b.3: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.4
.main_b.2: 
	srai t0, t2, 17
.main_b.4: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	sw t1, 0(s6)
	li t0, 1073741823
	and t0, t1, t0
	andi t1, t0, 255
	lw t2, 0(s8)
	slli t0, t2, 13
	xor a0, t2, t0
	bge a0, zero, .main_b.5
.main_b.6: 
	li t0, -2147483648
	xor t0, a0, t0
	srai t2, t0, 17
	li t0, 16384
	or t0, t0, t2
	j .main_b.7
.main_b.5: 
	srai t0, a0, 17
.main_b.7: 
	xor t2, a0, t0
	slli t0, t2, 5
	xor t2, t2, t0
	sw t2, 0(s5)
	li t0, 1073741823
	and t0, t2, t0
	andi t0, t0, 255
	bne t1, t0, .main_b.8
.main_b.9: 
	li t0, 5647
	xor t0, s2, t0
	bne t0, zero, .main_b.12
.main_b.13: 
	li a0, 0
	j .main_b.15
.main_b.8: 
	lw t1, 0(s0)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.10
.main_b.11: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.14
.main_b.10: 
	srai t0, t2, 17
.main_b.14: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	sw t1, 0(s7)
	li t0, 1073741823
	and t0, t1, t0
	addi t0, t0, 1
	lw t2, 0(s4)
	slli t1, t2, 13
	xor a0, t2, t1
	bge a0, zero, .main_b.16
.main_b.17: 
	li t1, -2147483648
	xor t1, a0, t1
	srai t2, t1, 17
	li t1, 16384
	or t1, t1, t2
	j .main_b.18
.main_b.12: 
	li a0, -1
.main_b.15: 
	lw s0, 12(sp)
	lw s1, 16(sp)
	lw s2, 20(sp)
	lw s3, 24(sp)
	lw s4, 28(sp)
	lw s5, 32(sp)
	lw s6, 36(sp)
	lw s7, 40(sp)
	lw s8, 44(sp)
	lw ra, 8(sp)
	addi sp, sp, 48
	ret
.main_b.16: 
	srai t1, a0, 17
.main_b.18: 
	xor t2, a0, t1
	slli t1, t2, 5
	xor t2, t2, t1
	sw t2, 0(s1)
	li t1, 1073741823
	and t1, t2, t1
	addi t1, t1, 1
	blt zero, t1, .main_b.19
.main_b.20: 
	mv t1, t0
	j .main_b.22
.main_b.19: 
	rem a0, t0, t1
	blt zero, a0, .main_b.21
.main_b.22: 
	xor t0, s2, t1
	mv s2, t0
	j .main_b.1
.main_b.21: 
	rem t0, t1, a0
	blt zero, t0, .main_b.23
.main_b.24: 
	mv t1, a0
	j .main_b.22
.main_b.23: 
	rem a0, a0, t0
	blt zero, a0, .main_b.25
.main_b.26: 
	mv a0, t0
	j .main_b.24
.main_b.25: 
	rem t0, t0, a0
	blt zero, t0, .main_b.27
	j .main_b.24
.main_b.27: 
	rem a0, a0, t0
	blt zero, a0, .main_b.28
.main_b.29: 
	mv a0, t0
	j .main_b.24
.main_b.28: 
	rem t0, t0, a0
	blt zero, t0, .main_b.30
	j .main_b.24
.main_b.30: 
	rem a0, a0, t0
	blt zero, a0, .main_b.31
.main_b.32: 
	mv a0, t0
	j .main_b.24
.main_b.31: 
	rem t0, t0, a0
	blt zero, t0, .main_b.33
	j .main_b.24
.main_b.33: 
	rem a0, a0, t0
	blt zero, a0, .main_b.34
.main_b.35: 
	mv a0, t0
	j .main_b.24
.main_b.34: 
	rem t0, t0, a0
	blt zero, t0, .main_b.36
	j .main_b.24
.main_b.36: 
	rem t1, a0, t0
	blt zero, t1, .main_b.37
.main_b.38: 
	mv a0, t0
	j .main_b.24
.main_b.37: 
	rem a0, t0, t1
	blt zero, a0, .main_b.39
.main_b.40: 
	mv a0, t1
	j .main_b.24
.main_b.39: 
	rem t0, t1, a0
	blt zero, t0, .main_b.41
	j .main_b.24
.main_b.41: 
	rem a1, a0, t0
	blt zero, a1, .main_b.42
.main_b.43: 
	mv a0, t0
	j .main_b.24
.main_b.42: 
	rem a2, t0, a1
	mv a0, s0
	call cls_taskInline_gcd
	j .main_b.24
	.size	main, .-main

	.globl	cls_taskInline_gcd
	.p2align	1
	.type	cls_taskInline_gcd,@function
cls_taskInline_gcd:
.cls_taskInline_gcd_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	blt zero, a2, .cls_taskInline_gcd_b.1
.cls_taskInline_gcd_b.2: 
	mv a0, a1
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.cls_taskInline_gcd_b.1: 
	rem a1, a1, a2
	blt zero, a1, .cls_taskInline_gcd_b.3
.cls_taskInline_gcd_b.4: 
	mv a1, a2
	j .cls_taskInline_gcd_b.2
.cls_taskInline_gcd_b.3: 
	rem t0, a2, a1
	blt zero, t0, .cls_taskInline_gcd_b.5
	j .cls_taskInline_gcd_b.2
.cls_taskInline_gcd_b.5: 
	rem t2, a1, t0
	blt zero, t2, .cls_taskInline_gcd_b.6
.cls_taskInline_gcd_b.7: 
	mv a1, t0
	j .cls_taskInline_gcd_b.2
.cls_taskInline_gcd_b.6: 
	rem t1, t0, t2
	blt zero, t1, .cls_taskInline_gcd_b.8
.cls_taskInline_gcd_b.9: 
	mv t0, t2
	j .cls_taskInline_gcd_b.7
.cls_taskInline_gcd_b.8: 
	rem t0, t2, t1
	blt zero, t0, .cls_taskInline_gcd_b.10
.cls_taskInline_gcd_b.11: 
	mv t0, t1
	j .cls_taskInline_gcd_b.7
.cls_taskInline_gcd_b.10: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.12
	j .cls_taskInline_gcd_b.7
.cls_taskInline_gcd_b.12: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.13
.cls_taskInline_gcd_b.14: 
	mv t0, t1
	j .cls_taskInline_gcd_b.7
.cls_taskInline_gcd_b.13: 
	rem t2, t1, t0
	blt zero, t2, .cls_taskInline_gcd_b.15
.cls_taskInline_gcd_b.16: 
	mv t1, t0
	j .cls_taskInline_gcd_b.14
.cls_taskInline_gcd_b.15: 
	rem t1, t0, t2
	blt zero, t1, .cls_taskInline_gcd_b.17
.cls_taskInline_gcd_b.18: 
	mv t1, t2
	j .cls_taskInline_gcd_b.14
.cls_taskInline_gcd_b.17: 
	rem t0, t2, t1
	blt zero, t0, .cls_taskInline_gcd_b.19
	j .cls_taskInline_gcd_b.14
.cls_taskInline_gcd_b.19: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.20
.cls_taskInline_gcd_b.21: 
	mv t1, t0
	j .cls_taskInline_gcd_b.14
.cls_taskInline_gcd_b.20: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.22
.cls_taskInline_gcd_b.23: 
	mv t0, t1
	j .cls_taskInline_gcd_b.21
.cls_taskInline_gcd_b.22: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.24
.cls_taskInline_gcd_b.25: 
	mv t1, t0
	j .cls_taskInline_gcd_b.23
.cls_taskInline_gcd_b.24: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.26
	j .cls_taskInline_gcd_b.23
.cls_taskInline_gcd_b.26: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.27
.cls_taskInline_gcd_b.28: 
	mv t1, t0
	j .cls_taskInline_gcd_b.23
.cls_taskInline_gcd_b.27: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.29
.cls_taskInline_gcd_b.30: 
	mv t0, t1
	j .cls_taskInline_gcd_b.28
.cls_taskInline_gcd_b.29: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.31
	j .cls_taskInline_gcd_b.28
.cls_taskInline_gcd_b.31: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.32
.cls_taskInline_gcd_b.33: 
	mv t0, t1
	j .cls_taskInline_gcd_b.28
.cls_taskInline_gcd_b.32: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.34
	j .cls_taskInline_gcd_b.28
.cls_taskInline_gcd_b.34: 
	rem t2, t0, t1
	blt zero, t2, .cls_taskInline_gcd_b.35
.cls_taskInline_gcd_b.36: 
	mv t0, t1
	j .cls_taskInline_gcd_b.28
.cls_taskInline_gcd_b.35: 
	rem t0, t1, t2
	blt zero, t0, .cls_taskInline_gcd_b.37
.cls_taskInline_gcd_b.38: 
	mv t1, t2
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.37: 
	rem t1, t2, t0
	blt zero, t1, .cls_taskInline_gcd_b.39
.cls_taskInline_gcd_b.40: 
	mv t1, t0
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.39: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.41
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.41: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.42
.cls_taskInline_gcd_b.43: 
	mv t1, t0
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.42: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.44
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.44: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.45
.cls_taskInline_gcd_b.46: 
	mv t1, t0
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.45: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.47
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.47: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.48
.cls_taskInline_gcd_b.49: 
	mv t1, t0
	j .cls_taskInline_gcd_b.36
.cls_taskInline_gcd_b.48: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.50
.cls_taskInline_gcd_b.51: 
	mv t0, t1
	j .cls_taskInline_gcd_b.49
.cls_taskInline_gcd_b.50: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.52
	j .cls_taskInline_gcd_b.49
.cls_taskInline_gcd_b.52: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.53
.cls_taskInline_gcd_b.54: 
	mv t0, t1
	j .cls_taskInline_gcd_b.49
.cls_taskInline_gcd_b.53: 
	rem t2, t1, t0
	blt zero, t2, .cls_taskInline_gcd_b.55
	j .cls_taskInline_gcd_b.49
.cls_taskInline_gcd_b.55: 
	rem t1, t0, t2
	blt zero, t1, .cls_taskInline_gcd_b.56
.cls_taskInline_gcd_b.57: 
	mv t0, t2
	j .cls_taskInline_gcd_b.49
.cls_taskInline_gcd_b.56: 
	rem t0, t2, t1
	blt zero, t0, .cls_taskInline_gcd_b.58
.cls_taskInline_gcd_b.59: 
	mv t2, t1
	j .cls_taskInline_gcd_b.57
.cls_taskInline_gcd_b.58: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.60
.cls_taskInline_gcd_b.61: 
	mv t1, t0
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.60: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.62
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.62: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.63
.cls_taskInline_gcd_b.64: 
	mv t1, t0
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.63: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.65
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.65: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.66
.cls_taskInline_gcd_b.67: 
	mv t1, t0
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.66: 
	rem t2, t0, t1
	blt zero, t2, .cls_taskInline_gcd_b.68
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.68: 
	rem t0, t1, t2
	blt zero, t0, .cls_taskInline_gcd_b.69
.cls_taskInline_gcd_b.70: 
	mv t1, t2
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.69: 
	rem t1, t2, t0
	blt zero, t1, .cls_taskInline_gcd_b.71
.cls_taskInline_gcd_b.72: 
	mv t1, t0
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.71: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.73
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.73: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.74
.cls_taskInline_gcd_b.75: 
	mv t1, t0
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.74: 
	rem t2, t0, t1
	blt zero, t2, .cls_taskInline_gcd_b.76
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.76: 
	rem t0, t1, t2
	blt zero, t0, .cls_taskInline_gcd_b.77
.cls_taskInline_gcd_b.78: 
	mv t1, t2
	j .cls_taskInline_gcd_b.59
.cls_taskInline_gcd_b.77: 
	rem t1, t2, t0
	blt zero, t1, .cls_taskInline_gcd_b.79
.cls_taskInline_gcd_b.80: 
	mv t2, t0
	j .cls_taskInline_gcd_b.78
.cls_taskInline_gcd_b.79: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.81
.cls_taskInline_gcd_b.82: 
	mv t0, t1
	j .cls_taskInline_gcd_b.80
.cls_taskInline_gcd_b.81: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.83
.cls_taskInline_gcd_b.84: 
	mv t1, t0
	j .cls_taskInline_gcd_b.82
.cls_taskInline_gcd_b.83: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.85
.cls_taskInline_gcd_b.86: 
	mv t0, t1
	j .cls_taskInline_gcd_b.84
.cls_taskInline_gcd_b.85: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.87
.cls_taskInline_gcd_b.88: 
	mv t1, t0
	j .cls_taskInline_gcd_b.86
.cls_taskInline_gcd_b.87: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.89
	j .cls_taskInline_gcd_b.86
.cls_taskInline_gcd_b.89: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.90
.cls_taskInline_gcd_b.91: 
	mv t1, t0
	j .cls_taskInline_gcd_b.86
.cls_taskInline_gcd_b.90: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.92
.cls_taskInline_gcd_b.93: 
	mv t0, t1
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.92: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.94
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.94: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.95
.cls_taskInline_gcd_b.96: 
	mv t0, t1
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.95: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.97
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.97: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.98
.cls_taskInline_gcd_b.99: 
	mv t0, t1
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.98: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.100
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.100: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.101
.cls_taskInline_gcd_b.102: 
	mv t0, t1
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.101: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.103
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.103: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.104
.cls_taskInline_gcd_b.105: 
	mv t0, t1
	j .cls_taskInline_gcd_b.91
.cls_taskInline_gcd_b.104: 
	rem a1, t1, t0
	blt zero, a1, .cls_taskInline_gcd_b.106
.cls_taskInline_gcd_b.107: 
	mv t1, t0
	j .cls_taskInline_gcd_b.105
.cls_taskInline_gcd_b.106: 
	rem a2, t0, a1
	call cls_taskInline_gcd
	mv t1, a0
	j .cls_taskInline_gcd_b.105
	.size	cls_taskInline_gcd, .-cls_taskInline_gcd

