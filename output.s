	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -256
	sw s0, 20(sp)
	sw s1, 24(sp)
	sw s2, 28(sp)
	sw s3, 32(sp)
	sw s4, 36(sp)
	sw s5, 40(sp)
	sw s6, 44(sp)
	sw s7, 48(sp)
	sw s8, 52(sp)
	sw s9, 56(sp)
	sw s10, 60(sp)
	sw s11, 64(sp)
	sw ra, 16(sp)
	li a0, 28
	call malloc
	mv s0, a0
	li t0, 999
	sw t0, 0(s0)
	addi t1, s0, 4
	li t0, 998244353
	sw t0, 0(t1)
	addi s2, s0, 8
	lw s1, 0(s0)
	slli t0, s1, 2
	addi a0, t0, 4
	call malloc
	sw s1, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s2)
	addi s2, s0, 12
	lw s1, 0(s0)
	slli t0, s1, 2
	addi a0, t0, 4
	call malloc
	sw s1, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s2)
	addi s1, s0, 16
	call g_getInt
	sw a0, 0(s1)
	addi s1, s0, 24
	call g_getInt
	sw a0, 0(s1)
	addi t0, s0, 8
	lw s3, 0(t0)
	addi t0, s0, 16
	lw s2, 0(t0)
	li s1, 0
.main_b.1: 
	bge s2, s1, .main_b.2
.main_b.3: 
	addi t1, s0, 24
	addi t0, s0, 12
	lw s3, 0(t0)
	lw s2, 0(t1)
	li s1, 0
.main_b.4: 
	bge s2, s1, .main_b.5
.main_b.6: 
	addi t1, s0, 20
	li t0, 1
	sw t0, 0(t1)
	addi t0, s0, 20
	addi t1, s0, 20
	addi a3, s0, 20
	addi a2, s0, 16
	addi a1, s0, 24
.main_b.7: 
	lw a0, 0(a2)
	lw t2, 0(a1)
	add a0, a0, t2
	lw t2, 0(a3)
	bge a0, t2, .main_b.8
.main_b.9: 
	addi t0, s0, 20
	lw a1, 0(t0)
	addi t0, s0, 8
	lw a2, 0(t0)
	srai t2, a1, 1
	li a0, 0
	li t1, 0
.main_b.10: 
	blt a0, a1, .main_b.11
.main_b.12: 
	addi a6, s0, 4
	addi a5, s0, 4
	addi a4, s0, 4
	addi a3, s0, 4
	addi a0, s0, 4
	addi t0, s0, 4
	addi t2, s0, 4
	addi t1, s0, 4
	lw a6, 0(a6)
	lw t4, 0(a5)
	lw a5, 0(a4)
	lw t6, 0(a3)
	lw a3, 0(a0)
	lw t0, 0(t0)
	addi t5, t0, -1
	lw a7, 0(t2)
	lw t3, 0(t1)
	li a4, 1
.main_b.15: 
	blt a4, a1, .main_b.17
.main_b.18: 
	addi t0, s0, 20
	lw a2, 0(t0)
	addi t0, s0, 12
	lw a3, 0(t0)
	srai t1, a2, 1
	li t0, 0
	li a0, 0
.main_b.22: 
	blt a0, a2, .main_b.25
.main_b.26: 
	addi a5, s0, 4
	addi a4, s0, 4
	addi a6, s0, 4
	addi a1, s0, 4
	addi a0, s0, 4
	addi t0, s0, 4
	addi t2, s0, 4
	addi t1, s0, 4
	lw a5, 0(a5)
	lw a4, 0(a4)
	lw s1, 0(a6)
	lw t4, 0(a1)
	lw a7, 0(a0)
	lw t0, 0(t0)
	addi t3, t0, -1
	lw t5, 0(t2)
	lw t6, 0(t1)
	li a6, 1
.main_b.32: 
	blt a6, a2, .main_b.38
.main_b.39: 
	addi t0, s0, 8
	lw a2, 0(t0)
	addi t0, s0, 8
	lw a3, 0(t0)
	addi t0, s0, 12
	lw a4, 0(t0)
	addi t1, s0, 4
	addi t0, s0, 20
	lw a5, 0(t1)
	lw a6, 0(t0)
	li t0, 0
.main_b.47: 
	bge a6, t0, .main_b.56
.main_b.57: 
	addi t0, s0, 20
	lw t2, 0(t0)
	addi t0, s0, 8
	lw a2, 0(t0)
	srai a1, t2, 1
	li t0, 0
	li t1, 0
.main_b.63: 
	blt t1, t2, .main_b.72
.main_b.73: 
	addi t0, s0, 4
	lw t0, 0(t0)
	addi a4, t0, -1
	addi t0, s0, 4
	lw a5, 0(t0)
	addi t0, s0, 4
	lw a6, 0(t0)
	addi t0, s0, 4
	lw a7, 0(t0)
	addi t0, s0, 4
	lw t3, 0(t0)
	addi t0, s0, 4
	lw t4, 0(t0)
	addi t0, s0, 4
	lw t5, 0(t0)
	addi t0, s0, 4
	lw t6, 0(t0)
	li a3, 1
.main_b.85: 
	blt a3, t2, .main_b.95
.main_b.96: 
	li t0, 1
.main_b.103: 
	blt t0, t2, .main_b.108
.main_b.109: 
	addi t0, s0, 20
	lw t0, 0(t0)
	addi t1, s0, 4
	lw t1, 0(t1)
	addi a1, t1, -2
	addi t2, s0, 4
	addi t1, s0, 4
	lw a3, 0(t2)
	lw a2, 0(t1)
	li a0, 1
.main_b.116: 
	bne a1, zero, .main_b.123
.main_b.124: 
	addi t0, s0, 8
	lw a2, 0(t0)
	addi t0, s0, 8
	lw a3, 0(t0)
	addi t0, s0, 4
	lw a6, 0(t0)
	addi t0, s0, 20
	lw a7, 0(t0)
	li t0, 0
.main_b.132: 
	blt t0, a7, .main_b.141
.main_b.142: 
	addi t0, s0, 8
	lw s1, 0(t0)
	addi t1, s0, 24
	addi t0, s0, 16
	lw t1, 0(t1)
	lw t0, 0(t0)
	add s2, t1, t0
	li s0, 0
.main_b.148: 
	bge s2, s0, .main_b.157
.main_b.158: 
	li a0, 4
	call malloc
	sw a0, 160(sp)
	li t0, 7
	sw t0, 180(sp)
	li t0, 7
	sw t0, 196(sp)
	li t0, 9
	sw t0, 200(sp)
	li t5, 3
	li a7, 8
	li t0, 9
	sw t0, 172(sp)
	li t0, 6
	li t2, 1
	li s8, 4
	li t1, 8
	sw t1, 184(sp)
	li s7, 3
	li t1, 998
	sw t1, 164(sp)
	li ra, 1
	li t3, 5
	li t1, 6
	sw t1, 192(sp)
	li t1, 2
	sw t1, 208(sp)
	li s3, 8
	li s1, 5
	li t1, 4
	sw t1, 216(sp)
	li t1, 4
	sw t1, 232(sp)
	li a2, 8
	li t1, 2
	sw t1, 236(sp)
	li t1, 7
	sw t1, 220(sp)
	li a1, 1
	li t1, 6
	sw t1, 252(sp)
	li s5, 2
	li t1, 1
	sw t1, 8(sp)
	li t1, 9
	sw t1, 244(sp)
	li t1, 3
	li a3, 5
	li s4, 3
	li a6, 1
	li a0, 0
	li s6, 5
	li a4, 1
	li a5, 7
	sw a5, 188(sp)
	li s11, 4
	li a5, 8
	sw a5, 224(sp)
	li a5, 9
	sw a5, 176(sp)
	li a5, 4
	sw a5, 212(sp)
	li a5, 7
	sw a5, 168(sp)
	li t4, 4
	li a5, 4
	sw a5, 240(sp)
	li s0, 2
	li a5, 4
	sw a5, 248(sp)
	li a5, 2
	sw a5, 228(sp)
	li a5, 6
	sw a5, 204(sp)
	li a5, 4
	li s2, 6
	li t6, 6
	li s9, 5
	sw s9, 12(sp)
.main_b.164: 
	lw s9, 164(sp)
	rem s9, a0, s9
	sw s9, 144(sp)
	li s9, 100
	sw s9, 152(sp)
	lw s10, 152(sp)
	lw s9, 144(sp)
	blt s9, s10, .main_b.167
.main_b.168: 
	lw s9, 160(sp)
	sw s9, 156(sp)
	li s9, -1
	sw s9, 148(sp)
	lw s9, 156(sp)
	lw s10, 148(sp)
	sw s10, 0(s9)
	lw s9, 224(sp)
	lw s10, 184(sp)
	bne s9, s10, .main_b.171
