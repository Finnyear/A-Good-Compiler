	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -64
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw s2, 16(sp)
	sw s3, 20(sp)
	sw s4, 24(sp)
	sw s5, 28(sp)
	sw s6, 32(sp)
	sw s7, 36(sp)
	sw s8, 40(sp)
	sw s9, 44(sp)
	sw s10, 48(sp)
	sw s11, 52(sp)
	sw ra, 4(sp)
	li t1, 10000000
	lui t0, %hi(INF)
	sw t1, %lo(INF)(t0)
	call g_getInt
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	call g_getInt
	lui t0, %hi(m)
	sw a0, %lo(m)(t0)
	li a0, 16
	call malloc
	lui t0, %hi(g)
	sw a0, %lo(g)(t0)
	lui t0, %hi(g)
	lw s0, %lo(g)(t0)
	lui t0, %hi(n)
	lw s2, %lo(n)(t0)
	lui t0, %hi(m)
	lw s1, %lo(m)(t0)
	slli t0, s1, 2
	addi a0, t0, 4
	call malloc
	sw s1, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s0)
	addi s3, s0, 4
	slli t0, s1, 2
	addi a0, t0, 4
	call malloc
	sw s1, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s3)
	addi s3, s0, 8
	slli t0, s2, 2
	addi a0, t0, 4
	call malloc
	sw s2, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s3)
	li t0, 0
.main_b.1: 
	blt t0, s1, .main_b.2
.main_b.3: 
	li t0, 0
.main_b.5: 
	blt t0, s2, .main_b.6
.main_b.7: 
	addi t0, s0, 12
	sw zero, 0(t0)
	li s0, 65536
	li s2, 65536
	li s1, 65536
	li s3, 0
.main_b.9: 
	lui t0, %hi(m)
	lw t0, %lo(m)(t0)
	blt s3, t0, .main_b.10
.main_b.11: 
	li s0, 65536
	li s2, 0
	mv t0, zero
.main_b.13: 
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	blt s2, t0, .main_b.14
.main_b.15: 
	mv a0, zero
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw s2, 16(sp)
	lw s3, 20(sp)
	lw s4, 24(sp)
	lw s5, 28(sp)
	lw s6, 32(sp)
	lw s7, 36(sp)
	lw s8, 40(sp)
	lw s9, 44(sp)
	lw s10, 48(sp)
	lw s11, 52(sp)
	lw ra, 4(sp)
	addi sp, sp, 64
	ret
.main_b.2: 
	addi t1, s0, 4
	lw t2, 0(t1)
	slli t1, t0, 2
	add t2, t2, t1
	addi t1, zero, -1
	sw t1, 0(t2)
.main_b.4: 
	addi t0, t0, 1
	j .main_b.1
.main_b.6: 
	addi t1, s0, 8
	lw t2, 0(t1)
	slli t1, t0, 2
	add t2, t2, t1
	addi t1, zero, -1
	sw t1, 0(t2)
.main_b.8: 
	addi t0, t0, 1
	j .main_b.5
.main_b.10: 
	call g_getInt
	mv s0, a0
	call g_getInt
	mv s1, a0
	call g_getInt
	mv s2, a0
	lui t0, %hi(g)
	lw s4, %lo(g)(t0)
	li a0, 12
	call malloc
	sw s0, 0(a0)
	addi t0, a0, 4
	sw s1, 0(t0)
	addi t0, a0, 8
	sw s2, 0(t0)
	mv t0, s4
	addi t2, s4, 12
	lw t1, 0(t0)
	lw t0, 0(t2)
	slli t0, t0, 2
	add t0, t1, t0
	sw a0, 0(t0)
	addi t1, s4, 4
	addi t0, s4, 12
	lw t1, 0(t1)
	lw t0, 0(t0)
	slli t0, t0, 2
	add t2, t1, t0
	addi t0, s4, 8
	lw t1, 0(t0)
	slli t0, s0, 2
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, 0(t2)
	addi t0, s4, 8
	lw t1, 0(t0)
	slli t0, s0, 2
	add t1, t1, t0
	addi t0, s4, 12
	lw t0, 0(t0)
	sw t0, 0(t1)
	addi t1, s4, 12
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
.main_b.12: 
	addi s3, s3, 1
	j .main_b.9
