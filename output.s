	.text
	.globl	cls_taskConst_main
	.p2align	1
	.type	cls_taskConst_main,@function
cls_taskConst_main:
.cls_taskConst_main_b.0: 
	addi sp, sp, 0
	li t0, 0
	li t1, 0
.cls_taskConst_main_b.1: 
	li t2, 200
	blt t1, t2, .cls_taskConst_main_b.2
.cls_taskConst_main_b.3: 
	addi a0, t0, -100
	addi sp, sp, 0
	ret
.cls_taskConst_main_b.2: 
	addi t1, t1, 1
	addi t0, t0, 1
	addi t1, t1, 1
	j .cls_taskConst_main_b.1
	.size	cls_taskConst_main, .-cls_taskConst_main

	.globl	cls_taskSSA_test
	.p2align	1
	.type	cls_taskSSA_test,@function
cls_taskSSA_test:
.cls_taskSSA_test_b.0: 
	addi sp, sp, 0
	lw t2, 0(a0)
	li t0, 0
	li a0, 65536
.cls_taskSSA_test_b.1: 
	blt t0, t2, .cls_taskSSA_test_b.2
.cls_taskSSA_test_b.3: 
	addi sp, sp, 0
	ret
.cls_taskSSA_test_b.2: 
	addi t1, t0, 1
	bne t1, zero, .cls_taskSSA_test_b.4
.cls_taskSSA_test_b.5: 
	addi t0, t0, 1
	j .cls_taskSSA_test_b.1
.cls_taskSSA_test_b.4: 
	mv a0, t1
	j .cls_taskSSA_test_b.5
	.size	cls_taskSSA_test, .-cls_taskSSA_test

	.globl	cls_taskStress_con_0
	.p2align	1
	.type	cls_taskStress_con_0,@function
cls_taskStress_con_0:
.cls_taskStress_con_0_b.0: 
	addi sp, sp, -256
	sw s0, 12(sp)
	sw s1, 16(sp)
	sw s2, 20(sp)
	sw s3, 24(sp)
	sw s4, 28(sp)
	sw s5, 32(sp)
	sw s6, 36(sp)
	sw s7, 40(sp)
	sw s8, 44(sp)
	sw s9, 48(sp)
	sw s10, 52(sp)
	sw s11, 56(sp)
	sw ra, 8(sp)
	sw a0, 156(sp)
	li t1, 1
	li t0, 998
	sw t0, 160(sp)
	li t0, 4
	sw t0, 244(sp)
	li t0, 2
	sw t0, 212(sp)
	li t0, 4
	sw t0, 232(sp)
	li t0, 1
	sw t0, 4(sp)
	li t0, 7
	sw t0, 180(sp)
	li s4, 1
	li s11, 5
	li t0, 8
	sw t0, 184(sp)
	li t0, 6
	sw t0, 0(sp)
	li a5, 3
	li t0, 5
	sw t0, 252(sp)
	li a6, 5
	li t2, 1
	li t6, 2
	li s2, 5
	li a3, 6
	li a1, 3
	li t4, 4
	li s3, 1
	li t0, 7
	sw t0, 196(sp)
	li t0, 9
	sw t0, 176(sp)
	li t0, 2
	sw t0, 224(sp)
	li t0, 2
	sw t0, 248(sp)
	li t0, 4
	sw t0, 228(sp)
	li s7, 8
	li t0, 4
	sw t0, 240(sp)
	li s5, 1
	li t0, 7
	sw t0, 164(sp)
	li t0, 9
	sw t0, 168(sp)
	li t0, 6
	sw t0, 216(sp)
	li a7, 2
	li t3, 0
	li s8, 4
	li a0, 3
	li t0, 7
	sw t0, 200(sp)
	li a4, 5
	li ra, 4
	li a2, 4
	li s0, 6
	li s1, 8
	li t0, 9
	sw t0, 236(sp)
	li s6, 3
	li t0, 7
	sw t0, 204(sp)
	li t5, 6
	li t0, 8
	sw t0, 208(sp)
	li t0, 6
	sw t0, 188(sp)
	li t0, 4
	sw t0, 220(sp)
	li t0, 8
	li s9, 9
	sw s9, 192(sp)