.main_b.172: 
	lw s9, 216(sp)
	lw s10, 8(sp)
	beq s9, s10, .main_b.174
.main_b.175: 
	lw s9, 236(sp)
	blt ra, s9, .main_b.177
.main_b.178: 
	bge t5, s2, .main_b.180
.main_b.181: 
	lw s9, 244(sp)
	lw s10, 204(sp)
	beq s9, s10, .main_b.180
.main_b.185: 
	bge t6, a5, .main_b.180
.main_b.189: 
	blt a0, t6, .main_b.180
.main_b.193: 
	blt s6, s0, .main_b.180
.main_b.197: 
	lw s9, 240(sp)
	lw s10, 8(sp)
	bne s10, s9, .main_b.180
.main_b.201: 
	lw s9, 212(sp)
	blt s9, a5, .main_b.180
.main_b.205: 
	blt s7, t5, .main_b.180
	j .main_b.184
.main_b.2: 
	slli t0, s1, 2
	add s4, s3, t0
	call g_getInt
	sw a0, 0(s4)
	addi s1, s1, 1
	j .main_b.1
.main_b.5: 
	slli t0, s1, 2
	add s4, s3, t0
	call g_getInt
	sw a0, 0(s4)
	addi s1, s1, 1
	j .main_b.4
.main_b.8: 
	lw t2, 0(t1)
	slli t2, t2, 1
	sw t2, 0(t0)
	j .main_b.7
.main_b.11: 
	blt t1, a0, .main_b.13
.main_b.14: 
	mv t0, t2
.main_b.16: 
	xor t1, t1, t0
	bge t1, t0, .main_b.19
.main_b.20: 
	srai t0, t0, 1
	j .main_b.16
.main_b.13: 
	slli t0, a0, 2
	add t0, a2, t0
	lw a4, 0(t0)
	slli t0, a0, 2
	add a3, a2, t0
	slli t0, t1, 2
	add t0, a2, t0
	lw t0, 0(t0)
	sw t0, 0(a3)
	slli t0, t1, 2
	add t0, a2, t0
	sw a4, 0(t0)
	j .main_b.14
.main_b.17: 
	slli t0, a4, 1
	div s1, t5, t0
	li t0, 1
	li t2, 3
.main_b.21: 
	bne s1, zero, .main_b.23
.main_b.24: 
	slli s2, a4, 1
	li a0, 0
.main_b.29: 
	blt a0, a1, .main_b.35
.main_b.36: 
	slli a4, a4, 1
	j .main_b.15
.main_b.19: 
	addi a0, a0, 1
	j .main_b.10
.main_b.23: 
	andi t1, s1, 1
	bne t1, zero, .main_b.27
.main_b.28: 
	srai s1, s1, 1
	rem a0, t2, a7
	li t1, 0
.main_b.34: 
	bne t2, zero, .main_b.41
.main_b.42: 
	mv t2, t1
	j .main_b.21
.main_b.25: 
	blt t0, a0, .main_b.30
.main_b.31: 
	mv t2, t1
.main_b.37: 
	xor t0, t0, t2
	bge t0, t2, .main_b.44
.main_b.45: 
	srai t2, t2, 1
	j .main_b.37
.main_b.27: 
	rem a0, t0, t3
	mv t1, t2
	li t0, 0
.main_b.33: 
	bne t1, zero, .main_b.40
	j .main_b.28
.main_b.30: 
	slli t2, a0, 2
	add t2, a3, t2
	lw a4, 0(t2)
	slli t2, a0, 2
	add a1, a3, t2
	slli t2, t0, 2
	add t2, a3, t2
	lw t2, 0(t2)
	sw t2, 0(a1)
	slli t2, t0, 2
	add t2, a3, t2
	sw a4, 0(t2)
	j .main_b.31
.main_b.35: 
	add s5, a4, a0
	add s3, a0, a4
	li t1, 1
	li s4, 0
.main_b.43: 
	blt s4, a4, .main_b.52
.main_b.53: 
	add a0, a0, s2
	j .main_b.29
.main_b.38: 
	slli t0, a6, 1
	div a0, t3, t0
	li a1, 3
	li t2, 1
.main_b.46: 
	bne a0, zero, .main_b.54
.main_b.55: 
	slli s4, a6, 1
	li a1, 0
.main_b.61: 
	blt a1, a2, .main_b.68
.main_b.69: 
	slli a6, a6, 1
	j .main_b.32
.main_b.40: 
	andi s2, t1, 1
	bne s2, zero, .main_b.48
.main_b.49: 
	srai t1, t1, 1
	slli a0, a0, 1
	rem a0, a0, t3
	j .main_b.33
.main_b.41: 
	andi s2, t2, 1
	bne s2, zero, .main_b.50
.main_b.51: 
	srai t2, t2, 1
	slli a0, a0, 1
	rem a0, a0, a7
	j .main_b.34
.main_b.44: 
	addi a0, a0, 1
	j .main_b.22
.main_b.48: 
	add t0, t0, a0
	rem t0, t0, t3
	j .main_b.49
.main_b.50: 
	add t1, t1, a0
	rem t1, t1, a7
	j .main_b.51
.main_b.52: 
	add t2, s3, s4
	slli t2, t2, 2
	add t2, a2, t2
	lw s6, 0(t2)
	rem s1, t1, a3
	li t2, 0
.main_b.58: 
	bne s6, zero, .main_b.64
.main_b.65: 
	add s1, s5, s4
	slli s1, s1, 2
	add s1, a2, s1
	add s6, a0, s4
	slli s6, s6, 2
	add s6, a2, s6
	lw s6, 0(s6)
	sub s6, s6, t2
	add s6, s6, a6
	rem s6, s6, t4
	sw s6, 0(s1)
	add s1, a0, s4
	slli s1, s1, 2
	add s1, a2, s1
	add s6, a0, s4
	slli s6, s6, 2
	add s6, a2, s6
	lw s6, 0(s6)
	add t2, s6, t2
	rem t2, t2, a5
	sw t2, 0(s1)
	rem t2, t1, t6
	li t1, 0
	mv s1, t0
.main_b.76: 
	bne s1, zero, .main_b.86
.main_b.87: 
	addi s4, s4, 1
	j .main_b.43
.main_b.54: 
	andi t0, a0, 1
	bne t0, zero, .main_b.59
.main_b.60: 
	srai a0, a0, 1
	rem t1, a1, t6
	li t0, 0
.main_b.67: 
	bne a1, zero, .main_b.78
.main_b.79: 
	mv a1, t0
	j .main_b.46
.main_b.56: 
	slli t1, t0, 2
	add a1, a2, t1
	slli t1, t0, 2
	add t1, a3, t1
	lw t2, 0(t1)
	slli t1, t0, 2
	add t1, a4, t1
	lw t1, 0(t1)
	rem t2, t2, a5
	li a0, 0
.main_b.62: 
	bne t1, zero, .main_b.70
.main_b.71: 
	sw a0, 0(a1)
	addi t0, t0, 1
	j .main_b.47
.main_b.59: 
	rem t1, t2, t5
	mv t0, a1
	li t2, 0
.main_b.66: 
	bne t0, zero, .main_b.77
	j .main_b.60
.main_b.64: 
	andi s7, s6, 1
	bne s7, zero, .main_b.74
.main_b.75: 
	srai s6, s6, 1
	slli s1, s1, 1
	rem s1, s1, a3
	j .main_b.58
.main_b.68: 
	add s2, a1, a6
	add s3, a6, a1
	li t1, 1
	li a0, 0
.main_b.80: 
	blt a0, a6, .main_b.92
.main_b.93: 
	add a1, a1, s4
	j .main_b.61
.main_b.70: 
	andi a7, t1, 1
	bne a7, zero, .main_b.81
.main_b.82: 
	srai t1, t1, 1
	slli t2, t2, 1
	rem t2, t2, a5
	j .main_b.62
.main_b.72: 
	blt t0, t1, .main_b.83
.main_b.84: 
	mv a0, a1
.main_b.94: 
	xor t0, t0, a0
	bge t0, a0, .main_b.100
.main_b.101: 
	srai a0, a0, 1
	j .main_b.94
.main_b.74: 
	add t2, t2, s1
	rem t2, t2, a3
	j .main_b.75
.main_b.77: 
	andi s2, t0, 1
	bne s2, zero, .main_b.88
.main_b.89: 
	srai t0, t0, 1
	slli t1, t1, 1
	rem t1, t1, t5
	j .main_b.66
.main_b.78: 
	andi s2, a1, 1
	bne s2, zero, .main_b.90
.main_b.91: 
	srai a1, a1, 1
	slli t1, t1, 1
	rem t1, t1, t6
	j .main_b.67