.main_b.14: 
	lui t0, %hi(n)
	lw s0, %lo(n)(t0)
	slli t0, s0, 2
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi s7, a0, 4
	lui t0, %hi(n)
	lw s0, %lo(n)(t0)
	slli t0, s0, 2
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t0, a0, 4
	mv s4, t0
	li t0, 0
.main_b.16: 
	lui t1, %hi(n)
	lw t1, %lo(n)(t1)
	blt t0, t1, .main_b.17
.main_b.18: 
	slli t0, s2, 2
	add t0, s4, t0
	sw zero, 0(t0)
	li s1, 4
	mv a0, s1
	call malloc
	mv s5, a0
	mv s0, s5
	li s3, 8
	mv a0, s3
	call malloc
	mv s6, a0
	addi t0, s6, 4
	sw zero, 0(t0)
	slli t0, s1, 4
	addi a0, t0, 4
	call malloc
	li t0, 16
	sw t0, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s6)
	sw s6, 0(s0)
	mv a0, s3
	call malloc
	mv s1, a0
	addi t0, s1, 4
	sw zero, 0(t0)
	sw s2, 0(s1)
	mv t0, s5
	lw s0, 0(t0)
	addi t0, s0, 4
	lw t1, 0(t0)
	lw t0, 0(s0)
	addi t0, t0, -4
	lw t0, 0(t0)
	beq t1, t0, .main_b.20
.main_b.21: 
	mv t0, s0
	addi t2, s0, 4
	lw t1, 0(t0)
	lw t0, 0(t2)
	slli t0, t0, 2
	add t0, t1, t0
	sw s1, 0(t0)
	addi t1, s0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	mv t0, s5
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t2, t0, -1
	li t1, 65536
.main_b.23: 
	blt zero, t2, .main_b.25
.main_b.26: 
	li s3, 65536
	li s6, 65536
	li t1, 65536
	li t1, 65536
	li s0, 65536
	mv s8, zero
.main_b.29: 
	mv t0, s5
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	bne t0, zero, .main_b.30
.main_b.31: 
	li s0, 0
.main_b.34: 
	lui t0, %hi(n)
	lw t0, %lo(n)(t0)
	blt s0, t0, .main_b.37
.main_b.38: 
	la a0, .main.2
	call g_println
.main_b.43: 
	addi t0, s2, 1
	mv s2, t0
	mv t0, s4
	j .main_b.13
.main_b.17: 
	slli t1, t0, 2
	add t2, s4, t1
	lui t1, %hi(INF)
	lw t1, %lo(INF)(t1)
	sw t1, 0(t2)
	slli t1, t0, 2
	add t1, s7, t1
	sw zero, 0(t1)
.main_b.19: 
	addi t0, t0, 1
	j .main_b.16
.main_b.20: 
	lw s6, 0(s0)
	addi t0, s0, 4
	lw s3, 0(t0)
	addi t0, s6, -4
	lw t0, 0(t0)
	slli s8, t0, 1
	slli t0, s8, 2
	addi a0, t0, 4
	call malloc
	sw s8, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s0)
	addi t0, s0, 4
	sw zero, 0(t0)
.main_b.22: 
	addi t0, s0, 4
	lw t0, 0(t0)
	bne t0, s3, .main_b.24
	j .main_b.21
.main_b.24: 
	mv t0, s0
	addi t2, s0, 4
	lw t1, 0(t0)
	lw t0, 0(t2)
	slli t0, t0, 2
	add t1, t1, t0
	addi t0, s0, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	add t0, s6, t0
	lw t0, 0(t0)
	sw t0, 0(t1)
.main_b.27: 
	addi t1, s0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .main_b.22