.cls_taskStress_con_0_b.1: 
	lw s9, 160(sp)
	rem s9, t3, s9
	sw s9, 136(sp)
	li s9, 100
	sw s9, 148(sp)
	lw s10, 136(sp)
	lw s9, 148(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2
.cls_taskStress_con_0_b.3: 
	lw s9, 156(sp)
	sw s9, 152(sp)
	li s9, -1
	sw s9, 144(sp)
	lw s9, 144(sp)
	lw s10, 152(sp)
	sw s9, 0(s10)
	lw s9, 184(sp)
	lw s10, 208(sp)
	bne s10, s9, .cls_taskStress_con_0_b.4
.cls_taskStress_con_0_b.5: 
	lw s9, 220(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.7
.cls_taskStress_con_0_b.8: 
	lw s9, 248(sp)
	blt t1, s9, .cls_taskStress_con_0_b.10
.cls_taskStress_con_0_b.11: 
	bge a0, s0, .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.14: 
	lw s10, 236(sp)
	lw s9, 216(sp)
	beq s10, s9, .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.18: 
	bge a3, s8, .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.22: 
	blt t3, a3, .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.26: 
	blt s2, a7, .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.30: 
	lw s9, 232(sp)
	lw s10, 4(sp)
	bne s10, s9, .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.34: 
	lw s9, 228(sp)
	blt s9, s8, .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.38: 
	blt a1, a0, .cls_taskStress_con_0_b.13
	j .cls_taskStress_con_0_b.17
.cls_taskStress_con_0_b.2: 
	lw t3, 196(sp)
	addi t3, t3, 6
	sw t3, 60(sp)
	addi t3, s2, 4
	sw t3, 104(sp)
	lw t3, 252(sp)
	addi t3, t3, 9
	sw t3, 120(sp)
	addi a6, a6, 1
	sw a6, 64(sp)
	addi a6, t1, 4
	lw t1, 184(sp)
	addi t1, t1, 6
	sw t1, 68(sp)
	addi t1, a4, 6
	sw t1, 72(sp)
	addi t1, t6, 2
	sw t1, 76(sp)
	addi t1, t4, 1
	sw t1, 80(sp)
	lw t1, 168(sp)
	addi t1, t1, 1
	sw t1, 124(sp)
	addi a0, a0, 4
	addi t1, s5, 9
	sw t1, 116(sp)
	lw t1, 0(sp)
	addi a4, t1, 8
	addi t4, s0, 9
	addi t0, t0, 8
	lw t1, 232(sp)
	addi t1, t1, 6
	sw t1, 108(sp)
	lw t1, 220(sp)
	addi t1, t1, 6
	sw t1, 84(sp)
	lw t1, 188(sp)
	addi t1, t1, 7
	sw t1, 88(sp)
	lw t1, 208(sp)
	addi t1, t1, 5
	sw t1, 128(sp)
	lw t1, 204(sp)
	addi t1, t1, 1
	sw t1, 132(sp)
	lw t1, 176(sp)
	addi t1, t1, 7
	sw t1, 140(sp)
	lw t1, 244(sp)
	addi t1, t1, 9
	sw t1, 92(sp)
	lw t1, 248(sp)
	addi t1, t1, 9
	sw t1, 96(sp)
	addi t3, a2, 9
	lw t1, 216(sp)
	addi t1, t1, 9
	sw t1, 100(sp)
	lw t1, 192(sp)
	addi a2, t1, 2
	li t6, 2
	lw t1, 160(sp)
	div t1, t1, t6
	sw t1, 112(sp)
	lw t1, 160(sp)
	xori t1, t1, 1
	addi t6, t1, 10
	mv t1, ra
	sw t6, 160(sp)
	lw t6, 236(sp)
	sw t6, 244(sp)
	sw s4, 232(sp)
	lw s4, 180(sp)
	lw t6, 4(sp)
	sw t6, 184(sp)
	sw t4, 0(sp)
	lw t4, 200(sp)
	sw t4, 252(sp)
	lw t6, 240(sp)
	lw s2, 120(sp)
	lw t4, 228(sp)
	sw a7, 196(sp)
	sw s11, 176(sp)
	sw t3, 248(sp)
	lw a7, 124(sp)
	sw a7, 228(sp)
	sw s3, 240(sp)
	mv s5, a4
	sw a0, 168(sp)
	sw a2, 216(sp)
	lw a7, 104(sp)
	lw t3, 164(sp)
	lw a0, 116(sp)
	sw s7, 200(sp)
	mv a4, t5
	lw ra, 68(sp)
	lw a2, 212(sp)
	mv s0, t0
	sw t2, 236(sp)
	lw t0, 140(sp)
	sw t0, 204(sp)
	mv t5, s1
	lw t0, 132(sp)
	sw t0, 208(sp)
	lw t0, 128(sp)
	sw t0, 188(sp)
	lw t0, 224(sp)
	sw t0, 220(sp)
	lw t0, 108(sp)
	sw a1, 192(sp)
	lw t2, 100(sp)
	sw t2, 212(sp)
	sw a5, 4(sp)
	lw t2, 84(sp)
	sw t2, 180(sp)
	mv s11, a3
	mv a5, s6
	lw t2, 96(sp)
	mv a3, s8
	lw a1, 112(sp)
	lw s3, 80(sp)
	lw s1, 88(sp)
	sw s1, 224(sp)
	lw s7, 64(sp)
	lw s1, 60(sp)
	sw s1, 164(sp)
	lw s8, 92(sp)
	lw s1, 76(sp)
	lw s6, 72(sp)
	j .cls_taskStress_con_0_b.1
.cls_taskStress_con_0_b.4: 
	bge s5, t6, .cls_taskStress_con_0_b.6
	j .cls_taskStress_con_0_b.5
.cls_taskStress_con_0_b.6: 
	lw s9, 212(sp)
	bge s3, s9, .cls_taskStress_con_0_b.9
	j .cls_taskStress_con_0_b.5
.cls_taskStress_con_0_b.7: 
	bge t0, t5, .cls_taskStress_con_0_b.10
	j .cls_taskStress_con_0_b.8
.cls_taskStress_con_0_b.9: 
	lw s9, 4(sp)
	bge s6, s9, .cls_taskStress_con_0_b.12
	j .cls_taskStress_con_0_b.5
.cls_taskStress_con_0_b.10: 
	lw s9, 224(sp)
	bge s7, s9, .cls_taskStress_con_0_b.13
	j .cls_taskStress_con_0_b.11
.cls_taskStress_con_0_b.12: 
	lw s9, 180(sp)
	beq s9, t5, .cls_taskStress_con_0_b.15
	j .cls_taskStress_con_0_b.5
.cls_taskStress_con_0_b.13: 
	lw s9, 180(sp)
	beq s8, s9, .cls_taskStress_con_0_b.16
.cls_taskStress_con_0_b.17: 
	lw s10, 188(sp)
	lw s9, 236(sp)
	bge s10, s9, .cls_taskStress_con_0_b.16
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.15: 
	lw s9, 244(sp)
	lw s10, 228(sp)
	bge s9, s10, .cls_taskStress_con_0_b.19
	j .cls_taskStress_con_0_b.5
.cls_taskStress_con_0_b.16: 
	lw s9, 188(sp)
	blt s9, a2, .cls_taskStress_con_0_b.20
.cls_taskStress_con_0_b.21: 
	beq s3, t0, .cls_taskStress_con_0_b.24
.cls_taskStress_con_0_b.25: 
	blt s7, s1, .cls_taskStress_con_0_b.24
	j .cls_taskStress_con_0_b.29
.cls_taskStress_con_0_b.19: 
	blt s8, s1, .cls_taskStress_con_0_b.7
	j .cls_taskStress_con_0_b.5
.cls_taskStress_con_0_b.20: 
	bne a5, s5, .cls_taskStress_con_0_b.23
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.23: 
	lw s10, 240(sp)
	lw s9, 232(sp)
	bge s10, s9, .cls_taskStress_con_0_b.27
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.24: 
	lw s9, 168(sp)
	lw s10, 224(sp)
	beq s10, s9, .cls_taskStress_con_0_b.28
.cls_taskStress_con_0_b.29: 
	blt a6, ra, .cls_taskStress_con_0_b.32
.cls_taskStress_con_0_b.33: 
	bge t2, t2, .cls_taskStress_con_0_b.36
.cls_taskStress_con_0_b.37: 
	bne a5, s2, .cls_taskStress_con_0_b.36
.cls_taskStress_con_0_b.42: 
	lw s9, 216(sp)
	bne s9, t1, .cls_taskStress_con_0_b.36
.cls_taskStress_con_0_b.46: 
	bne t3, s1, .cls_taskStress_con_0_b.36
	j .cls_taskStress_con_0_b.41
.cls_taskStress_con_0_b.27: 
	lw s9, 212(sp)
	bne s9, s8, .cls_taskStress_con_0_b.31
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.28: 
	lw s9, 244(sp)
	lw s10, 220(sp)
	blt s9, s10, .cls_taskStress_con_0_b.32
	j .cls_taskStress_con_0_b.29
.cls_taskStress_con_0_b.31: 
	beq t2, a0, .cls_taskStress_con_0_b.35
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.32: 
	lw s9, 200(sp)
	bne t6, s9, .cls_taskStress_con_0_b.36
	j .cls_taskStress_con_0_b.33
.cls_taskStress_con_0_b.35: 
	lw s9, 200(sp)
	lw s10, 216(sp)
	beq s9, s10, .cls_taskStress_con_0_b.39
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.36: 
	lw s9, 184(sp)
	lw s10, 204(sp)
	beq s10, s9, .cls_taskStress_con_0_b.40
.cls_taskStress_con_0_b.41: 
	lw s10, 192(sp)
	lw s9, 252(sp)
	blt s10, s9, .cls_taskStress_con_0_b.40
	j .cls_taskStress_con_0_b.45
.cls_taskStress_con_0_b.39: 
	bge a0, s0, .cls_taskStress_con_0_b.43
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.40: 
	bne a5, s8, .cls_taskStress_con_0_b.44
.cls_taskStress_con_0_b.45: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.49
.cls_taskStress_con_0_b.50: 
	lw s9, 228(sp)
	blt s9, t6, .cls_taskStress_con_0_b.49
	j .cls_taskStress_con_0_b.54
.cls_taskStress_con_0_b.43: 
	beq ra, s11, .cls_taskStress_con_0_b.47
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.44: 
	lw s9, 176(sp)
	blt t5, s9, .cls_taskStress_con_0_b.48
	j .cls_taskStress_con_0_b.45
.cls_taskStress_con_0_b.47: 
	lw s9, 216(sp)
	bge t5, s9, .cls_taskStress_con_0_b.51
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.48: 
	lw s9, 184(sp)
	beq s9, t2, .cls_taskStress_con_0_b.52
	j .cls_taskStress_con_0_b.45
.cls_taskStress_con_0_b.49: 
	blt t6, t2, .cls_taskStress_con_0_b.53
.cls_taskStress_con_0_b.54: 
	lw s9, 184(sp)
	blt s4, s9, .cls_taskStress_con_0_b.56
.cls_taskStress_con_0_b.57: 
	lw s9, 200(sp)
	beq t4, s9, .cls_taskStress_con_0_b.59
.cls_taskStress_con_0_b.60: 
	bge s7, a4, .cls_taskStress_con_0_b.59
	j .cls_taskStress_con_0_b.63
.cls_taskStress_con_0_b.51: 
	lw s10, 240(sp)
	lw s9, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.55
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.52: 
	lw s9, 220(sp)
	bge s9, t1, .cls_taskStress_con_0_b.49
	j .cls_taskStress_con_0_b.45
.cls_taskStress_con_0_b.53: 
	lw s10, 188(sp)
	lw s9, 0(sp)
	beq s9, s10, .cls_taskStress_con_0_b.56
	j .cls_taskStress_con_0_b.54
.cls_taskStress_con_0_b.55: 
	beq a3, a1, .cls_taskStress_con_0_b.24
	j .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.56: 
	blt a1, s5, .cls_taskStress_con_0_b.58
	j .cls_taskStress_con_0_b.57
.cls_taskStress_con_0_b.58: 
	blt s0, t0, .cls_taskStress_con_0_b.61
	j .cls_taskStress_con_0_b.57
.cls_taskStress_con_0_b.59: 
	lw s10, 248(sp)
	lw s9, 224(sp)
	bne s10, s9, .cls_taskStress_con_0_b.62
.cls_taskStress_con_0_b.63: 
	bne s0, a0, .cls_taskStress_con_0_b.62
	j .cls_taskStress_con_0_b.66
.cls_taskStress_con_0_b.61: 
	lw s9, 204(sp)
	blt t4, s9, .cls_taskStress_con_0_b.64
	j .cls_taskStress_con_0_b.57
.cls_taskStress_con_0_b.62: 
	bge t0, a6, .cls_taskStress_con_0_b.65
.cls_taskStress_con_0_b.66: 
	lw s9, 220(sp)
	lw s10, 224(sp)
	bge s10, s9, .cls_taskStress_con_0_b.69
.cls_taskStress_con_0_b.70: 
	lw s9, 212(sp)
	bge a5, s9, .cls_taskStress_con_0_b.69
.cls_taskStress_con_0_b.73: 
	lw s9, 244(sp)
	blt a2, s9, .cls_taskStress_con_0_b.69
.cls_taskStress_con_0_b.76: 
	lw s9, 240(sp)
	bge t3, s9, .cls_taskStress_con_0_b.69
	j .cls_taskStress_con_0_b.72
.cls_taskStress_con_0_b.64: 
	lw s9, 228(sp)
	blt s9, t2, .cls_taskStress_con_0_b.67
	j .cls_taskStress_con_0_b.57
.cls_taskStress_con_0_b.65: 
	lw s9, 192(sp)
	blt s9, t5, .cls_taskStress_con_0_b.68
	j .cls_taskStress_con_0_b.66
.cls_taskStress_con_0_b.67: 
	lw s9, 196(sp)
	bge s9, a6, .cls_taskStress_con_0_b.59
	j .cls_taskStress_con_0_b.57
.cls_taskStress_con_0_b.68: 
	beq t6, a1, .cls_taskStress_con_0_b.69
	j .cls_taskStress_con_0_b.66
.cls_taskStress_con_0_b.69: 
	lw s9, 216(sp)
	bge s9, s11, .cls_taskStress_con_0_b.71
.cls_taskStress_con_0_b.72: 
	lw s9, 188(sp)
	lw s10, 164(sp)
	blt s9, s10, .cls_taskStress_con_0_b.74
.cls_taskStress_con_0_b.75: 
	lw s9, 180(sp)
	blt s9, s5, .cls_taskStress_con_0_b.74
.cls_taskStress_con_0_b.79: 
	lw s9, 240(sp)
	blt s9, s6, .cls_taskStress_con_0_b.74
	j .cls_taskStress_con_0_b.78
.cls_taskStress_con_0_b.71: 
	lw s9, 204(sp)
	bge t5, s9, .cls_taskStress_con_0_b.74
	j .cls_taskStress_con_0_b.72
.cls_taskStress_con_0_b.74: 
	blt a3, a6, .cls_taskStress_con_0_b.77
.cls_taskStress_con_0_b.78: 
	lw s9, 232(sp)
	bne s9, s6, .cls_taskStress_con_0_b.77
	j .cls_taskStress_con_0_b.81
.cls_taskStress_con_0_b.77: 
	bge a0, t1, .cls_taskStress_con_0_b.80
.cls_taskStress_con_0_b.81: 
	bge t2, t5, .cls_taskStress_con_0_b.80
	j .cls_taskStress_con_0_b.83
.cls_taskStress_con_0_b.80: 
	lw s9, 244(sp)
	blt s9, a1, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.83: 
	bge a3, a1, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.86: 
	lw s9, 252(sp)
	blt s9, s3, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.90: 
	bne t1, s0, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.94: 
	lw s9, 248(sp)
	bne s9, t2, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.99: 
	bne s0, t6, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.103: 
	lw s9, 196(sp)
	beq t2, s9, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.106: 
	bge ra, t4, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.110: 
	lw s9, 188(sp)
	bge s0, s9, .cls_taskStress_con_0_b.82
	j .cls_taskStress_con_0_b.85
.cls_taskStress_con_0_b.82: 
	lw s9, 168(sp)
	blt s9, s6, .cls_taskStress_con_0_b.84
.cls_taskStress_con_0_b.85: 
	lw s9, 180(sp)
	blt s9, s7, .cls_taskStress_con_0_b.84
.cls_taskStress_con_0_b.89: 
	beq s7, t4, .cls_taskStress_con_0_b.84
	j .cls_taskStress_con_0_b.88
.cls_taskStress_con_0_b.84: 
	beq a6, a3, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.88: 
	bge s2, s8, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.93: 
	lw s9, 184(sp)
	blt s9, a3, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.98: 
	lw s9, 248(sp)
	bge s9, t3, .cls_taskStress_con_0_b.87
	j .cls_taskStress_con_0_b.92
.cls_taskStress_con_0_b.87: 
	lw s9, 196(sp)
	beq s9, t2, .cls_taskStress_con_0_b.91
.cls_taskStress_con_0_b.92: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.91
.cls_taskStress_con_0_b.97: 
	bne a0, s0, .cls_taskStress_con_0_b.91
.cls_taskStress_con_0_b.102: 
	bge s7, s0, .cls_taskStress_con_0_b.91
	j .cls_taskStress_con_0_b.96
.cls_taskStress_con_0_b.91: 
	lw s9, 180(sp)
	bge s9, s1, .cls_taskStress_con_0_b.95
.cls_taskStress_con_0_b.96: 
	blt t3, a3, .cls_taskStress_con_0_b.95
	j .cls_taskStress_con_0_b.101
.cls_taskStress_con_0_b.95: 
	lw s9, 212(sp)
	bne a5, s9, .cls_taskStress_con_0_b.100
.cls_taskStress_con_0_b.101: 
	blt t4, s5, .cls_taskStress_con_0_b.100
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.100: 
	bge t4, t3, .cls_taskStress_con_0_b.104
.cls_taskStress_con_0_b.105: 
	blt a2, s0, .cls_taskStress_con_0_b.108
.cls_taskStress_con_0_b.109: 
	lw s9, 212(sp)
	bge s9, a0, .cls_taskStress_con_0_b.112
.cls_taskStress_con_0_b.113: 
	bge s1, a2, .cls_taskStress_con_0_b.115
.cls_taskStress_con_0_b.116: 
	beq s1, ra, .cls_taskStress_con_0_b.118
.cls_taskStress_con_0_b.119: 
	lw s9, 196(sp)
	lw s10, 224(sp)
	bge s10, s9, .cls_taskStress_con_0_b.122
.cls_taskStress_con_0_b.123: 
	lw s9, 208(sp)
	beq s6, s9, .cls_taskStress_con_0_b.122
.cls_taskStress_con_0_b.127: 
	beq t6, a4, .cls_taskStress_con_0_b.122
	j .cls_taskStress_con_0_b.126
.cls_taskStress_con_0_b.104: 
	blt s6, s6, .cls_taskStress_con_0_b.107
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.107: 
	lw s9, 164(sp)
	blt a1, s9, .cls_taskStress_con_0_b.111
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.108: 
	bne t4, s8, .cls_taskStress_con_0_b.112
	j .cls_taskStress_con_0_b.109
.cls_taskStress_con_0_b.111: 
	beq t5, t6, .cls_taskStress_con_0_b.114
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.112: 
	lw s9, 200(sp)
	lw s10, 208(sp)
	bge s9, s10, .cls_taskStress_con_0_b.115
	j .cls_taskStress_con_0_b.113
.cls_taskStress_con_0_b.114: 
	lw s10, 236(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.117
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.115: 
	lw s9, 236(sp)
	bne s9, s7, .cls_taskStress_con_0_b.118
	j .cls_taskStress_con_0_b.116
.cls_taskStress_con_0_b.117: 
	lw s10, 220(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.120
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.118: 
	lw s9, 192(sp)
	blt s9, t3, .cls_taskStress_con_0_b.121
	j .cls_taskStress_con_0_b.119
.cls_taskStress_con_0_b.120: 
	lw s9, 236(sp)
	bge s2, s9, .cls_taskStress_con_0_b.124
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.121: 
	lw s9, 252(sp)
	beq t2, s9, .cls_taskStress_con_0_b.122
	j .cls_taskStress_con_0_b.119
.cls_taskStress_con_0_b.122: 
	bge a0, t5, .cls_taskStress_con_0_b.125
.cls_taskStress_con_0_b.126: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.125
	j .cls_taskStress_con_0_b.129
.cls_taskStress_con_0_b.124: 
	blt a4, s4, .cls_taskStress_con_0_b.108
	j .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.125: 
	beq s4, s2, .cls_taskStress_con_0_b.128
.cls_taskStress_con_0_b.129: 
	lw s9, 4(sp)
	blt t6, s9, .cls_taskStress_con_0_b.128
.cls_taskStress_con_0_b.132: 
	lw s9, 216(sp)
	blt s6, s9, .cls_taskStress_con_0_b.128
.cls_taskStress_con_0_b.135: 
	lw s9, 200(sp)
	blt s9, t2, .cls_taskStress_con_0_b.128
.cls_taskStress_con_0_b.138: 
	bge s0, a0, .cls_taskStress_con_0_b.128
.cls_taskStress_con_0_b.141: 
	lw s9, 4(sp)
	blt s9, a3, .cls_taskStress_con_0_b.128
	j .cls_taskStress_con_0_b.131
.cls_taskStress_con_0_b.128: 
	lw s9, 232(sp)
	bge s2, s9, .cls_taskStress_con_0_b.130
.cls_taskStress_con_0_b.131: 
	bne ra, a6, .cls_taskStress_con_0_b.133
.cls_taskStress_con_0_b.134: 
	lw s9, 184(sp)
	blt s9, t3, .cls_taskStress_con_0_b.133
	j .cls_taskStress_con_0_b.137
.cls_taskStress_con_0_b.130: 
	lw s9, 168(sp)
	blt t0, s9, .cls_taskStress_con_0_b.133
	j .cls_taskStress_con_0_b.131
.cls_taskStress_con_0_b.133: 
	lw s9, 204(sp)
	bge s9, s2, .cls_taskStress_con_0_b.136
.cls_taskStress_con_0_b.137: 
	lw s10, 244(sp)
	lw s9, 236(sp)
	beq s9, s10, .cls_taskStress_con_0_b.139
.cls_taskStress_con_0_b.140: 
	lw s9, 252(sp)
	blt s7, s9, .cls_taskStress_con_0_b.142
.cls_taskStress_con_0_b.143: 
	lw s9, 236(sp)
	blt s9, a2, .cls_taskStress_con_0_b.142
.cls_taskStress_con_0_b.146: 
	lw s9, 196(sp)
	bne s9, t1, .cls_taskStress_con_0_b.142
	j .cls_taskStress_con_0_b.145
.cls_taskStress_con_0_b.136: 
	bne a4, s8, .cls_taskStress_con_0_b.139
	j .cls_taskStress_con_0_b.137
.cls_taskStress_con_0_b.139: 
	lw s9, 176(sp)
	blt s9, a0, .cls_taskStress_con_0_b.142
	j .cls_taskStress_con_0_b.140
.cls_taskStress_con_0_b.142: 
	beq a3, a5, .cls_taskStress_con_0_b.144
.cls_taskStress_con_0_b.145: 
	bge s2, a4, .cls_taskStress_con_0_b.144
	j .cls_taskStress_con_0_b.148
.cls_taskStress_con_0_b.144: 
	blt s8, t6, .cls_taskStress_con_0_b.147
.cls_taskStress_con_0_b.148: 
	lw s9, 244(sp)
	blt a2, s9, .cls_taskStress_con_0_b.147
.cls_taskStress_con_0_b.151: 
	lw s9, 216(sp)
	bne t2, s9, .cls_taskStress_con_0_b.147
	j .cls_taskStress_con_0_b.150
.cls_taskStress_con_0_b.147: 
	lw s9, 252(sp)
	bne s9, s9, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.150: 
	lw s9, 168(sp)
	bne s9, s4, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.154: 
	blt s4, s11, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.158: 
	lw s9, 0(sp)
	blt s7, s9, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.163: 
	lw s9, 252(sp)
	blt a3, s9, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.169: 
	bge s4, t2, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.174: 
	lw s9, 208(sp)
	bne s7, s9, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.177: 
	blt a5, s3, .cls_taskStress_con_0_b.149
	j .cls_taskStress_con_0_b.153
.cls_taskStress_con_0_b.149: 
	bge a5, a3, .cls_taskStress_con_0_b.152
.cls_taskStress_con_0_b.153: 
	bge s1, s4, .cls_taskStress_con_0_b.152
.cls_taskStress_con_0_b.157: 
	lw s10, 228(sp)
	lw s9, 232(sp)
	bge s10, s9, .cls_taskStress_con_0_b.152
.cls_taskStress_con_0_b.162: 
	bge a6, s5, .cls_taskStress_con_0_b.152
.cls_taskStress_con_0_b.168: 
	lw s9, 240(sp)
	beq s9, t5, .cls_taskStress_con_0_b.152
.cls_taskStress_con_0_b.173: 
	blt a5, s7, .cls_taskStress_con_0_b.152
	j .cls_taskStress_con_0_b.156
.cls_taskStress_con_0_b.152: 
	lw s9, 236(sp)
	bge s9, a0, .cls_taskStress_con_0_b.155
.cls_taskStress_con_0_b.156: 
	bge a2, a6, .cls_taskStress_con_0_b.155
.cls_taskStress_con_0_b.161: 
	blt a7, s8, .cls_taskStress_con_0_b.155
.cls_taskStress_con_0_b.167: 
	lw s9, 184(sp)
	bge s9, a2, .cls_taskStress_con_0_b.155
	j .cls_taskStress_con_0_b.160
.cls_taskStress_con_0_b.155: 
	bge a4, t4, .cls_taskStress_con_0_b.159
.cls_taskStress_con_0_b.160: 
	lw s9, 188(sp)
	bne s9, s3, .cls_taskStress_con_0_b.159
.cls_taskStress_con_0_b.166: 
	lw s9, 168(sp)
	lw s10, 0(sp)
	blt s10, s9, .cls_taskStress_con_0_b.159
.cls_taskStress_con_0_b.172: 
	lw s10, 252(sp)
	lw s9, 180(sp)
	bge s10, s9, .cls_taskStress_con_0_b.159
	j .cls_taskStress_con_0_b.165
.cls_taskStress_con_0_b.159: 
	lw s9, 248(sp)
	lw s10, 224(sp)
	bge s9, s10, .cls_taskStress_con_0_b.164
.cls_taskStress_con_0_b.165: 
	lw s9, 204(sp)
	bge s9, t0, .cls_taskStress_con_0_b.164
	j .cls_taskStress_con_0_b.171
.cls_taskStress_con_0_b.164: 
	bge t1, a2, .cls_taskStress_con_0_b.170
.cls_taskStress_con_0_b.171: 
	lw s9, 248(sp)
	blt t5, s9, .cls_taskStress_con_0_b.175
.cls_taskStress_con_0_b.176: 
	lw s9, 224(sp)
	blt s9, a6, .cls_taskStress_con_0_b.178
.cls_taskStress_con_0_b.179: 
	bge a7, s11, .cls_taskStress_con_0_b.178
.cls_taskStress_con_0_b.182: 
	lw s10, 188(sp)
	lw s9, 240(sp)
	blt s9, s10, .cls_taskStress_con_0_b.178
	j .cls_taskStress_con_0_b.181
.cls_taskStress_con_0_b.170: 
	lw s9, 192(sp)
	blt s1, s9, .cls_taskStress_con_0_b.175
	j .cls_taskStress_con_0_b.171
.cls_taskStress_con_0_b.175: 
	lw s9, 168(sp)
	blt s9, s6, .cls_taskStress_con_0_b.178
	j .cls_taskStress_con_0_b.176
.cls_taskStress_con_0_b.178: 
	lw s9, 0(sp)
	bne s8, s9, .cls_taskStress_con_0_b.180
.cls_taskStress_con_0_b.181: 
	blt a3, s7, .cls_taskStress_con_0_b.184
.cls_taskStress_con_0_b.185: 
	blt t4, s5, .cls_taskStress_con_0_b.184
	j .cls_taskStress_con_0_b.187
.cls_taskStress_con_0_b.180: 
	lw s9, 208(sp)
	blt s9, a6, .cls_taskStress_con_0_b.183
	j .cls_taskStress_con_0_b.181
.cls_taskStress_con_0_b.183: 
	blt t1, a3, .cls_taskStress_con_0_b.184
	j .cls_taskStress_con_0_b.181
.cls_taskStress_con_0_b.184: 
	lw s9, 208(sp)
	blt s9, t0, .cls_taskStress_con_0_b.186
.cls_taskStress_con_0_b.187: 
	lw s9, 244(sp)
	lw s10, 208(sp)
	bge s10, s9, .cls_taskStress_con_0_b.189
.cls_taskStress_con_0_b.190: 
	lw s9, 196(sp)
	lw s10, 232(sp)
	beq s9, s10, .cls_taskStress_con_0_b.191
.cls_taskStress_con_0_b.192: 
	bge a7, s3, .cls_taskStress_con_0_b.191
	j .cls_taskStress_con_0_b.194
.cls_taskStress_con_0_b.186: 
	lw s9, 224(sp)
	blt s5, s9, .cls_taskStress_con_0_b.188
	j .cls_taskStress_con_0_b.187
.cls_taskStress_con_0_b.188: 
	lw s9, 212(sp)
	beq s9, t0, .cls_taskStress_con_0_b.189
	j .cls_taskStress_con_0_b.187
.cls_taskStress_con_0_b.189: 
	beq a4, s2, .cls_taskStress_con_0_b.191
	j .cls_taskStress_con_0_b.190
.cls_taskStress_con_0_b.191: 
	lw s9, 236(sp)
	beq s9, s1, .cls_taskStress_con_0_b.193
.cls_taskStress_con_0_b.194: 
	bge t6, s7, .cls_taskStress_con_0_b.195
.cls_taskStress_con_0_b.196: 
	bge a4, t4, .cls_taskStress_con_0_b.195
	j .cls_taskStress_con_0_b.198
.cls_taskStress_con_0_b.193: 
	lw s9, 252(sp)
	bne s9, t6, .cls_taskStress_con_0_b.195
	j .cls_taskStress_con_0_b.194
.cls_taskStress_con_0_b.195: 
	beq a0, t6, .cls_taskStress_con_0_b.197
.cls_taskStress_con_0_b.198: 
	bne t3, a2, .cls_taskStress_con_0_b.200
.cls_taskStress_con_0_b.201: 
	blt a7, s3, .cls_taskStress_con_0_b.200
	j .cls_taskStress_con_0_b.203
.cls_taskStress_con_0_b.197: 
	lw s9, 240(sp)
	blt s9, a3, .cls_taskStress_con_0_b.199
	j .cls_taskStress_con_0_b.198
.cls_taskStress_con_0_b.199: 
	lw s9, 212(sp)
	beq s9, t0, .cls_taskStress_con_0_b.200
	j .cls_taskStress_con_0_b.198
.cls_taskStress_con_0_b.200: 
	lw s9, 176(sp)
	lw s10, 248(sp)
	beq s9, s10, .cls_taskStress_con_0_b.202
.cls_taskStress_con_0_b.203: 
	bge a7, t5, .cls_taskStress_con_0_b.202
.cls_taskStress_con_0_b.206: 
	lw s9, 212(sp)
	lw s10, 232(sp)
	blt s10, s9, .cls_taskStress_con_0_b.202
.cls_taskStress_con_0_b.209: 
	lw s9, 252(sp)
	bge s9, s1, .cls_taskStress_con_0_b.202
	j .cls_taskStress_con_0_b.205
.cls_taskStress_con_0_b.202: 
	beq a5, a0, .cls_taskStress_con_0_b.204
.cls_taskStress_con_0_b.205: 
	blt ra, a6, .cls_taskStress_con_0_b.204
	j .cls_taskStress_con_0_b.208
.cls_taskStress_con_0_b.204: 
	bne a1, t3, .cls_taskStress_con_0_b.207
.cls_taskStress_con_0_b.208: 
	lw s9, 216(sp)
	bne s9, a7, .cls_taskStress_con_0_b.207
	j .cls_taskStress_con_0_b.211
.cls_taskStress_con_0_b.207: 
	bge t3, s11, .cls_taskStress_con_0_b.210
.cls_taskStress_con_0_b.211: 
	lw s9, 180(sp)
	bge s9, t2, .cls_taskStress_con_0_b.213
.cls_taskStress_con_0_b.214: 
	blt s2, s6, .cls_taskStress_con_0_b.216
.cls_taskStress_con_0_b.217: 
	blt t6, a4, .cls_taskStress_con_0_b.216
	j .cls_taskStress_con_0_b.219
.cls_taskStress_con_0_b.210: 
	blt s7, a5, .cls_taskStress_con_0_b.212
	j .cls_taskStress_con_0_b.211
.cls_taskStress_con_0_b.212: 
	bge s0, ra, .cls_taskStress_con_0_b.215
	j .cls_taskStress_con_0_b.211
.cls_taskStress_con_0_b.213: 
	bne a6, a2, .cls_taskStress_con_0_b.216
	j .cls_taskStress_con_0_b.214
.cls_taskStress_con_0_b.215: 
	blt a2, s4, .cls_taskStress_con_0_b.213
	j .cls_taskStress_con_0_b.211
.cls_taskStress_con_0_b.216: 
	lw s9, 236(sp)
	blt s9, t2, .cls_taskStress_con_0_b.218
.cls_taskStress_con_0_b.219: 
	lw s9, 0(sp)
	beq a4, s9, .cls_taskStress_con_0_b.218
	j .cls_taskStress_con_0_b.221
.cls_taskStress_con_0_b.218: 
	beq a7, s4, .cls_taskStress_con_0_b.220
.cls_taskStress_con_0_b.221: 
	lw s9, 244(sp)
	blt s9, s11, .cls_taskStress_con_0_b.220
	j .cls_taskStress_con_0_b.223
.cls_taskStress_con_0_b.220: 
	lw s9, 204(sp)
	blt s11, s9, .cls_taskStress_con_0_b.222
.cls_taskStress_con_0_b.223: 
	lw s9, 200(sp)
	bne s9, s2, .cls_taskStress_con_0_b.222
	j .cls_taskStress_con_0_b.225
.cls_taskStress_con_0_b.222: 
	bge t5, a6, .cls_taskStress_con_0_b.224
.cls_taskStress_con_0_b.225: 
	blt s8, t0, .cls_taskStress_con_0_b.227
.cls_taskStress_con_0_b.228: 
	lw s9, 232(sp)
	bge a4, s9, .cls_taskStress_con_0_b.230
.cls_taskStress_con_0_b.231: 
	bne a4, s6, .cls_taskStress_con_0_b.233
.cls_taskStress_con_0_b.234: 
	lw s9, 188(sp)
	bne s9, a0, .cls_taskStress_con_0_b.233
	j .cls_taskStress_con_0_b.237
.cls_taskStress_con_0_b.224: 
	bne s11, s3, .cls_taskStress_con_0_b.226
	j .cls_taskStress_con_0_b.225
.cls_taskStress_con_0_b.226: 
	lw s10, 228(sp)
	lw s9, 0(sp)
	beq s9, s10, .cls_taskStress_con_0_b.229
	j .cls_taskStress_con_0_b.225
.cls_taskStress_con_0_b.227: 
	lw s9, 252(sp)
	bne s9, s3, .cls_taskStress_con_0_b.230
	j .cls_taskStress_con_0_b.228
.cls_taskStress_con_0_b.229: 
	lw s9, 244(sp)
	bge a4, s9, .cls_taskStress_con_0_b.227
	j .cls_taskStress_con_0_b.225
.cls_taskStress_con_0_b.230: 
	bge t3, t3, .cls_taskStress_con_0_b.232
	j .cls_taskStress_con_0_b.231
.cls_taskStress_con_0_b.232: 
	blt a1, a6, .cls_taskStress_con_0_b.235
	j .cls_taskStress_con_0_b.231
.cls_taskStress_con_0_b.233: 
	bne s7, a0, .cls_taskStress_con_0_b.236
.cls_taskStress_con_0_b.237: 
	lw s9, 248(sp)
	blt t0, s9, .cls_taskStress_con_0_b.236
.cls_taskStress_con_0_b.240: 
	lw s9, 244(sp)
	bne s9, s7, .cls_taskStress_con_0_b.236
	j .cls_taskStress_con_0_b.239
.cls_taskStress_con_0_b.235: 
	lw s9, 192(sp)
	blt s9, a6, .cls_taskStress_con_0_b.233
	j .cls_taskStress_con_0_b.231
.cls_taskStress_con_0_b.236: 
	lw s9, 204(sp)
	bge s9, s8, .cls_taskStress_con_0_b.238
.cls_taskStress_con_0_b.239: 
	blt a0, a0, .cls_taskStress_con_0_b.241
.cls_taskStress_con_0_b.242: 
	lw s8, 248(sp)
	blt s4, s8, .cls_taskStress_con_0_b.243
.cls_taskStress_con_0_b.244: 
	blt ra, s2, .cls_taskStress_con_0_b.243
	j .cls_taskStress_con_0_b.246
.cls_taskStress_con_0_b.238: 
	lw s8, 216(sp)
	beq a6, s8, .cls_taskStress_con_0_b.241
	j .cls_taskStress_con_0_b.239
.cls_taskStress_con_0_b.241: 
	lw s8, 176(sp)
	bne s8, a5, .cls_taskStress_con_0_b.243
	j .cls_taskStress_con_0_b.242
.cls_taskStress_con_0_b.243: 
	lw s8, 204(sp)
	blt s8, s3, .cls_taskStress_con_0_b.245
.cls_taskStress_con_0_b.246: 
	lw s8, 220(sp)
	bge s8, s11, .cls_taskStress_con_0_b.245
	j .cls_taskStress_con_0_b.248
.cls_taskStress_con_0_b.245: 
	lw s9, 176(sp)
	lw s8, 192(sp)
	bge s9, s8, .cls_taskStress_con_0_b.247
.cls_taskStress_con_0_b.248: 
	beq a7, s7, .cls_taskStress_con_0_b.249
.cls_taskStress_con_0_b.250: 
	lw s8, 164(sp)
	bne a3, s8, .cls_taskStress_con_0_b.251
.cls_taskStress_con_0_b.252: 
	bne a3, t4, .cls_taskStress_con_0_b.251
.cls_taskStress_con_0_b.255: 
	beq a6, t6, .cls_taskStress_con_0_b.251
	j .cls_taskStress_con_0_b.254
.cls_taskStress_con_0_b.247: 
	lw s8, 228(sp)
	bne s8, t0, .cls_taskStress_con_0_b.249
	j .cls_taskStress_con_0_b.248
.cls_taskStress_con_0_b.249: 
	blt s11, s6, .cls_taskStress_con_0_b.251
	j .cls_taskStress_con_0_b.250
.cls_taskStress_con_0_b.251: 
	lw s8, 228(sp)
	lw s9, 4(sp)
	blt s9, s8, .cls_taskStress_con_0_b.253
.cls_taskStress_con_0_b.254: 
	lw s8, 192(sp)
	blt s8, a1, .cls_taskStress_con_0_b.256
.cls_taskStress_con_0_b.257: 
	lw s2, 196(sp)
	bge t3, s2, .cls_taskStress_con_0_b.259
.cls_taskStress_con_0_b.260: 
	blt a2, a2, .cls_taskStress_con_0_b.259
.cls_taskStress_con_0_b.264: 
	lw s2, 204(sp)
	bge s2, ra, .cls_taskStress_con_0_b.259
	j .cls_taskStress_con_0_b.263
.cls_taskStress_con_0_b.253: 
	bge s5, t3, .cls_taskStress_con_0_b.256
	j .cls_taskStress_con_0_b.254
.cls_taskStress_con_0_b.256: 
	bge s2, s3, .cls_taskStress_con_0_b.258
	j .cls_taskStress_con_0_b.257
.cls_taskStress_con_0_b.258: 
	bne a4, s2, .cls_taskStress_con_0_b.261
	j .cls_taskStress_con_0_b.257
.cls_taskStress_con_0_b.259: 
	lw s2, 252(sp)
	blt a2, s2, .cls_taskStress_con_0_b.262
.cls_taskStress_con_0_b.263: 
	lw s2, 248(sp)
	lw a0, 228(sp)
	bge s2, a0, .cls_taskStress_con_0_b.266
.cls_taskStress_con_0_b.267: 
	bge t5, s1, .cls_taskStress_con_0_b.266
.cls_taskStress_con_0_b.270: 
	bne ra, t2, .cls_taskStress_con_0_b.266
.cls_taskStress_con_0_b.273: 
	bge t1, s7, .cls_taskStress_con_0_b.266
.cls_taskStress_con_0_b.277: 
	bne t4, s11, .cls_taskStress_con_0_b.266
.cls_taskStress_con_0_b.281: 
	lw a0, 224(sp)
	bge s4, a0, .cls_taskStress_con_0_b.266
.cls_taskStress_con_0_b.284: 
	lw a0, 0(sp)
	blt a0, t6, .cls_taskStress_con_0_b.266
	j .cls_taskStress_con_0_b.269
.cls_taskStress_con_0_b.261: 
	lw s8, 176(sp)
	lw s2, 200(sp)
	blt s8, s2, .cls_taskStress_con_0_b.259
	j .cls_taskStress_con_0_b.257
.cls_taskStress_con_0_b.262: 
	lw s2, 164(sp)
	bne s2, a1, .cls_taskStress_con_0_b.265
	j .cls_taskStress_con_0_b.263
.cls_taskStress_con_0_b.265: 
	blt a5, a0, .cls_taskStress_con_0_b.266
	j .cls_taskStress_con_0_b.263
.cls_taskStress_con_0_b.266: 
	blt a7, s5, .cls_taskStress_con_0_b.268
.cls_taskStress_con_0_b.269: 
	blt t5, ra, .cls_taskStress_con_0_b.268
	j .cls_taskStress_con_0_b.272
.cls_taskStress_con_0_b.268: 
	bge t1, t3, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.272: 
	bne s5, s1, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.276: 
	lw a0, 164(sp)
	bge s7, a0, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.280: 
	bge t0, t0, .cls_taskStress_con_0_b.271
	j .cls_taskStress_con_0_b.275
.cls_taskStress_con_0_b.271: 
	lw a0, 208(sp)
	bne a0, a4, .cls_taskStress_con_0_b.274
.cls_taskStress_con_0_b.275: 
	bge t5, a7, .cls_taskStress_con_0_b.274
	j .cls_taskStress_con_0_b.279
.cls_taskStress_con_0_b.274: 
	blt t1, s3, .cls_taskStress_con_0_b.278
.cls_taskStress_con_0_b.279: 
	lw t3, 200(sp)
	lw a0, 4(sp)
	beq t3, a0, .cls_taskStress_con_0_b.278
	j .cls_taskStress_con_0_b.283
.cls_taskStress_con_0_b.278: 
	bge a7, a4, .cls_taskStress_con_0_b.282
.cls_taskStress_con_0_b.283: 
	bge t1, s6, .cls_taskStress_con_0_b.282
	j .cls_taskStress_con_0_b.286
.cls_taskStress_con_0_b.282: 
	lw t1, 212(sp)
	blt t1, s1, .cls_taskStress_con_0_b.285
.cls_taskStress_con_0_b.286: 
	bge a4, s1, .cls_taskStress_con_0_b.287
.cls_taskStress_con_0_b.288: 
	bne t5, a2, .cls_taskStress_con_0_b.289
.cls_taskStress_con_0_b.290: 
	lw t0, 220(sp)
	blt a5, t0, .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.292: 
	bge s4, s6, .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.295: 
	lw t1, 220(sp)
	lw t0, 232(sp)
	blt t1, t0, .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.298: 
	lw t0, 240(sp)
	blt t0, s0, .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.300: 
	lw t0, 0(sp)
	bge a6, t0, .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.302: 
	lw t0, 240(sp)
	bge t0, a2, .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.305: 
	lw t0, 220(sp)
	blt t0, s0, .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.309: 
	lw t0, 192(sp)
	blt t0, a4, .cls_taskStress_con_0_b.291
	j .cls_taskStress_con_0_b.294
.cls_taskStress_con_0_b.285: 
	blt t0, t5, .cls_taskStress_con_0_b.287
	j .cls_taskStress_con_0_b.286
.cls_taskStress_con_0_b.287: 
	lw t0, 0(sp)
	blt t0, t4, .cls_taskStress_con_0_b.289
	j .cls_taskStress_con_0_b.288
.cls_taskStress_con_0_b.289: 
	beq t2, t6, .cls_taskStress_con_0_b.291
	j .cls_taskStress_con_0_b.290
.cls_taskStress_con_0_b.291: 
	beq a7, a3, .cls_taskStress_con_0_b.293
.cls_taskStress_con_0_b.294: 
	bge a1, a5, .cls_taskStress_con_0_b.293
	j .cls_taskStress_con_0_b.297
.cls_taskStress_con_0_b.293: 
	lw t1, 208(sp)
	lw t0, 232(sp)
	bge t0, t1, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.297: 
	blt s5, s3, .cls_taskStress_con_0_b.296
	j .cls_taskStress_con_0_b.299
.cls_taskStress_con_0_b.296: 
	lw t0, 240(sp)
	slt t0, t0, s4
	xori t0, t0, 1
	sb t0, 172(sp)
.cls_taskStress_con_0_b.299: 
	lw t1, 156(sp)
	lw t0, 160(sp)
	sw t0, 0(t1)
	lb t2, 172(sp)
	lb a1, 172(sp)
	lb a0, 172(sp)
	lw t1, 156(sp)
	lb a2, 172(sp)
	lb a6, 172(sp)
	lb a3, 172(sp)
	lb a5, 172(sp)
	lb a4, 172(sp)
	lw t0, 160(sp)
.cls_taskStress_con_0_b.301: 
	lw a7, 196(sp)
	beq a7, t0, .cls_taskStress_con_0_b.303
.cls_taskStress_con_0_b.304: 
	lw t0, 156(sp)
	lw t1, 0(t0)
	li t0, -1
	beq t1, t0, .cls_taskStress_con_0_b.307
.cls_taskStress_con_0_b.308: 
	lw s0, 12(sp)
	lw s1, 16(sp)
	lw s2, 20(sp)
	lw s3, 24(sp)
	lw s4, 28(sp)
	lw s5, 32(sp)
	lw s6, 36(sp)
	lw s7, 40(sp)
	lw s8, 44(sp)
	lw s9, 48(sp)
	lw s10, 52(sp)
	lw s11, 56(sp)
	lw ra, 8(sp)
	addi sp, sp, 256
	ret
.cls_taskStress_con_0_b.303: 
	beqz a4, .cls_taskStress_con_0_b.304
.cls_taskStress_con_0_b.306: 
	addi t0, t0, 1
.cls_taskStress_con_0_b.310: 
	beqz a5, .cls_taskStress_con_0_b.312
.cls_taskStress_con_0_b.311: 
	addi t0, t0, 1
.cls_taskStress_con_0_b.313: 
	beqz t2, .cls_taskStress_con_0_b.315
.cls_taskStress_con_0_b.314: 
	addi t0, t0, 1
.cls_taskStress_con_0_b.316: 
	beqz a3, .cls_taskStress_con_0_b.318
.cls_taskStress_con_0_b.317: 
	addi t0, t0, 1
.cls_taskStress_con_0_b.319: 
	beqz a1, .cls_taskStress_con_0_b.321
.cls_taskStress_con_0_b.320: 
	addi t0, t0, 1
.cls_taskStress_con_0_b.322: 
	beqz a0, .cls_taskStress_con_0_b.324
.cls_taskStress_con_0_b.323: 
	addi t0, t0, 1
.cls_taskStress_con_0_b.325: 
	beqz a6, .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.326: 
	addi t0, t0, 1
.cls_taskStress_con_0_b.328: 
	beqz a2, .cls_taskStress_con_0_b.330
.cls_taskStress_con_0_b.329: 
	sw t0, 0(t1)
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.328
.cls_taskStress_con_0_b.307: 
	la a0, .cls_taskStress_con_0.0
	call g_println
	j .cls_taskStress_con_0_b.308
.cls_taskStress_con_0_b.312: 
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.301
.cls_taskStress_con_0_b.315: 
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.310
.cls_taskStress_con_0_b.318: 
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.313
.cls_taskStress_con_0_b.321: 
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.316
.cls_taskStress_con_0_b.324: 
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.327: 
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.322
.cls_taskStress_con_0_b.330: 
	addi t0, t0, 1
	j .cls_taskStress_con_0_b.325
	.size	cls_taskStress_con_0, .-cls_taskStress_con_0

	.globl	cls_taskNTT_main
	.p2align	1
	.type	cls_taskNTT_main,@function
cls_taskNTT_main:
.cls_taskNTT_main_b.0: 
	addi sp, sp, -112
	sw s0, 16(sp)
	sw s1, 20(sp)
	sw s2, 24(sp)
	sw s3, 28(sp)
	sw s4, 32(sp)
	sw s5, 36(sp)
	sw s6, 40(sp)
	sw s7, 44(sp)
	sw s8, 48(sp)
	sw s9, 52(sp)
	sw s10, 56(sp)
	sw s11, 60(sp)
	sw ra, 12(sp)
	mv s8, a0
	mv t0, s8
	addi s0, t0, 16
	call g_getInt
	sw a0, 0(s0)
	mv t0, s8
	addi s0, t0, 24
	call g_getInt
	sw a0, 0(s0)
	mv t0, s8
	addi t0, t0, 8
	lw s1, 0(t0)
	mv t0, s8
	addi t0, t0, 16
	lw s3, 0(t0)
	li s0, 0
.cls_taskNTT_main_b.1: 
	bge s3, s0, .cls_taskNTT_main_b.2
.cls_taskNTT_main_b.3: 
	mv t0, s8
	addi t0, t0, 12
	lw s3, 0(t0)
	mv t0, s8
	addi t0, t0, 24
	lw s2, 0(t0)
	li s0, 0
.cls_taskNTT_main_b.4: 
	bge s2, s0, .cls_taskNTT_main_b.5
.cls_taskNTT_main_b.6: 
	mv t0, s8
	addi t1, t0, 20
	li t0, 1
	sw t0, 0(t1)
	mv t0, s8
	addi t1, t0, 20
	mv t0, s8
	addi t2, t0, 20
	mv t0, s8
	addi a3, t0, 20
	mv t0, s8
	addi a2, t0, 16
	mv t0, s8
	addi a1, t0, 24
.cls_taskNTT_main_b.7: 
	lw a0, 0(a2)
	lw t0, 0(a1)
	add a0, a0, t0
	lw t0, 0(a3)
	bge a0, t0, .cls_taskNTT_main_b.8
.cls_taskNTT_main_b.9: 
	mv t0, s8
	addi t0, t0, 20
	lw s0, 0(t0)
	mv t0, s8
	addi t0, t0, 8
	lw s2, 0(t0)
	srai t2, s0, 1
	li a0, 0
	li t0, 0
.cls_taskNTT_main_b.10: 
	blt a0, s0, .cls_taskNTT_main_b.11
.cls_taskNTT_main_b.12: 
	mv t0, s8
	addi t1, t0, 4
	mv t0, s8
	addi a3, t0, 4
	mv t0, s8
	addi a2, t0, 4
	mv t0, s8
	addi a1, t0, 4
	mv t0, s8
	addi a0, t0, 4
	mv t0, s8
	addi t2, t0, 4
	lw t0, 0(t1)
	addi t0, t0, -1
	sw t0, 92(sp)
	mv t0, s8
	addi t1, t0, 4
	mv t0, s8
	addi t0, t0, 4
	lw t0, 0(t0)
	sw t0, 108(sp)
	lw s9, 0(t1)
	lw s11, 0(a2)
	lw s10, 0(a1)
	lw s1, 0(a0)
	lw s5, 0(t2)
	lw s6, 0(a3)
	li s7, 1
.cls_taskNTT_main_b.15: 
	blt s7, s0, .cls_taskNTT_main_b.17
.cls_taskNTT_main_b.18: 
	mv t0, s8
	addi t0, t0, 20
	lw s2, 0(t0)
	mv t0, s8
	addi t0, t0, 12
	lw s4, 0(t0)
	srai a0, s2, 1
	li t0, 0
	li t2, 0
.cls_taskNTT_main_b.22: 
	blt t2, s2, .cls_taskNTT_main_b.25
.cls_taskNTT_main_b.26: 
	mv t0, s8
	addi a3, t0, 4
	mv t0, s8
	addi a2, t0, 4
	mv t0, s8
	addi a1, t0, 4
	mv t0, s8
	addi a0, t0, 4
	mv t0, s8
	addi t2, t0, 4
	mv t0, s8
	addi t1, t0, 4
	lw t0, 0(a3)
	addi t0, t0, -1
	sw t0, 104(sp)
	lw s1, 0(a2)
	lw s10, 0(a1)
	lw s7, 0(a0)
	lw s0, 0(t2)
	lw s5, 0(t1)
	li s9, 1
.cls_taskNTT_main_b.32: 
	blt s9, s2, .cls_taskNTT_main_b.37
.cls_taskNTT_main_b.38: 
	mv t0, s8
	addi t0, t0, 8
	lw a1, 0(t0)
	mv t0, s8
	addi t0, t0, 8
	lw a2, 0(t0)
	mv t0, s8
	addi t0, t0, 12
	lw a3, 0(t0)
	mv t0, s8
	addi t0, t0, 4
	lw a4, 0(t0)
	mv t0, s8
	addi t0, t0, 20
	lw a5, 0(t0)
	li a0, 0
.cls_taskNTT_main_b.45: 
	bge a5, a0, .cls_taskNTT_main_b.52
.cls_taskNTT_main_b.53: 
	mv t0, s8
	addi t0, t0, 20
	lw s5, 0(t0)
	mv t0, s8
	addi t0, t0, 8
	lw s9, 0(t0)
	srai t2, s5, 1
	li t1, 0
	li a0, 0
.cls_taskNTT_main_b.57: 
	blt a0, s5, .cls_taskNTT_main_b.64
.cls_taskNTT_main_b.65: 
	mv t0, s8
	addi a3, t0, 4
	mv t0, s8
	addi a2, t0, 4
	mv t0, s8
	addi a1, t0, 4
	mv t0, s8
	addi a0, t0, 4
	mv t0, s8
	addi t2, t0, 4
	mv t0, s8
	addi t1, t0, 4
	lw s2, 0(a2)
	lw t0, 0(a1)
	sw t0, 64(sp)
	lw t0, 0(a0)
	sw t0, 68(sp)
	lw t0, 0(t2)
	sw t0, 72(sp)
	lw t0, 0(t1)
	sw t0, 76(sp)
	lw t0, 0(a3)
	addi t0, t0, -1
	sw t0, 84(sp)
	mv t0, s8
	addi t1, t0, 4
	mv t0, s8
	addi t0, t0, 4
	lw t0, 0(t0)
	sw t0, 100(sp)
	lw s7, 0(t1)
	li s6, 1
.cls_taskNTT_main_b.74: 
	blt s6, s5, .cls_taskNTT_main_b.80
.cls_taskNTT_main_b.81: 
	mv a0, s8
	mv a1, s9
	li a2, 1
	mv a3, s5
	call cls_taskNTT_reverse
	mv t0, s8
	addi t0, t0, 20
	lw s0, 0(t0)
	mv t0, s8
	addi t0, t0, 4
	lw t0, 0(t0)
	addi s1, t0, -2
	mv t0, s8
	addi t1, t0, 4
	mv t0, s8
	addi t0, t0, 4
	lw s3, 0(t0)
	lw s2, 0(t1)
	li a1, 1
.cls_taskNTT_main_b.89: 
	bne s1, zero, .cls_taskNTT_main_b.92
.cls_taskNTT_main_b.93: 
	mv t0, s8
	addi t0, t0, 8
	lw a2, 0(t0)
	mv t0, s8
	addi t0, t0, 8
	lw a3, 0(t0)
	mv t0, s8
	addi t0, t0, 4
	lw a7, 0(t0)
	mv t0, s8
	addi t0, t0, 20
	lw a6, 0(t0)
	li a0, 0
.cls_taskNTT_main_b.99: 
	blt a0, a6, .cls_taskNTT_main_b.104
.cls_taskNTT_main_b.105: 
	mv t0, s8
	addi t1, t0, 24
	mv t0, s8
	addi t2, t0, 16
	mv t0, s8
	addi t0, t0, 8
	lw s1, 0(t0)
	lw t1, 0(t1)
	lw t0, 0(t2)
	add s2, t1, t0
	li s0, 0
.cls_taskNTT_main_b.110: 
	bge s2, s0, .cls_taskNTT_main_b.119
.cls_taskNTT_main_b.120: 
	mv a0, zero
	lw s0, 16(sp)
	lw s1, 20(sp)
	lw s2, 24(sp)
	lw s3, 28(sp)
	lw s4, 32(sp)
	lw s5, 36(sp)
	lw s6, 40(sp)
	lw s7, 44(sp)
	lw s8, 48(sp)
	lw s9, 52(sp)
	lw s10, 56(sp)
	lw s11, 60(sp)
	lw ra, 12(sp)
	addi sp, sp, 112
	ret
.cls_taskNTT_main_b.2: 
	slli t0, s0, 2
	add s2, s1, t0
	call g_getInt
	sw a0, 0(s2)
	addi s0, s0, 1
	j .cls_taskNTT_main_b.1
.cls_taskNTT_main_b.5: 
	slli t0, s0, 2
	add s1, s3, t0
	call g_getInt
	sw a0, 0(s1)
	addi s0, s0, 1
	j .cls_taskNTT_main_b.4
.cls_taskNTT_main_b.8: 
	lw t0, 0(t2)
	slli t0, t0, 1
	sw t0, 0(t1)
	j .cls_taskNTT_main_b.7
.cls_taskNTT_main_b.11: 
	blt t0, a0, .cls_taskNTT_main_b.13
.cls_taskNTT_main_b.14: 
	mv t1, t2
.cls_taskNTT_main_b.16: 
	xor t0, t0, t1
	bge t0, t1, .cls_taskNTT_main_b.19
.cls_taskNTT_main_b.20: 
	srai t1, t1, 1
	j .cls_taskNTT_main_b.16
.cls_taskNTT_main_b.13: 
	slli t1, a0, 2
	add t1, s2, t1
	lw a2, 0(t1)
	slli t1, a0, 2
	add a1, s2, t1
	slli t1, t0, 2
	add t1, s2, t1
	lw t1, 0(t1)
	sw t1, 0(a1)
	slli t1, t0, 2
	add t1, s2, t1
	sw a2, 0(t1)
	j .cls_taskNTT_main_b.14
.cls_taskNTT_main_b.17: 
	slli t1, s7, 1
	lw t0, 92(sp)
	div t0, t0, t1
	li a1, 1
	mv s3, t0
	li s4, 3
.cls_taskNTT_main_b.21: 
	bne s3, zero, .cls_taskNTT_main_b.23
.cls_taskNTT_main_b.24: 
	slli a6, s7, 1
	li a5, 0
.cls_taskNTT_main_b.29: 
	blt a5, s0, .cls_taskNTT_main_b.34
.cls_taskNTT_main_b.35: 
	slli t0, s7, 1
	mv s7, t0
	j .cls_taskNTT_main_b.15
.cls_taskNTT_main_b.19: 
	addi a0, a0, 1
	j .cls_taskNTT_main_b.10
.cls_taskNTT_main_b.23: 
	andi t0, s3, 1
	bne t0, zero, .cls_taskNTT_main_b.27
.cls_taskNTT_main_b.28: 
	srai t2, s3, 1
	rem a0, s4, s9
	mv t1, s4
	li t0, 0
.cls_taskNTT_main_b.33: 
	bne t1, zero, .cls_taskNTT_main_b.39
.cls_taskNTT_main_b.40: 
	mv s3, t2
	mv s4, t0
	j .cls_taskNTT_main_b.21
.cls_taskNTT_main_b.25: 
	blt t0, t2, .cls_taskNTT_main_b.30
.cls_taskNTT_main_b.31: 
	mv t1, a0
.cls_taskNTT_main_b.36: 
	xor t0, t0, t1
	bge t0, t1, .cls_taskNTT_main_b.42
.cls_taskNTT_main_b.43: 
	srai t1, t1, 1
	j .cls_taskNTT_main_b.36
.cls_taskNTT_main_b.27: 
	mv a0, s8
	mv a2, s4
	lw a3, 108(sp)
	call cls_taskNTT_mulmod
	mv a1, a0
	j .cls_taskNTT_main_b.28
.cls_taskNTT_main_b.30: 
	slli t1, t2, 2
	add t1, s4, t1
	lw a2, 0(t1)
	slli t1, t2, 2
	add a1, s4, t1
	slli t1, t0, 2
	add t1, s4, t1
	lw t1, 0(t1)
	sw t1, 0(a1)
	slli t1, t0, 2
	add t1, s4, t1
	sw a2, 0(t1)
	j .cls_taskNTT_main_b.31
.cls_taskNTT_main_b.34: 
	add a3, a5, s7
	add a4, s7, a5
	li a2, 0
	li a0, 1
.cls_taskNTT_main_b.41: 
	blt a2, s7, .cls_taskNTT_main_b.48
.cls_taskNTT_main_b.49: 
	add a5, a5, a6
	j .cls_taskNTT_main_b.29
.cls_taskNTT_main_b.37: 
	slli t1, s9, 1
	lw t0, 104(sp)
	div a2, t0, t1
	mv a0, s8
	li a1, 3
	call cls_taskNTT_KSM
	mv s11, a0
	slli t0, s9, 1
	sw t0, 80(sp)
	li s6, 0
.cls_taskNTT_main_b.44: 
	blt s6, s2, .cls_taskNTT_main_b.50
.cls_taskNTT_main_b.51: 
	slli t0, s9, 1
	mv s9, t0
	j .cls_taskNTT_main_b.32
.cls_taskNTT_main_b.39: 
	andi a2, t1, 1
	bne a2, zero, .cls_taskNTT_main_b.46
.cls_taskNTT_main_b.47: 
	srai t1, t1, 1
	slli a0, a0, 1
	rem a0, a0, s9
	j .cls_taskNTT_main_b.33
.cls_taskNTT_main_b.42: 
	addi t2, t2, 1
	j .cls_taskNTT_main_b.22
.cls_taskNTT_main_b.46: 
	add t0, t0, a0
	rem t0, t0, s9
	j .cls_taskNTT_main_b.47
.cls_taskNTT_main_b.48: 
	add t0, a3, a2
	slli t0, t0, 2
	add t0, s2, t0
	lw t0, 0(t0)
	rem t1, a0, s6
	li t2, 0
.cls_taskNTT_main_b.54: 
	bne t0, zero, .cls_taskNTT_main_b.58
.cls_taskNTT_main_b.59: 
	add t0, a4, a2
	slli t0, t0, 2
	add t1, s2, t0
	add t0, a5, a2
	slli t0, t0, 2
	add t0, s2, t0
	lw t0, 0(t0)
	sub t0, t0, t2
	add t0, t0, s11
	rem t0, t0, s10
	sw t0, 0(t1)
	add t0, a5, a2
	slli t0, t0, 2
	add t1, s2, t0
	add t0, a5, a2
	slli t0, t0, 2
	add t0, s2, t0
	lw t0, 0(t0)
	add t0, t0, t2
	rem t0, t0, s1
	sw t0, 0(t1)
	rem t0, a0, s5
	li a0, 0
	mv t1, a1
.cls_taskNTT_main_b.68: 
	bne t1, zero, .cls_taskNTT_main_b.75
.cls_taskNTT_main_b.76: 
	addi a2, a2, 1
	j .cls_taskNTT_main_b.41
.cls_taskNTT_main_b.50: 
	add t0, s6, s9
	sw t0, 88(sp)
	add t0, s9, s6
	sw t0, 96(sp)
	li a1, 1
	li s3, 0
.cls_taskNTT_main_b.55: 
	blt s3, s9, .cls_taskNTT_main_b.60
.cls_taskNTT_main_b.61: 
	lw t0, 80(sp)
	add t0, s6, t0
	mv s6, t0
	j .cls_taskNTT_main_b.44
.cls_taskNTT_main_b.52: 
	slli t0, a0, 2
	add a7, a1, t0
	slli t0, a0, 2
	add t0, a2, t0
	lw t1, 0(t0)
	slli t0, a0, 2
	add t0, a3, t0
	lw t2, 0(t0)
	rem t0, t1, a4
	li t1, 0
.cls_taskNTT_main_b.56: 
	bne t2, zero, .cls_taskNTT_main_b.62
.cls_taskNTT_main_b.63: 
	sw t1, 0(a7)
	addi a0, a0, 1
	j .cls_taskNTT_main_b.45
.cls_taskNTT_main_b.58: 
	andi a7, t0, 1
	bne a7, zero, .cls_taskNTT_main_b.66
.cls_taskNTT_main_b.67: 
	srai t0, t0, 1
	slli t1, t1, 1
	rem t1, t1, s6
	j .cls_taskNTT_main_b.54
.cls_taskNTT_main_b.60: 
	lw t0, 88(sp)
	add t0, t0, s3
	slli t0, t0, 2
	add t0, s4, t0
	lw t2, 0(t0)
	rem t0, a1, s1
	li t1, 0
.cls_taskNTT_main_b.69: 
	bne t2, zero, .cls_taskNTT_main_b.77
.cls_taskNTT_main_b.78: 
	lw t0, 96(sp)
	add t0, t0, s3
	slli t0, t0, 2
	add t2, s4, t0
	add t0, s6, s3
	slli t0, t0, 2
	add t0, s4, t0
	lw t0, 0(t0)
	sub t0, t0, t1
	add t0, t0, s10
	rem t0, t0, s7
	sw t0, 0(t2)
	add t0, s6, s3
	slli t0, t0, 2
	add t2, s4, t0
	add t0, s6, s3
	slli t0, t0, 2
	add t0, s4, t0
	lw t0, 0(t0)
	add t0, t0, t1
	rem t0, t0, s0
	sw t0, 0(t2)
	mv a0, s8
	mv a2, s11
	mv a3, s5
	call cls_taskNTT_mulmod
	mv a1, a0
	addi t0, s3, 1
	mv s3, t0
	j .cls_taskNTT_main_b.55
.cls_taskNTT_main_b.62: 
	andi a6, t2, 1
	bne a6, zero, .cls_taskNTT_main_b.70
.cls_taskNTT_main_b.71: 
	srai t2, t2, 1
	slli t0, t0, 1
	rem t0, t0, a4
	j .cls_taskNTT_main_b.56
.cls_taskNTT_main_b.64: 
	blt t1, a0, .cls_taskNTT_main_b.72
.cls_taskNTT_main_b.73: 
	mv t0, t2
.cls_taskNTT_main_b.79: 
	xor t1, t1, t0
	bge t1, t0, .cls_taskNTT_main_b.86
.cls_taskNTT_main_b.87: 
	srai t0, t0, 1
	j .cls_taskNTT_main_b.79
.cls_taskNTT_main_b.66: 
	add t2, t2, t1
	rem t2, t2, s6
	j .cls_taskNTT_main_b.67
.cls_taskNTT_main_b.70: 
	add t1, t1, t0
	rem t1, t1, a4
	j .cls_taskNTT_main_b.71
.cls_taskNTT_main_b.72: 
	slli t0, a0, 2
	add t0, s9, t0
	lw a2, 0(t0)
	slli t0, a0, 2
	add a1, s9, t0
	slli t0, t1, 2
	add t0, s9, t0
	lw t0, 0(t0)
	sw t0, 0(a1)
	slli t0, t1, 2
	add t0, s9, t0
	sw a2, 0(t0)
	j .cls_taskNTT_main_b.73
.cls_taskNTT_main_b.75: 
	andi t2, t1, 1
	bne t2, zero, .cls_taskNTT_main_b.82
.cls_taskNTT_main_b.83: 
	srai t1, t1, 1
	slli t0, t0, 1
	rem t0, t0, s5
	j .cls_taskNTT_main_b.68
.cls_taskNTT_main_b.77: 
	andi a0, t2, 1
	bne a0, zero, .cls_taskNTT_main_b.84
.cls_taskNTT_main_b.85: 
	srai t2, t2, 1
	slli t0, t0, 1
	rem t0, t0, s1
	j .cls_taskNTT_main_b.69
.cls_taskNTT_main_b.80: 
	slli t1, s6, 1
	lw t0, 84(sp)
	div s3, t0, t1
	li s0, 3
	li s1, 1
.cls_taskNTT_main_b.88: 
	bne s3, zero, .cls_taskNTT_main_b.90
.cls_taskNTT_main_b.91: 
	slli s10, s6, 1
	li s0, 0
.cls_taskNTT_main_b.96: 
	blt s0, s5, .cls_taskNTT_main_b.101
.cls_taskNTT_main_b.102: 
	slli t0, s6, 1
	mv s6, t0
	j .cls_taskNTT_main_b.74
.cls_taskNTT_main_b.82: 
	add t2, a0, t0
	rem a0, t2, s5
	j .cls_taskNTT_main_b.83
.cls_taskNTT_main_b.84: 
	add t1, t1, t0
	rem t1, t1, s1
	j .cls_taskNTT_main_b.85
.cls_taskNTT_main_b.86: 
	addi a0, a0, 1
	j .cls_taskNTT_main_b.57
.cls_taskNTT_main_b.90: 
	andi t0, s3, 1
	bne t0, zero, .cls_taskNTT_main_b.94
.cls_taskNTT_main_b.95: 
	mv a0, s1
	j .cls_taskNTT_main_b.100
.cls_taskNTT_main_b.92: 
	andi t0, s1, 1
	bne t0, zero, .cls_taskNTT_main_b.97
.cls_taskNTT_main_b.98: 
	mv a0, a1
	j .cls_taskNTT_main_b.103
.cls_taskNTT_main_b.94: 
	mv a0, s8
	mv a1, s1
	mv a2, s0
	lw a3, 100(sp)
	call cls_taskNTT_mulmod
.cls_taskNTT_main_b.100: 
	srai s3, s3, 1
	rem t1, s0, s7
	li t0, 0
.cls_taskNTT_main_b.106: 
	bne s0, zero, .cls_taskNTT_main_b.111
.cls_taskNTT_main_b.112: 
	mv s0, t0
	mv s1, a0
	j .cls_taskNTT_main_b.88
.cls_taskNTT_main_b.97: 
	mv a0, s8
	mv a2, s0
	mv a3, s3
	call cls_taskNTT_mulmod
.cls_taskNTT_main_b.103: 
	srai s1, s1, 1
	rem t1, s0, s2
	li t0, 0
.cls_taskNTT_main_b.108: 
	bne s0, zero, .cls_taskNTT_main_b.115
.cls_taskNTT_main_b.116: 
	mv s0, t0
	mv a1, a0
	j .cls_taskNTT_main_b.89
.cls_taskNTT_main_b.101: 
	add s4, s0, s6
	add s11, s6, s0
	li a1, 1
	li s3, 0
.cls_taskNTT_main_b.107: 
	blt s3, s6, .cls_taskNTT_main_b.113
.cls_taskNTT_main_b.114: 
	add t0, s0, s10
	mv s0, t0
	j .cls_taskNTT_main_b.96
.cls_taskNTT_main_b.104: 
	slli t0, a0, 2
	add a4, a2, t0
	slli t0, a0, 2
	add t0, a3, t0
	lw t0, 0(t0)
	rem t1, t0, a7
	mv t0, a1
	li t2, 0
.cls_taskNTT_main_b.109: 
	bne t0, zero, .cls_taskNTT_main_b.117
.cls_taskNTT_main_b.118: 
	sw t2, 0(a4)
	addi a0, a0, 1
	j .cls_taskNTT_main_b.99
.cls_taskNTT_main_b.111: 
	andi t2, s0, 1
	bne t2, zero, .cls_taskNTT_main_b.121
.cls_taskNTT_main_b.122: 
	srai s0, s0, 1
	slli t1, t1, 1
	rem t1, t1, s7
	j .cls_taskNTT_main_b.106
.cls_taskNTT_main_b.113: 
	add t0, s4, s3
	slli t0, t0, 2
	add t0, s9, t0
	lw t0, 0(t0)
	rem t1, a1, s2
	li t2, 0
.cls_taskNTT_main_b.123: 
	bne t0, zero, .cls_taskNTT_main_b.128
.cls_taskNTT_main_b.129: 
	add t0, s11, s3
	slli t0, t0, 2
	add a0, s9, t0
	add t0, s0, s3
	slli t0, t0, 2
	add t0, s9, t0
	lw t0, 0(t0)
	sub t1, t0, t2
	lw t0, 64(sp)
	add t1, t1, t0
	lw t0, 68(sp)
	rem t0, t1, t0
	sw t0, 0(a0)
	add t0, s0, s3
	slli t0, t0, 2
	add a0, s9, t0
	add t0, s0, s3
	slli t0, t0, 2
	add t0, s9, t0
	lw t0, 0(t0)
	add t1, t0, t2
	lw t0, 72(sp)
	rem t0, t1, t0
	sw t0, 0(a0)
	mv a0, s8
	mv a2, s1
	lw a3, 76(sp)
	call cls_taskNTT_mulmod
	mv a1, a0
	addi t0, s3, 1
	mv s3, t0
	j .cls_taskNTT_main_b.107
.cls_taskNTT_main_b.115: 
	andi t2, s0, 1
	bne t2, zero, .cls_taskNTT_main_b.124
.cls_taskNTT_main_b.125: 
	srai s0, s0, 1
	slli t1, t1, 1
	rem t1, t1, s2
	j .cls_taskNTT_main_b.108
.cls_taskNTT_main_b.117: 
	andi a5, t0, 1
	bne a5, zero, .cls_taskNTT_main_b.126
.cls_taskNTT_main_b.127: 
	srai t0, t0, 1
	slli t1, t1, 1
	rem t1, t1, a7
	j .cls_taskNTT_main_b.109
.cls_taskNTT_main_b.119: 
	slli t0, s0, 2
	add t0, s1, t0
	lw a0, 0(t0)
	call g_printlnInt
	addi s0, s0, 1
	j .cls_taskNTT_main_b.110
.cls_taskNTT_main_b.121: 
	add t0, t0, t1
	rem t0, t0, s7
	j .cls_taskNTT_main_b.122
.cls_taskNTT_main_b.124: 
	add t0, t0, t1
	rem t0, t0, s2
	j .cls_taskNTT_main_b.125
.cls_taskNTT_main_b.126: 
	add t2, t2, t1
	rem t2, t2, a7
	j .cls_taskNTT_main_b.127
.cls_taskNTT_main_b.128: 
	andi a0, t0, 1
	bne a0, zero, .cls_taskNTT_main_b.130
.cls_taskNTT_main_b.131: 
	srai t0, t0, 1
	slli t1, t1, 1
	rem t1, t1, s2
	j .cls_taskNTT_main_b.123
.cls_taskNTT_main_b.130: 
	add t2, t2, t1
	rem t2, t2, s2
	j .cls_taskNTT_main_b.131
	.size	cls_taskNTT_main, .-cls_taskNTT_main

	.globl	cls_taskSSA_main
	.p2align	1
	.type	cls_taskSSA_main,@function
cls_taskSSA_main:
.cls_taskSSA_main_b.0: 
	addi sp, sp, 0
	li t0, 100
	sw t0, 0(a0)
	lw a1, 0(a0)
	li t2, 0
	li t0, 65536
.cls_taskSSA_main_b.1: 
	blt t2, a1, .cls_taskSSA_main_b.2
.cls_taskSSA_main_b.3: 
	li t1, 200
	sw t1, 0(a0)
	lw a1, 0(a0)
	li t1, 65536
	li a0, 0
.cls_taskSSA_main_b.6: 
	blt a0, a1, .cls_taskSSA_main_b.7
.cls_taskSSA_main_b.8: 
	add t0, t0, t1
	addi a0, t0, -300
	addi sp, sp, 0
	ret
.cls_taskSSA_main_b.2: 
	addi t1, t2, 1
	bne t1, zero, .cls_taskSSA_main_b.4
.cls_taskSSA_main_b.5: 
	addi t2, t2, 1
	j .cls_taskSSA_main_b.1
.cls_taskSSA_main_b.4: 
	mv t0, t1
	j .cls_taskSSA_main_b.5
.cls_taskSSA_main_b.7: 
	addi t2, a0, 1
	bne t2, zero, .cls_taskSSA_main_b.10
.cls_taskSSA_main_b.9: 
	mv t2, t1
.cls_taskSSA_main_b.10: 
	addi a0, a0, 1
	mv t1, t2
	j .cls_taskSSA_main_b.6
	.size	cls_taskSSA_main, .-cls_taskSSA_main

	.globl	cls_taskNTT_con_0
	.p2align	1
	.type	cls_taskNTT_con_0,@function
cls_taskNTT_con_0:
.cls_taskNTT_con_0_b.0: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	mv s0, a0
	mv t0, s0
	li t1, 999
	sw t1, 0(t0)
	mv t0, s0
	addi t1, t0, 4
	li t0, 998244353
	sw t0, 0(t1)
	mv t0, s0
	addi s1, t0, 8
	mv t0, s0
	lw s2, 0(t0)
	slli t0, s2, 2
	addi a0, t0, 4
	call malloc
	sw s2, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s1)
	mv t0, s0
	addi s1, t0, 12
	mv t0, s0
	lw s0, 0(t0)
	slli t0, s0, 2
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s1)
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
	.size	cls_taskNTT_con_0, .-cls_taskNTT_con_0

	.globl	cls_taskSSA_con_0
	.p2align	1
	.type	cls_taskSSA_con_0,@function
cls_taskSSA_con_0:
.cls_taskSSA_con_0_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_taskSSA_con_0, .-cls_taskSSA_con_0

	.globl	cls_taskNTT_mulmod
	.p2align	1
	.type	cls_taskNTT_mulmod,@function
cls_taskNTT_mulmod:
.cls_taskNTT_mulmod_b.0: 
	addi sp, sp, 0
	rem t0, a1, a3
	li a0, 0
.cls_taskNTT_mulmod_b.1: 
	bne a2, zero, .cls_taskNTT_mulmod_b.2
.cls_taskNTT_mulmod_b.3: 
	addi sp, sp, 0
	ret
.cls_taskNTT_mulmod_b.2: 
	andi t1, a2, 1
	bne t1, zero, .cls_taskNTT_mulmod_b.4
.cls_taskNTT_mulmod_b.5: 
	srai a2, a2, 1
	slli t0, t0, 1
	rem t0, t0, a3
	j .cls_taskNTT_mulmod_b.1
.cls_taskNTT_mulmod_b.4: 
	add t1, a0, t0
	rem a0, t1, a3
	j .cls_taskNTT_mulmod_b.5
	.size	cls_taskNTT_mulmod, .-cls_taskNTT_mulmod

	.globl	cls_taskInline_unsigned_shr
	.p2align	1
	.type	cls_taskInline_unsigned_shr,@function
cls_taskInline_unsigned_shr:
.cls_taskInline_unsigned_shr_b.0: 
	addi sp, sp, 0
	bge a1, zero, .cls_taskInline_unsigned_shr_b.1
.cls_taskInline_unsigned_shr_b.2: 
	li t0, 31
	sub t1, t0, a2
	li t0, 1
	sll t1, t0, t1
	li t0, -2147483648
	xor t0, a1, t0
	sra t0, t0, a2
	or a0, t1, t0
	j .cls_taskInline_unsigned_shr_b.3
.cls_taskInline_unsigned_shr_b.1: 
	sra a0, a1, a2
.cls_taskInline_unsigned_shr_b.3: 
	addi sp, sp, 0
	ret
	.size	cls_taskInline_unsigned_shr, .-cls_taskInline_unsigned_shr

	.globl	cls_taskInline_rng
	.p2align	1
	.type	cls_taskInline_rng,@function
cls_taskInline_rng:
.cls_taskInline_rng_b.0: 
	addi sp, sp, 0
	lw t1, 0(a0)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .cls_taskInline_rng_b.1
.cls_taskInline_rng_b.2: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .cls_taskInline_rng_b.3
.cls_taskInline_rng_b.1: 
	srai t0, t2, 17
.cls_taskInline_rng_b.3: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	sw t1, 0(a0)
	li t0, 1073741823
	and a0, t1, t0
	addi sp, sp, 0
	ret
	.size	cls_taskInline_rng, .-cls_taskInline_rng

	.globl	cls_taskConst_test
	.p2align	1
	.type	cls_taskConst_test,@function
cls_taskConst_test:
.cls_taskConst_test_b.0: 
	addi sp, sp, 0
	li t0, 0
	li a0, 0
.cls_taskConst_test_b.1: 
	li t1, 200
	blt t0, t1, .cls_taskConst_test_b.2
.cls_taskConst_test_b.3: 
	addi sp, sp, 0
	ret
.cls_taskConst_test_b.2: 
	addi t0, t0, 1
	addi a0, a0, 1
	addi t0, t0, 1
	j .cls_taskConst_test_b.1
	.size	cls_taskConst_test, .-cls_taskConst_test

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
.cls_taskInline_gcd_b.5: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.cls_taskInline_gcd_b.1: 
	rem a1, a1, a2
	blt zero, a1, .cls_taskInline_gcd_b.3
.cls_taskInline_gcd_b.4: 
	mv a0, a2
	j .cls_taskInline_gcd_b.5
.cls_taskInline_gcd_b.3: 
	rem a2, a2, a1
	call cls_taskInline_gcd
	j .cls_taskInline_gcd_b.5
	.size	cls_taskInline_gcd, .-cls_taskInline_gcd

	.globl	cls_taskNTT_reverse
	.p2align	1
	.type	cls_taskNTT_reverse,@function
cls_taskNTT_reverse:
.cls_taskNTT_reverse_b.0: 
	addi sp, sp, 0
.cls_taskNTT_reverse_b.1: 
	blt a2, a3, .cls_taskNTT_reverse_b.2
.cls_taskNTT_reverse_b.3: 
	addi sp, sp, 0
	ret
.cls_taskNTT_reverse_b.2: 
	addi a3, a3, -1
	slli t0, a2, 2
	add t0, a1, t0
	lw t2, 0(t0)
	slli t0, a2, 2
	add t1, a1, t0
	slli t0, a3, 2
	add t0, a1, t0
	lw t0, 0(t0)
	sw t0, 0(t1)
	slli t0, a3, 2
	add t0, a1, t0
	sw t2, 0(t0)
	addi a2, a2, 1
	j .cls_taskNTT_reverse_b.1
	.size	cls_taskNTT_reverse, .-cls_taskNTT_reverse

	.globl	cls_taskInline_con_0
	.p2align	1
	.type	cls_taskInline_con_0,@function
cls_taskInline_con_0:
.cls_taskInline_con_0_b.0: 
	addi sp, sp, 0
	li t0, 19260817
	sw t0, 0(a0)
	addi sp, sp, 0
	ret
	.size	cls_taskInline_con_0, .-cls_taskInline_con_0

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_taskNTT_KSM
	.p2align	1
	.type	cls_taskNTT_KSM,@function
cls_taskNTT_KSM:
.cls_taskNTT_KSM_b.0: 
	addi sp, sp, 0
	addi t2, a0, 4
	addi a3, a0, 4
	li a0, 1
.cls_taskNTT_KSM_b.1: 
	bne a2, zero, .cls_taskNTT_KSM_b.2
.cls_taskNTT_KSM_b.3: 
	addi sp, sp, 0
	ret
.cls_taskNTT_KSM_b.2: 
	andi t0, a2, 1
	bne t0, zero, .cls_taskNTT_KSM_b.4
.cls_taskNTT_KSM_b.5: 
	srai a2, a2, 1
	lw a4, 0(t2)
	rem t1, a1, a4
	li t0, 0
.cls_taskNTT_KSM_b.7: 
	bne a1, zero, .cls_taskNTT_KSM_b.9
.cls_taskNTT_KSM_b.10: 
	mv a1, t0
	j .cls_taskNTT_KSM_b.1
.cls_taskNTT_KSM_b.4: 
	lw a4, 0(a3)
	rem t0, a0, a4
	li a0, 0
	mv t1, a1
.cls_taskNTT_KSM_b.6: 
	bne t1, zero, .cls_taskNTT_KSM_b.8
	j .cls_taskNTT_KSM_b.5
.cls_taskNTT_KSM_b.8: 
	andi a5, t1, 1
	bne a5, zero, .cls_taskNTT_KSM_b.11
.cls_taskNTT_KSM_b.12: 
	srai t1, t1, 1
	slli t0, t0, 1
	rem t0, t0, a4
	j .cls_taskNTT_KSM_b.6
.cls_taskNTT_KSM_b.9: 
	andi a5, a1, 1
	bne a5, zero, .cls_taskNTT_KSM_b.13
.cls_taskNTT_KSM_b.14: 
	srai a1, a1, 1
	slli t1, t1, 1
	rem t1, t1, a4
	j .cls_taskNTT_KSM_b.7
.cls_taskNTT_KSM_b.11: 
	add a0, a0, t0
	rem a0, a0, a4
	j .cls_taskNTT_KSM_b.12
.cls_taskNTT_KSM_b.13: 
	add t0, t0, t1
	rem t0, t0, a4
	j .cls_taskNTT_KSM_b.14
	.size	cls_taskNTT_KSM, .-cls_taskNTT_KSM

	.globl	cls_taskStress_main
	.p2align	1
	.type	cls_taskStress_main,@function
cls_taskStress_main:
.cls_taskStress_main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	lw a0, 0(a0)
	call g_printlnInt
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	cls_taskStress_main, .-cls_taskStress_main

	.globl	cls_taskInline_main
	.p2align	1
	.type	cls_taskInline_main,@function
cls_taskInline_main:
.cls_taskInline_main_b.0: 
	addi sp, sp, -80
	sw s0, 16(sp)
	sw s1, 20(sp)
	sw s2, 24(sp)
	sw s3, 28(sp)
	sw s4, 32(sp)
	sw s5, 36(sp)
	sw s6, 40(sp)
	sw s7, 44(sp)
	sw s8, 48(sp)
	sw s9, 52(sp)
	sw s10, 56(sp)
	sw s11, 60(sp)
	sw ra, 12(sp)
	mv s7, a0
	mv t0, s7
	lw s1, 0(t0)
	sw s7, 72(sp)
	mv t0, s7
	lw s0, 0(t0)
	sw s7, 76(sp)
	mv t0, s7
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s6, t1, t0
	slti t0, s6, 0
	xori t0, t0, 1
	mv s11, s7
	mv t0, s7
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s8, t1, t0
	srai t0, s6, 17
	sw t0, 64(sp)
	li t0, -2147483648
	xor t0, s6, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	sw t0, 68(sp)
	li s4, 0
.cls_taskInline_main_b.1: 
	mv a0, s7
	mv a1, s1
	li s5, 13
	mv a2, s5
	call cls_taskInline_unsigned_shl
	xor s2, s1, a0
	mv a0, s7
	mv a1, s2
	li s3, 17
	mv a2, s3
	call cls_taskInline_unsigned_shr
	xor s9, s2, a0
	mv a0, s7
	mv a1, s9
	li s2, 5
	mv a2, s2
	call cls_taskInline_unsigned_shl
	xor t1, s9, a0
	lw t0, 72(sp)
	sw t1, 0(t0)
	li s9, 1073741823
	and t0, t1, s9
	andi s10, t0, 255
	mv a0, s7
	mv a1, s0
	mv a2, s5
	call cls_taskInline_unsigned_shl
	xor s5, s0, a0
	mv a0, s7
	mv a1, s5
	mv a2, s3
	call cls_taskInline_unsigned_shr
	xor s3, s5, a0
	mv a0, s7
	mv a1, s3
	mv a2, s2
	call cls_taskInline_unsigned_shl
	xor t1, s3, a0
	lw t0, 76(sp)
	sw t1, 0(t0)
	and t0, t1, s9
	andi t0, t0, 255
	bne s10, t0, .cls_taskInline_main_b.2
.cls_taskInline_main_b.3: 
	li t0, 5647
	xor a0, s4, t0
	lw s0, 16(sp)
	lw s1, 20(sp)
	lw s2, 24(sp)
	lw s3, 28(sp)
	lw s4, 32(sp)
	lw s5, 36(sp)
	lw s6, 40(sp)
	lw s7, 44(sp)
	lw s8, 48(sp)
	lw s9, 52(sp)
	lw s10, 56(sp)
	lw s11, 60(sp)
	lw ra, 12(sp)
	addi sp, sp, 80
	ret
.cls_taskInline_main_b.2: 
	bge s6, zero, .cls_taskInline_main_b.4
.cls_taskInline_main_b.5: 
	lw t0, 68(sp)
	j .cls_taskInline_main_b.6
.cls_taskInline_main_b.4: 
	lw t0, 64(sp)
.cls_taskInline_main_b.6: 
	xor t1, s6, t0
	slli t0, t1, 5
	xor t0, t1, t0
	sw t0, 0(s11)
	li s3, 1073741823
	and t0, t0, s3
	addi s2, t0, 1
	mv a0, s7
	mv a1, s8
	li a2, 17
	call cls_taskInline_unsigned_shr
	xor s5, s8, a0
	mv a0, s7
	mv a1, s5
	li a2, 5
	call cls_taskInline_unsigned_shl
	xor t0, s5, a0
	sw t0, 0(s7)
	and t0, t0, s3
	addi a1, t0, 1
	blt zero, a1, .cls_taskInline_main_b.7
.cls_taskInline_main_b.8: 
	mv a0, s2
	j .cls_taskInline_main_b.9
.cls_taskInline_main_b.7: 
	rem a2, s2, a1
	mv a0, s7
	call cls_taskInline_gcd
.cls_taskInline_main_b.9: 
	xor t0, s4, a0
	mv s4, t0
	j .cls_taskInline_main_b.1
	.size	cls_taskInline_main, .-cls_taskInline_main

	.globl	cls_taskInline_unsigned_shl
	.p2align	1
	.type	cls_taskInline_unsigned_shl,@function
cls_taskInline_unsigned_shl:
.cls_taskInline_unsigned_shl_b.0: 
	addi sp, sp, 0
	sll a0, a1, a2
	addi sp, sp, 0
	ret
	.size	cls_taskInline_unsigned_shl, .-cls_taskInline_unsigned_shl

	.globl	cls_taskConst_con_0
	.p2align	1
	.type	cls_taskConst_con_0,@function
cls_taskConst_con_0:
.cls_taskConst_con_0_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_taskConst_con_0, .-cls_taskConst_con_0

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -64
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw s3, 16(sp)
	sw s4, 20(sp)
	sw s5, 24(sp)
	sw s6, 28(sp)
	sw s7, 32(sp)
	sw s8, 36(sp)
	sw s9, 40(sp)
	sw s10, 44(sp)
	sw s11, 48(sp)
	sw ra, 0(sp)
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
	mv a0, s0
	call cls_taskNTT_main
	li s0, 4
	mv a0, s0
	call malloc
	mv s1, a0
	mv a0, s1
	call cls_taskStress_con_0
	lw a0, 0(s1)
	call g_printlnInt
	mv a0, s0
	call malloc
	mv s0, a0
	mv t0, s0
	li t1, 19260817
	sw t1, 0(t0)
	sw s0, 56(sp)
	sw s0, 60(sp)
	mv s11, s0
	mv s10, s0
	sw s0, 52(sp)
	mv s5, s0
	mv s1, s0
	li s2, 0
.main_b.1: 
	lw t0, 56(sp)
	lw s4, 0(t0)
	mv a0, s0
	mv a1, s4
	li s3, 13
	mv a2, s3
	call cls_taskInline_unsigned_shl
	xor s4, s4, a0
	mv a0, s0
	mv a1, s4
	li s6, 17
	mv a2, s6
	call cls_taskInline_unsigned_shr
	xor s4, s4, a0
	mv a0, s0
	mv a1, s4
	li s8, 5
	mv a2, s8
	call cls_taskInline_unsigned_shl
	xor t1, s4, a0
	lw t0, 60(sp)
	sw t1, 0(t0)
	li s4, 1073741823
	and t0, t1, s4
	andi s7, t0, 255
	lw s9, 0(s11)
	mv a0, s0
	mv a1, s9
	mv a2, s3
	call cls_taskInline_unsigned_shl
	xor s3, s9, a0
	mv a0, s0
	mv a1, s3
	mv a2, s6
	call cls_taskInline_unsigned_shr
	xor s3, s3, a0
	mv a0, s0
	mv a1, s3
	mv a2, s8
	call cls_taskInline_unsigned_shl
	xor t0, s3, a0
	sw t0, 0(s10)
	and t0, t0, s4
	andi t0, t0, 255
	bne s7, t0, .main_b.2
.main_b.3: 
	li t0, 5647
	xor t0, s2, t0
	bne t0, zero, .main_b.6
.main_b.7: 
	li a0, 4
	call malloc
	mv s1, a0
	li t0, 100
	sw t0, 0(s1)
	mv a0, s1
	call cls_taskSSA_test
	mv s0, a0
	li t0, 200
	sw t0, 0(s1)
	mv a0, s1
	call cls_taskSSA_test
	add t0, s0, a0
	addi t0, t0, -300
	bne t0, zero, .main_b.10
.main_b.11: 
	mv a0, zero
	call malloc
	mv s0, a0
	mv a0, s0
	call cls_taskConst_test
	addi t0, a0, -100
	bne t0, zero, .main_b.14
.main_b.15: 
	li a0, 0
	j .main_b.9
.main_b.2: 
	lw t0, 52(sp)
	lw t1, 0(t0)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.4
.main_b.5: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.8
.main_b.4: 
	srai t0, t2, 17
.main_b.8: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t0, t1, t0
	sw t0, 0(s5)
	li s4, 1073741823
	and t0, t0, s4
	addi s6, t0, 1
	lw t1, 0(s0)
	slli t0, t1, 13
	xor s3, t1, t0
	mv a0, s0
	mv a1, s3
	li a2, 17
	call cls_taskInline_unsigned_shr
	xor s3, s3, a0
	mv a0, s0
	mv a1, s3
	li a2, 5
	call cls_taskInline_unsigned_shl
	xor t0, s3, a0
	sw t0, 0(s1)
	and t0, t0, s4
	addi a1, t0, 1
	blt zero, a1, .main_b.12
.main_b.13: 
	mv a0, s6
	j .main_b.16
.main_b.6: 
	li a0, -1
	mv s0, zero
	mv s1, zero
.main_b.9: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw s3, 16(sp)
	lw s4, 20(sp)
	lw s5, 24(sp)
	lw s6, 28(sp)
	lw s7, 32(sp)
	lw s8, 36(sp)
	lw s9, 40(sp)
	lw s10, 44(sp)
	lw s11, 48(sp)
	lw ra, 0(sp)
	addi sp, sp, 64
	ret
.main_b.10: 
	li a0, -1
	mv s0, zero
	j .main_b.9
.main_b.12: 
	rem a2, s6, a1
	mv a0, s0
	call cls_taskInline_gcd
.main_b.16: 
	xor t0, s2, a0
	mv s2, t0
	j .main_b.1
.main_b.14: 
	li a0, -1
	j .main_b.9
	.size	main, .-main

	.globl	cls_taskNTT_NTT
	.p2align	1
	.type	cls_taskNTT_NTT,@function
cls_taskNTT_NTT:
.cls_taskNTT_NTT_b.0: 
	addi sp, sp, -64
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw s3, 16(sp)
	sw s4, 20(sp)
	sw s5, 24(sp)
	sw s6, 28(sp)
	sw s7, 32(sp)
	sw s8, 36(sp)
	sw s9, 40(sp)
	sw s10, 44(sp)
	sw s11, 48(sp)
	sw ra, 0(sp)
	mv s4, a0
	mv s1, a1
	mv s5, a2
	sw a3, 56(sp)
	srai a0, s1, 1
	li t0, 0
	li t1, 0
.cls_taskNTT_NTT_b.1: 
	blt t1, s1, .cls_taskNTT_NTT_b.2
.cls_taskNTT_NTT_b.3: 
	mv t0, s4
	addi a3, t0, 4
	mv t0, s4
	addi a2, t0, 4
	mv t0, s4
	addi a1, t0, 4
	mv t0, s4
	addi a0, t0, 4
	mv t0, s4
	addi t2, t0, 4
	mv t0, s4
	addi t1, t0, 4
	lw s8, 0(a2)
	lw t0, 0(a1)
	sw t0, 60(sp)
	lw s11, 0(a0)
	lw s10, 0(t2)
	lw s9, 0(t1)
	lw t0, 0(a3)
	addi t0, t0, -1
	sw t0, 52(sp)
	mv t0, s4
	addi t1, t0, 4
	mv t0, s4
	addi t0, t0, 4
	lw s2, 0(t0)
	lw s0, 0(t1)
	li s6, 1
.cls_taskNTT_NTT_b.6: 
	blt s6, s1, .cls_taskNTT_NTT_b.8
.cls_taskNTT_NTT_b.9: 
	li t1, -1
	lw t0, 56(sp)
	beq t0, t1, .cls_taskNTT_NTT_b.13
.cls_taskNTT_NTT_b.14: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw s3, 16(sp)
	lw s4, 20(sp)
	lw s5, 24(sp)
	lw s6, 28(sp)
	lw s7, 32(sp)
	lw s8, 36(sp)
	lw s9, 40(sp)
	lw s10, 44(sp)
	lw s11, 48(sp)
	lw ra, 0(sp)
	addi sp, sp, 64
	ret
.cls_taskNTT_NTT_b.2: 
	blt t0, t1, .cls_taskNTT_NTT_b.4
.cls_taskNTT_NTT_b.5: 
	mv t2, a0
.cls_taskNTT_NTT_b.7: 
	xor t0, t0, t2
	bge t0, t2, .cls_taskNTT_NTT_b.10
.cls_taskNTT_NTT_b.11: 
	srai t2, t2, 1
	j .cls_taskNTT_NTT_b.7
.cls_taskNTT_NTT_b.4: 
	slli t2, t1, 2
	add t2, s5, t2
	lw a2, 0(t2)
	slli t2, t1, 2
	add a1, s5, t2
	slli t2, t0, 2
	add t2, s5, t2
	lw t2, 0(t2)
	sw t2, 0(a1)
	slli t2, t0, 2
	add t2, s5, t2
	sw a2, 0(t2)
	j .cls_taskNTT_NTT_b.5
.cls_taskNTT_NTT_b.8: 
	slli t1, s6, 1
	lw t0, 52(sp)
	div t0, t0, t1
	li a1, 1
	li s3, 3
	mv s7, t0
.cls_taskNTT_NTT_b.12: 
	bne s7, zero, .cls_taskNTT_NTT_b.15
.cls_taskNTT_NTT_b.16: 
	slli a3, s6, 1
	li t1, 0
.cls_taskNTT_NTT_b.20: 
	blt t1, s1, .cls_taskNTT_NTT_b.23
.cls_taskNTT_NTT_b.24: 
	slli t0, s6, 1
	mv s6, t0
	j .cls_taskNTT_NTT_b.6
.cls_taskNTT_NTT_b.10: 
	addi t1, t1, 1
	j .cls_taskNTT_NTT_b.1
.cls_taskNTT_NTT_b.13: 
	li t1, 1
	mv t0, s1
.cls_taskNTT_NTT_b.17: 
	blt t1, t0, .cls_taskNTT_NTT_b.21
	j .cls_taskNTT_NTT_b.14
.cls_taskNTT_NTT_b.15: 
	andi t0, s7, 1
	bne t0, zero, .cls_taskNTT_NTT_b.18
.cls_taskNTT_NTT_b.19: 
	srai t0, s7, 1
	rem a0, s3, s0
	li t2, 0
	mv t1, s3
.cls_taskNTT_NTT_b.22: 
	bne t1, zero, .cls_taskNTT_NTT_b.25
.cls_taskNTT_NTT_b.26: 
	mv s3, t2
	mv s7, t0
	j .cls_taskNTT_NTT_b.12
.cls_taskNTT_NTT_b.18: 
	mv a0, s4
	mv a2, s3
	mv a3, s2
	call cls_taskNTT_mulmod
	mv a1, a0
	j .cls_taskNTT_NTT_b.19
.cls_taskNTT_NTT_b.21: 
	addi t0, t0, -1
	slli t2, t1, 2
	add t2, s5, t2
	lw a1, 0(t2)
	slli t2, t1, 2
	add a0, s5, t2
	slli t2, t0, 2
	add t2, s5, t2
	lw t2, 0(t2)
	sw t2, 0(a0)
	slli t2, t0, 2
	add t2, s5, t2
	sw a1, 0(t2)
	addi t1, t1, 1
	j .cls_taskNTT_NTT_b.17
.cls_taskNTT_NTT_b.23: 
	add a6, t1, s6
	add a5, s6, t1
	li t0, 1
	li a4, 0
.cls_taskNTT_NTT_b.27: 
	blt a4, s6, .cls_taskNTT_NTT_b.30
.cls_taskNTT_NTT_b.31: 
	add t1, t1, a3
	j .cls_taskNTT_NTT_b.20
.cls_taskNTT_NTT_b.25: 
	andi a2, t1, 1
	bne a2, zero, .cls_taskNTT_NTT_b.28
.cls_taskNTT_NTT_b.29: 
	srai t1, t1, 1
	slli a0, a0, 1
	rem a0, a0, s0
	j .cls_taskNTT_NTT_b.22
.cls_taskNTT_NTT_b.28: 
	add t2, t2, a0
	rem t2, t2, s0
	j .cls_taskNTT_NTT_b.29
.cls_taskNTT_NTT_b.30: 
	add t2, a6, a4
	slli t2, t2, 2
	add t2, s5, t2
	lw a2, 0(t2)
	rem t2, t0, s8
	li a0, 0
.cls_taskNTT_NTT_b.32: 
	bne a2, zero, .cls_taskNTT_NTT_b.33
.cls_taskNTT_NTT_b.34: 
	add t2, a5, a4
	slli t2, t2, 2
	add t2, s5, t2
	add a2, t1, a4
	slli a2, a2, 2
	add a2, s5, a2
	lw a2, 0(a2)
	sub a7, a2, a0
	lw a2, 60(sp)
	add a2, a7, a2
	rem a2, a2, s11
	sw a2, 0(t2)
	add t2, t1, a4
	slli t2, t2, 2
	add a2, s5, t2
	add t2, t1, a4
	slli t2, t2, 2
	add t2, s5, t2
	lw t2, 0(t2)
	add t2, t2, a0
	rem t2, t2, s10
	sw t2, 0(a2)
	rem t2, t0, s9
	li t0, 0
	mv a0, a1
.cls_taskNTT_NTT_b.37: 
	bne a0, zero, .cls_taskNTT_NTT_b.38
.cls_taskNTT_NTT_b.39: 
	addi a4, a4, 1
	j .cls_taskNTT_NTT_b.27
.cls_taskNTT_NTT_b.33: 
	andi a7, a2, 1
	bne a7, zero, .cls_taskNTT_NTT_b.35
.cls_taskNTT_NTT_b.36: 
	srai a2, a2, 1
	slli t2, t2, 1
	rem t2, t2, s8
	j .cls_taskNTT_NTT_b.32
.cls_taskNTT_NTT_b.35: 
	add a0, a0, t2
	rem a0, a0, s8
	j .cls_taskNTT_NTT_b.36
.cls_taskNTT_NTT_b.38: 
	andi a2, a0, 1
	bne a2, zero, .cls_taskNTT_NTT_b.40
.cls_taskNTT_NTT_b.41: 
	srai a0, a0, 1
	slli t2, t2, 1
	rem t2, t2, s9
	j .cls_taskNTT_NTT_b.37
.cls_taskNTT_NTT_b.40: 
	add t0, t0, t2
	rem t0, t0, s9
	j .cls_taskNTT_NTT_b.41
	.size	cls_taskNTT_NTT, .-cls_taskNTT_NTT

	.type	.cls_taskStress_con_0.0,@object
	.section	.rodata
.cls_taskStress_con_0.0:
	.asciz	"wtf"
	.size	.cls_taskStress_con_0.0, 4