.main_b.81: 
	add a0, a0, t2
	rem a0, a0, a5
	j .main_b.82
.main_b.83: 
	slli a0, t1, 2
	add a0, a2, a0
	lw a4, 0(a0)
	slli a0, t1, 2
	add a3, a2, a0
	slli a0, t0, 2
	add a0, a2, a0
	lw a0, 0(a0)
	sw a0, 0(a3)
	slli a0, t0, 2
	add a0, a2, a0
	sw a4, 0(a0)
	j .main_b.84
.main_b.86: 
	andi s6, s1, 1
	bne s6, zero, .main_b.97
.main_b.98: 
	srai s1, s1, 1
	slli t2, t2, 1
	rem t2, t2, t6
	j .main_b.76
.main_b.88: 
	add t2, t2, t1
	rem t2, t2, t5
	j .main_b.89
.main_b.90: 
	add t0, t0, t1
	rem t0, t0, t6
	j .main_b.91
.main_b.92: 
	add t0, s2, a0
	slli t0, t0, 2
	add t0, a3, t0
	lw s6, 0(t0)
	rem s5, t1, a5
	li t0, 0
.main_b.99: 
	bne s6, zero, .main_b.104
.main_b.105: 
	add s5, s3, a0
	slli s5, s5, 2
	add s5, a3, s5
	add s6, a1, a0
	slli s6, s6, 2
	add s6, a3, s6
	lw s6, 0(s6)
	sub s6, s6, t0
	add s6, s6, a4
	rem s6, s6, s1
	sw s6, 0(s5)
	add s5, a1, a0
	slli s5, s5, 2
	add s5, a3, s5
	add s6, a1, a0
	slli s6, s6, 2
	add s6, a3, s6
	lw s6, 0(s6)
	add t0, s6, t0
	rem t0, t0, t4
	sw t0, 0(s5)
	rem s5, t1, a7
	li t1, 0
	mv t0, t2
.main_b.112: 
	bne t0, zero, .main_b.117
.main_b.118: 
	addi a0, a0, 1
	j .main_b.80
.main_b.95: 
	slli t0, a3, 1
	div t0, a4, t0
	li t1, 3
	li s1, 1
.main_b.102: 
	bne t0, zero, .main_b.106
.main_b.107: 
	slli s3, a3, 1
	li s2, 0
.main_b.115: 
	blt s2, t2, .main_b.121
.main_b.122: 
	slli a3, a3, 1
	j .main_b.85
.main_b.97: 
	add t1, t1, t2
	rem t1, t1, t6
	j .main_b.98
.main_b.100: 
	addi t1, t1, 1
	j .main_b.63
.main_b.104: 
	andi s7, s6, 1
	bne s7, zero, .main_b.110
.main_b.111: 
	srai s6, s6, 1
	slli s5, s5, 1
	rem s5, s5, a5
	j .main_b.99
.main_b.106: 
	andi a0, t0, 1
	bne a0, zero, .main_b.113
.main_b.114: 
	srai t0, t0, 1
	rem a1, t1, a5
	mv a0, t1
	li t1, 0
.main_b.120: 
	bne a0, zero, .main_b.128
	j .main_b.102
.main_b.108: 
	addi t2, t2, -1
	slli t1, t0, 2
	add t1, a2, t1
	lw a1, 0(t1)
	slli t1, t0, 2
	add a0, a2, t1
	slli t1, t2, 2
	add t1, a2, t1
	lw t1, 0(t1)
	sw t1, 0(a0)
	slli t1, t2, 2
	add t1, a2, t1
	sw a1, 0(t1)
	addi t0, t0, 1
	j .main_b.103
.main_b.110: 
	add t0, t0, s5
	rem t0, t0, a5
	j .main_b.111
.main_b.113: 
	rem a1, s1, a6
	mv a0, t1
	li s1, 0
.main_b.119: 
	bne a0, zero, .main_b.127
	j .main_b.114
.main_b.117: 
	andi s6, t0, 1
	bne s6, zero, .main_b.125
.main_b.126: 
	srai t0, t0, 1
	slli s5, s5, 1
	rem s5, s5, a7
	j .main_b.112
.main_b.121: 
	add a1, s2, a3
	add s6, a3, s2
	li s4, 1
	li s5, 0
.main_b.129: 
	blt s5, a3, .main_b.137
.main_b.138: 
	add s2, s2, s3
	j .main_b.115
.main_b.123: 
	andi t1, a1, 1
	bne t1, zero, .main_b.130
.main_b.131: 
	srai a1, a1, 1
	rem t2, t0, a2
	li t1, 0
.main_b.140: 
	bne t0, zero, .main_b.145
.main_b.146: 
	mv t0, t1
	j .main_b.116
.main_b.125: 
	add t1, t1, s5
	rem t1, t1, a7
	j .main_b.126
.main_b.127: 
	andi s2, a0, 1
	bne s2, zero, .main_b.133
.main_b.134: 
	srai a0, a0, 1
	slli a1, a1, 1
	rem a1, a1, a6
	j .main_b.119
.main_b.128: 
	andi s2, a0, 1
	bne s2, zero, .main_b.135
.main_b.136: 
	srai a0, a0, 1
	slli a1, a1, 1
	rem a1, a1, a5
	j .main_b.120
.main_b.130: 
	rem t2, a0, a3
	mv t1, t0
	li a0, 0
.main_b.139: 
	bne t1, zero, .main_b.144
	j .main_b.131
.main_b.133: 
	add s1, s1, a1
	rem s1, s1, a6
	j .main_b.134
.main_b.135: 
	add t1, t1, a1
	rem t1, t1, a5
	j .main_b.136
.main_b.137: 
	add t0, a1, s5
	slli t0, t0, 2
	add t0, a2, t0
	lw t1, 0(t0)
	rem a0, s4, a7
	li t0, 0
.main_b.143: 
	bne t1, zero, .main_b.149
.main_b.150: 
	add t1, s6, s5
	slli t1, t1, 2
	add t1, a2, t1
	add a0, s2, s5
	slli a0, a0, 2
	add a0, a2, a0
	lw a0, 0(a0)
	sub a0, a0, t0
	add a0, a0, t3
	rem a0, a0, t4
	sw a0, 0(t1)
	add t1, s2, s5
	slli t1, t1, 2
	add t1, a2, t1
	add a0, s2, s5
	slli a0, a0, 2
	add a0, a2, a0
	lw a0, 0(a0)
	add t0, a0, t0
	rem t0, t0, t5
	sw t0, 0(t1)
	rem t1, s4, t6
	li s4, 0
	mv t0, s1
.main_b.161: 
	bne t0, zero, .main_b.165
.main_b.166: 
	addi s5, s5, 1
	j .main_b.129
.main_b.141: 
	slli t1, t0, 2
	add a4, a2, t1
	slli t1, t0, 2
	add t1, a3, t1
	lw t1, 0(t1)
	rem t2, t1, a6
	li t1, 0
	mv a1, a0
.main_b.147: 
	bne a1, zero, .main_b.155
.main_b.156: 
	sw t1, 0(a4)
	addi t0, t0, 1
	j .main_b.132
.main_b.144: 
	andi a4, t1, 1
	bne a4, zero, .main_b.151
.main_b.152: 
	srai t1, t1, 1
	slli t2, t2, 1
	rem t2, t2, a3
	j .main_b.139
.main_b.145: 
	andi a4, t0, 1
	bne a4, zero, .main_b.153
.main_b.154: 
	srai t0, t0, 1
	slli t2, t2, 1
	rem t2, t2, a2
	j .main_b.140
.main_b.149: 
	andi s7, t1, 1
	bne s7, zero, .main_b.159
.main_b.160: 
	srai t1, t1, 1
	slli a0, a0, 1
	rem a0, a0, a7
	j .main_b.143
.main_b.151: 
	add a0, a0, t2
	rem a0, a0, a3
	j .main_b.152
.main_b.153: 
	add t1, t1, t2
	rem t1, t1, a2
	j .main_b.154
.main_b.155: 
	andi a5, a1, 1
	bne a5, zero, .main_b.162
.main_b.163: 
	srai a1, a1, 1
	slli t2, t2, 1
	rem t2, t2, a6
	j .main_b.147
.main_b.157: 
	slli t0, s0, 2
	add t0, s1, t0
	lw a0, 0(t0)
	call g_printlnInt
	addi s0, s0, 1
	j .main_b.148
.main_b.159: 
	add t0, t0, a0
	rem t0, t0, a7
	j .main_b.160
.main_b.162: 
	add t1, t1, t2
	rem t1, t1, a6
	j .main_b.163
.main_b.165: 
	andi a0, t0, 1
	bne a0, zero, .main_b.169
.main_b.170: 
	srai t0, t0, 1
	slli t1, t1, 1
	rem t1, t1, t6
	j .main_b.161