.main_b.25: 
	addi t1, t2, -1
	li t0, 2
	div t1, t1, t0
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t1, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a1, zero, t0
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t2, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	bge a1, t0, .main_b.26
.main_b.28: 
	mv t0, s5
	lw t0, 0(t0)
	lw a1, 0(t0)
	slli a0, t1, 2
	add a0, a1, a0
	lw a3, 0(a0)
	lw a1, 0(t0)
	slli a0, t1, 2
	add a2, a1, a0
	lw a1, 0(t0)
	slli a0, t2, 2
	add a0, a1, a0
	lw a0, 0(a0)
	sw a0, 0(a2)
	lw a0, 0(t0)
	slli t0, t2, 2
	add t0, a0, t0
	sw a3, 0(t0)
	mv t2, t1
	j .main_b.23
.main_b.30: 
	mv t0, s5
	lw t0, 0(t0)
	lw t0, 0(t0)
	lw s8, 0(t0)
	mv t0, s5
	lw t1, 0(t0)
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi a2, t0, -1
	lw t0, 0(t1)
	lw a1, 0(t0)
	lw t0, 0(t1)
	lw a0, 0(t1)
	slli t2, a2, 2
	add t2, a0, t2
	lw t2, 0(t2)
	sw t2, 0(t0)
	lw t1, 0(t1)
	slli t0, a2, 2
	add t0, t1, t0
	sw a1, 0(t0)
	mv t0, s5
	lw t0, 0(t0)
	addi t2, t0, 4
	lw t1, 0(t2)
	addi t1, t1, -1
	sw t1, 0(t2)
	mv t1, t0
	addi t0, t0, 4
	lw t1, 0(t1)
	lw t0, 0(t0)
	slli t0, t0, 2
	add t0, t1, t0
	lw t0, 0(t0)
	li t1, 2
	mul t0, zero, t1
	addi t2, t0, 1
	mul t0, zero, t1
	addi t1, t0, 2
	mv t0, s5
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt t2, t0, .main_b.32
.main_b.33: 
	li t2, 0
.main_b.36: 
	mv t0, s5
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt t1, t0, .main_b.39
.main_b.40: 
	mv t1, t2
.main_b.45: 
	beq t1, zero, .main_b.47
.main_b.48: 
	mv t0, s5
	lw t0, 0(t0)
	lw t2, 0(t0)
	lw a2, 0(t2)
	lw t2, 0(t0)
	lw a1, 0(t0)
	slli a0, t1, 2
	add a0, a1, a0
	lw a0, 0(a0)
	sw a0, 0(t2)
	lw t2, 0(t0)
	slli t0, t1, 2
	add t0, t2, t0
	sw a2, 0(t0)
	slli t0, t1, 1
	addi a1, t0, 1
	slli t0, t1, 1
	addi t2, t0, 2
	mv t0, s5
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt a1, t0, .main_b.52
.main_b.53: 
	mv a1, t1
.main_b.56: 
	mv t0, s5
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt t2, t0, .main_b.59
.main_b.60: 
	beq a1, t1, .main_b.47
.main_b.64: 
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t2, t1, 2
	add t2, a0, t2
	lw a2, 0(t2)
	lw t2, 0(t0)
	slli t1, t1, 2
	add a0, t2, t1
	lw t2, 0(t0)
	slli t1, a1, 2
	add t1, t2, t1
	lw t1, 0(t1)
	sw t1, 0(a0)
	lw t1, 0(t0)
	slli t0, a1, 2
	add t0, t1, t0
	sw a2, 0(t0)
	mv a0, s5
	call cls_Heap_Node_maxHeapify
.main_b.47: 
	lw s1, 0(s8)
	slli t0, s1, 2
	add t0, s7, t0
	lw t1, 0(t0)
	li t0, 1
	beq t1, t0, .main_b.50
.main_b.51: 
	slli t0, s1, 2
	add t1, s7, t0
	li t0, 1
	sw t0, 0(t1)
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	addi t0, t0, 8
	lw t1, 0(t0)
	slli t0, s1, 2
	add t0, t1, t0
	lw t1, 0(t0)
	mv t0, s0
	mv s0, t1
	mv t1, s6