.main_b.167: 
	lw a0, 196(sp)
	addi a0, a0, 6
	sw a0, 68(sp)
	addi a0, s6, 4
	sw a0, 72(sp)
	lw a0, 12(sp)
	addi a0, a0, 9
	sw a0, 116(sp)
	addi a0, t3, 1
	sw a0, 76(sp)
	addi a0, ra, 4
	sw a0, 132(sp)
	lw a0, 184(sp)
	addi a0, a0, 6
	sw a0, 108(sp)
	addi a0, a3, 6
	sw a0, 80(sp)
	addi a0, s5, 2
	sw a0, 84(sp)
	addi a0, s8, 1
	sw a0, 88(sp)
	lw a0, 172(sp)
	addi a0, a0, 1
	sw a0, 112(sp)
	addi t3, t5, 4
	addi a0, a6, 9
	lw a3, 252(sp)
	addi a3, a3, 8
	sw a3, 136(sp)
	addi s5, s2, 9
	addi a3, a7, 8
	sw a3, 120(sp)
	lw a3, 240(sp)
	addi a3, a3, 6
	lw a6, 216(sp)
	addi a6, a6, 6
	sw a6, 92(sp)
	lw a6, 192(sp)
	addi a6, a6, 7
	sw a6, 124(sp)
	lw a6, 224(sp)
	addi a6, a6, 5
	lw a7, 220(sp)
	addi a7, a7, 1
	sw a7, 140(sp)
	lw a7, 176(sp)
	addi s2, a7, 7
	lw a7, 248(sp)
	addi a7, a7, 9
	sw a7, 96(sp)
	lw a7, 236(sp)
	addi a7, a7, 9
	sw a7, 100(sp)
	addi t4, t4, 9
	lw a7, 204(sp)
	addi a7, a7, 9
	sw a7, 104(sp)
	lw a7, 200(sp)
	addi a7, a7, 2
	sw a7, 128(sp)
	li t5, 2
	lw a7, 164(sp)
	div s6, a7, t5
	lw a7, 164(sp)
	xori a7, a7, 1
	addi s9, a7, 10
	sw s0, 196(sp)
	sw s7, 200(sp)
	mv t5, a0
	mv a7, a3
	sw t3, 172(sp)
	lw s8, 212(sp)
	lw a0, 8(sp)
	sw a0, 184(sp)
	mv s7, s6
	sw s9, 164(sp)
	mv ra, s11
	lw t3, 132(sp)
	sw a6, 192(sp)
	lw a0, 228(sp)
	sw a0, 216(sp)
	sw t4, 236(sp)
	sw s2, 220(sp)
	sw s5, 252(sp)
	lw s5, 232(sp)
	sw s4, 8(sp)
	mv a3, t0
	mv s4, t1
	lw a6, 136(sp)
	lw a0, 168(sp)
	lw s6, 116(sp)
	lw s11, 108(sp)
	lw t0, 140(sp)
	sw t0, 224(sp)
	sw s1, 176(sp)
	lw t0, 112(sp)
	sw t0, 212(sp)
	lw t0, 68(sp)
	sw t0, 168(sp)
	lw t4, 208(sp)
	sw a4, 240(sp)
	lw s0, 72(sp)
	lw t0, 244(sp)
	sw t0, 248(sp)
	lw t0, 124(sp)
	sw t0, 228(sp)
	lw t0, 128(sp)
	sw t0, 204(sp)
	lw s2, 120(sp)
	lw t0, 188(sp)
	sw t0, 12(sp)
	mv t0, a2
	lw t1, 104(sp)
	sw t1, 208(sp)
	mv s1, t6
	sw a1, 232(sp)
	lw a2, 84(sp)
	lw a1, 88(sp)
	sw t2, 244(sp)
	lw t1, 80(sp)
	lw a4, 180(sp)
	sw s3, 188(sp)
	mv t6, a5
	lw t2, 92(sp)
	sw t2, 180(sp)
	lw t2, 100(sp)
	lw s3, 76(sp)
	lw a5, 96(sp)
	j .main_b.164
.main_b.169: 
	add a0, s4, t1
	rem s4, a0, t6
	j .main_b.170
.main_b.171: 
	bge a6, s5, .main_b.173
	j .main_b.172
.main_b.173: 
	lw s9, 208(sp)
	bge a1, s9, .main_b.176
	j .main_b.172
.main_b.174: 
	bge a7, t0, .main_b.177
	j .main_b.175
.main_b.176: 
	lw s9, 8(sp)
	bge t1, s9, .main_b.179
	j .main_b.172
.main_b.177: 
	lw s9, 228(sp)
	bge s3, s9, .main_b.180
	j .main_b.178
.main_b.179: 
	lw s9, 180(sp)
	beq s9, t0, .main_b.182
	j .main_b.172
.main_b.180: 
	lw s9, 180(sp)
	beq a5, s9, .main_b.183
.main_b.184: 
	lw s10, 244(sp)
	lw s9, 192(sp)
	bge s9, s10, .main_b.183
	j .main_b.188
.main_b.182: 
	lw s10, 248(sp)
	lw s9, 212(sp)
	bge s10, s9, .main_b.186
	j .main_b.172
.main_b.183: 
	lw s9, 192(sp)
	blt s9, t4, .main_b.187
.main_b.188: 
	beq a1, a7, .main_b.191
.main_b.192: 
	blt s3, a2, .main_b.191
	j .main_b.196
.main_b.186: 
	blt a5, a2, .main_b.174
	j .main_b.172
.main_b.187: 
	bne s4, a6, .main_b.190
	j .main_b.188
.main_b.190: 
	lw s9, 240(sp)
	lw s10, 232(sp)
	bge s10, s9, .main_b.194
	j .main_b.188
.main_b.191: 
	lw s10, 172(sp)
	lw s9, 228(sp)
	beq s9, s10, .main_b.195
.main_b.196: 
	blt t3, s11, .main_b.199
.main_b.200: 
	bge t2, t2, .main_b.203
.main_b.204: 
	bne s4, s6, .main_b.203
.main_b.209: 
	lw s9, 204(sp)
	bne s9, ra, .main_b.203
.main_b.213: 
	bne a0, a2, .main_b.203
	j .main_b.208
.main_b.194: 
	lw s9, 208(sp)
	bne s9, a5, .main_b.198
	j .main_b.188
.main_b.195: 
	lw s9, 216(sp)
	lw s10, 248(sp)
	blt s10, s9, .main_b.199
	j .main_b.196
.main_b.198: 
	beq t2, t5, .main_b.202
	j .main_b.188
.main_b.199: 
	lw s9, 188(sp)
	bne s5, s9, .main_b.203
	j .main_b.200
.main_b.202: 
	lw s10, 188(sp)
	lw s9, 204(sp)
	beq s10, s9, .main_b.206
	j .main_b.188
.main_b.203: 
	lw s9, 220(sp)
	lw s10, 184(sp)
	beq s9, s10, .main_b.207
.main_b.208: 
	lw s9, 200(sp)
	lw s10, 12(sp)
	blt s9, s10, .main_b.207
	j .main_b.212
.main_b.206: 
	bge t5, s2, .main_b.210
	j .main_b.188
.main_b.207: 
	bne s4, a5, .main_b.211
.main_b.212: 
	lw s9, 252(sp)
	blt s9, s9, .main_b.216
.main_b.217: 
	lw s9, 212(sp)
	blt s9, s5, .main_b.216
	j .main_b.221
.main_b.210: 
	beq s11, s1, .main_b.214
	j .main_b.188
.main_b.211: 
	lw s9, 176(sp)
	blt t0, s9, .main_b.215
	j .main_b.212
.main_b.214: 
	lw s9, 204(sp)
	bge t0, s9, .main_b.218
	j .main_b.188
.main_b.215: 
	lw s9, 184(sp)
	beq s9, t2, .main_b.219
	j .main_b.212
.main_b.216: 
	blt s5, t2, .main_b.220
.main_b.221: 
	lw s9, 184(sp)
	blt a4, s9, .main_b.223
.main_b.224: 
	lw s9, 188(sp)
	beq s8, s9, .main_b.226
.main_b.227: 
	bge s3, a3, .main_b.226
	j .main_b.230
.main_b.218: 
	lw s9, 232(sp)
	lw s10, 8(sp)
	blt s9, s10, .main_b.222
	j .main_b.188
.main_b.219: 
	lw s9, 216(sp)
	bge s9, ra, .main_b.216
	j .main_b.212
.main_b.220: 
	lw s9, 252(sp)
	lw s10, 192(sp)
	beq s9, s10, .main_b.223
	j .main_b.221
.main_b.222: 
	beq t6, s7, .main_b.191
	j .main_b.188
.main_b.223: 
	blt s7, a6, .main_b.225
	j .main_b.224
.main_b.225: 
	blt s2, a7, .main_b.228
	j .main_b.224
.main_b.226: 
	lw s9, 236(sp)
	lw s10, 228(sp)
	bne s9, s10, .main_b.229
.main_b.230: 
	bne s2, t5, .main_b.229
	j .main_b.233
.main_b.228: 
	lw s9, 220(sp)
	blt s8, s9, .main_b.231
	j .main_b.224
.main_b.229: 
	bge a7, t3, .main_b.232
.main_b.233: 
	lw s10, 216(sp)
	lw s9, 228(sp)
	bge s9, s10, .main_b.236
.main_b.237: 
	lw s9, 208(sp)
	bge s4, s9, .main_b.236
.main_b.240: 
	lw s9, 248(sp)
	blt t4, s9, .main_b.236
.main_b.243: 
	lw s9, 232(sp)
	bge a0, s9, .main_b.236
	j .main_b.239
.main_b.231: 
	lw s9, 212(sp)
	blt s9, t2, .main_b.234
	j .main_b.224
.main_b.232: 
	lw s9, 200(sp)
	blt s9, t0, .main_b.235
	j .main_b.233
.main_b.234: 
	lw s9, 196(sp)
	bge s9, t3, .main_b.226
	j .main_b.224
.main_b.235: 
	beq s5, s7, .main_b.236
	j .main_b.233
.main_b.236: 
	lw s9, 204(sp)
	bge s9, s1, .main_b.238
.main_b.239: 
	lw s10, 168(sp)
	lw s9, 192(sp)
	blt s9, s10, .main_b.241
.main_b.242: 
	lw s9, 180(sp)
	blt s9, a6, .main_b.241
.main_b.246: 
	lw s9, 232(sp)
	blt s9, t1, .main_b.241
	j .main_b.245
.main_b.238: 
	lw s9, 220(sp)
	bge t0, s9, .main_b.241
	j .main_b.239
.main_b.241: 
	blt t6, t3, .main_b.244
.main_b.245: 
	lw s9, 240(sp)
	bne s9, t1, .main_b.244
	j .main_b.248
.main_b.244: 
	bge t5, ra, .main_b.247
.main_b.248: 
	bge t2, t0, .main_b.247
	j .main_b.250
.main_b.247: 
	lw s9, 248(sp)
	blt s9, s7, .main_b.249
.main_b.250: 
	bge t6, s7, .main_b.249
.main_b.253: 
	lw s9, 12(sp)
	blt s9, a1, .main_b.249
.main_b.257: 
	bne ra, s2, .main_b.249
.main_b.261: 
	lw s9, 236(sp)
	bne s9, t2, .main_b.249
.main_b.266: 
	bne s2, s5, .main_b.249
.main_b.270: 
	lw s9, 196(sp)
	beq t2, s9, .main_b.249
.main_b.273: 
	bge s11, s8, .main_b.249
.main_b.277: 
	lw s9, 192(sp)
	bge s2, s9, .main_b.249
	j .main_b.252
.main_b.249: 
	lw s9, 172(sp)
	blt s9, t1, .main_b.251
.main_b.252: 
	lw s9, 180(sp)
	blt s9, s3, .main_b.251
.main_b.256: 
	beq s3, s8, .main_b.251
	j .main_b.255
.main_b.251: 
	beq t3, t6, .main_b.254
.main_b.255: 
	bge s6, a5, .main_b.254
.main_b.260: 
	lw s9, 184(sp)
	blt s9, t6, .main_b.254
.main_b.265: 
	lw s9, 236(sp)
	bge s9, a0, .main_b.254
	j .main_b.259
.main_b.254: 
	lw s9, 196(sp)
	beq s9, t2, .main_b.258
.main_b.259: 
	lw s9, 8(sp)
	blt s1, s9, .main_b.258
.main_b.264: 
	bne t5, s2, .main_b.258
.main_b.269: 
	bge s3, s2, .main_b.258
	j .main_b.263
.main_b.258: 
	lw s9, 180(sp)
	bge s9, a2, .main_b.262
.main_b.263: 
	blt a0, t6, .main_b.262
	j .main_b.268
.main_b.262: 
	lw s9, 208(sp)
	bne s4, s9, .main_b.267
.main_b.268: 
	blt s8, a6, .main_b.267
	j .main_b.272
.main_b.267: 
	bge s8, a0, .main_b.271
.main_b.272: 
	blt t4, s2, .main_b.275
.main_b.276: 
	lw s9, 208(sp)
	bge s9, t5, .main_b.279
.main_b.280: 
	bge a2, t4, .main_b.282
.main_b.283: 
	beq a2, s11, .main_b.285
.main_b.286: 
	lw s9, 196(sp)
	lw s10, 228(sp)
	bge s10, s9, .main_b.289
.main_b.290: 
	lw s9, 224(sp)
	beq t1, s9, .main_b.289
.main_b.294: 
	beq s5, a3, .main_b.289
	j .main_b.293
.main_b.271: 
	blt t1, t1, .main_b.274
	j .main_b.272
.main_b.274: 
	lw s9, 168(sp)
	blt s7, s9, .main_b.278
	j .main_b.272
.main_b.275: 
	bne s8, a5, .main_b.279
	j .main_b.276
.main_b.278: 
	beq t0, s5, .main_b.281
	j .main_b.272
.main_b.279: 
	lw s9, 224(sp)
	lw s10, 188(sp)
	bge s10, s9, .main_b.282
	j .main_b.280
.main_b.281: 
	lw s9, 244(sp)
	lw s10, 8(sp)
	bge s10, s9, .main_b.284
	j .main_b.272
.main_b.282: 
	lw s9, 244(sp)
	bne s9, s3, .main_b.285
	j .main_b.283
.main_b.284: 
	lw s10, 216(sp)
	lw s9, 8(sp)
	bge s9, s10, .main_b.287
	j .main_b.272
.main_b.285: 
	lw s9, 200(sp)
	blt s9, a0, .main_b.288
	j .main_b.286
.main_b.287: 
	lw s9, 244(sp)
	bge s6, s9, .main_b.291
	j .main_b.272
.main_b.288: 
	lw s9, 12(sp)
	beq t2, s9, .main_b.289
	j .main_b.286
.main_b.289: 
	bge t5, t0, .main_b.292
.main_b.293: 
	lw s9, 252(sp)
	beq s11, s9, .main_b.292
	j .main_b.296
.main_b.291: 
	blt a3, a4, .main_b.275
	j .main_b.272
.main_b.292: 
	beq a4, s6, .main_b.295
.main_b.296: 
	lw s9, 8(sp)
	blt s5, s9, .main_b.295
.main_b.299: 
	lw s9, 204(sp)
	blt t1, s9, .main_b.295
.main_b.302: 
	lw s9, 188(sp)
	blt s9, t2, .main_b.295
.main_b.305: 
	bge s2, t5, .main_b.295
.main_b.308: 
	lw s9, 8(sp)
	blt s9, t6, .main_b.295
	j .main_b.298
.main_b.295: 
	lw s9, 240(sp)
	bge s6, s9, .main_b.297
.main_b.298: 
	bne s11, t3, .main_b.300
.main_b.301: 
	lw s9, 184(sp)
	blt s9, a0, .main_b.300
	j .main_b.304
.main_b.297: 
	lw s9, 172(sp)
	blt a7, s9, .main_b.300
	j .main_b.298
.main_b.300: 
	lw s9, 220(sp)
	bge s9, s6, .main_b.303
.main_b.304: 
	lw s9, 244(sp)
	lw s10, 248(sp)
	beq s9, s10, .main_b.306
.main_b.307: 
	lw s9, 12(sp)
	blt s3, s9, .main_b.309
.main_b.310: 
	lw s9, 244(sp)
	blt s9, t4, .main_b.309
.main_b.313: 
	lw s9, 196(sp)
	bne s9, ra, .main_b.309
	j .main_b.312
.main_b.303: 
	bne a3, a5, .main_b.306
	j .main_b.304
.main_b.306: 
	lw s9, 176(sp)
	blt s9, t5, .main_b.309
	j .main_b.307
.main_b.309: 
	beq t6, s4, .main_b.311
.main_b.312: 
	bge s6, a3, .main_b.311
	j .main_b.315
.main_b.311: 
	blt a5, s5, .main_b.314
.main_b.315: 
	lw s9, 248(sp)
	blt t4, s9, .main_b.314
.main_b.318: 
	lw s9, 204(sp)
	bne t2, s9, .main_b.314
	j .main_b.317
.main_b.314: 
	lw s9, 12(sp)
	bne s9, s9, .main_b.316
.main_b.317: 
	lw s9, 172(sp)
	bne s9, a4, .main_b.316