.main_b.54: 
	addi t2, zero, -1
	bne s0, t2, .main_b.57
.main_b.58: 
	mv s6, t1
	mv t1, s1
	mv t1, s0
	mv s0, t0
	j .main_b.29
.main_b.32: 
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t2, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a0, zero, t0
	mv t0, s5
	lw t0, 0(t0)
	lw t0, 0(t0)
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a0, .main_b.36
.main_b.35: 
	li t2, 0
	j .main_b.36
.main_b.37: 
	slli t0, s0, 2
	add t0, s4, t0
	lw t1, 0(t0)
	lui t0, %hi(INF)
	lw t0, %lo(INF)(t0)
	beq t1, t0, .main_b.41
.main_b.42: 
	slli t0, s0, 2
	add t0, s4, t0
	lw a0, 0(t0)
	call g_toString
	call g_print
	j .main_b.46
.main_b.39: 
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t1, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a1, zero, t0
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t2, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a1, .main_b.45
.main_b.44: 
	mv t1, t2
	j .main_b.45
.main_b.41: 
	la a0, .main.0
	call g_print
.main_b.46: 
	la a0, .main.1
	call g_print
.main_b.49: 
	addi s0, s0, 1
	j .main_b.34
.main_b.50: 
	mv t1, s1
	j .main_b.29
.main_b.52: 
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, a1, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a2, zero, t0
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t1, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a2, .main_b.56
.main_b.55: 
	mv a1, t1
	j .main_b.56
.main_b.57: 
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	lw t1, 0(t0)
	slli t0, s0, 2
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw s6, 0(t0)
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	lw t1, 0(t0)
	slli t0, s0, 2
	add t0, t1, t0
	lw t0, 0(t0)
	addi t0, t0, 8
	lw t0, 0(t0)
	sw t0, 60(sp)
	slli t0, s1, 2
	add t0, s4, t0
	lw t1, 0(t0)
	lw t0, 60(sp)
	add s3, t1, t0
	slli t0, s6, 2
	add t0, s4, t0
	lw t0, 0(t0)
	bge s3, t0, .main_b.62
.main_b.61: 
	slli t0, s6, 2
	add t0, s4, t0
	sw s3, 0(t0)
	li a0, 8
	call malloc
	mv s9, a0
	mv t0, s9
	sw s6, 0(t0)
	mv t0, s9
	addi t1, t0, 4
	slli t0, s6, 2
	add t0, s4, t0
	lw t0, 0(t0)
	sw t0, 0(t1)
	mv t0, s5
	lw s8, 0(t0)
	mv t0, s8
	addi t0, t0, 4
	lw t1, 0(t0)
	mv t0, s8
	lw t0, 0(t0)
	addi t0, t0, -4
	lw t0, 0(t0)
	beq t1, t0, .main_b.65
.main_b.66: 
	mv t1, s8
	mv t0, s8
	addi t0, t0, 4
	lw t1, 0(t1)
	lw t0, 0(t0)
	slli t0, t0, 2
	add t0, t1, t0
	sw s9, 0(t0)
	mv t0, s8
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	mv t0, s5
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	addi t2, t0, -1
	li t1, 65536
.main_b.68: 
	blt zero, t2, .main_b.70
.main_b.71: 
	mv s8, s9
.main_b.62: 
	lui t0, %hi(g)
	lw t0, %lo(g)(t0)
	addi t0, t0, 4
	lw t1, 0(t0)
	slli t0, s0, 2
	add t0, t1, t0
	lw t1, 0(t0)
	lw t0, 60(sp)
	mv s0, t1
	mv t1, s3
	mv s3, s6
	j .main_b.54
.main_b.59: 
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t2, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a2, zero, t0
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, a1, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a2, .main_b.63
	j .main_b.60
.main_b.63: 
	mv a1, t2
	j .main_b.60