.main_b.321: 
	blt a4, s1, .main_b.316
.main_b.325: 
	lw s9, 252(sp)
	blt s3, s9, .main_b.316
.main_b.330: 
	lw s9, 12(sp)
	blt t6, s9, .main_b.316
.main_b.336: 
	bge a4, t2, .main_b.316
.main_b.341: 
	lw s9, 224(sp)
	bne s3, s9, .main_b.316
.main_b.344: 
	blt s4, a1, .main_b.316
	j .main_b.320
.main_b.316: 
	bge s4, t6, .main_b.319
.main_b.320: 
	bge a2, a4, .main_b.319
.main_b.324: 
	lw s9, 240(sp)
	lw s10, 212(sp)
	bge s10, s9, .main_b.319
.main_b.329: 
	bge t3, a6, .main_b.319
.main_b.335: 
	lw s9, 232(sp)
	beq s9, t0, .main_b.319
.main_b.340: 
	blt s4, s3, .main_b.319
	j .main_b.323
.main_b.319: 
	lw s9, 244(sp)
	bge s9, t5, .main_b.322
.main_b.323: 
	bge t4, t3, .main_b.322
.main_b.328: 
	blt s0, a5, .main_b.322
.main_b.334: 
	lw s9, 184(sp)
	bge s9, t4, .main_b.322
	j .main_b.327
.main_b.322: 
	bge a3, s8, .main_b.326
.main_b.327: 
	lw s9, 192(sp)
	bne s9, a1, .main_b.326
.main_b.333: 
	lw s9, 252(sp)
	lw s10, 172(sp)
	blt s9, s10, .main_b.326
.main_b.339: 
	lw s9, 180(sp)
	lw s10, 12(sp)
	bge s10, s9, .main_b.326
	j .main_b.332
.main_b.326: 
	lw s10, 236(sp)
	lw s9, 228(sp)
	bge s10, s9, .main_b.331
.main_b.332: 
	lw s9, 220(sp)
	bge s9, a7, .main_b.331
	j .main_b.338
.main_b.331: 
	bge ra, t4, .main_b.337
.main_b.338: 
	lw s9, 236(sp)
	blt t0, s9, .main_b.342
.main_b.343: 
	lw s9, 228(sp)
	blt s9, t3, .main_b.345
.main_b.346: 
	bge s0, s1, .main_b.345
.main_b.349: 
	lw s10, 232(sp)
	lw s9, 192(sp)
	blt s10, s9, .main_b.345
	j .main_b.348
.main_b.337: 
	lw s9, 200(sp)
	blt a2, s9, .main_b.342
	j .main_b.338
.main_b.342: 
	lw s9, 172(sp)
	blt s9, t1, .main_b.345
	j .main_b.343
.main_b.345: 
	lw s9, 252(sp)
	bne a5, s9, .main_b.347
.main_b.348: 
	blt t6, s3, .main_b.351
.main_b.352: 
	blt s8, a6, .main_b.351
	j .main_b.354
.main_b.347: 
	lw s9, 224(sp)
	blt s9, t3, .main_b.350
	j .main_b.348
.main_b.350: 
	blt ra, t6, .main_b.351
	j .main_b.348
.main_b.351: 
	lw s9, 224(sp)
	blt s9, a7, .main_b.353
.main_b.354: 
	lw s9, 224(sp)
	lw s10, 248(sp)
	bge s9, s10, .main_b.356
.main_b.357: 
	lw s10, 240(sp)
	lw s9, 196(sp)
	beq s9, s10, .main_b.358
.main_b.359: 
	bge s0, a1, .main_b.358
	j .main_b.361
.main_b.353: 
	lw s9, 228(sp)
	blt a6, s9, .main_b.355
	j .main_b.354
.main_b.355: 
	lw s9, 208(sp)
	beq s9, a7, .main_b.356
	j .main_b.354
.main_b.356: 
	beq a3, s6, .main_b.358
	j .main_b.357
.main_b.358: 
	lw s9, 244(sp)
	beq s9, a2, .main_b.360
.main_b.361: 
	bge s5, s3, .main_b.362
.main_b.363: 
	bge a3, s8, .main_b.362
	j .main_b.365
.main_b.360: 
	lw s9, 12(sp)
	bne s9, s5, .main_b.362
	j .main_b.361
.main_b.362: 
	beq t5, s5, .main_b.364
.main_b.365: 
	bne a0, t4, .main_b.367
.main_b.368: 
	blt s0, a1, .main_b.367
	j .main_b.370
.main_b.364: 
	lw s9, 232(sp)
	blt s9, t6, .main_b.366
	j .main_b.365
.main_b.366: 
	lw s9, 208(sp)
	beq s9, a7, .main_b.367
	j .main_b.365
.main_b.367: 
	lw s9, 176(sp)
	lw s10, 236(sp)
	beq s9, s10, .main_b.369
.main_b.370: 
	bge s0, t0, .main_b.369
.main_b.373: 
	lw s10, 240(sp)
	lw s9, 208(sp)
	blt s10, s9, .main_b.369
.main_b.376: 
	lw s9, 12(sp)
	bge s9, a2, .main_b.369
	j .main_b.372
.main_b.369: 
	beq s4, t5, .main_b.371
.main_b.372: 
	blt s11, t3, .main_b.371
	j .main_b.375
.main_b.371: 
	bne s7, a0, .main_b.374
.main_b.375: 
	lw s9, 204(sp)
	bne s9, s0, .main_b.374
	j .main_b.378
.main_b.374: 
	bge a0, s1, .main_b.377
.main_b.378: 
	lw s9, 180(sp)
	bge s9, t2, .main_b.380
.main_b.381: 
	blt s6, t1, .main_b.383
.main_b.384: 
	blt s5, a3, .main_b.383
	j .main_b.386
.main_b.377: 
	blt s3, s4, .main_b.379
	j .main_b.378
.main_b.379: 
	bge s2, s11, .main_b.382
	j .main_b.378
.main_b.380: 
	bne t3, t4, .main_b.383
	j .main_b.381
.main_b.382: 
	blt t4, a4, .main_b.380
	j .main_b.378
.main_b.383: 
	lw s9, 244(sp)
	blt s9, t2, .main_b.385
.main_b.386: 
	lw s9, 252(sp)
	beq a3, s9, .main_b.385
	j .main_b.388
.main_b.385: 
	beq s0, a4, .main_b.387
.main_b.388: 
	lw s9, 248(sp)
	blt s9, s1, .main_b.387
	j .main_b.390
.main_b.387: 
	lw s9, 220(sp)
	blt s1, s9, .main_b.389
.main_b.390: 
	lw s9, 188(sp)
	bne s9, s6, .main_b.389
	j .main_b.392
.main_b.389: 
	bge t0, t3, .main_b.391
.main_b.392: 
	blt a5, a7, .main_b.394
.main_b.395: 
	lw s9, 240(sp)
	bge a3, s9, .main_b.397
.main_b.398: 
	bne a3, t1, .main_b.400
.main_b.401: 
	lw s9, 192(sp)
	bne s9, t5, .main_b.400
	j .main_b.404
.main_b.391: 
	bne s1, a1, .main_b.393
	j .main_b.392
.main_b.393: 
	lw s10, 252(sp)
	lw s9, 212(sp)
	beq s10, s9, .main_b.396
	j .main_b.392
.main_b.394: 
	lw s9, 12(sp)
	bne s9, a1, .main_b.397
	j .main_b.395
.main_b.396: 
	lw s9, 248(sp)
	bge a3, s9, .main_b.394
	j .main_b.392
.main_b.397: 
	bge a0, a0, .main_b.399
	j .main_b.398
.main_b.399: 
	blt s7, t3, .main_b.402
	j .main_b.398
.main_b.400: 
	bne s3, t5, .main_b.403
.main_b.404: 
	lw s9, 236(sp)
	blt a7, s9, .main_b.403
.main_b.407: 
	lw s9, 248(sp)
	bne s9, s3, .main_b.403
	j .main_b.406
.main_b.402: 
	lw s9, 200(sp)
	blt s9, t3, .main_b.400
	j .main_b.398
.main_b.403: 
	lw s9, 220(sp)
	bge s9, a5, .main_b.405
.main_b.406: 
	blt t5, t5, .main_b.408
.main_b.409: 
	lw a5, 236(sp)
	blt a4, a5, .main_b.410
.main_b.411: 
	blt s11, s6, .main_b.410
	j .main_b.413
.main_b.405: 
	lw a5, 204(sp)
	beq t3, a5, .main_b.408
	j .main_b.406
.main_b.408: 
	lw a5, 176(sp)
	bne a5, s4, .main_b.410
	j .main_b.409
.main_b.410: 
	lw a5, 220(sp)
	blt a5, a1, .main_b.412
.main_b.413: 
	lw a5, 216(sp)
	bge a5, s1, .main_b.412
	j .main_b.415
.main_b.412: 
	lw s9, 176(sp)
	lw a5, 200(sp)
	bge s9, a5, .main_b.414
.main_b.415: 
	beq s0, s3, .main_b.416
.main_b.417: 
	lw a5, 168(sp)
	bne t6, a5, .main_b.418
.main_b.419: 
	bne t6, s8, .main_b.418
.main_b.422: 
	beq t3, s5, .main_b.418
	j .main_b.421
.main_b.414: 
	lw a5, 212(sp)
	bne a5, a7, .main_b.416
	j .main_b.415
.main_b.416: 
	blt s1, t1, .main_b.418
	j .main_b.417
.main_b.418: 
	lw s9, 212(sp)
	lw a5, 8(sp)
	blt a5, s9, .main_b.420
.main_b.421: 
	lw a5, 200(sp)
	blt a5, s7, .main_b.423
.main_b.424: 
	lw a5, 196(sp)
	bge a0, a5, .main_b.426
.main_b.427: 
	blt t4, t4, .main_b.426
.main_b.431: 
	lw a5, 220(sp)
	bge a5, s11, .main_b.426
	j .main_b.430
.main_b.420: 
	bge a6, a0, .main_b.423
	j .main_b.421
.main_b.423: 
	bge s6, a1, .main_b.425
	j .main_b.424
.main_b.425: 
	bne a3, s6, .main_b.428
	j .main_b.424
.main_b.426: 
	lw a5, 12(sp)
	blt t4, a5, .main_b.429
.main_b.430: 
	lw t5, 236(sp)
	lw a5, 212(sp)
	bge t5, a5, .main_b.433
.main_b.434: 
	bge t0, a2, .main_b.433
.main_b.437: 
	bne s11, t2, .main_b.433
.main_b.440: 
	bge ra, s3, .main_b.433
.main_b.444: 
	bne s8, s1, .main_b.433
.main_b.448: 
	lw a5, 228(sp)
	bge a4, a5, .main_b.433
.main_b.451: 
	lw a5, 252(sp)
	blt a5, s5, .main_b.433
	j .main_b.436
.main_b.428: 
	lw s6, 176(sp)
	lw a5, 188(sp)
	blt s6, a5, .main_b.426
	j .main_b.424
.main_b.429: 
	lw a5, 168(sp)
	bne a5, s7, .main_b.432
	j .main_b.430
.main_b.432: 
	blt s4, t5, .main_b.433
	j .main_b.430
.main_b.433: 
	blt s0, a6, .main_b.435
.main_b.436: 
	blt t0, s11, .main_b.435
	j .main_b.439
.main_b.435: 
	bge ra, a0, .main_b.438
.main_b.439: 
	bne a6, a2, .main_b.438
.main_b.443: 
	lw a0, 168(sp)
	bge s3, a0, .main_b.438
.main_b.447: 
	bge a7, a7, .main_b.438
	j .main_b.442
.main_b.438: 
	lw a0, 224(sp)
	bne a0, a3, .main_b.441
.main_b.442: 
	bge t0, s0, .main_b.441
	j .main_b.446
.main_b.441: 
	blt ra, a1, .main_b.445
.main_b.446: 
	lw a5, 188(sp)
	lw a0, 8(sp)
	beq a5, a0, .main_b.445
	j .main_b.450
.main_b.445: 
	bge s0, a3, .main_b.449
.main_b.450: 
	bge ra, t1, .main_b.449
	j .main_b.453
.main_b.449: 
	lw a0, 208(sp)
	blt a0, a2, .main_b.452
.main_b.453: 
	bge a3, a2, .main_b.454
.main_b.455: 
	bne t0, t4, .main_b.456
.main_b.457: 
	lw t0, 216(sp)
	blt s4, t0, .main_b.458
.main_b.459: 
	bge a4, t1, .main_b.458
.main_b.462: 
	lw t1, 240(sp)
	lw t0, 216(sp)
	blt t0, t1, .main_b.458
.main_b.465: 
	lw t0, 232(sp)
	blt t0, s2, .main_b.458
.main_b.468: 
	lw t0, 252(sp)
	bge t3, t0, .main_b.458
.main_b.470: 
	lw t0, 232(sp)
	bge t0, t4, .main_b.458
.main_b.473: 
	lw t0, 216(sp)
	blt t0, s2, .main_b.458
.main_b.477: 
	lw t0, 200(sp)
	blt t0, a3, .main_b.458
	j .main_b.461
.main_b.452: 
	blt a7, t0, .main_b.454
	j .main_b.453
.main_b.454: 
	lw a0, 252(sp)
	blt a0, s8, .main_b.456
	j .main_b.455
.main_b.456: 
	beq t2, s5, .main_b.458
	j .main_b.457
.main_b.458: 
	beq s0, t6, .main_b.460
.main_b.461: 
	bge s7, s4, .main_b.460
	j .main_b.464
.main_b.460: 
	lw t1, 240(sp)
	lw t0, 224(sp)
	bge t1, t0, .main_b.463
.main_b.464: 
	blt a6, a1, .main_b.463
.main_b.467: 
	mv t1, zero
	j .main_b.466
.main_b.463: 
	lw t0, 232(sp)
	slt t0, t0, a4
	xori t1, t0, 1
.main_b.466: 
	lw t2, 160(sp)
	lw t0, 164(sp)
	sw t0, 0(t2)
	mv t2, t1
	mv a0, t1
	mv a1, t1
	mv a2, t1
	lw a3, 160(sp)
	mv a4, t1
	mv a5, t1
	mv a6, t1
	lw t0, 164(sp)
.main_b.469: 
	lw a7, 196(sp)
	beq a7, t0, .main_b.471
.main_b.472: 
	lw t0, 160(sp)
	lw t1, 0(t0)
	li t0, -1
	beq t1, t0, .main_b.475
.main_b.476: 
	lw t0, 160(sp)
	lw a0, 0(t0)
	call g_printlnInt
	li a0, 4
	call malloc
	mv s5, a0
	li t0, 19260817
	sw t0, 0(s5)
	mv s3, s5
	mv s4, s5
	mv s8, s5
	mv s6, s5
	mv s7, s5
	mv s0, s5
	mv s1, s5
	li s2, 0
.main_b.479: 
	lw t1, 0(s5)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.482
.main_b.483: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.485
.main_b.471: 
	beqz t2, .main_b.472
.main_b.474: 
	addi t0, t0, 1
.main_b.478: 
	beqz a0, .main_b.481
.main_b.480: 
	addi t0, t0, 1
.main_b.484: 
	beqz a1, .main_b.487
.main_b.486: 
	addi t0, t0, 1
.main_b.490: 
	beqz t1, .main_b.493
.main_b.492: 
	addi t0, t0, 1
.main_b.496: 
	beqz a6, .main_b.502
.main_b.501: 
	addi t0, t0, 1
.main_b.506: 
	beqz a5, .main_b.512
.main_b.511: 
	addi t0, t0, 1
.main_b.517: 
	beqz a2, .main_b.523
.main_b.522: 
	addi t0, t0, 1
.main_b.530: 
	beqz a4, .main_b.535
.main_b.534: 
	sw t0, 0(a3)
	addi t0, t0, 1
	j .main_b.530
.main_b.475: 
	la a0, .cls_taskStress_con_0.0
	call g_println
	j .main_b.476
.main_b.481: 
	addi t0, t0, 1
	j .main_b.469
.main_b.482: 
	srai t0, t2, 17
.main_b.485: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	sw t1, 0(s7)
	li t0, 1073741823
	and t0, t1, t0
	andi t1, t0, 255
	lw t2, 0(s0)
	slli t0, t2, 13
	xor a0, t2, t0
	bge a0, zero, .main_b.488
.main_b.489: 
	li t0, -2147483648
	xor t0, a0, t0
	srai t2, t0, 17
	li t0, 16384
	or t0, t0, t2
	j .main_b.491
.main_b.487: 
	addi t0, t0, 1
	j .main_b.478
.main_b.488: 
	srai t0, a0, 17
.main_b.491: 
	xor t2, a0, t0
	slli t0, t2, 5
	xor t2, t2, t0
	sw t2, 0(s3)
	li t0, 1073741823
	and t0, t2, t0
	andi t0, t0, 255
	bne t1, t0, .main_b.494
.main_b.495: 
	li t0, 5647
	xor t0, s2, t0
	bne t0, zero, .main_b.499
.main_b.500: 
	li a0, 4
	call malloc
	mv a1, a0
	li t0, 100
	sw t0, 0(a1)
	lw a0, 0(a1)
	li t2, 65536
	li t1, 0
.main_b.505: 
	blt t1, a0, .main_b.509