.main_b.65: 
	mv t0, s8
	lw s11, 0(t0)
	mv t0, s8
	addi t0, t0, 4
	lw t0, 0(t0)
	sw t0, 56(sp)
	mv t0, s11
	addi t0, t0, -4
	lw t0, 0(t0)
	slli s10, t0, 1
	slli t0, s10, 2
	addi a0, t0, 4
	call malloc
	sw s10, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s8)
	mv t0, s8
	addi t0, t0, 4
	sw zero, 0(t0)
.main_b.67: 
	mv t0, s8
	addi t0, t0, 4
	lw t1, 0(t0)
	lw t0, 56(sp)
	bne t1, t0, .main_b.69
	j .main_b.66
.main_b.69: 
	mv t0, s8
	mv t1, s8
	addi t2, t1, 4
	lw t1, 0(t0)
	lw t0, 0(t2)
	slli t0, t0, 2
	add t1, t1, t0
	mv t0, s8
	addi t0, t0, 4
	lw t0, 0(t0)
	slli t0, t0, 2
	add t0, s11, t0
	lw t0, 0(t0)
	sw t0, 0(t1)
.main_b.72: 
	mv t0, s8
	addi t1, t0, 4
	lw t0, 0(t1)
	addi t0, t0, 1
	sw t0, 0(t1)
	j .main_b.67
.main_b.70: 
	addi t1, t2, -1
	li t0, 2
	div t1, t1, t0
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t1, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a1, zero, t0
	mv t0, s5
	lw t0, 0(t0)
	lw a0, 0(t0)
	slli t0, t2, 2
	add t0, a0, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	bge a1, t0, .main_b.71
.main_b.73: 
	mv t0, s5
	lw t0, 0(t0)
	lw a1, 0(t0)
	slli a0, t1, 2
	add a0, a1, a0
	lw a3, 0(a0)
	lw a1, 0(t0)
	slli a0, t1, 2
	add a2, a1, a0
	lw a1, 0(t0)
	slli a0, t2, 2
	add a0, a1, a0
	lw a0, 0(a0)
	sw a0, 0(a2)
	lw a0, 0(t0)
	slli t0, t2, 2
	add t0, a0, t0
	sw a3, 0(t0)
	mv t2, t1
	j .main_b.68
	.size	main, .-main

	.globl	cls_Heap_Node_maxHeapify
	.p2align	1
	.type	cls_Heap_Node_maxHeapify,@function