.main_b.510: 
	li t0, 200
	sw t0, 0(a1)
	lw a2, 0(a1)
	li t0, 65536
	li a0, 0
.main_b.516: 
	blt a0, a2, .main_b.520
.main_b.521: 
	add t0, t2, t0
	addi t0, t0, -300
	bne t0, zero, .main_b.528
.main_b.529: 
	li t0, 0
	li t1, 0
.main_b.533: 
	li t2, 200
	blt t1, t2, .main_b.537
.main_b.538: 
	addi t0, t0, -100
	bne t0, zero, .main_b.541
.main_b.542: 
	li a0, 0
	j .main_b.504
.main_b.493: 
	addi t0, t0, 1
	j .main_b.484
.main_b.494: 
	lw t1, 0(s6)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.497
.main_b.498: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.503
.main_b.497: 
	srai t0, t2, 17
.main_b.503: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	sw t1, 0(s4)
	li t0, 1073741823
	and t0, t1, t0
	addi a0, t0, 1
	lw t1, 0(s8)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.507
.main_b.508: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.513
.main_b.499: 
	li a0, -1
	mv a1, zero
.main_b.504: 
	lw s0, 20(sp)
	lw s1, 24(sp)
	lw s2, 28(sp)
	lw s3, 32(sp)
	lw s4, 36(sp)
	lw s5, 40(sp)
	lw s6, 44(sp)
	lw s7, 48(sp)
	lw s8, 52(sp)
	lw s9, 56(sp)
	lw s10, 60(sp)
	lw s11, 64(sp)
	lw ra, 16(sp)
	addi sp, sp, 256
	ret
.main_b.502: 
	addi t0, t0, 1
	j .main_b.490
.main_b.507: 
	srai t0, t2, 17
.main_b.513: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	sw t1, 0(s1)
	li t0, 1073741823
	and t0, t1, t0
	addi t0, t0, 1
	blt zero, t0, .main_b.518
.main_b.519: 
	xor s2, s2, a0
	j .main_b.479
.main_b.509: 
	addi t0, t1, 1
	bne t0, zero, .main_b.514
.main_b.515: 
	addi t1, t1, 1
	j .main_b.505
.main_b.512: 
	addi t0, t0, 1
	j .main_b.496
.main_b.514: 
	mv t2, t0
	j .main_b.515
.main_b.518: 
	rem t1, a0, t0
	blt zero, t1, .main_b.524
.main_b.525: 
	mv a0, t0
	j .main_b.519
.main_b.520: 
	addi t1, a0, 1
	bne t1, zero, .main_b.527
.main_b.526: 
	mv t1, t0
.main_b.527: 
	addi a0, a0, 1
	mv t0, t1
	j .main_b.516
.main_b.523: 
	addi t0, t0, 1
	j .main_b.506
.main_b.524: 
	rem a0, t0, t1
	blt zero, a0, .main_b.531
.main_b.532: 
	mv a0, t1
	j .main_b.519
.main_b.528: 
	li a0, -1
	j .main_b.504
.main_b.531: 
	rem t0, t1, a0
	blt zero, t0, .main_b.536
	j .main_b.519
.main_b.535: 
	addi t0, t0, 1
	j .main_b.517
.main_b.536: 
	rem a1, a0, t0
	blt zero, a1, .main_b.539
.main_b.540: 
	mv a0, t0
	j .main_b.519
.main_b.537: 
	addi t1, t1, 1
	addi t0, t0, 1
	addi t1, t1, 1
	j .main_b.533
.main_b.539: 
	rem a2, t0, a1
	mv a0, s5
	call cls_taskInline_gcd
	j .main_b.519
.main_b.541: 
	li a0, -1
	j .main_b.504
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
	rem a1, a1, t0
	blt zero, a1, .cls_taskInline_gcd_b.6
.cls_taskInline_gcd_b.7: 
	mv a1, t0
	j .cls_taskInline_gcd_b.2
.cls_taskInline_gcd_b.6: 
	rem t1, t0, a1
	blt zero, t1, .cls_taskInline_gcd_b.8
	j .cls_taskInline_gcd_b.2
.cls_taskInline_gcd_b.8: 
	rem t0, a1, t1
	blt zero, t0, .cls_taskInline_gcd_b.9
.cls_taskInline_gcd_b.10: 
	mv a1, t1
	j .cls_taskInline_gcd_b.2
.cls_taskInline_gcd_b.9: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.11
.cls_taskInline_gcd_b.12: 
	mv t1, t0
	j .cls_taskInline_gcd_b.10
.cls_taskInline_gcd_b.11: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.13
	j .cls_taskInline_gcd_b.10
.cls_taskInline_gcd_b.13: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.14
.cls_taskInline_gcd_b.15: 
	mv t1, t0
	j .cls_taskInline_gcd_b.10
.cls_taskInline_gcd_b.14: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.16
.cls_taskInline_gcd_b.17: 
	mv t0, t1
	j .cls_taskInline_gcd_b.15
.cls_taskInline_gcd_b.16: 
	rem t2, t1, t0
	blt zero, t2, .cls_taskInline_gcd_b.18
.cls_taskInline_gcd_b.19: 
	mv t1, t0
	j .cls_taskInline_gcd_b.17
.cls_taskInline_gcd_b.18: 
	rem t1, t0, t2
	blt zero, t1, .cls_taskInline_gcd_b.20
.cls_taskInline_gcd_b.21: 
	mv t0, t2
	j .cls_taskInline_gcd_b.19
.cls_taskInline_gcd_b.20: 
	rem t0, t2, t1
	blt zero, t0, .cls_taskInline_gcd_b.22
.cls_taskInline_gcd_b.23: 
	mv t0, t1
	j .cls_taskInline_gcd_b.19
.cls_taskInline_gcd_b.22: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.24
	j .cls_taskInline_gcd_b.19
.cls_taskInline_gcd_b.24: 
	rem t2, t0, t1
	blt zero, t2, .cls_taskInline_gcd_b.25
.cls_taskInline_gcd_b.26: 
	mv t0, t1
	j .cls_taskInline_gcd_b.19
.cls_taskInline_gcd_b.25: 
	rem t0, t1, t2
	blt zero, t0, .cls_taskInline_gcd_b.27
.cls_taskInline_gcd_b.28: 
	mv t0, t2
	j .cls_taskInline_gcd_b.19
.cls_taskInline_gcd_b.27: 
	rem t1, t2, t0
	blt zero, t1, .cls_taskInline_gcd_b.29
	j .cls_taskInline_gcd_b.19
.cls_taskInline_gcd_b.29: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.30
.cls_taskInline_gcd_b.31: 
	mv t0, t1
	j .cls_taskInline_gcd_b.19
.cls_taskInline_gcd_b.30: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.32
.cls_taskInline_gcd_b.33: 
	mv t1, t0
	j .cls_taskInline_gcd_b.31
.cls_taskInline_gcd_b.32: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.34
.cls_taskInline_gcd_b.35: 
	mv t0, t1
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.34: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.36
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.36: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.37
.cls_taskInline_gcd_b.38: 
	mv t0, t1
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.37: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.39
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.39: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.40
.cls_taskInline_gcd_b.41: 
	mv t0, t1
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.40: 
	rem t2, t1, t0
	blt zero, t2, .cls_taskInline_gcd_b.42
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.42: 
	rem t1, t0, t2
	blt zero, t1, .cls_taskInline_gcd_b.43
.cls_taskInline_gcd_b.44: 
	mv t0, t2
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.43: 
	rem t0, t2, t1
	blt zero, t0, .cls_taskInline_gcd_b.45
.cls_taskInline_gcd_b.46: 
	mv t0, t1
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.45: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.47
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.47: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.48
.cls_taskInline_gcd_b.49: 
	mv t0, t1
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.48: 
	rem t1, t1, t0
	blt zero, t1, .cls_taskInline_gcd_b.50
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.50: 
	rem t0, t0, t1
	blt zero, t0, .cls_taskInline_gcd_b.51
.cls_taskInline_gcd_b.52: 
	mv t0, t1
	j .cls_taskInline_gcd_b.33
.cls_taskInline_gcd_b.51: 
	rem a1, t1, t0
	blt zero, a1, .cls_taskInline_gcd_b.53
.cls_taskInline_gcd_b.54: 
	mv t1, t0
	j .cls_taskInline_gcd_b.52
.cls_taskInline_gcd_b.53: 
	rem a2, t0, a1
	call cls_taskInline_gcd
	mv t1, a0
	j .cls_taskInline_gcd_b.52
	.size	cls_taskInline_gcd, .-cls_taskInline_gcd

	.type	.cls_taskStress_con_0.0,@object
	.section	.rodata
.cls_taskStress_con_0.0:
	.asciz	"wtf"
	.size	.cls_taskStress_con_0.0, 4