cls_Heap_Node_maxHeapify:
.cls_Heap_Node_maxHeapify_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	slli t0, a1, 1
	addi t1, t0, 1
	slli t0, a1, 1
	addi t2, t0, 2
	lw t0, 0(a0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt t1, t0, .cls_Heap_Node_maxHeapify_b.1
.cls_Heap_Node_maxHeapify_b.2: 
	mv t1, a1
.cls_Heap_Node_maxHeapify_b.4: 
	lw t0, 0(a0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt t2, t0, .cls_Heap_Node_maxHeapify_b.5
.cls_Heap_Node_maxHeapify_b.6: 
	beq t1, a1, .cls_Heap_Node_maxHeapify_b.8
.cls_Heap_Node_maxHeapify_b.9: 
	lw t0, 0(a0)
	lw a2, 0(t0)
	slli t2, a1, 2
	add t2, a2, t2
	lw t2, 0(t2)
	lw a2, 0(t0)
	slli a1, a1, 2
	add a3, a2, a1
	lw a2, 0(t0)
	slli a1, t1, 2
	add a1, a2, a1
	lw a1, 0(a1)
	sw a1, 0(a3)
	lw a1, 0(t0)
	slli t0, t1, 2
	add t0, a1, t0
	sw t2, 0(t0)
	slli t0, t1, 1
	addi t2, t0, 1
	slli t0, t1, 1
	addi a1, t0, 2
	lw t0, 0(a0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt t2, t0, .cls_Heap_Node_maxHeapify_b.10
.cls_Heap_Node_maxHeapify_b.11: 
	mv t2, t1
.cls_Heap_Node_maxHeapify_b.13: 
	lw t0, 0(a0)
	addi t0, t0, 4
	lw t0, 0(t0)
	blt a1, t0, .cls_Heap_Node_maxHeapify_b.14
.cls_Heap_Node_maxHeapify_b.15: 
	mv a1, t2
.cls_Heap_Node_maxHeapify_b.17: 
	beq a1, t1, .cls_Heap_Node_maxHeapify_b.8
.cls_Heap_Node_maxHeapify_b.18: 
	lw t0, 0(a0)
	lw a2, 0(t0)
	slli t2, t1, 2
	add t2, a2, t2
	lw t2, 0(t2)
	lw a2, 0(t0)
	slli t1, t1, 2
	add a3, a2, t1
	lw a2, 0(t0)
	slli t1, a1, 2
	add t1, a2, t1
	lw t1, 0(t1)
	sw t1, 0(a3)
	lw t1, 0(t0)
	slli t0, a1, 2
	add t0, t1, t0
	sw t2, 0(t0)
	call cls_Heap_Node_maxHeapify
.cls_Heap_Node_maxHeapify_b.8: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.cls_Heap_Node_maxHeapify_b.1: 
	lw t0, 0(a0)
	lw a2, 0(t0)
	slli t0, t1, 2
	add t0, a2, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a2, zero, t0
	lw t0, 0(a0)
	lw a3, 0(t0)
	slli t0, a1, 2
	add t0, a3, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a2, .cls_Heap_Node_maxHeapify_b.4
.cls_Heap_Node_maxHeapify_b.3: 
	mv t1, a1
	j .cls_Heap_Node_maxHeapify_b.4
.cls_Heap_Node_maxHeapify_b.5: 
	lw t0, 0(a0)
	lw a2, 0(t0)
	slli t0, t2, 2
	add t0, a2, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a2, zero, t0
	lw t0, 0(a0)
	lw a3, 0(t0)
	slli t0, t1, 2
	add t0, a3, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a2, .cls_Heap_Node_maxHeapify_b.7
	j .cls_Heap_Node_maxHeapify_b.6
.cls_Heap_Node_maxHeapify_b.7: 
	mv t1, t2
	j .cls_Heap_Node_maxHeapify_b.6
.cls_Heap_Node_maxHeapify_b.10: 
	lw t0, 0(a0)
	lw a2, 0(t0)
	slli t0, t2, 2
	add t0, a2, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a2, zero, t0
	lw t0, 0(a0)
	lw a3, 0(t0)
	slli t0, t1, 2
	add t0, a3, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a2, .cls_Heap_Node_maxHeapify_b.13
.cls_Heap_Node_maxHeapify_b.12: 
	mv t2, t1
	j .cls_Heap_Node_maxHeapify_b.13
.cls_Heap_Node_maxHeapify_b.14: 
	lw t0, 0(a0)
	lw a2, 0(t0)
	slli t0, a1, 2
	add t0, a2, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub a2, zero, t0
	lw t0, 0(a0)
	lw a3, 0(t0)
	slli t0, t2, 2
	add t0, a3, t0
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	sub t0, zero, t0
	blt t0, a2, .cls_Heap_Node_maxHeapify_b.17
.cls_Heap_Node_maxHeapify_b.16: 
	mv a1, t2
	j .cls_Heap_Node_maxHeapify_b.17
	.size	cls_Heap_Node_maxHeapify, .-cls_Heap_Node_maxHeapify

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

	.type	INF,@object
	.section	.bss
	.globl	INF
	.p2align	2
INF:
.LINF$local:
	.word	0
	.size	INF, 4

	.type	m,@object
	.section	.bss
	.globl	m
	.p2align	2
m:
.Lm$local:
	.word	0
	.size	m, 4

	.type	g,@object
	.section	.bss
	.globl	g
	.p2align	2
g:
.Lg$local:
	.word	0
	.size	g, 4

	.type	.main.0,@object
	.section	.rodata
.main.0:
	.asciz	"-1"
	.size	.main.0, 3

	.type	.main.2,@object
	.section	.rodata
.main.2:
	.asciz	""
	.size	.main.2, 1

	.type	.main.1,@object
	.section	.rodata
.main.1:
	.asciz	" "
	.size	.main.1, 2

