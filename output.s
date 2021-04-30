	.text
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

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -32
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw s3, 16(sp)
	sw s4, 20(sp)
	sw s5, 24(sp)
	sw s6, 28(sp)
	sw ra, 0(sp)
	li a0, 28
	call malloc
	mv s0, a0
	li t0, 999
	sw t0, 0(s0)
	addi t1, s0, 4
	li t0, 998244353
	sw t0, 0(t1)
	addi s1, s0, 8
	lw s2, 0(s0)
	slli t0, s2, 2
	addi a0, t0, 4
	call malloc
	sw s2, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s1)
	addi s1, s0, 12
	lw s2, 0(s0)
	slli t0, s2, 2
	addi a0, t0, 4
	call malloc
	sw s2, 0(a0)
	addi t0, a0, 4
	sw t0, 0(s1)
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
	mv s2, s0
	mv s3, s0
	mv s4, s0
	li s5, 0
.main_b.1: 
	mv a0, s0
	call cls_taskInline_rng
	andi s1, a0, 255
	lw t1, 0(s2)
	slli t0, t1, 13
	xor s6, t1, t0
	mv a0, s0
	mv a1, s6
	li a2, 17
	call cls_taskInline_unsigned_shr
	xor s6, s6, a0
	mv a0, s0
	mv a1, s6
	li a2, 5
	call cls_taskInline_unsigned_shl
	xor t1, s6, a0
	sw t1, 0(s3)
	li t0, 1073741823
	and t0, t1, t0
	andi t0, t0, 255
	bne s1, t0, .main_b.2
.main_b.3: 
	li t0, 5647
	xor t0, s5, t0
	bne t0, zero, .main_b.6
.main_b.7: 
	li a0, 4
	call malloc
	mv s0, a0
	li t0, 100
	sw t0, 0(s0)
	mv a0, s0
	call cls_taskSSA_test
	li t0, 200
	sw t0, 0(s0)
	lw a1, 0(s0)
	li t2, 0
	li t1, 65536
.main_b.10: 
	blt t2, a1, .main_b.11
.main_b.12: 
	add t0, a0, t1
	addi t0, t0, -300
	bne t0, zero, .main_b.15
.main_b.16: 
	li t0, 0
	li t1, 0
.main_b.17: 
	li t2, 200
	blt t0, t2, .main_b.18
.main_b.19: 
	addi t0, t1, -100
	bne t0, zero, .main_b.20
.main_b.21: 
	li a0, 0
	j .main_b.9
.main_b.2: 
	lw s1, 0(s0)
	mv a0, s0
	mv a1, s1
	li a2, 13
	call cls_taskInline_unsigned_shl
	xor s1, s1, a0
	mv a0, s0
	mv a1, s1
	li a2, 17
	call cls_taskInline_unsigned_shr
	xor s1, s1, a0
	mv a0, s0
	mv a1, s1
	li a2, 5
	call cls_taskInline_unsigned_shl
	xor t1, s1, a0
	sw t1, 0(s4)
	li t0, 1073741823
	and t0, t1, t0
	addi s1, t0, 1
	mv a0, s0
	call cls_taskInline_rng
	addi a1, a0, 1
	blt zero, a1, .main_b.4
.main_b.5: 
	mv a0, s1
	j .main_b.8
.main_b.4: 
	rem a2, s1, a1
	mv a0, s0
	call cls_taskInline_gcd
.main_b.8: 
	xor t0, s5, a0
	mv s5, t0
	j .main_b.1
.main_b.6: 
	li a0, -1
	mv s0, zero
.main_b.9: 
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw s3, 16(sp)
	lw s4, 20(sp)
	lw s5, 24(sp)
	lw s6, 28(sp)
	lw ra, 0(sp)
	addi sp, sp, 32
	ret
.main_b.11: 
	addi t0, t2, 1
	bne t0, zero, .main_b.13
.main_b.14: 
	addi t2, t2, 1
	j .main_b.10
.main_b.13: 
	mv t1, t0
	j .main_b.14
.main_b.15: 
	li a0, -1
	j .main_b.9
.main_b.18: 
	addi t0, t0, 1
	addi t1, t1, 1
	addi t0, t0, 1
	j .main_b.17
.main_b.20: 
	li a0, -1
	j .main_b.9
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

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
	blt t0, t2, .cls_taskConst_main_b.2
.cls_taskConst_main_b.3: 
	addi a0, t1, -100
	addi sp, sp, 0
	ret
.cls_taskConst_main_b.2: 
	addi t0, t0, 1
	addi t1, t1, 1
	addi t0, t0, 1
	j .cls_taskConst_main_b.1
	.size	cls_taskConst_main, .-cls_taskConst_main

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
	mv s2, a0
	mv s11, s2
	mv t0, s2
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s4, t1, t0
	slti t0, s4, 0
	xori t0, t0, 1
	mv s10, s2
	mv t0, s2
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s1, t1, t0
	mv t0, s2
	lw s9, 0(t0)
	mv s5, s2
	mv t0, s2
	lw t1, 0(t0)
	slli t0, t1, 13
	xor s7, t1, t0
	slti t0, s7, 0
	xori t0, t0, 1
	li t2, -2147483648
	xor t0, s7, t2
	srai t0, t0, 17
	li t1, 16384
	or t0, t1, t0
	sw t0, 64(sp)
	xor t0, s4, t2
	srai t0, t0, 17
	or t0, t1, t0
	sw t0, 68(sp)
	srai t0, s7, 17
	sw t0, 72(sp)
	srai t0, s4, 17
	sw t0, 76(sp)
	li s0, 0
.cls_taskInline_main_b.1: 
	bge s4, zero, .cls_taskInline_main_b.2
.cls_taskInline_main_b.3: 
	lw t0, 68(sp)
	j .cls_taskInline_main_b.4
.cls_taskInline_main_b.2: 
	lw t0, 76(sp)
.cls_taskInline_main_b.4: 
	xor t1, s4, t0
	slli t0, t1, 5
	xor t0, t1, t0
	sw t0, 0(s10)
	li s3, 1073741823
	and t0, t0, s3
	andi s6, t0, 255
	mv a0, s2
	mv a1, s1
	li a2, 17
	call cls_taskInline_unsigned_shr
	xor s8, s1, a0
	mv a0, s2
	mv a1, s8
	li a2, 5
	call cls_taskInline_unsigned_shl
	xor t0, s8, a0
	sw t0, 0(s2)
	and t0, t0, s3
	andi t0, t0, 255
	bne s6, t0, .cls_taskInline_main_b.5
.cls_taskInline_main_b.6: 
	li t0, 5647
	xor a0, s0, t0
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
.cls_taskInline_main_b.5: 
	mv a0, s2
	mv a1, s9
	li a2, 13
	call cls_taskInline_unsigned_shl
	xor s3, s9, a0
	mv a0, s2
	mv a1, s3
	li a2, 17
	call cls_taskInline_unsigned_shr
	xor s3, s3, a0
	mv a0, s2
	mv a1, s3
	li a2, 5
	call cls_taskInline_unsigned_shl
	xor t1, s3, a0
	sw t1, 0(s5)
	li t0, 1073741823
	and t0, t1, t0
	addi a0, t0, 1
	bge s7, zero, .cls_taskInline_main_b.7
.cls_taskInline_main_b.8: 
	lw t0, 64(sp)
	j .cls_taskInline_main_b.9
.cls_taskInline_main_b.7: 
	lw t0, 72(sp)
.cls_taskInline_main_b.9: 
	xor t1, s7, t0
	slli t0, t1, 5
	xor t1, t1, t0
	sw t1, 0(s11)
	li t0, 1073741823
	and t0, t1, t0
	addi a1, t0, 1
	blt zero, a1, .cls_taskInline_main_b.10
.cls_taskInline_main_b.11: 
	xor t0, s0, a0
	mv s0, t0
	j .cls_taskInline_main_b.1
.cls_taskInline_main_b.10: 
	rem a2, a0, a1
	mv a0, s2
	call cls_taskInline_gcd
	j .cls_taskInline_main_b.11
	.size	cls_taskInline_main, .-cls_taskInline_main

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

	.globl	cls_taskSSA_con_0
	.p2align	1
	.type	cls_taskSSA_con_0,@function
cls_taskSSA_con_0:
.cls_taskSSA_con_0_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_taskSSA_con_0, .-cls_taskSSA_con_0

	.globl	cls_taskNTT_NTT
	.p2align	1
	.type	cls_taskNTT_NTT,@function
cls_taskNTT_NTT:
.cls_taskNTT_NTT_b.0: 
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
	mv s9, a0
	mv s3, a1
	mv s1, a2
	sw a3, 64(sp)
	srai t2, s3, 1
	li a0, 0
	li t0, 0
.cls_taskNTT_NTT_b.1: 
	blt a0, s3, .cls_taskNTT_NTT_b.2
.cls_taskNTT_NTT_b.3: 
	mv t0, s9
	addi a3, t0, 4
	mv t0, s9
	addi a2, t0, 4
	mv t0, s9
	addi a1, t0, 4
	mv t0, s9
	addi a0, t0, 4
	mv t0, s9
	addi t2, t0, 4
	mv t0, s9
	addi t1, t0, 4
	lw s4, 0(a2)
	lw t0, 0(a1)
	sw t0, 72(sp)
	lw t0, 0(a0)
	sw t0, 76(sp)
	lw s11, 0(t2)
	lw s7, 0(t1)
	lw t0, 0(a3)
	addi s10, t0, -1
	mv t0, s9
	addi t1, t0, 4
	mv t0, s9
	addi t0, t0, 4
	lw s2, 0(t1)
	lw t0, 0(t0)
	sw t0, 68(sp)
	li s5, 1
.cls_taskNTT_NTT_b.6: 
	blt s5, s3, .cls_taskNTT_NTT_b.8
.cls_taskNTT_NTT_b.9: 
	li t1, -1
	lw t0, 64(sp)
	beq t0, t1, .cls_taskNTT_NTT_b.13
.cls_taskNTT_NTT_b.14: 
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
.cls_taskNTT_NTT_b.2: 
	blt t0, a0, .cls_taskNTT_NTT_b.4
.cls_taskNTT_NTT_b.5: 
	mv t1, t2
.cls_taskNTT_NTT_b.7: 
	xor t0, t0, t1
	bge t0, t1, .cls_taskNTT_NTT_b.10
.cls_taskNTT_NTT_b.11: 
	srai t1, t1, 1
	j .cls_taskNTT_NTT_b.7
.cls_taskNTT_NTT_b.4: 
	slli t1, a0, 2
	add t1, s1, t1
	lw a2, 0(t1)
	slli t1, a0, 2
	add a1, s1, t1
	slli t1, t0, 2
	add t1, s1, t1
	lw t1, 0(t1)
	sw t1, 0(a1)
	slli t1, t0, 2
	add t1, s1, t1
	sw a2, 0(t1)
	j .cls_taskNTT_NTT_b.5
.cls_taskNTT_NTT_b.8: 
	slli t0, s5, 1
	div t0, s10, t0
	li a1, 1
	li s6, 3
	mv s0, t0
.cls_taskNTT_NTT_b.12: 
	bne s0, zero, .cls_taskNTT_NTT_b.15
.cls_taskNTT_NTT_b.16: 
	slli a2, s5, 1
	li t0, 0
.cls_taskNTT_NTT_b.20: 
	blt t0, s3, .cls_taskNTT_NTT_b.23
.cls_taskNTT_NTT_b.24: 
	slli t0, s5, 1
	mv s5, t0
	j .cls_taskNTT_NTT_b.6
.cls_taskNTT_NTT_b.10: 
	addi a0, a0, 1
	j .cls_taskNTT_NTT_b.1
.cls_taskNTT_NTT_b.13: 
	mv t0, s3
	li t1, 1
.cls_taskNTT_NTT_b.17: 
	blt t1, t0, .cls_taskNTT_NTT_b.21
	j .cls_taskNTT_NTT_b.14
.cls_taskNTT_NTT_b.15: 
	andi t0, s0, 1
	bne t0, zero, .cls_taskNTT_NTT_b.18
.cls_taskNTT_NTT_b.19: 
	mv s8, a1
	j .cls_taskNTT_NTT_b.22
.cls_taskNTT_NTT_b.18: 
	mv a0, s9
	mv a2, s6
	lw a3, 68(sp)
	call cls_taskNTT_mulmod
	mv s8, a0
.cls_taskNTT_NTT_b.22: 
	srai s0, s0, 1
	mv a0, s9
	mv a1, s6
	mv a2, s6
	mv a3, s2
	call cls_taskNTT_mulmod
	mv a1, s8
	mv s6, a0
	j .cls_taskNTT_NTT_b.12
.cls_taskNTT_NTT_b.21: 
	addi t0, t0, -1
	slli t2, t1, 2
	add t2, s1, t2
	lw a1, 0(t2)
	slli t2, t1, 2
	add a0, s1, t2
	slli t2, t0, 2
	add t2, s1, t2
	lw t2, 0(t2)
	sw t2, 0(a0)
	slli t2, t0, 2
	add t2, s1, t2
	sw a1, 0(t2)
	addi t1, t1, 1
	j .cls_taskNTT_NTT_b.17
.cls_taskNTT_NTT_b.23: 
	add a5, t0, s5
	add a4, s5, t0
	li t1, 1
	li a6, 0
.cls_taskNTT_NTT_b.25: 
	blt a6, s5, .cls_taskNTT_NTT_b.26
.cls_taskNTT_NTT_b.27: 
	add t0, t0, a2
	j .cls_taskNTT_NTT_b.20
.cls_taskNTT_NTT_b.26: 
	add t2, a5, a6
	slli t2, t2, 2
	add t2, s1, t2
	lw a3, 0(t2)
	rem t2, t1, s4
	li a0, 0
.cls_taskNTT_NTT_b.28: 
	bne a3, zero, .cls_taskNTT_NTT_b.29
.cls_taskNTT_NTT_b.30: 
	add t2, a4, a6
	slli t2, t2, 2
	add t2, s1, t2
	add a3, t0, a6
	slli a3, a3, 2
	add a3, s1, a3
	lw a3, 0(a3)
	sub a7, a3, a0
	lw a3, 72(sp)
	add a7, a7, a3
	lw a3, 76(sp)
	rem a3, a7, a3
	sw a3, 0(t2)
	add t2, t0, a6
	slli t2, t2, 2
	add a3, s1, t2
	add t2, t0, a6
	slli t2, t2, 2
	add t2, s1, t2
	lw t2, 0(t2)
	add t2, t2, a0
	rem t2, t2, s11
	sw t2, 0(a3)
	rem a0, t1, s7
	mv t2, a1
	li t1, 0
.cls_taskNTT_NTT_b.33: 
	bne t2, zero, .cls_taskNTT_NTT_b.34
.cls_taskNTT_NTT_b.35: 
	addi a6, a6, 1
	j .cls_taskNTT_NTT_b.25
.cls_taskNTT_NTT_b.29: 
	andi a7, a3, 1
	bne a7, zero, .cls_taskNTT_NTT_b.31
.cls_taskNTT_NTT_b.32: 
	srai a3, a3, 1
	slli t2, t2, 1
	rem t2, t2, s4
	j .cls_taskNTT_NTT_b.28
.cls_taskNTT_NTT_b.31: 
	add a0, a0, t2
	rem a0, a0, s4
	j .cls_taskNTT_NTT_b.32
.cls_taskNTT_NTT_b.34: 
	andi a3, t2, 1
	bne a3, zero, .cls_taskNTT_NTT_b.36
.cls_taskNTT_NTT_b.37: 
	srai t2, t2, 1
	slli a0, a0, 1
	rem a0, a0, s7
	j .cls_taskNTT_NTT_b.33
.cls_taskNTT_NTT_b.36: 
	add t1, t1, a0
	rem t1, t1, s7
	j .cls_taskNTT_NTT_b.37
	.size	cls_taskNTT_NTT, .-cls_taskNTT_NTT

	.globl	cls_taskSSA_test
	.p2align	1
	.type	cls_taskSSA_test,@function
cls_taskSSA_test:
.cls_taskSSA_test_b.0: 
	addi sp, sp, 0
	lw t2, 0(a0)
	li t1, 0
	li a0, 65536
.cls_taskSSA_test_b.1: 
	blt t1, t2, .cls_taskSSA_test_b.2
.cls_taskSSA_test_b.3: 
	addi sp, sp, 0
	ret
.cls_taskSSA_test_b.2: 
	addi t0, t1, 1
	bne t0, zero, .cls_taskSSA_test_b.4
.cls_taskSSA_test_b.5: 
	addi t1, t1, 1
	j .cls_taskSSA_test_b.1
.cls_taskSSA_test_b.4: 
	mv a0, t0
	j .cls_taskSSA_test_b.5
	.size	cls_taskSSA_test, .-cls_taskSSA_test

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
	mv a0, a2
	j .cls_taskInline_gcd_b.5
.cls_taskInline_gcd_b.3: 
	rem a2, a2, a1
	call cls_taskInline_gcd
.cls_taskInline_gcd_b.5: 
	mv a1, a0
	j .cls_taskInline_gcd_b.2
	.size	cls_taskInline_gcd, .-cls_taskInline_gcd

	.globl	cls_taskStress_con_0
	.p2align	1
	.type	cls_taskStress_con_0,@function
cls_taskStress_con_0:
.cls_taskStress_con_0_b.0: 
	addi sp, sp, -16096
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
	sw a0, 64(sp)
	li s5, 1
	li t0, 9
	sw t0, 16012(sp)
	li t0, 5
	sw t0, 16092(sp)
	li t0, 9
	sw t0, 16040(sp)
	li s4, 3
	li t0, 998
	sw t0, 68(sp)
	li t5, 6
	li a0, 3
	li t0, 6
	li t1, 8
	sw t1, 16024(sp)
	li a5, 3
	li t1, 7
	sw t1, 16008(sp)
	li t1, 7
	sw t1, 16020(sp)
	li t1, 7
	sw t1, 16032(sp)
	li a4, 3
	li a7, 4
	li s6, 4
	li t1, 4
	sw t1, 16056(sp)
	li t1, 9
	sw t1, 16016(sp)
	li t1, 2
	sw t1, 16044(sp)
	li t1, 4
	sw t1, 16080(sp)
	li t1, 9
	sw t1, 16076(sp)
	li t1, 4
	sw t1, 16072(sp)
	li t1, 4
	sw t1, 16064(sp)
	li t1, 7
	sw t1, 16068(sp)
	li a2, 1
	li t1, 8
	sw t1, 16048(sp)
	li t1, 6
	sw t1, 0(sp)
	li t1, 7
	sw t1, 16028(sp)
	li a6, 0
	li t1, 2
	sw t1, 16060(sp)
	li t4, 8
	li s11, 5
	li s7, 1
	li t1, 4
	sw t1, 16088(sp)
	li t1, 2
	sw t1, 16084(sp)
	li t1, 6
	sw t1, 16036(sp)
	li a1, 1
	li t1, 5
	li s2, 5
	li s0, 4
	li a3, 8
	li t2, 5
	li t3, 2
	li t6, 2
	li s1, 1
	li s3, 1
	sw s3, 4(sp)
	li s3, 6
	li s8, 6
	sw s8, 16052(sp)
	li ra, 4
	li s8, 8
.cls_taskStress_con_0_b.1: 
	lw s9, 68(sp)
	rem s9, a6, s9
	sw s9, 9752(sp)
	li s9, 100
	sw s9, 15916(sp)
	lw s9, 9752(sp)
	lw s10, 15916(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2
.cls_taskStress_con_0_b.3: 
	lw s9, 64(sp)
	sw s9, 9748(sp)
	li s9, -1
	sw s9, 9760(sp)
	lw s9, 9748(sp)
	lw s10, 9760(sp)
	sw s10, 0(s9)
	lw s9, 64(sp)
	sw s9, 9764(sp)
	lw s10, 9764(sp)
	lw s9, 68(sp)
	sw s9, 0(s10)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 72(sp)
	slt s9, s5, s7
	sb s9, 76(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 9768(sp)
	lw s9, 9768(sp)
	xori s9, s9, 1
	sb s9, 80(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 84(sp)
	xor s9, t5, t3
	sw s9, 9772(sp)
	lw s9, 9772(sp)
	seqz s9, s9
	sb s9, 88(sp)
	slt s9, a0, s4
	sb s9, 92(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 9776(sp)
	lw s9, 9776(sp)
	snez s9, s9
	sb s9, 96(sp)
	xor s9, a5, s6
	sw s9, 9780(sp)
	lw s9, 9780(sp)
	snez s9, s9
	sb s9, 100(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 104(sp)
	slt s9, s2, t6
	sb s9, 108(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 9784(sp)
	lw s9, 9784(sp)
	xori s9, s9, 1
	sb s9, 112(sp)
	lw s9, 16056(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 9788(sp)
	lw s9, 9788(sp)
	seqz s9, s9
	sb s9, 116(sp)
	xor s9, a5, s4
	sw s9, 9792(sp)
	lw s9, 9792(sp)
	seqz s9, s9
	sb s9, 120(sp)
	xor s9, t1, s0
	sw s9, 9796(sp)
	lw s9, 9796(sp)
	snez s9, s9
	sb s9, 124(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 9800(sp)
	lw s9, 9800(sp)
	snez s9, s9
	sb s9, 128(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 132(sp)
	slt s9, s5, s8
	sw s9, 9804(sp)
	lw s9, 9804(sp)
	xori s9, s9, 1
	sb s9, 136(sp)
	slt s9, t3, t2
	sb s9, 140(sp)
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	slt s9, s10, s9
	sw s9, 9808(sp)
	lw s9, 9808(sp)
	xori s9, s9, 1
	sb s9, 144(sp)
	lw s9, 16032(sp)
	lw s10, 4(sp)
	xor s9, s9, s10
	sw s9, 9812(sp)
	lw s9, 9812(sp)
	seqz s9, s9
	sb s9, 148(sp)
	slt s9, s2, a4
	sb s9, 152(sp)
	slt s9, s5, t0
	sb s9, 156(sp)
	slt s9, t5, ra
	sb s9, 160(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 9816(sp)
	lw s9, 9816(sp)
	xori s9, s9, 1
	sb s9, 164(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 9820(sp)
	lw s9, 9820(sp)
	xori s9, s9, 1
	sb s9, 168(sp)
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sb s9, 172(sp)
	slt s9, t0, s8
	sb s9, 176(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 9824(sp)
	lw s9, 9824(sp)
	xori s9, s9, 1
	sb s9, 180(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 9828(sp)
	lw s9, 9828(sp)
	snez s9, s9
	sb s9, 184(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 188(sp)
	slt s9, s4, s5
	sw s9, 9832(sp)
	lw s9, 9832(sp)
	xori s9, s9, 1
	sb s9, 192(sp)
	slt s9, a0, t1
	sb s9, 196(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 9836(sp)
	lw s9, 9836(sp)
	xori s9, s9, 1
	sb s9, 200(sp)
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	slt s9, s10, s9
	sb s9, 204(sp)
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	slt s9, s9, s10
	sw s9, 9840(sp)
	lw s9, 9840(sp)
	xori s9, s9, 1
	sb s9, 208(sp)
	slt s9, t5, t4
	sw s9, 9844(sp)
	lw s9, 9844(sp)
	xori s9, s9, 1
	sb s9, 212(sp)
	slt s9, t6, s7
	sb s9, 216(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 220(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 224(sp)
	slt s9, s1, a6
	sw s9, 9848(sp)
	lw s9, 9848(sp)
	xori s9, s9, 1
	sb s9, 228(sp)
	slt s9, s2, s6
	sw s9, 9852(sp)
	lw s9, 9852(sp)
	xori s9, s9, 1
	sb s9, 232(sp)
	slt s9, s6, t3
	sb s9, 236(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 240(sp)
	slt s9, a3, t5
	sb s9, 244(sp)
	lw s10, 16076(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 9856(sp)
	lw s9, 9856(sp)
	xori s9, s9, 1
	sb s9, 248(sp)
	xor s9, a6, s0
	sw s9, 9860(sp)
	lw s9, 9860(sp)
	snez s9, s9
	sb s9, 252(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 256(sp)
	slt s9, t2, a7
	sw s9, 9864(sp)
	lw s9, 9864(sp)
	xori s9, s9, 1
	sb s9, 260(sp)
	xor s9, s11, s7
	sw s9, 9868(sp)
	lw s9, 9868(sp)
	snez s9, s9
	sb s9, 264(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 9872(sp)
	lw s9, 9872(sp)
	seqz s9, s9
	sb s9, 268(sp)
	slt s9, t4, a2
	sw s9, 9876(sp)
	lw s9, 9876(sp)
	xori s9, s9, 1
	sb s9, 272(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 276(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 9880(sp)
	lw s9, 9880(sp)
	snez s9, s9
	sb s9, 280(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 9884(sp)
	lw s9, 9884(sp)
	xori s9, s9, 1
	sb s9, 284(sp)
	xor s9, t6, t0
	sw s9, 9888(sp)
	lw s9, 9888(sp)
	seqz s9, s9
	sb s9, 288(sp)
	slt s9, t0, a0
	sw s9, 9892(sp)
	lw s9, 9892(sp)
	xori s9, s9, 1
	sb s9, 292(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 9896(sp)
	lw s9, 9896(sp)
	xori s9, s9, 1
	sb s9, 296(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 9900(sp)
	lw s9, 9900(sp)
	xori s9, s9, 1
	sb s9, 300(sp)
	slt s9, a7, a6
	sw s9, 9904(sp)
	lw s9, 9904(sp)
	xori s9, s9, 1
	sb s9, 304(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 9908(sp)
	lw s9, 9908(sp)
	xori s9, s9, 1
	sb s9, 308(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 312(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 316(sp)
	slt s9, t6, s7
	sw s9, 9912(sp)
	lw s9, 9912(sp)
	xori s9, s9, 1
	sb s9, 320(sp)
	xor s9, a5, s2
	sw s9, 9916(sp)
	lw s9, 9916(sp)
	snez s9, s9
	sb s9, 324(sp)
	slt s9, s4, t5
	sw s9, 9920(sp)
	lw s9, 9920(sp)
	xori s9, s9, 1
	sb s9, 328(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 332(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 336(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 340(sp)
	slt s9, a2, a4
	sw s9, 9924(sp)
	lw s9, 9924(sp)
	xori s9, s9, 1
	sb s9, 344(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 9928(sp)
	lw s9, 9928(sp)
	seqz s9, s9
	sb s9, 348(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 352(sp)
	xor s9, a0, a6
	sw s9, 9932(sp)
	lw s9, 9932(sp)
	snez s9, s9
	sb s9, 356(sp)
	slt s9, s6, a3
	sb s9, 360(sp)
	xor s9, t2, a4
	sw s9, 9936(sp)
	lw s9, 9936(sp)
	snez s9, s9
	sb s9, 364(sp)
	lw s9, 16036(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 9940(sp)
	lw s9, 9940(sp)
	seqz s9, s9
	sb s9, 368(sp)
	slt s9, t1, ra
	sb s9, 372(sp)
	slt s9, t6, t2
	sw s9, 9944(sp)
	lw s9, 9944(sp)
	xori s9, s9, 1
	sb s9, 376(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 9948(sp)
	lw s9, 9948(sp)
	snez s9, s9
	sb s9, 380(sp)
	slt s9, a1, t5
	sw s9, 9952(sp)
	lw s9, 9952(sp)
	xori s9, s9, 1
	sb s9, 384(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 388(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 9956(sp)
	lw s9, 9956(sp)
	xori s9, s9, 1
	sb s9, 392(sp)
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	xor s9, s9, s10
	sw s9, 9960(sp)
	lw s9, 9960(sp)
	seqz s9, s9
	sb s9, 396(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 9964(sp)
	lw s9, 9964(sp)
	seqz s9, s9
	sb s9, 400(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 9968(sp)
	lw s9, 9968(sp)
	snez s9, s9
	sb s9, 404(sp)
	lw s9, 16080(sp)
	lw s10, 4(sp)
	xor s9, s10, s9
	sw s9, 9972(sp)
	lw s9, 9972(sp)
	snez s9, s9
	sb s9, 408(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 412(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 9976(sp)
	lw s9, 9976(sp)
	seqz s9, s9
	sb s9, 416(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 9980(sp)
	lw s9, 9980(sp)
	xori s9, s9, 1
	sb s9, 420(sp)
	slt s9, a2, s11
	sb s9, 424(sp)
	slt s9, s3, a3
	sb s9, 428(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 9984(sp)
	lw s9, 9984(sp)
	xori s9, s9, 1
	sb s9, 432(sp)
	xor s9, s5, s3
	sw s9, 9988(sp)
	lw s9, 9988(sp)
	snez s9, s9
	sb s9, 436(sp)
	lw s9, 16060(sp)
	lw s10, 16064(sp)
	slt s9, s9, s10
	sw s9, 9992(sp)
	lw s9, 9992(sp)
	xori s9, s9, 1
	sb s9, 440(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 444(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 9996(sp)
	lw s9, 9996(sp)
	seqz s9, s9
	sb s9, 448(sp)
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	xor s9, s9, s10
	sw s9, 10000(sp)
	lw s9, 10000(sp)
	seqz s9, s9
	sb s9, 452(sp)
	xor s9, t6, s8
	sw s9, 10004(sp)
	lw s9, 10004(sp)
	seqz s9, s9
	sb s9, 456(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 460(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 10008(sp)
	lw s9, 10008(sp)
	xori s9, s9, 1
	sb s9, 464(sp)
	slt s9, t6, s6
	sb s9, 468(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 10012(sp)
	lw s9, 10012(sp)
	seqz s9, s9
	sb s9, 472(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 10016(sp)
	lw s9, 10016(sp)
	xori s9, s9, 1
	sb s9, 476(sp)
	xor s9, s8, a7
	sw s9, 10020(sp)
	lw s9, 10020(sp)
	seqz s9, s9
	sb s9, 480(sp)
	lw s9, 16056(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sw s9, 10024(sp)
	lw s9, 10024(sp)
	xori s9, s9, 1
	sb s9, 484(sp)
	xor s9, a5, s1
	sw s9, 10028(sp)
	lw s9, 10028(sp)
	snez s9, s9
	sb s9, 488(sp)
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	slt s9, s10, s9
	sb s9, 492(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 496(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 10032(sp)
	lw s9, 10032(sp)
	xori s9, s9, 1
	sb s9, 500(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 504(sp)
	xor s9, a7, s11
	sw s9, 10036(sp)
	lw s9, 10036(sp)
	snez s9, s9
	sb s9, 508(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 512(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 516(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 10040(sp)
	lw s9, 10040(sp)
	xori s9, s9, 1
	sb s9, 520(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 10044(sp)
	lw s9, 10044(sp)
	snez s9, s9
	sb s9, 524(sp)
	lw s9, 16016(sp)
	lw s10, 16040(sp)
	slt s9, s9, s10
	sw s9, 10048(sp)
	lw s9, 10048(sp)
	xori s9, s9, 1
	sb s9, 528(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 10052(sp)
	lw s9, 10052(sp)
	xori s9, s9, 1
	sb s9, 532(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 10056(sp)
	lw s9, 10056(sp)
	xori s9, s9, 1
	sb s9, 536(sp)
	slt s9, t0, t1
	sb s9, 540(sp)
	slt s9, t2, t4
	sw s9, 10060(sp)
	lw s9, 10060(sp)
	xori s9, s9, 1
	sb s9, 544(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 548(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 552(sp)
	slt s9, a7, s1
	sb s9, 556(sp)
	slt s9, t3, a1
	sb s9, 560(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 564(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 568(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 572(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 10064(sp)
	lw s9, 10064(sp)
	seqz s9, s9
	sb s9, 576(sp)
	xor s9, t1, t0
	sw s9, 10068(sp)
	lw s9, 10068(sp)
	seqz s9, s9
	sb s9, 580(sp)
	slt s9, a6, t0
	sb s9, 584(sp)
	slt s9, s8, a5
	sb s9, 588(sp)
	slt s9, s5, a6
	sw s9, 10072(sp)
	lw s9, 10072(sp)
	xori s9, s9, 1
	sb s9, 592(sp)
	xor s9, a7, s6
	sw s9, 10076(sp)
	lw s9, 10076(sp)
	snez s9, s9
	sb s9, 596(sp)
	slt s9, s2, t2
	sw s9, 10080(sp)
	lw s9, 10080(sp)
	xori s9, s9, 1
	sb s9, 600(sp)
	slt s9, t5, t1
	sw s9, 10084(sp)
	lw s9, 10084(sp)
	xori s9, s9, 1
	sb s9, 604(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 10088(sp)
	lw s9, 10088(sp)
	xori s9, s9, 1
	sb s9, 608(sp)
	slt s9, a3, t1
	sw s9, 10092(sp)
	lw s9, 10092(sp)
	xori s9, s9, 1
	sb s9, 612(sp)
	lw s9, 16028(sp)
	lw s10, 16080(sp)
	xor s9, s9, s10
	sw s9, 10096(sp)
	lw s9, 10096(sp)
	seqz s9, s9
	sb s9, 616(sp)
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 10100(sp)
	lw s9, 10100(sp)
	xori s9, s9, 1
	sb s9, 620(sp)
	xor s9, t2, s2
	sw s9, 10104(sp)
	lw s9, 10104(sp)
	seqz s9, s9
	sb s9, 624(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 10108(sp)
	lw s9, 10108(sp)
	snez s9, s9
	sb s9, 628(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 632(sp)
	slt s9, s2, s7
	sw s9, 10112(sp)
	lw s9, 10112(sp)
	xori s9, s9, 1
	sb s9, 636(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 640(sp)
	xor s9, s7, a3
	sw s9, 10116(sp)
	lw s9, 10116(sp)
	seqz s9, s9
	sb s9, 644(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 648(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 10120(sp)
	lw s9, 10120(sp)
	snez s9, s9
	sb s9, 652(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 656(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	xor s9, s9, s10
	sw s9, 10124(sp)
	lw s9, 10124(sp)
	snez s9, s9
	sb s9, 660(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 10128(sp)
	lw s9, 10128(sp)
	snez s9, s9
	sb s9, 664(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 668(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 672(sp)
	xor s9, t0, a7
	sw s9, 10132(sp)
	lw s9, 10132(sp)
	snez s9, s9
	sb s9, 676(sp)
	slt s9, t3, s8
	sw s9, 10136(sp)
	lw s9, 10136(sp)
	xori s9, s9, 1
	sb s9, 680(sp)
	slt s9, a3, a3
	sw s9, 10140(sp)
	lw s9, 10140(sp)
	xori s9, s9, 1
	sb s9, 684(sp)
	slt s9, t1, s1
	sw s9, 10144(sp)
	lw s9, 10144(sp)
	xori s9, s9, 1
	sb s9, 688(sp)
	slt s9, t6, s11
	sw s9, 10148(sp)
	lw s9, 10148(sp)
	xori s9, s9, 1
	sb s9, 692(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 10152(sp)
	lw s9, 10152(sp)
	seqz s9, s9
	sb s9, 696(sp)
	slt s9, a5, t0
	sw s9, 10156(sp)
	lw s9, 10156(sp)
	xori s9, s9, 1
	sb s9, 700(sp)
	slt s9, s3, s4
	sw s9, 10160(sp)
	lw s9, 10160(sp)
	xori s9, s9, 1
	sb s9, 704(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 708(sp)
	slt s9, a6, t0
	sb s9, 712(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 10164(sp)
	lw s9, 10164(sp)
	snez s9, s9
	sb s9, 716(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 10168(sp)
	lw s9, 10168(sp)
	seqz s9, s9
	sb s9, 720(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 10172(sp)
	lw s9, 10172(sp)
	xori s9, s9, 1
	sb s9, 724(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 728(sp)
	slt s9, a5, s8
	sb s9, 732(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 736(sp)
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sb s9, 740(sp)
	slt s9, a3, t5
	sw s9, 10176(sp)
	lw s9, 10176(sp)
	xori s9, s9, 1
	sb s9, 744(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 10180(sp)
	lw s9, 10180(sp)
	xori s9, s9, 1
	sb s9, 748(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 752(sp)
	slt s9, s3, ra
	sw s9, 10184(sp)
	lw s9, 10184(sp)
	xori s9, s9, 1
	sb s9, 756(sp)
	slt s9, t4, s0
	sw s9, 10188(sp)
	lw s9, 10188(sp)
	xori s9, s9, 1
	sb s9, 760(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 10192(sp)
	lw s9, 10192(sp)
	seqz s9, s9
	sb s9, 764(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 10196(sp)
	lw s9, 10196(sp)
	seqz s9, s9
	sb s9, 768(sp)
	slt s9, a0, a5
	sw s9, 10200(sp)
	lw s9, 10200(sp)
	xori s9, s9, 1
	sb s9, 772(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 776(sp)
	lw s9, 16060(sp)
	lw s10, 16012(sp)
	xor s9, s9, s10
	sw s9, 10204(sp)
	lw s9, 10204(sp)
	seqz s9, s9
	sb s9, 780(sp)
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sw s9, 10208(sp)
	lw s9, 10208(sp)
	xori s9, s9, 1
	sb s9, 784(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 10212(sp)
	lw s9, 10212(sp)
	snez s9, s9
	sb s9, 788(sp)
	slt s9, s8, t4
	sb s9, 792(sp)
	slt s9, t6, t5
	sw s9, 10216(sp)
	lw s9, 10216(sp)
	xori s9, s9, 1
	sb s9, 796(sp)
	xor s9, t4, ra
	sw s9, 10220(sp)
	lw s9, 10220(sp)
	seqz s9, s9
	sb s9, 800(sp)
	xor s9, t3, a0
	sw s9, 10224(sp)
	lw s9, 10224(sp)
	seqz s9, s9
	sb s9, 804(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 808(sp)
	lw s9, 16012(sp)
	lw s10, 0(sp)
	slt s9, s10, s9
	sb s9, 812(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 10228(sp)
	lw s9, 10228(sp)
	snez s9, s9
	sb s9, 816(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 10232(sp)
	lw s9, 10232(sp)
	seqz s9, s9
	sb s9, 820(sp)
	xor s9, t5, s0
	sw s9, 10236(sp)
	lw s9, 10236(sp)
	snez s9, s9
	sb s9, 824(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 828(sp)
	xor s9, s4, s3
	sw s9, 10240(sp)
	lw s9, 10240(sp)
	snez s9, s9
	sb s9, 832(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 10244(sp)
	lw s9, 10244(sp)
	snez s9, s9
	sb s9, 836(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 840(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 844(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 10248(sp)
	lw s9, 10248(sp)
	xori s9, s9, 1
	sb s9, 848(sp)
	xor s9, a6, t4
	sw s9, 10252(sp)
	lw s9, 10252(sp)
	snez s9, s9
	sb s9, 852(sp)
	slt s9, s5, a4
	sw s9, 10256(sp)
	lw s9, 10256(sp)
	xori s9, s9, 1
	sb s9, 856(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 860(sp)
	xor s9, a2, s2
	sw s9, 10260(sp)
	lw s9, 10260(sp)
	seqz s9, s9
	sb s9, 864(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 868(sp)
	slt s9, s0, t1
	sw s9, 10264(sp)
	lw s9, 10264(sp)
	xori s9, s9, 1
	sb s9, 872(sp)
	slt s9, ra, a7
	sw s9, 10268(sp)
	lw s9, 10268(sp)
	xori s9, s9, 1
	sb s9, 876(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 10272(sp)
	lw s9, 10272(sp)
	xori s9, s9, 1
	sb s9, 880(sp)
	slt s9, s0, s3
	sb s9, 884(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 888(sp)
	xor s9, s3, s4
	sw s9, 10276(sp)
	lw s9, 10276(sp)
	snez s9, s9
	sb s9, 892(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 10280(sp)
	lw s9, 10280(sp)
	snez s9, s9
	sb s9, 896(sp)
	lw s9, 16048(sp)
	lw s10, 16032(sp)
	slt s9, s10, s9
	sw s9, 10284(sp)
	lw s9, 10284(sp)
	xori s9, s9, 1
	sb s9, 900(sp)
	slt s9, s0, a2
	sb s9, 904(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 908(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 10288(sp)
	lw s9, 10288(sp)
	seqz s9, s9
	sb s9, 912(sp)
	slt s9, s4, s4
	sb s9, 916(sp)
	xor s9, t2, s6
	sw s9, 10292(sp)
	lw s9, 10292(sp)
	snez s9, s9
	sb s9, 920(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 10296(sp)
	lw s9, 10296(sp)
	seqz s9, s9
	sb s9, 924(sp)
	slt s9, a1, a1
	sw s9, 10300(sp)
	lw s9, 10300(sp)
	xori s9, s9, 1
	sb s9, 928(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 10304(sp)
	lw s9, 10304(sp)
	snez s9, s9
	sb s9, 932(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 10308(sp)
	lw s9, 10308(sp)
	seqz s9, s9
	sb s9, 936(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 10312(sp)
	lw s9, 10312(sp)
	xori s9, s9, 1
	sb s9, 940(sp)
	xor s9, t0, a0
	sw s9, 10316(sp)
	lw s9, 10316(sp)
	seqz s9, s9
	sb s9, 944(sp)
	slt s9, t0, s6
	sw s9, 10320(sp)
	lw s9, 10320(sp)
	xori s9, s9, 1
	sb s9, 948(sp)
	slt s9, s1, s7
	sb s9, 952(sp)
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	xor s9, s9, s10
	sw s9, 10324(sp)
	lw s9, 10324(sp)
	seqz s9, s9
	sb s9, 956(sp)
	xor s9, ra, t1
	sw s9, 10328(sp)
	lw s9, 10328(sp)
	snez s9, s9
	sb s9, 960(sp)
	slt s9, a7, s1
	sb s9, 964(sp)
	slt s9, t2, a2
	sb s9, 968(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 10332(sp)
	lw s9, 10332(sp)
	snez s9, s9
	sb s9, 972(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 976(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 980(sp)
	slt s9, s4, s3
	sw s9, 10336(sp)
	lw s9, 10336(sp)
	xori s9, s9, 1
	sb s9, 984(sp)
	slt s9, s8, s3
	sw s9, 10340(sp)
	lw s9, 10340(sp)
	xori s9, s9, 1
	sb s9, 988(sp)
	slt s9, s11, a4
	sb s9, 992(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 996(sp)
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	slt s9, s9, s10
	sb s9, 1000(sp)
	slt s9, t6, s1
	sb s9, 1004(sp)
	slt s9, t2, a7
	sw s9, 10344(sp)
	lw s9, 10344(sp)
	xori s9, s9, 1
	sb s9, 1008(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 10348(sp)
	lw s9, 10348(sp)
	seqz s9, s9
	sb s9, 1012(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 10352(sp)
	lw s9, 10352(sp)
	snez s9, s9
	sb s9, 1016(sp)
	slt s9, s4, s3
	sw s9, 10356(sp)
	lw s9, 10356(sp)
	xori s9, s9, 1
	sb s9, 1020(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 10360(sp)
	lw s9, 10360(sp)
	xori s9, s9, 1
	sb s9, 1024(sp)
	xor s9, a1, s4
	sw s9, 10364(sp)
	lw s9, 10364(sp)
	seqz s9, s9
	sb s9, 1028(sp)
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 10368(sp)
	lw s9, 10368(sp)
	xori s9, s9, 1
	sb s9, 1032(sp)
	xor s9, s3, t3
	sw s9, 10372(sp)
	lw s9, 10372(sp)
	snez s9, s9
	sb s9, 1036(sp)
	xor s9, ra, s11
	sw s9, 10376(sp)
	lw s9, 10376(sp)
	seqz s9, s9
	sb s9, 1040(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 10380(sp)
	lw s9, 10380(sp)
	xori s9, s9, 1
	sb s9, 1044(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 10384(sp)
	lw s9, 10384(sp)
	xori s9, s9, 1
	sb s9, 1048(sp)
	slt s9, s3, a3
	sb s9, 1052(sp)
	xor s9, t6, s8
	sw s9, 10388(sp)
	lw s9, 10388(sp)
	seqz s9, s9
	sb s9, 1056(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 1060(sp)
	slt s9, s4, s3
	sw s9, 10392(sp)
	lw s9, 10392(sp)
	xori s9, s9, 1
	sb s9, 1064(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 10396(sp)
	lw s9, 10396(sp)
	snez s9, s9
	sb s9, 1068(sp)
	slt s9, t5, t6
	sw s9, 10400(sp)
	lw s9, 10400(sp)
	xori s9, s9, 1
	sb s9, 1072(sp)
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 10404(sp)
	lw s9, 10404(sp)
	xori s9, s9, 1
	sb s9, 1076(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 1080(sp)
	xor s9, s1, t4
	sw s9, 10408(sp)
	lw s9, 10408(sp)
	snez s9, s9
	sb s9, 1084(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 10412(sp)
	lw s9, 10412(sp)
	seqz s9, s9
	sb s9, 1088(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 10416(sp)
	lw s9, 10416(sp)
	seqz s9, s9
	sb s9, 1092(sp)
	slt s9, a3, a3
	sw s9, 10420(sp)
	lw s9, 10420(sp)
	xori s9, s9, 1
	sb s9, 1096(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 10424(sp)
	lw s9, 10424(sp)
	snez s9, s9
	sb s9, 1100(sp)
	xor s9, ra, a1
	sw s9, 10428(sp)
	lw s9, 10428(sp)
	snez s9, s9
	sb s9, 1104(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 1108(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 10432(sp)
	lw s9, 10432(sp)
	snez s9, s9
	sb s9, 1112(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 1116(sp)
	lw s10, 16012(sp)
	lw s9, 0(sp)
	slt s9, s9, s10
	sb s9, 1120(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 1124(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 1128(sp)
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	slt s9, s10, s9
	sw s9, 10436(sp)
	lw s9, 10436(sp)
	xori s9, s9, 1
	sb s9, 1132(sp)
	slt s9, s5, s8
	sw s9, 10440(sp)
	lw s9, 10440(sp)
	xori s9, s9, 1
	sb s9, 1136(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 10444(sp)
	lw s9, 10444(sp)
	seqz s9, s9
	sb s9, 1140(sp)
	xor s9, t1, t0
	sw s9, 10448(sp)
	lw s9, 10448(sp)
	seqz s9, s9
	sb s9, 1144(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 1148(sp)
	slt s9, a2, a4
	sw s9, 10452(sp)
	lw s9, 10452(sp)
	xori s9, s9, 1
	sb s9, 1152(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 1156(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 1160(sp)
	slt s9, s3, s4
	sw s9, 10456(sp)
	lw s9, 10456(sp)
	xori s9, s9, 1
	sb s9, 1164(sp)
	slt s9, t2, t4
	sw s9, 10460(sp)
	lw s9, 10460(sp)
	xori s9, s9, 1
	sb s9, 1168(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 1172(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 10464(sp)
	lw s9, 10464(sp)
	xori s9, s9, 1
	sb s9, 1176(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 1180(sp)
	slt s9, s2, t6
	sb s9, 1184(sp)
	slt s9, a1, t5
	sw s9, 10468(sp)
	lw s9, 10468(sp)
	xori s9, s9, 1
	sb s9, 1188(sp)
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	slt s9, s10, s9
	sw s9, 10472(sp)
	lw s9, 10472(sp)
	xori s9, s9, 1
	sb s9, 1192(sp)
	xor s9, a5, s2
	sw s9, 10476(sp)
	lw s9, 10476(sp)
	snez s9, s9
	sb s9, 1196(sp)
	xor s9, t2, s6
	sw s9, 10480(sp)
	lw s9, 10480(sp)
	snez s9, s9
	sb s9, 1200(sp)
	xor s9, t3, t2
	sw s9, 10484(sp)
	lw s9, 10484(sp)
	seqz s9, s9
	sb s9, 1204(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 10488(sp)
	lw s9, 10488(sp)
	xori s9, s9, 1
	sb s9, 1208(sp)
	xor s9, t0, a0
	sw s9, 10492(sp)
	lw s9, 10492(sp)
	seqz s9, s9
	sb s9, 1212(sp)
	xor s9, a6, s0
	sw s9, 10496(sp)
	lw s9, 10496(sp)
	snez s9, s9
	sb s9, 1216(sp)
	xor s9, t5, s0
	sw s9, 10500(sp)
	lw s9, 10500(sp)
	snez s9, s9
	sb s9, 1220(sp)
	lw s10, 16076(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 10504(sp)
	lw s9, 10504(sp)
	xori s9, s9, 1
	sb s9, 1224(sp)
	slt s9, s2, s7
	sw s9, 10508(sp)
	lw s9, 10508(sp)
	xori s9, s9, 1
	sb s9, 1228(sp)
	lw s10, 16036(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 10512(sp)
	lw s9, 10512(sp)
	seqz s9, s9
	sb s9, 1232(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 1236(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	xor s9, s9, s10
	sw s9, 10516(sp)
	lw s9, 10516(sp)
	snez s9, s9
	sb s9, 1240(sp)
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sb s9, 1244(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 10520(sp)
	lw s9, 10520(sp)
	seqz s9, s9
	sb s9, 1248(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 1252(sp)
	xor s9, a6, t4
	sw s9, 10524(sp)
	lw s9, 10524(sp)
	snez s9, s9
	sb s9, 1256(sp)
	xor s9, s7, a3
	sw s9, 10528(sp)
	lw s9, 10528(sp)
	seqz s9, s9
	sb s9, 1260(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 10532(sp)
	lw s9, 10532(sp)
	xori s9, s9, 1
	sb s9, 1264(sp)
	slt s9, ra, t1
	sb s9, 1268(sp)
	slt s9, t5, t1
	sw s9, 10536(sp)
	lw s9, 10536(sp)
	xori s9, s9, 1
	sb s9, 1272(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 10540(sp)
	lw s9, 10540(sp)
	xori s9, s9, 1
	sb s9, 1276(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 10544(sp)
	lw s9, 10544(sp)
	snez s9, s9
	sb s9, 1280(sp)
	slt s9, t0, t1
	sb s9, 1284(sp)
	xor s9, a5, s6
	sw s9, 10548(sp)
	lw s9, 10548(sp)
	snez s9, s9
	sb s9, 1288(sp)
	slt s9, s11, a4
	sb s9, 1292(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 1296(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 1300(sp)
	lw s10, 16036(sp)
	lw s9, 16076(sp)
	slt s9, s10, s9
	sw s9, 10552(sp)
	lw s9, 10552(sp)
	xori s9, s9, 1
	sb s9, 1304(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 10556(sp)
	lw s9, 10556(sp)
	seqz s9, s9
	sb s9, 1308(sp)
	xor s9, t6, t0
	sw s9, 10560(sp)
	lw s9, 10560(sp)
	seqz s9, s9
	sb s9, 1312(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 10564(sp)
	lw s9, 10564(sp)
	snez s9, s9
	sb s9, 1316(sp)
	slt s9, s0, s3
	sb s9, 1320(sp)
	xor s9, a0, a6
	sw s9, 10568(sp)
	lw s9, 10568(sp)
	snez s9, s9
	sb s9, 1324(sp)
	slt s9, t6, s7
	sw s9, 10572(sp)
	lw s9, 10572(sp)
	xori s9, s9, 1
	sb s9, 1328(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 1332(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 10576(sp)
	lw s9, 10576(sp)
	xori s9, s9, 1
	sb s9, 1336(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 10580(sp)
	lw s9, 10580(sp)
	xori s9, s9, 1
	sb s9, 1340(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 1344(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 10584(sp)
	lw s9, 10584(sp)
	xori s9, s9, 1
	sb s9, 1348(sp)
	slt s9, s2, t2
	sw s9, 10588(sp)
	lw s9, 10588(sp)
	xori s9, s9, 1
	sb s9, 1352(sp)
	slt s9, t6, t2
	sw s9, 10592(sp)
	lw s9, 10592(sp)
	xori s9, s9, 1
	sb s9, 1356(sp)
	slt s9, s1, s7
	sb s9, 1360(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 10596(sp)
	lw s9, 10596(sp)
	seqz s9, s9
	sb s9, 1364(sp)
	slt s9, ra, s2
	sb s9, 1368(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 10600(sp)
	lw s9, 10600(sp)
	xori s9, s9, 1
	sb s9, 1372(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 1376(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 10604(sp)
	lw s9, 10604(sp)
	snez s9, s9
	sb s9, 1380(sp)
	xor s9, a1, t3
	sw s9, 10608(sp)
	lw s9, 10608(sp)
	seqz s9, s9
	sb s9, 1384(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 10612(sp)
	lw s9, 10612(sp)
	snez s9, s9
	sb s9, 1388(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 10616(sp)
	lw s9, 10616(sp)
	xori s9, s9, 1
	sb s9, 1392(sp)
	lw s9, 16088(sp)
	lw s10, 4(sp)
	slt s9, s9, s10
	sb s9, 1396(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 1400(sp)
	slt s9, s8, t2
	sw s9, 10620(sp)
	lw s9, 10620(sp)
	xori s9, s9, 1
	sb s9, 1404(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 10624(sp)
	lw s9, 10624(sp)
	snez s9, s9
	sb s9, 1408(sp)
	xor s9, a7, s6
	sw s9, 10628(sp)
	lw s9, 10628(sp)
	snez s9, s9
	sb s9, 1412(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 1416(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 1420(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 1424(sp)
	slt s9, t0, s6
	sw s9, 10632(sp)
	lw s9, 10632(sp)
	xori s9, s9, 1
	sb s9, 1428(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 10636(sp)
	lw s9, 10636(sp)
	seqz s9, s9
	sb s9, 1432(sp)
	slt s9, s0, s0
	sb s9, 1436(sp)
	slt s9, t0, s8
	sb s9, 1440(sp)
	slt s9, t3, a1
	sb s9, 1444(sp)
	slt s9, s4, t5
	sw s9, 10640(sp)
	lw s9, 10640(sp)
	xori s9, s9, 1
	sb s9, 1448(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 1452(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 10644(sp)
	lw s9, 10644(sp)
	xori s9, s9, 1
	sb s9, 1456(sp)
	slt s9, t3, s8
	sw s9, 10648(sp)
	lw s9, 10648(sp)
	xori s9, s9, 1
	sb s9, 1460(sp)
	slt s9, s1, a6
	sw s9, 10652(sp)
	lw s9, 10652(sp)
	xori s9, s9, 1
	sb s9, 1464(sp)
	slt s9, t6, s11
	sw s9, 10656(sp)
	lw s9, 10656(sp)
	xori s9, s9, 1
	sb s9, 1468(sp)
	slt s9, a7, a6
	sw s9, 10660(sp)
	lw s9, 10660(sp)
	xori s9, s9, 1
	sb s9, 1472(sp)
	xor s9, t4, ra
	sw s9, 10664(sp)
	lw s9, 10664(sp)
	seqz s9, s9
	sb s9, 1476(sp)
	slt s9, t1, s1
	sw s9, 10668(sp)
	lw s9, 10668(sp)
	xori s9, s9, 1
	sb s9, 1480(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 1484(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 10672(sp)
	lw s9, 10672(sp)
	xori s9, s9, 1
	sb s9, 1488(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 10676(sp)
	lw s9, 10676(sp)
	snez s9, s9
	sb s9, 1492(sp)
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	slt s9, s9, s10
	sw s9, 10680(sp)
	lw s9, 10680(sp)
	xori s9, s9, 1
	sb s9, 1496(sp)
	slt s9, a5, s8
	sb s9, 1500(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 10684(sp)
	lw s9, 10684(sp)
	xori s9, s9, 1
	sb s9, 1504(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 1508(sp)
	slt s9, t2, a7
	sw s9, 10688(sp)
	lw s9, 10688(sp)
	xori s9, s9, 1
	sb s9, 1512(sp)
	slt s9, s4, s4
	sb s9, 1516(sp)
	lw s10, 16032(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 10692(sp)
	lw s9, 10692(sp)
	seqz s9, s9
	sb s9, 1520(sp)
	slt s9, a3, t5
	sb s9, 1524(sp)
	xor s9, a5, s4
	sw s9, 10696(sp)
	lw s9, 10696(sp)
	seqz s9, s9
	sb s9, 1528(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 10700(sp)
	lw s9, 10700(sp)
	snez s9, s9
	sb s9, 1532(sp)
	slt s9, t4, s0
	sw s9, 10704(sp)
	lw s9, 10704(sp)
	xori s9, s9, 1
	sb s9, 1536(sp)
	slt s9, a0, t1
	sb s9, 1540(sp)
	xor s9, s8, a7
	sw s9, 10708(sp)
	lw s9, 10708(sp)
	seqz s9, s9
	sb s9, 1544(sp)
	slt s9, a6, s11
	sw s9, 10712(sp)
	lw s9, 10712(sp)
	xori s9, s9, 1
	sb s9, 1548(sp)
	xor s9, ra, t1
	sw s9, 10716(sp)
	lw s9, 10716(sp)
	snez s9, s9
	sb s9, 1552(sp)
	slt s9, a6, t0
	sb s9, 1556(sp)
	lw s9, 16044(sp)
	lw s10, 16080(sp)
	slt s9, s10, s9
	sb s9, 1560(sp)
	slt s9, a4, a4
	sb s9, 1564(sp)
	slt s9, s4, s5
	sw s9, 10720(sp)
	lw s9, 10720(sp)
	xori s9, s9, 1
	sb s9, 1568(sp)
	slt s9, t3, t2
	sb s9, 1572(sp)
	slt s9, t5, ra
	sb s9, 1576(sp)
	slt s9, a6, t0
	sb s9, 1580(sp)
	slt s9, s0, a2
	sb s9, 1584(sp)
	slt s9, t6, s7
	sb s9, 1588(sp)
	lw s10, 16056(sp)
	lw s9, 16072(sp)
	slt s9, s9, s10
	sw s9, 10724(sp)
	lw s9, 10724(sp)
	xori s9, s9, 1
	sb s9, 1592(sp)
	slt s9, s0, t1
	sw s9, 10728(sp)
	lw s9, 10728(sp)
	xori s9, s9, 1
	sb s9, 1596(sp)
	xor s9, ra, s11
	sw s9, 10732(sp)
	lw s9, 10732(sp)
	seqz s9, s9
	sb s9, 1600(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 10736(sp)
	lw s9, 10736(sp)
	xori s9, s9, 1
	sb s9, 1604(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 10740(sp)
	lw s9, 10740(sp)
	seqz s9, s9
	sb s9, 1608(sp)
	xor s9, t2, a4
	sw s9, 10744(sp)
	lw s9, 10744(sp)
	snez s9, s9
	sb s9, 1612(sp)
	xor s9, s3, t3
	sw s9, 10748(sp)
	lw s9, 10748(sp)
	snez s9, s9
	sb s9, 1616(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 10752(sp)
	lw s9, 10752(sp)
	seqz s9, s9
	sb s9, 1620(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 1624(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 10756(sp)
	lw s9, 10756(sp)
	seqz s9, s9
	sb s9, 1628(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 10760(sp)
	lw s9, 10760(sp)
	seqz s9, s9
	sb s9, 1632(sp)
	xor s9, s11, s7
	sw s9, 10764(sp)
	lw s9, 10764(sp)
	snez s9, s9
	sb s9, 1636(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 10768(sp)
	lw s9, 10768(sp)
	xori s9, s9, 1
	sb s9, 1640(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 1644(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 1648(sp)
	slt s9, a0, s1
	sb s9, 1652(sp)
	slt s9, s2, a4
	sb s9, 1656(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 1660(sp)
	slt s9, t0, a0
	sw s9, 10772(sp)
	lw s9, 10772(sp)
	xori s9, s9, 1
	sb s9, 1664(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 10776(sp)
	lw s9, 10776(sp)
	snez s9, s9
	sb s9, 1668(sp)
	slt s9, s2, s6
	sw s9, 10780(sp)
	lw s9, 10780(sp)
	xori s9, s9, 1
	sb s9, 1672(sp)
	slt s9, t6, t5
	sw s9, 10784(sp)
	lw s9, 10784(sp)
	xori s9, s9, 1
	sb s9, 1676(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 10788(sp)
	lw s9, 10788(sp)
	xori s9, s9, 1
	sb s9, 1680(sp)
	xor s9, t2, s2
	sw s9, 10792(sp)
	lw s9, 10792(sp)
	snez s9, s9
	sb s9, 1684(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 1688(sp)
	slt s9, a2, s11
	sb s9, 1692(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 1696(sp)
	xor s9, a2, s2
	sw s9, 10796(sp)
	lw s9, 10796(sp)
	seqz s9, s9
	sb s9, 1700(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 1704(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 1708(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 10800(sp)
	lw s9, 10800(sp)
	snez s9, s9
	sb s9, 1712(sp)
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	slt s9, s10, s9
	sb s9, 1716(sp)
	lw s10, 16024(sp)
	lw s9, 16048(sp)
	xor s9, s9, s10
	sw s9, 10804(sp)
	lw s9, 10804(sp)
	snez s9, s9
	sb s9, 1720(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 10808(sp)
	lw s9, 10808(sp)
	snez s9, s9
	sb s9, 1724(sp)
	slt s9, a3, a3
	sw s9, 10812(sp)
	lw s9, 10812(sp)
	xori s9, s9, 1
	sb s9, 1728(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 10816(sp)
	lw s9, 10816(sp)
	snez s9, s9
	sb s9, 1732(sp)
	xor s9, t5, t3
	sw s9, 10820(sp)
	lw s9, 10820(sp)
	seqz s9, s9
	sb s9, 1736(sp)
	slt s9, s0, a2
	sb s9, 1740(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 10824(sp)
	lw s9, 10824(sp)
	snez s9, s9
	sb s9, 1744(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 1748(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 1752(sp)
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sw s9, 10828(sp)
	lw s9, 10828(sp)
	xori s9, s9, 1
	sb s9, 1756(sp)
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	slt s9, s9, s10
	sw s9, 10832(sp)
	lw s9, 10832(sp)
	xori s9, s9, 1
	sb s9, 1760(sp)
	slt s9, a0, a5
	sw s9, 10836(sp)
	lw s9, 10836(sp)
	xori s9, s9, 1
	sb s9, 1764(sp)
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	slt s9, s9, s10
	sw s9, 10840(sp)
	lw s9, 10840(sp)
	xori s9, s9, 1
	sb s9, 1768(sp)
	slt s9, t3, s8
	sw s9, 10844(sp)
	lw s9, 10844(sp)
	xori s9, s9, 1
	sb s9, 1772(sp)
	slt s9, a6, a6
	sw s9, 10848(sp)
	lw s9, 10848(sp)
	xori s9, s9, 1
	sb s9, 1776(sp)
	slt s9, s6, a3
	sb s9, 1780(sp)
	slt s9, s6, t3
	sb s9, 1784(sp)
	slt s9, t3, t2
	sb s9, 1788(sp)
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	slt s9, s9, s10
	sw s9, 10852(sp)
	lw s9, 10852(sp)
	xori s9, s9, 1
	sb s9, 1792(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 10856(sp)
	lw s9, 10856(sp)
	xori s9, s9, 1
	sb s9, 1796(sp)
	xor s9, a5, s6
	sw s9, 10860(sp)
	lw s9, 10860(sp)
	snez s9, s9
	sb s9, 1800(sp)
	slt s9, t6, t5
	sw s9, 10864(sp)
	lw s9, 10864(sp)
	xori s9, s9, 1
	sb s9, 1804(sp)
	slt s9, s5, s0
	sw s9, 10868(sp)
	lw s9, 10868(sp)
	xori s9, s9, 1
	sb s9, 1808(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 1812(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 10872(sp)
	lw s9, 10872(sp)
	seqz s9, s9
	sb s9, 1816(sp)
	slt s9, a3, t5
	sb s9, 1820(sp)
	slt s9, ra, a7
	sw s9, 10876(sp)
	lw s9, 10876(sp)
	xori s9, s9, 1
	sb s9, 1824(sp)
	xor s9, s3, s4
	sw s9, 10880(sp)
	lw s9, 10880(sp)
	snez s9, s9
	sb s9, 1828(sp)
	slt s9, s2, t6
	sb s9, 1832(sp)
	slt s9, s4, s3
	sw s9, 10884(sp)
	lw s9, 10884(sp)
	xori s9, s9, 1
	sb s9, 1836(sp)
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	slt s9, s9, s10
	sb s9, 1840(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 10888(sp)
	lw s9, 10888(sp)
	snez s9, s9
	sb s9, 1844(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 10892(sp)
	lw s9, 10892(sp)
	xori s9, s9, 1
	sb s9, 1848(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 10896(sp)
	lw s9, 10896(sp)
	xori s9, s9, 1
	sb s9, 1852(sp)
	slt s9, t0, a0
	sw s9, 10900(sp)
	lw s9, 10900(sp)
	xori s9, s9, 1
	sb s9, 1856(sp)
	xor s9, s8, s4
	sw s9, 10904(sp)
	lw s9, 10904(sp)
	snez s9, s9
	sb s9, 1860(sp)
	slt s9, t2, t4
	sw s9, 10908(sp)
	lw s9, 10908(sp)
	xori s9, s9, 1
	sb s9, 1864(sp)
	lw s10, 16036(sp)
	lw s9, 16088(sp)
	slt s9, s9, s10
	sb s9, 1868(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 10912(sp)
	lw s9, 10912(sp)
	seqz s9, s9
	sb s9, 1872(sp)
	slt s9, a7, a6
	sw s9, 10916(sp)
	lw s9, 10916(sp)
	xori s9, s9, 1
	sb s9, 1876(sp)
	xor s9, a5, s1
	sw s9, 10920(sp)
	lw s9, 10920(sp)
	snez s9, s9
	sb s9, 1880(sp)
	slt s9, ra, s2
	sb s9, 1884(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 1888(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 10924(sp)
	lw s9, 10924(sp)
	seqz s9, s9
	sb s9, 1892(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 10928(sp)
	lw s9, 10928(sp)
	xori s9, s9, 1
	sb s9, 1896(sp)
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	slt s9, s10, s9
	sw s9, 10932(sp)
	lw s9, 10932(sp)
	xori s9, s9, 1
	sb s9, 1900(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 1904(sp)
	slt s9, t6, s7
	sb s9, 1908(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 1912(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 10936(sp)
	lw s9, 10936(sp)
	snez s9, s9
	sb s9, 1916(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 1920(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 10940(sp)
	lw s9, 10940(sp)
	snez s9, s9
	sb s9, 1924(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 10944(sp)
	lw s9, 10944(sp)
	xori s9, s9, 1
	sb s9, 1928(sp)
	slt s9, s0, s0
	sb s9, 1932(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 10948(sp)
	lw s9, 10948(sp)
	xori s9, s9, 1
	sb s9, 1936(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 10952(sp)
	lw s9, 10952(sp)
	snez s9, s9
	sb s9, 1940(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 1944(sp)
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	xor s9, s9, s10
	sw s9, 10956(sp)
	lw s9, 10956(sp)
	seqz s9, s9
	sb s9, 1948(sp)
	slt s9, t5, t1
	sw s9, 10960(sp)
	lw s9, 10960(sp)
	xori s9, s9, 1
	sb s9, 1952(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 1956(sp)
	xor s9, t2, a4
	sw s9, 10964(sp)
	lw s9, 10964(sp)
	snez s9, s9
	sb s9, 1960(sp)
	slt s9, s2, s7
	sw s9, 10968(sp)
	lw s9, 10968(sp)
	xori s9, s9, 1
	sb s9, 1964(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 10972(sp)
	lw s9, 10972(sp)
	xori s9, s9, 1
	sb s9, 1968(sp)
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sw s9, 10976(sp)
	lw s9, 10976(sp)
	xori s9, s9, 1
	sb s9, 1972(sp)
	slt s9, s0, s3
	sb s9, 1976(sp)
	slt s9, s1, s7
	sb s9, 1980(sp)
	xor s9, s7, a3
	sw s9, 10980(sp)
	lw s9, 10980(sp)
	seqz s9, s9
	sb s9, 1984(sp)
	slt s9, t2, a7
	sw s9, 10984(sp)
	lw s9, 10984(sp)
	xori s9, s9, 1
	sb s9, 1988(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 1992(sp)
	slt s9, ra, t1
	sb s9, 1996(sp)
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sb s9, 2000(sp)
	slt s9, a5, s7
	sb s9, 2004(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 10988(sp)
	lw s9, 10988(sp)
	seqz s9, s9
	sb s9, 2008(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 10992(sp)
	lw s9, 10992(sp)
	seqz s9, s9
	sb s9, 2012(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 10996(sp)
	lw s9, 10996(sp)
	xori s9, s9, 1
	sb s9, 2016(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 11000(sp)
	lw s9, 11000(sp)
	xori s9, s9, 1
	sb s9, 2020(sp)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 2024(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 11004(sp)
	lw s9, 11004(sp)
	xori s9, s9, 1
	sb s9, 2028(sp)
	slt s9, a2, s11
	sb s9, 2032(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 2036(sp)
	xor s9, t0, a0
	sw s9, 11008(sp)
	lw s9, 11008(sp)
	seqz s9, s9
	sb s9, 2040(sp)
	lw s9, 16060(sp)
	lw s10, 16012(sp)
	xor s9, s9, s10
	sw s9, 11012(sp)
	lw s9, 11012(sp)
	seqz s9, s9
	sb s9, 2044(sp)
	slt s9, s8, t4
	sb s9, 2048(sp)
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	slt s9, s9, s10
	sw s9, 11016(sp)
	lw s9, 11016(sp)
	xori s9, s9, 1
	sb s9, 2052(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 2056(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 2060(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 11020(sp)
	lw s9, 11020(sp)
	xori s9, s9, 1
	sb s9, 2064(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 11024(sp)
	lw s9, 11024(sp)
	snez s9, s9
	sb s9, 2068(sp)
	slt s9, s11, a4
	sb s9, 2072(sp)
	xor s9, s1, t4
	sw s9, 11028(sp)
	lw s9, 11028(sp)
	snez s9, s9
	sb s9, 2076(sp)
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 11032(sp)
	lw s9, 11032(sp)
	xori s9, s9, 1
	sb s9, 2080(sp)
	xor s9, t0, a5
	sw s9, 11036(sp)
	lw s9, 11036(sp)
	seqz s9, s9
	sb s9, 2084(sp)
	slt s9, s3, ra
	sw s9, 11040(sp)
	lw s9, 11040(sp)
	xori s9, s9, 1
	sb s9, 2088(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 2092(sp)
	slt s9, s5, t0
	sb s9, 2096(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 11044(sp)
	lw s9, 11044(sp)
	snez s9, s9
	sb s9, 2100(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 2104(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 2108(sp)
	slt s9, a0, s1
	sb s9, 2112(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 11048(sp)
	lw s9, 11048(sp)
	snez s9, s9
	sb s9, 2116(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	xor s9, s10, s9
	sw s9, 11052(sp)
	lw s9, 11052(sp)
	snez s9, s9
	sb s9, 2120(sp)
	slt s9, s4, t5
	sw s9, 11056(sp)
	lw s9, 11056(sp)
	xori s9, s9, 1
	sb s9, 2124(sp)
	slt s9, s6, t4
	sb s9, 2128(sp)
	xor s9, s5, s3
	sw s9, 11060(sp)
	lw s9, 11060(sp)
	snez s9, s9
	sb s9, 2132(sp)
	slt s9, t6, s1
	sb s9, 2136(sp)
	slt s9, a0, s4
	sb s9, 2140(sp)
	slt s9, a6, t0
	sb s9, 2144(sp)
	xor s9, s3, t3
	sw s9, 11064(sp)
	lw s9, 11064(sp)
	snez s9, s9
	sb s9, 2148(sp)
	slt s9, s4, s3
	sw s9, 11068(sp)
	lw s9, 11068(sp)
	xori s9, s9, 1
	sb s9, 2152(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 11072(sp)
	lw s9, 11072(sp)
	seqz s9, s9
	sb s9, 2156(sp)
	slt s9, s4, s4
	sb s9, 2160(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 11076(sp)
	lw s9, 11076(sp)
	xori s9, s9, 1
	sb s9, 2164(sp)
	xor s9, t0, a7
	sw s9, 11080(sp)
	lw s9, 11080(sp)
	snez s9, s9
	sb s9, 2168(sp)
	lw s9, 16028(sp)
	lw s10, 16080(sp)
	xor s9, s9, s10
	sw s9, 11084(sp)
	lw s9, 11084(sp)
	seqz s9, s9
	sb s9, 2172(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 11088(sp)
	lw s9, 11088(sp)
	xori s9, s9, 1
	sb s9, 2176(sp)
	slt s9, a3, t1
	sw s9, 11092(sp)
	lw s9, 11092(sp)
	xori s9, s9, 1
	sb s9, 2180(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 2184(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 11096(sp)
	lw s9, 11096(sp)
	seqz s9, s9
	sb s9, 2188(sp)
	slt s9, a1, t5
	sw s9, 11100(sp)
	lw s9, 11100(sp)
	xori s9, s9, 1
	sb s9, 2192(sp)
	slt s9, t6, t2
	sw s9, 11104(sp)
	lw s9, 11104(sp)
	xori s9, s9, 1
	sb s9, 2196(sp)
	xor s9, a7, s6
	sw s9, 11108(sp)
	lw s9, 11108(sp)
	snez s9, s9
	sb s9, 2200(sp)
	slt s9, ra, t1
	sb s9, 2204(sp)
	slt s9, t5, ra
	sb s9, 2208(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 11112(sp)
	lw s9, 11112(sp)
	xori s9, s9, 1
	sb s9, 2212(sp)
	slt s9, s5, t0
	sb s9, 2216(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 11116(sp)
	lw s9, 11116(sp)
	xori s9, s9, 1
	sb s9, 2220(sp)
	slt s9, a5, s7
	sb s9, 2224(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 2228(sp)
	slt s9, a3, t1
	sw s9, 11120(sp)
	lw s9, 11120(sp)
	xori s9, s9, 1
	sb s9, 2232(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 2236(sp)
	slt s9, a4, a4
	sb s9, 2240(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 11124(sp)
	lw s9, 11124(sp)
	xori s9, s9, 1
	sb s9, 2244(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 11128(sp)
	lw s9, 11128(sp)
	snez s9, s9
	sb s9, 2248(sp)
	xor s9, t2, a4
	sw s9, 11132(sp)
	lw s9, 11132(sp)
	snez s9, s9
	sb s9, 2252(sp)
	slt s9, s1, t3
	sw s9, 11136(sp)
	lw s9, 11136(sp)
	xori s9, s9, 1
	sb s9, 2256(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 11140(sp)
	lw s9, 11140(sp)
	xori s9, s9, 1
	sb s9, 2260(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 11144(sp)
	lw s9, 11144(sp)
	xori s9, s9, 1
	sb s9, 2264(sp)
	slt s9, t5, t4
	sw s9, 11148(sp)
	lw s9, 11148(sp)
	xori s9, s9, 1
	sb s9, 2268(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 2272(sp)
	xor s9, t3, t2
	sw s9, 11152(sp)
	lw s9, 11152(sp)
	seqz s9, s9
	sb s9, 2276(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 2280(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 11156(sp)
	lw s9, 11156(sp)
	xori s9, s9, 1
	sb s9, 2284(sp)
	slt s9, s0, a2
	sb s9, 2288(sp)
	slt s9, t2, t4
	sw s9, 11160(sp)
	lw s9, 11160(sp)
	xori s9, s9, 1
	sb s9, 2292(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 11164(sp)
	lw s9, 11164(sp)
	xori s9, s9, 1
	sb s9, 2296(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 11168(sp)
	lw s9, 11168(sp)
	seqz s9, s9
	sb s9, 2300(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 11172(sp)
	lw s9, 11172(sp)
	snez s9, s9
	sb s9, 2304(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 2308(sp)
	lw s9, 16056(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sw s9, 11176(sp)
	lw s9, 11176(sp)
	xori s9, s9, 1
	sb s9, 2312(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 2316(sp)
	slt s9, s2, s6
	sw s9, 11180(sp)
	lw s9, 11180(sp)
	xori s9, s9, 1
	sb s9, 2320(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 11184(sp)
	lw s9, 11184(sp)
	xori s9, s9, 1
	sb s9, 2324(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 11188(sp)
	lw s9, 11188(sp)
	snez s9, s9
	sb s9, 2328(sp)
	slt s9, s4, s5
	sw s9, 11192(sp)
	lw s9, 11192(sp)
	xori s9, s9, 1
	sb s9, 2332(sp)
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	xor s9, s9, s10
	sw s9, 11196(sp)
	lw s9, 11196(sp)
	seqz s9, s9
	sb s9, 2336(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 11200(sp)
	lw s9, 11200(sp)
	snez s9, s9
	sb s9, 2340(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 11204(sp)
	lw s9, 11204(sp)
	seqz s9, s9
	sb s9, 2344(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 11208(sp)
	lw s9, 11208(sp)
	xori s9, s9, 1
	sb s9, 2348(sp)
	slt s9, t2, a7
	sw s9, 11212(sp)
	lw s9, 11212(sp)
	xori s9, s9, 1
	sb s9, 2352(sp)
	slt s9, s4, t5
	sw s9, 11216(sp)
	lw s9, 11216(sp)
	xori s9, s9, 1
	sb s9, 2356(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 2360(sp)
	slt s9, a0, a5
	sw s9, 11220(sp)
	lw s9, 11220(sp)
	xori s9, s9, 1
	sb s9, 2364(sp)
	slt s9, t4, s0
	sw s9, 11224(sp)
	lw s9, 11224(sp)
	xori s9, s9, 1
	sb s9, 2368(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 2372(sp)
	slt s9, t5, t1
	sw s9, 11228(sp)
	lw s9, 11228(sp)
	xori s9, s9, 1
	sb s9, 2376(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 11232(sp)
	lw s9, 11232(sp)
	snez s9, s9
	sb s9, 2380(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 2384(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	slt s9, s10, s9
	sw s9, 11236(sp)
	lw s9, 11236(sp)
	xori s9, s9, 1
	sb s9, 2388(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 11240(sp)
	lw s9, 11240(sp)
	snez s9, s9
	sb s9, 2392(sp)
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sb s9, 2396(sp)
	slt s9, s3, a3
	sb s9, 2400(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 2404(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 11244(sp)
	lw s9, 11244(sp)
	seqz s9, s9
	sb s9, 2408(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 11248(sp)
	lw s9, 11248(sp)
	snez s9, s9
	sb s9, 2412(sp)
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	xor s9, s10, s9
	sw s9, 11252(sp)
	lw s9, 11252(sp)
	seqz s9, s9
	sb s9, 2416(sp)
	lw s10, 16032(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 11256(sp)
	lw s9, 11256(sp)
	seqz s9, s9
	sb s9, 2420(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 11260(sp)
	lw s9, 11260(sp)
	xori s9, s9, 1
	sb s9, 2424(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 11264(sp)
	lw s9, 11264(sp)
	snez s9, s9
	sb s9, 2428(sp)
	slt s9, s6, a3
	sb s9, 2432(sp)
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	xor s9, s9, s10
	sw s9, 11268(sp)
	lw s9, 11268(sp)
	seqz s9, s9
	sb s9, 2436(sp)
	slt s9, t6, t5
	sw s9, 11272(sp)
	lw s9, 11272(sp)
	xori s9, s9, 1
	sb s9, 2440(sp)
	slt s9, s11, a4
	sb s9, 2444(sp)
	slt s9, a1, a1
	sw s9, 11276(sp)
	lw s9, 11276(sp)
	xori s9, s9, 1
	sb s9, 2448(sp)
	slt s9, s3, ra
	sw s9, 11280(sp)
	lw s9, 11280(sp)
	xori s9, s9, 1
	sb s9, 2452(sp)
	lw s9, 16048(sp)
	lw s10, 16032(sp)
	slt s9, s10, s9
	sw s9, 11284(sp)
	lw s9, 11284(sp)
	xori s9, s9, 1
	sb s9, 2456(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 11288(sp)
	lw s9, 11288(sp)
	xori s9, s9, 1
	sb s9, 2460(sp)
	xor s9, t3, a0
	sw s9, 11292(sp)
	lw s9, 11292(sp)
	seqz s9, s9
	sb s9, 2464(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 2468(sp)
	slt s9, t1, s1
	sw s9, 11296(sp)
	lw s9, 11296(sp)
	xori s9, s9, 1
	sb s9, 2472(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 11300(sp)
	lw s9, 11300(sp)
	snez s9, s9
	sb s9, 2476(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 11304(sp)
	lw s9, 11304(sp)
	xori s9, s9, 1
	sb s9, 2480(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	slt s9, s10, s9
	sw s9, 11308(sp)
	lw s9, 11308(sp)
	xori s9, s9, 1
	sb s9, 2484(sp)
	lw s9, 16076(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sw s9, 11312(sp)
	lw s9, 11312(sp)
	xori s9, s9, 1
	sb s9, 2488(sp)
	slt s9, s1, a6
	sw s9, 11316(sp)
	lw s9, 11316(sp)
	xori s9, s9, 1
	sb s9, 2492(sp)
	slt s9, t0, a0
	sw s9, 11320(sp)
	lw s9, 11320(sp)
	xori s9, s9, 1
	sb s9, 2496(sp)
	lw s9, 16052(sp)
	lw s10, 16076(sp)
	xor s9, s10, s9
	sw s9, 11324(sp)
	lw s9, 11324(sp)
	seqz s9, s9
	sb s9, 2500(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 2504(sp)
	slt s9, a4, a4
	sb s9, 2508(sp)
	slt s9, t6, t5
	sw s9, 11328(sp)
	lw s9, 11328(sp)
	xori s9, s9, 1
	sb s9, 2512(sp)
	lw s9, 16080(sp)
	lw s10, 4(sp)
	xor s9, s10, s9
	sw s9, 11332(sp)
	lw s9, 11332(sp)
	snez s9, s9
	sb s9, 2516(sp)
	lw s10, 16032(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 11336(sp)
	lw s9, 11336(sp)
	seqz s9, s9
	sb s9, 2520(sp)
	slt s9, t4, a2
	sw s9, 11340(sp)
	lw s9, 11340(sp)
	xori s9, s9, 1
	sb s9, 2524(sp)
	xor s9, a6, t4
	sw s9, 11344(sp)
	lw s9, 11344(sp)
	snez s9, s9
	sb s9, 2528(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	xor s9, s9, s10
	sw s9, 11348(sp)
	lw s9, 11348(sp)
	snez s9, s9
	sb s9, 2532(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 11352(sp)
	lw s9, 11352(sp)
	xori s9, s9, 1
	sb s9, 2536(sp)
	xor s9, a1, t3
	sw s9, 11356(sp)
	lw s9, 11356(sp)
	seqz s9, s9
	sb s9, 2540(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 2544(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 2548(sp)
	xor s9, s8, a7
	sw s9, 11360(sp)
	lw s9, 11360(sp)
	seqz s9, s9
	sb s9, 2552(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 2556(sp)
	slt s9, t3, s8
	sw s9, 11364(sp)
	lw s9, 11364(sp)
	xori s9, s9, 1
	sb s9, 2560(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 2564(sp)
	slt s9, a2, a4
	sw s9, 11368(sp)
	lw s9, 11368(sp)
	xori s9, s9, 1
	sb s9, 2568(sp)
	slt s9, s2, s7
	sw s9, 11372(sp)
	lw s9, 11372(sp)
	xori s9, s9, 1
	sb s9, 2572(sp)
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sw s9, 11376(sp)
	lw s9, 11376(sp)
	xori s9, s9, 1
	sb s9, 2576(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 11380(sp)
	lw s9, 11380(sp)
	xori s9, s9, 1
	sb s9, 2580(sp)
	xor s9, a5, s1
	sw s9, 11384(sp)
	lw s9, 11384(sp)
	snez s9, s9
	sb s9, 2584(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 2588(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 2592(sp)
	slt s9, a3, t5
	sb s9, 2596(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 11388(sp)
	lw s9, 11388(sp)
	snez s9, s9
	sb s9, 2600(sp)
	slt s9, t0, s8
	sb s9, 2604(sp)
	xor s9, s11, s7
	sw s9, 11392(sp)
	lw s9, 11392(sp)
	snez s9, s9
	sb s9, 2608(sp)
	slt s9, s8, t4
	sb s9, 2612(sp)
	slt s9, a0, t1
	sb s9, 2616(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 2620(sp)
	xor s9, s4, t3
	sw s9, 11396(sp)
	lw s9, 11396(sp)
	seqz s9, s9
	sb s9, 2624(sp)
	xor s9, ra, t1
	sw s9, 11400(sp)
	lw s9, 11400(sp)
	snez s9, s9
	sb s9, 2628(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 11404(sp)
	lw s9, 11404(sp)
	snez s9, s9
	sb s9, 2632(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 2636(sp)
	lw s10, 16012(sp)
	lw s9, 0(sp)
	slt s9, s9, s10
	sb s9, 2640(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 11408(sp)
	lw s9, 11408(sp)
	snez s9, s9
	sb s9, 2644(sp)
	xor s9, ra, s11
	sw s9, 11412(sp)
	lw s9, 11412(sp)
	seqz s9, s9
	sb s9, 2648(sp)
	slt s9, t5, t4
	sw s9, 11416(sp)
	lw s9, 11416(sp)
	xori s9, s9, 1
	sb s9, 2652(sp)
	slt s9, ra, t1
	sb s9, 2656(sp)
	slt s9, s8, s3
	sw s9, 11420(sp)
	lw s9, 11420(sp)
	xori s9, s9, 1
	sb s9, 2660(sp)
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	xor s9, s10, s9
	sw s9, 11424(sp)
	lw s9, 11424(sp)
	seqz s9, s9
	sb s9, 2664(sp)
	lw s10, 16056(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 11428(sp)
	lw s9, 11428(sp)
	seqz s9, s9
	sb s9, 2668(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 11432(sp)
	lw s9, 11432(sp)
	seqz s9, s9
	sb s9, 2672(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 2676(sp)
	slt s9, s6, t4
	sb s9, 2680(sp)
	slt s9, s5, t0
	sb s9, 2684(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 2688(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 2692(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 11436(sp)
	lw s9, 11436(sp)
	xori s9, s9, 1
	sb s9, 2696(sp)
	slt s9, a0, s4
	sb s9, 2700(sp)
	slt s9, s5, a4
	sw s9, 11440(sp)
	lw s9, 11440(sp)
	xori s9, s9, 1
	sb s9, 2704(sp)
	slt s9, a0, s1
	sb s9, 2708(sp)
	slt s9, a5, s4
	sb s9, 2712(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 2716(sp)
	xor s9, s7, a3
	sw s9, 11444(sp)
	lw s9, 11444(sp)
	seqz s9, s9
	sb s9, 2720(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 11448(sp)
	lw s9, 11448(sp)
	xori s9, s9, 1
	sb s9, 2724(sp)
	slt s9, s4, t5
	sw s9, 11452(sp)
	lw s9, 11452(sp)
	xori s9, s9, 1
	sb s9, 2728(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 11456(sp)
	lw s9, 11456(sp)
	xori s9, s9, 1
	sb s9, 2732(sp)
	slt s9, a3, a3
	sw s9, 11460(sp)
	lw s9, 11460(sp)
	xori s9, s9, 1
	sb s9, 2736(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 11464(sp)
	lw s9, 11464(sp)
	seqz s9, s9
	sb s9, 2740(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 11468(sp)
	lw s9, 11468(sp)
	xori s9, s9, 1
	sb s9, 2744(sp)
	slt s9, a6, t0
	sb s9, 2748(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 11472(sp)
	lw s9, 11472(sp)
	snez s9, s9
	sb s9, 2752(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 2756(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 11476(sp)
	lw s9, 11476(sp)
	xori s9, s9, 1
	sb s9, 2760(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 11480(sp)
	lw s9, 11480(sp)
	snez s9, s9
	sb s9, 2764(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 2768(sp)
	xor s9, t0, a0
	sw s9, 11484(sp)
	lw s9, 11484(sp)
	seqz s9, s9
	sb s9, 2772(sp)
	slt s9, s5, s7
	sb s9, 2776(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 11488(sp)
	lw s9, 11488(sp)
	snez s9, s9
	sb s9, 2780(sp)
	slt s9, t5, t6
	sw s9, 11492(sp)
	lw s9, 11492(sp)
	xori s9, s9, 1
	sb s9, 2784(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 2788(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 11496(sp)
	lw s9, 11496(sp)
	xori s9, s9, 1
	sb s9, 2792(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 11500(sp)
	lw s9, 11500(sp)
	snez s9, s9
	sb s9, 2796(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 11504(sp)
	lw s9, 11504(sp)
	xori s9, s9, 1
	sb s9, 2800(sp)
	slt s9, t5, ra
	sb s9, 2804(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 2808(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 11508(sp)
	lw s9, 11508(sp)
	xori s9, s9, 1
	sb s9, 2812(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 11512(sp)
	lw s9, 11512(sp)
	xori s9, s9, 1
	sb s9, 2816(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 2820(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 2824(sp)
	slt s9, t2, t4
	sw s9, 11516(sp)
	lw s9, 11516(sp)
	xori s9, s9, 1
	sb s9, 2828(sp)
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 11520(sp)
	lw s9, 11520(sp)
	xori s9, s9, 1
	sb s9, 2832(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 11524(sp)
	lw s9, 11524(sp)
	xori s9, s9, 1
	sb s9, 2836(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 11528(sp)
	lw s9, 11528(sp)
	xori s9, s9, 1
	sb s9, 2840(sp)
	slt s9, a7, a6
	sw s9, 11532(sp)
	lw s9, 11532(sp)
	xori s9, s9, 1
	sb s9, 2844(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 11536(sp)
	lw s9, 11536(sp)
	seqz s9, s9
	sb s9, 2848(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 2852(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 11540(sp)
	lw s9, 11540(sp)
	seqz s9, s9
	sb s9, 2856(sp)
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	xor s9, s10, s9
	sw s9, 11544(sp)
	lw s9, 11544(sp)
	seqz s9, s9
	sb s9, 2860(sp)
	xor s9, t2, s6
	sw s9, 11548(sp)
	lw s9, 11548(sp)
	snez s9, s9
	sb s9, 2864(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 11552(sp)
	lw s9, 11552(sp)
	snez s9, s9
	sb s9, 2868(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 11556(sp)
	lw s9, 11556(sp)
	snez s9, s9
	sb s9, 2872(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 11560(sp)
	lw s9, 11560(sp)
	snez s9, s9
	sb s9, 2876(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 2880(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 2884(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 2888(sp)
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	slt s9, s10, s9
	sw s9, 11564(sp)
	lw s9, 11564(sp)
	xori s9, s9, 1
	sb s9, 2892(sp)
	slt s9, s3, s4
	sw s9, 11568(sp)
	lw s9, 11568(sp)
	xori s9, s9, 1
	sb s9, 2896(sp)
	slt s9, t6, t2
	sw s9, 11572(sp)
	lw s9, 11572(sp)
	xori s9, s9, 1
	sb s9, 2900(sp)
	slt s9, s4, s3
	sw s9, 11576(sp)
	lw s9, 11576(sp)
	xori s9, s9, 1
	sb s9, 2904(sp)
	lw s10, 16036(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 11580(sp)
	lw s9, 11580(sp)
	seqz s9, s9
	sb s9, 2908(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 11584(sp)
	lw s9, 11584(sp)
	xori s9, s9, 1
	sb s9, 2912(sp)
	slt s9, t2, a7
	sw s9, 11588(sp)
	lw s9, 11588(sp)
	xori s9, s9, 1
	sb s9, 2916(sp)
	slt s9, a6, s11
	sw s9, 11592(sp)
	lw s9, 11592(sp)
	xori s9, s9, 1
	sb s9, 2920(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 11596(sp)
	lw s9, 11596(sp)
	xori s9, s9, 1
	sb s9, 2924(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 11600(sp)
	lw s9, 11600(sp)
	seqz s9, s9
	sb s9, 2928(sp)
	xor s9, t1, t0
	sw s9, 11604(sp)
	lw s9, 11604(sp)
	seqz s9, s9
	sb s9, 2932(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 11608(sp)
	lw s9, 11608(sp)
	seqz s9, s9
	sb s9, 2936(sp)
	lw s9, 16056(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sb s9, 2940(sp)
	slt s9, t6, s1
	sb s9, 2944(sp)
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 11612(sp)
	lw s9, 11612(sp)
	xori s9, s9, 1
	sb s9, 2948(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 2952(sp)
	slt s9, a2, s11
	sb s9, 2956(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 11616(sp)
	lw s9, 11616(sp)
	seqz s9, s9
	sb s9, 2960(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 2964(sp)
	xor s9, t6, s8
	sw s9, 11620(sp)
	lw s9, 11620(sp)
	seqz s9, s9
	sb s9, 2968(sp)
	slt s9, t2, a7
	sw s9, 11624(sp)
	lw s9, 11624(sp)
	xori s9, s9, 1
	sb s9, 2972(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 11628(sp)
	lw s9, 11628(sp)
	snez s9, s9
	sb s9, 2976(sp)
	slt s9, s4, s4
	sb s9, 2980(sp)
	xor s9, a5, s4
	sw s9, 11632(sp)
	lw s9, 11632(sp)
	seqz s9, s9
	sb s9, 2984(sp)
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	slt s9, s10, s9
	sw s9, 11636(sp)
	lw s9, 11636(sp)
	xori s9, s9, 1
	sb s9, 2988(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 11640(sp)
	lw s9, 11640(sp)
	snez s9, s9
	sb s9, 2992(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 11644(sp)
	lw s9, 11644(sp)
	xori s9, s9, 1
	sb s9, 2996(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 11648(sp)
	lw s9, 11648(sp)
	xori s9, s9, 1
	sb s9, 3000(sp)
	slt s9, s0, a2
	sb s9, 3004(sp)
	xor s9, a2, s2
	sw s9, 11652(sp)
	lw s9, 11652(sp)
	seqz s9, s9
	sb s9, 3008(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 3012(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 11656(sp)
	lw s9, 11656(sp)
	seqz s9, s9
	sb s9, 3016(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 3020(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 11660(sp)
	lw s9, 11660(sp)
	xori s9, s9, 1
	sb s9, 3024(sp)
	slt s9, s8, a5
	sb s9, 3028(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 11664(sp)
	lw s9, 11664(sp)
	snez s9, s9
	sb s9, 3032(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 11668(sp)
	lw s9, 11668(sp)
	seqz s9, s9
	sb s9, 3036(sp)
	slt s9, t4, s0
	sw s9, 11672(sp)
	lw s9, 11672(sp)
	xori s9, s9, 1
	sb s9, 3040(sp)
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	slt s9, s10, s9
	sw s9, 11676(sp)
	lw s9, 11676(sp)
	xori s9, s9, 1
	sb s9, 3044(sp)
	xor s9, t3, t2
	sw s9, 11680(sp)
	lw s9, 11680(sp)
	seqz s9, s9
	sb s9, 3048(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 3052(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 3056(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 3060(sp)
	xor s9, a6, s0
	sw s9, 11684(sp)
	lw s9, 11684(sp)
	snez s9, s9
	sb s9, 3064(sp)
	slt s9, t3, t2
	sb s9, 3068(sp)
	slt s9, t2, a2
	sb s9, 3072(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 11688(sp)
	lw s9, 11688(sp)
	snez s9, s9
	sb s9, 3076(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 11692(sp)
	lw s9, 11692(sp)
	xori s9, s9, 1
	sb s9, 3080(sp)
	slt s9, s2, t6
	sb s9, 3084(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 11696(sp)
	lw s9, 11696(sp)
	xori s9, s9, 1
	sb s9, 3088(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 11700(sp)
	lw s9, 11700(sp)
	seqz s9, s9
	sb s9, 3092(sp)
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sb s9, 3096(sp)
	slt s9, t5, t1
	sw s9, 11704(sp)
	lw s9, 11704(sp)
	xori s9, s9, 1
	sb s9, 3100(sp)
	slt s9, a6, a6
	sw s9, 11708(sp)
	lw s9, 11708(sp)
	xori s9, s9, 1
	sb s9, 3104(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 11712(sp)
	lw s9, 11712(sp)
	snez s9, s9
	sb s9, 3108(sp)
	slt s9, a0, a5
	sw s9, 11716(sp)
	lw s9, 11716(sp)
	xori s9, s9, 1
	sb s9, 3112(sp)
	slt s9, s4, s5
	sw s9, 11720(sp)
	lw s9, 11720(sp)
	xori s9, s9, 1
	sb s9, 3116(sp)
	slt s9, a5, t0
	sw s9, 11724(sp)
	lw s9, 11724(sp)
	xori s9, s9, 1
	sb s9, 3120(sp)
	xor s9, ra, a1
	sw s9, 11728(sp)
	lw s9, 11728(sp)
	snez s9, s9
	sb s9, 3124(sp)
	xor s9, s4, s3
	sw s9, 11732(sp)
	lw s9, 11732(sp)
	snez s9, s9
	sb s9, 3128(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 11736(sp)
	lw s9, 11736(sp)
	xori s9, s9, 1
	sb s9, 3132(sp)
	slt s9, a2, a1
	sw s9, 11740(sp)
	lw s9, 11740(sp)
	xori s9, s9, 1
	sb s9, 3136(sp)
	xor s9, t5, t3
	sw s9, 11744(sp)
	lw s9, 11744(sp)
	seqz s9, s9
	sb s9, 3140(sp)
	slt s9, a5, s8
	sb s9, 3144(sp)
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	slt s9, s9, s10
	sw s9, 11748(sp)
	lw s9, 11748(sp)
	xori s9, s9, 1
	sb s9, 3148(sp)
	xor s9, a0, a6
	sw s9, 11752(sp)
	lw s9, 11752(sp)
	snez s9, s9
	sb s9, 3152(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 3156(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 3160(sp)
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sb s9, 3164(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 3168(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 11756(sp)
	lw s9, 11756(sp)
	snez s9, s9
	sb s9, 3172(sp)
	xor s9, t6, t0
	sw s9, 11760(sp)
	lw s9, 11760(sp)
	seqz s9, s9
	sb s9, 3176(sp)
	slt s9, s4, s3
	sw s9, 11764(sp)
	lw s9, 11764(sp)
	xori s9, s9, 1
	sb s9, 3180(sp)
	slt s9, a1, t5
	sw s9, 11768(sp)
	lw s9, 11768(sp)
	xori s9, s9, 1
	sb s9, 3184(sp)
	lw s10, 16016(sp)
	lw s9, 16032(sp)
	slt s9, s10, s9
	sb s9, 3188(sp)
	slt s9, ra, s2
	sb s9, 3192(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 11772(sp)
	lw s9, 11772(sp)
	seqz s9, s9
	sb s9, 3196(sp)
	slt s9, t6, s6
	sb s9, 3200(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 3204(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 11776(sp)
	lw s9, 11776(sp)
	xori s9, s9, 1
	sb s9, 3208(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 11780(sp)
	lw s9, 11780(sp)
	xori s9, s9, 1
	sb s9, 3212(sp)
	xor s9, s3, t3
	sw s9, 11784(sp)
	lw s9, 11784(sp)
	snez s9, s9
	sb s9, 3216(sp)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 3220(sp)
	slt s9, t6, s7
	sw s9, 11788(sp)
	lw s9, 11788(sp)
	xori s9, s9, 1
	sb s9, 3224(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 3228(sp)
	slt s9, t6, s7
	sb s9, 3232(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 3236(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 3240(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 3244(sp)
	lw s10, 16036(sp)
	lw s9, 16076(sp)
	slt s9, s10, s9
	sw s9, 11792(sp)
	lw s9, 11792(sp)
	xori s9, s9, 1
	sb s9, 3248(sp)
	xor s9, s5, s3
	sw s9, 11796(sp)
	lw s9, 11796(sp)
	snez s9, s9
	sb s9, 3252(sp)
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	slt s9, s10, s9
	sw s9, 11800(sp)
	lw s9, 11800(sp)
	xori s9, s9, 1
	sb s9, 3256(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 3260(sp)
	slt s9, t6, s11
	sw s9, 11804(sp)
	lw s9, 11804(sp)
	xori s9, s9, 1
	sb s9, 3264(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 11808(sp)
	lw s9, 11808(sp)
	snez s9, s9
	sb s9, 3268(sp)
	slt s9, a7, s1
	sb s9, 3272(sp)
	slt s9, a3, t1
	sw s9, 11812(sp)
	lw s9, 11812(sp)
	xori s9, s9, 1
	sb s9, 3276(sp)
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 11816(sp)
	lw s9, 11816(sp)
	xori s9, s9, 1
	sb s9, 3280(sp)
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	slt s9, s10, s9
	sb s9, 3284(sp)
	lw s10, 16024(sp)
	lw s9, 16048(sp)
	xor s9, s9, s10
	sw s9, 11820(sp)
	lw s9, 11820(sp)
	snez s9, s9
	sb s9, 3288(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 11824(sp)
	lw s9, 11824(sp)
	snez s9, s9
	sb s9, 3292(sp)
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	slt s9, s10, s9
	sb s9, 3296(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 3300(sp)
	slt s9, s0, t1
	sw s9, 11828(sp)
	lw s9, 11828(sp)
	xori s9, s9, 1
	sb s9, 3304(sp)
	xor s9, a1, s4
	sw s9, 11832(sp)
	lw s9, 11832(sp)
	seqz s9, s9
	sb s9, 3308(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 11836(sp)
	lw s9, 11836(sp)
	seqz s9, s9
	sb s9, 3312(sp)
	slt s9, t0, t1
	sb s9, 3316(sp)
	lw s9, 16064(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sw s9, 11840(sp)
	lw s9, 11840(sp)
	xori s9, s9, 1
	sb s9, 3320(sp)
	xor s9, s8, s4
	sw s9, 11844(sp)
	lw s9, 11844(sp)
	snez s9, s9
	sb s9, 3324(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 11848(sp)
	lw s9, 11848(sp)
	xori s9, s9, 1
	sb s9, 3328(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 11852(sp)
	lw s9, 11852(sp)
	xori s9, s9, 1
	sb s9, 3332(sp)
	slt s9, s0, s0
	sb s9, 3336(sp)
	slt s9, s2, a4
	sb s9, 3340(sp)
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sb s9, 3344(sp)
	slt s9, a5, s7
	sb s9, 3348(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 3352(sp)
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	slt s9, s10, s9
	sb s9, 3356(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 3360(sp)
	lw s9, 16060(sp)
	lw s10, 16012(sp)
	xor s9, s9, s10
	sw s9, 11856(sp)
	lw s9, 11856(sp)
	seqz s9, s9
	sb s9, 3364(sp)
	slt s9, t3, a1
	sb s9, 3368(sp)
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	xor s9, s9, s10
	sw s9, 11860(sp)
	lw s9, 11860(sp)
	seqz s9, s9
	sb s9, 3372(sp)
	slt s9, s6, a3
	sb s9, 3376(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 3380(sp)
	slt s9, s0, s3
	sb s9, 3384(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 3388(sp)
	slt s9, s5, s8
	sw s9, 11864(sp)
	lw s9, 11864(sp)
	xori s9, s9, 1
	sb s9, 3392(sp)
	xor s9, t0, a7
	sw s9, 11868(sp)
	lw s9, 11868(sp)
	snez s9, s9
	sb s9, 3396(sp)
	xor s9, a5, s2
	sw s9, 11872(sp)
	lw s9, 11872(sp)
	snez s9, s9
	sb s9, 3400(sp)
	xor s9, t4, ra
	sw s9, 11876(sp)
	lw s9, 11876(sp)
	seqz s9, s9
	sb s9, 3404(sp)
	xor s9, a7, s6
	sw s9, 11880(sp)
	lw s9, 11880(sp)
	snez s9, s9
	sb s9, 3408(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 11884(sp)
	lw s9, 11884(sp)
	snez s9, s9
	sb s9, 3412(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 3416(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 3420(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 11888(sp)
	lw s9, 11888(sp)
	xori s9, s9, 1
	sb s9, 3424(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 3428(sp)
	slt s9, a6, t0
	sb s9, 3432(sp)
	slt s9, t1, ra
	sb s9, 3436(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 11892(sp)
	lw s9, 11892(sp)
	snez s9, s9
	sb s9, 3440(sp)
	slt s9, s5, a6
	sw s9, 11896(sp)
	lw s9, 11896(sp)
	xori s9, s9, 1
	sb s9, 3444(sp)
	xor s9, a5, s6
	sw s9, 11900(sp)
	lw s9, 11900(sp)
	snez s9, s9
	sb s9, 3448(sp)
	slt s9, s1, t3
	sw s9, 11904(sp)
	lw s9, 11904(sp)
	xori s9, s9, 1
	sb s9, 3452(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 11908(sp)
	lw s9, 11908(sp)
	xori s9, s9, 1
	sb s9, 3456(sp)
	slt s9, s6, t3
	sb s9, 3460(sp)
	lw s9, 16052(sp)
	lw s10, 16032(sp)
	xor s9, s10, s9
	sw s9, 11912(sp)
	lw s9, 11912(sp)
	seqz s9, s9
	sb s9, 3464(sp)
	xor s9, t1, t3
	sw s9, 11916(sp)
	lw s9, 11916(sp)
	seqz s9, s9
	sb s9, 3468(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 11920(sp)
	lw s9, 11920(sp)
	snez s9, s9
	sb s9, 3472(sp)
	xor s9, s3, s4
	sw s9, 11924(sp)
	lw s9, 11924(sp)
	snez s9, s9
	sb s9, 3476(sp)
	slt s9, s2, t2
	sw s9, 11928(sp)
	lw s9, 11928(sp)
	xori s9, s9, 1
	sb s9, 3480(sp)
	xor s9, t2, a4
	sw s9, 11932(sp)
	lw s9, 11932(sp)
	snez s9, s9
	sb s9, 3484(sp)
	xor s9, t2, s2
	sw s9, 11936(sp)
	lw s9, 11936(sp)
	seqz s9, s9
	sb s9, 3488(sp)
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	xor s9, s9, s10
	sw s9, 11940(sp)
	lw s9, 11940(sp)
	seqz s9, s9
	sb s9, 3492(sp)
	slt s9, a7, s1
	sb s9, 3496(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 11944(sp)
	lw s9, 11944(sp)
	xori s9, s9, 1
	sb s9, 3500(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 11948(sp)
	lw s9, 11948(sp)
	xori s9, s9, 1
	sb s9, 3504(sp)
	slt s9, s3, a3
	sb s9, 3508(sp)
	xor s9, t5, s0
	sw s9, 11952(sp)
	lw s9, 11952(sp)
	snez s9, s9
	sb s9, 3512(sp)
	xor s9, t6, a2
	sw s9, 11956(sp)
	lw s9, 11956(sp)
	seqz s9, s9
	sb s9, 3516(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 11960(sp)
	lw s9, 11960(sp)
	snez s9, s9
	sb s9, 3520(sp)
	slt s9, s2, s6
	sw s9, 11964(sp)
	lw s9, 11964(sp)
	xori s9, s9, 1
	sb s9, 3524(sp)
	slt s9, s1, s7
	sb s9, 3528(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 11968(sp)
	lw s9, 11968(sp)
	xori s9, s9, 1
	sb s9, 3532(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 3536(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 11972(sp)
	lw s9, 11972(sp)
	seqz s9, s9
	sb s9, 3540(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 11976(sp)
	lw s9, 11976(sp)
	xori s9, s9, 1
	sb s9, 3544(sp)
	xor s9, t0, a5
	sw s9, 11980(sp)
	lw s9, 11980(sp)
	seqz s9, s9
	sb s9, 3548(sp)
	xor s9, a7, s11
	sw s9, 11984(sp)
	lw s9, 11984(sp)
	snez s9, s9
	sb s9, 3552(sp)
	xor s9, t1, s0
	sw s9, 11988(sp)
	lw s9, 11988(sp)
	snez s9, s9
	sb s9, 3556(sp)
	slt s9, s8, t2
	sw s9, 11992(sp)
	lw s9, 11992(sp)
	xori s9, s9, 1
	sb s9, 3560(sp)
	slt s9, a3, t5
	sw s9, 11996(sp)
	lw s9, 11996(sp)
	xori s9, s9, 1
	sb s9, 3564(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 12000(sp)
	lw s9, 12000(sp)
	snez s9, s9
	sb s9, 3568(sp)
	slt s9, t0, s6
	sw s9, 12004(sp)
	lw s9, 12004(sp)
	xori s9, s9, 1
	sb s9, 3572(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 3576(sp)
	slt s9, ra, a7
	sw s9, 12008(sp)
	lw s9, 12008(sp)
	xori s9, s9, 1
	sb s9, 3580(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 12012(sp)
	lw s9, 12012(sp)
	seqz s9, s9
	sb s9, 3584(sp)
	lw s10, 16088(sp)
	lw s9, 4(sp)
	slt s9, s10, s9
	sb s9, 3588(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 3592(sp)
	lw s9, 16060(sp)
	lw s10, 16064(sp)
	slt s9, s9, s10
	sw s9, 12016(sp)
	lw s9, 12016(sp)
	xori s9, s9, 1
	sb s9, 3596(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 3600(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 3604(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 12020(sp)
	lw s9, 12020(sp)
	snez s9, s9
	sb s9, 3608(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 12024(sp)
	lw s9, 12024(sp)
	seqz s9, s9
	sb s9, 3612(sp)
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 12028(sp)
	lw s9, 12028(sp)
	xori s9, s9, 1
	sb s9, 3616(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 3620(sp)
	slt s9, t6, t2
	sw s9, 12032(sp)
	lw s9, 12032(sp)
	xori s9, s9, 1
	sb s9, 3624(sp)
	lw s10, 16056(sp)
	lw s9, 16072(sp)
	slt s9, s9, s10
	sw s9, 12036(sp)
	lw s9, 12036(sp)
	xori s9, s9, 1
	sb s9, 3628(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 12040(sp)
	lw s9, 12040(sp)
	xori s9, s9, 1
	sb s9, 3632(sp)
	slt s9, s0, a2
	sb s9, 3636(sp)
	xor s9, a6, t4
	sw s9, 12044(sp)
	lw s9, 12044(sp)
	snez s9, s9
	sb s9, 3640(sp)
	xor s9, a5, s2
	sw s9, 12048(sp)
	lw s9, 12048(sp)
	snez s9, s9
	sb s9, 3644(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 12052(sp)
	lw s9, 12052(sp)
	snez s9, s9
	sb s9, 3648(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 12056(sp)
	lw s9, 12056(sp)
	seqz s9, s9
	sb s9, 3652(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 3656(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 3660(sp)
	slt s9, s2, s6
	sw s9, 12060(sp)
	lw s9, 12060(sp)
	xori s9, s9, 1
	sb s9, 3664(sp)
	slt s9, t1, s1
	sw s9, 12064(sp)
	lw s9, 12064(sp)
	xori s9, s9, 1
	sb s9, 3668(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 3672(sp)
	xor s9, t1, s0
	sw s9, 12068(sp)
	lw s9, 12068(sp)
	snez s9, s9
	sb s9, 3676(sp)
	slt s9, t0, t1
	sb s9, 3680(sp)
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	slt s9, s9, s10
	sw s9, 12072(sp)
	lw s9, 12072(sp)
	xori s9, s9, 1
	sb s9, 3684(sp)
	slt s9, a2, a1
	sw s9, 12076(sp)
	lw s9, 12076(sp)
	xori s9, s9, 1
	sb s9, 3688(sp)
	slt s9, t6, s11
	sw s9, 12080(sp)
	lw s9, 12080(sp)
	xori s9, s9, 1
	sb s9, 3692(sp)
	slt s9, t2, a2
	sb s9, 3696(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 3700(sp)
	slt s9, ra, a7
	sw s9, 12084(sp)
	lw s9, 12084(sp)
	xori s9, s9, 1
	sb s9, 3704(sp)
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	slt s9, s9, s10
	sw s9, 12088(sp)
	lw s9, 12088(sp)
	xori s9, s9, 1
	sb s9, 3708(sp)
	lw s9, 16036(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 12092(sp)
	lw s9, 12092(sp)
	seqz s9, s9
	sb s9, 3712(sp)
	xor s9, t6, a2
	sw s9, 12096(sp)
	lw s9, 12096(sp)
	seqz s9, s9
	sb s9, 3716(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	xor s9, s10, s9
	sw s9, 12100(sp)
	lw s9, 12100(sp)
	snez s9, s9
	sb s9, 3720(sp)
	xor s9, a5, s1
	sw s9, 12104(sp)
	lw s9, 12104(sp)
	snez s9, s9
	sb s9, 3724(sp)
	slt s9, t0, s8
	sb s9, 3728(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 12108(sp)
	lw s9, 12108(sp)
	snez s9, s9
	sb s9, 3732(sp)
	lw s9, 16080(sp)
	lw s10, 4(sp)
	xor s9, s10, s9
	sw s9, 12112(sp)
	lw s9, 12112(sp)
	snez s9, s9
	sb s9, 3736(sp)
	slt s9, t2, t4
	sw s9, 12116(sp)
	lw s9, 12116(sp)
	xori s9, s9, 1
	sb s9, 3740(sp)
	slt s9, s4, s3
	sw s9, 12120(sp)
	lw s9, 12120(sp)
	xori s9, s9, 1
	sb s9, 3744(sp)
	slt s9, s5, s8
	sw s9, 12124(sp)
	lw s9, 12124(sp)
	xori s9, s9, 1
	sb s9, 3748(sp)
	slt s9, a7, s1
	sb s9, 3752(sp)
	slt s9, s5, a4
	sw s9, 12128(sp)
	lw s9, 12128(sp)
	xori s9, s9, 1
	sb s9, 3756(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 12132(sp)
	lw s9, 12132(sp)
	seqz s9, s9
	sb s9, 3760(sp)
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sb s9, 3764(sp)
	slt s9, a2, s11
	sb s9, 3768(sp)
	xor s9, a6, s0
	sw s9, 12136(sp)
	lw s9, 12136(sp)
	snez s9, s9
	sb s9, 3772(sp)
	xor s9, t3, t2
	sw s9, 12140(sp)
	lw s9, 12140(sp)
	seqz s9, s9
	sb s9, 3776(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 3780(sp)
	slt s9, a0, s4
	sb s9, 3784(sp)
	slt s9, a3, a3
	sw s9, 12144(sp)
	lw s9, 12144(sp)
	xori s9, s9, 1
	sb s9, 3788(sp)
	xor s9, a5, s4
	sw s9, 12148(sp)
	lw s9, 12148(sp)
	seqz s9, s9
	sb s9, 3792(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 12152(sp)
	lw s9, 12152(sp)
	xori s9, s9, 1
	sb s9, 3796(sp)
	slt s9, a5, s4
	sb s9, 3800(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 3804(sp)
	slt s9, s6, t4
	sb s9, 3808(sp)
	slt s9, t0, s6
	sw s9, 12156(sp)
	lw s9, 12156(sp)
	xori s9, s9, 1
	sb s9, 3812(sp)
	slt s9, ra, s2
	sb s9, 3816(sp)
	slt s9, a0, t1
	sb s9, 3820(sp)
	slt s9, t2, a7
	sw s9, 12160(sp)
	lw s9, 12160(sp)
	xori s9, s9, 1
	sb s9, 3824(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 12164(sp)
	lw s9, 12164(sp)
	snez s9, s9
	sb s9, 3828(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 12168(sp)
	lw s9, 12168(sp)
	seqz s9, s9
	sb s9, 3832(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 3836(sp)
	xor s9, s5, s3
	sw s9, 12172(sp)
	lw s9, 12172(sp)
	snez s9, s9
	sb s9, 3840(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 12176(sp)
	lw s9, 12176(sp)
	xori s9, s9, 1
	sb s9, 3844(sp)
	slt s9, t3, a1
	sb s9, 3848(sp)
	xor s9, s3, s4
	sw s9, 12180(sp)
	lw s9, 12180(sp)
	snez s9, s9
	sb s9, 3852(sp)
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	slt s9, s10, s9
	sw s9, 12184(sp)
	lw s9, 12184(sp)
	xori s9, s9, 1
	sb s9, 3856(sp)
	xor s9, a7, s11
	sw s9, 12188(sp)
	lw s9, 12188(sp)
	snez s9, s9
	sb s9, 3860(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 3864(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 3868(sp)
	slt s9, t6, s1
	sb s9, 3872(sp)
	xor s9, ra, s11
	sw s9, 12192(sp)
	lw s9, 12192(sp)
	seqz s9, s9
	sb s9, 3876(sp)
	slt s9, t5, ra
	sb s9, 3880(sp)
	slt s9, t6, s6
	sb s9, 3884(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 12196(sp)
	lw s9, 12196(sp)
	xori s9, s9, 1
	sb s9, 3888(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 12200(sp)
	lw s9, 12200(sp)
	xori s9, s9, 1
	sb s9, 3892(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 3896(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 3900(sp)
	xor s9, a1, t3
	sw s9, 12204(sp)
	lw s9, 12204(sp)
	seqz s9, s9
	sb s9, 3904(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 3908(sp)
	slt s9, s4, s4
	sb s9, 3912(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 3916(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 12208(sp)
	lw s9, 12208(sp)
	seqz s9, s9
	sb s9, 3920(sp)
	slt s9, s8, s3
	sw s9, 12212(sp)
	lw s9, 12212(sp)
	xori s9, s9, 1
	sb s9, 3924(sp)
	lw s10, 16056(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sb s9, 3928(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 12216(sp)
	lw s9, 12216(sp)
	seqz s9, s9
	sb s9, 3932(sp)
	slt s9, s8, a5
	sb s9, 3936(sp)
	lw s10, 16088(sp)
	lw s9, 4(sp)
	slt s9, s10, s9
	sb s9, 3940(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 12220(sp)
	lw s9, 12220(sp)
	snez s9, s9
	sb s9, 3944(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 12224(sp)
	lw s9, 12224(sp)
	seqz s9, s9
	sb s9, 3948(sp)
	xor s9, a5, s6
	sw s9, 12228(sp)
	lw s9, 12228(sp)
	snez s9, s9
	sb s9, 3952(sp)
	slt s9, a5, s7
	sb s9, 3956(sp)
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	xor s9, s9, s10
	sw s9, 12232(sp)
	lw s9, 12232(sp)
	seqz s9, s9
	sb s9, 3960(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 12236(sp)
	lw s9, 12236(sp)
	snez s9, s9
	sb s9, 3964(sp)
	lw s10, 16064(sp)
	lw s9, 16072(sp)
	slt s9, s9, s10
	sb s9, 3968(sp)
	slt s9, s3, a3
	sb s9, 3972(sp)
	xor s9, a5, s4
	sw s9, 12240(sp)
	lw s9, 12240(sp)
	seqz s9, s9
	sb s9, 3976(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 3980(sp)
	slt s9, a3, a3
	sw s9, 12244(sp)
	lw s9, 12244(sp)
	xori s9, s9, 1
	sb s9, 3984(sp)
	slt s9, s11, a4
	sb s9, 3988(sp)
	slt s9, s2, s7
	sw s9, 12248(sp)
	lw s9, 12248(sp)
	xori s9, s9, 1
	sb s9, 3992(sp)
	slt s9, s0, t1
	sw s9, 12252(sp)
	lw s9, 12252(sp)
	xori s9, s9, 1
	sb s9, 3996(sp)
	xor s9, t2, s2
	sw s9, 12256(sp)
	lw s9, 12256(sp)
	snez s9, s9
	sb s9, 4000(sp)
	slt s9, a2, s11
	sb s9, 4004(sp)
	slt s9, s4, s5
	sw s9, 12260(sp)
	lw s9, 12260(sp)
	xori s9, s9, 1
	sb s9, 4008(sp)
	slt s9, a3, t5
	sw s9, 12264(sp)
	lw s9, 12264(sp)
	xori s9, s9, 1
	sb s9, 4012(sp)
	slt s9, s0, a2
	sb s9, 4016(sp)
	slt s9, t5, ra
	sb s9, 4020(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 12268(sp)
	lw s9, 12268(sp)
	snez s9, s9
	sb s9, 4024(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 12272(sp)
	lw s9, 12272(sp)
	xori s9, s9, 1
	sb s9, 4028(sp)
	xor s9, s4, s3
	sw s9, 12276(sp)
	lw s9, 12276(sp)
	snez s9, s9
	sb s9, 4032(sp)
	lw s9, 16056(sp)
	lw s10, 16084(sp)
	slt s9, s10, s9
	sw s9, 12280(sp)
	lw s9, 12280(sp)
	xori s9, s9, 1
	sb s9, 4036(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 12284(sp)
	lw s9, 12284(sp)
	xori s9, s9, 1
	sb s9, 4040(sp)
	slt s9, s0, s3
	sb s9, 4044(sp)
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sb s9, 4048(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 12288(sp)
	lw s9, 12288(sp)
	snez s9, s9
	sb s9, 4052(sp)
	slt s9, a0, s4
	sb s9, 4056(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 12292(sp)
	lw s9, 12292(sp)
	snez s9, s9
	sb s9, 4060(sp)
	xor s9, t2, a4
	sw s9, 12296(sp)
	lw s9, 12296(sp)
	snez s9, s9
	sb s9, 4064(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 12300(sp)
	lw s9, 12300(sp)
	xori s9, s9, 1
	sb s9, 4068(sp)
	xor s9, s11, s7
	sw s9, 12304(sp)
	lw s9, 12304(sp)
	snez s9, s9
	sb s9, 4072(sp)
	slt s9, t5, t6
	sw s9, 12308(sp)
	lw s9, 12308(sp)
	xori s9, s9, 1
	sb s9, 4076(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 4080(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 12312(sp)
	lw s9, 12312(sp)
	xori s9, s9, 1
	sb s9, 4084(sp)
	slt s9, s5, s7
	sb s9, 4088(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 12316(sp)
	lw s9, 12316(sp)
	seqz s9, s9
	sb s9, 4092(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 12320(sp)
	lw s9, 12320(sp)
	snez s9, s9
	sb s9, 4096(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	xor s9, s9, s10
	sw s9, 12324(sp)
	lw s9, 12324(sp)
	snez s9, s9
	sb s9, 4100(sp)
	slt s9, t1, s1
	sw s9, 12328(sp)
	lw s9, 12328(sp)
	xori s9, s9, 1
	sb s9, 4104(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 4108(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 12332(sp)
	lw s9, 12332(sp)
	xori s9, s9, 1
	sb s9, 4112(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 4116(sp)
	slt s9, t1, ra
	sb s9, 4120(sp)
	xor s9, t0, a7
	sw s9, 12336(sp)
	lw s9, 12336(sp)
	snez s9, s9
	sb s9, 4124(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 12340(sp)
	lw s9, 12340(sp)
	xori s9, s9, 1
	sb s9, 4128(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 12344(sp)
	lw s9, 12344(sp)
	seqz s9, s9
	sb s9, 4132(sp)
	xor s9, a2, s2
	sw s9, 12348(sp)
	lw s9, 12348(sp)
	seqz s9, s9
	sb s9, 4136(sp)
	slt s9, s8, s3
	sw s9, 12352(sp)
	lw s9, 12352(sp)
	xori s9, s9, 1
	sb s9, 4140(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 4144(sp)
	slt s9, t5, t4
	sw s9, 12356(sp)
	lw s9, 12356(sp)
	xori s9, s9, 1
	sb s9, 4148(sp)
	slt s9, a6, s11
	sw s9, 12360(sp)
	lw s9, 12360(sp)
	xori s9, s9, 1
	sb s9, 4152(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	slt s9, s10, s9
	sw s9, 12364(sp)
	lw s9, 12364(sp)
	xori s9, s9, 1
	sb s9, 4156(sp)
	xor s9, t1, t3
	sw s9, 12368(sp)
	lw s9, 12368(sp)
	seqz s9, s9
	sb s9, 4160(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 4164(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 4168(sp)
	slt s9, s8, t2
	sw s9, 12372(sp)
	lw s9, 12372(sp)
	xori s9, s9, 1
	sb s9, 4172(sp)
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 12376(sp)
	lw s9, 12376(sp)
	xori s9, s9, 1
	sb s9, 4176(sp)
	xor s9, t6, s8
	sw s9, 12380(sp)
	lw s9, 12380(sp)
	seqz s9, s9
	sb s9, 4180(sp)
	slt s9, s3, ra
	sw s9, 12384(sp)
	lw s9, 12384(sp)
	xori s9, s9, 1
	sb s9, 4184(sp)
	slt s9, a0, a5
	sw s9, 12388(sp)
	lw s9, 12388(sp)
	xori s9, s9, 1
	sb s9, 4188(sp)
	slt s9, t4, a2
	sw s9, 12392(sp)
	lw s9, 12392(sp)
	xori s9, s9, 1
	sb s9, 4192(sp)
	lw s9, 16056(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sb s9, 4196(sp)
	xor s9, s8, a7
	sw s9, 12396(sp)
	lw s9, 12396(sp)
	seqz s9, s9
	sb s9, 4200(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 12400(sp)
	lw s9, 12400(sp)
	snez s9, s9
	sb s9, 4204(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 4208(sp)
	xor s9, a1, t3
	sw s9, 12404(sp)
	lw s9, 12404(sp)
	seqz s9, s9
	sb s9, 4212(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 12408(sp)
	lw s9, 12408(sp)
	xori s9, s9, 1
	sb s9, 4216(sp)
	xor s9, a5, s2
	sw s9, 12412(sp)
	lw s9, 12412(sp)
	snez s9, s9
	sb s9, 4220(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 4224(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 12416(sp)
	lw s9, 12416(sp)
	seqz s9, s9
	sb s9, 4228(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 12420(sp)
	lw s9, 12420(sp)
	xori s9, s9, 1
	sb s9, 4232(sp)
	slt s9, s2, a4
	sb s9, 4236(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 4240(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 12424(sp)
	lw s9, 12424(sp)
	seqz s9, s9
	sb s9, 4244(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 12428(sp)
	lw s9, 12428(sp)
	seqz s9, s9
	sb s9, 4248(sp)
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	xor s9, s10, s9
	sw s9, 12432(sp)
	lw s9, 12432(sp)
	seqz s9, s9
	sb s9, 4252(sp)
	slt s9, a6, t0
	sb s9, 4256(sp)
	slt s9, t5, t1
	sw s9, 12436(sp)
	lw s9, 12436(sp)
	xori s9, s9, 1
	sb s9, 4260(sp)
	xor s9, t0, a0
	sw s9, 12440(sp)
	lw s9, 12440(sp)
	seqz s9, s9
	sb s9, 4264(sp)
	slt s9, t6, s11
	sw s9, 12444(sp)
	lw s9, 12444(sp)
	xori s9, s9, 1
	sb s9, 4268(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 12448(sp)
	lw s9, 12448(sp)
	xori s9, s9, 1
	sb s9, 4272(sp)
	slt s9, a5, s4
	sb s9, 4276(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 4280(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 4284(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 4288(sp)
	slt s9, t6, s7
	sw s9, 12452(sp)
	lw s9, 12452(sp)
	xori s9, s9, 1
	sb s9, 4292(sp)
	xor s9, a0, a6
	sw s9, 12456(sp)
	lw s9, 12456(sp)
	snez s9, s9
	sb s9, 4296(sp)
	lw s9, 16076(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sw s9, 12460(sp)
	lw s9, 12460(sp)
	xori s9, s9, 1
	sb s9, 4300(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 4304(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 4308(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 12464(sp)
	lw s9, 12464(sp)
	seqz s9, s9
	sb s9, 4312(sp)
	xor s9, ra, s11
	sw s9, 12468(sp)
	lw s9, 12468(sp)
	seqz s9, s9
	sb s9, 4316(sp)
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sb s9, 4320(sp)
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sw s9, 12472(sp)
	lw s9, 12472(sp)
	xori s9, s9, 1
	sb s9, 4324(sp)
	slt s9, a7, s1
	sb s9, 4328(sp)
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	xor s9, s10, s9
	sw s9, 12476(sp)
	lw s9, 12476(sp)
	seqz s9, s9
	sb s9, 4332(sp)
	xor s9, ra, t1
	sw s9, 12480(sp)
	lw s9, 12480(sp)
	snez s9, s9
	sb s9, 4336(sp)
	slt s9, s8, a5
	sb s9, 4340(sp)
	slt s9, a3, t1
	sw s9, 12484(sp)
	lw s9, 12484(sp)
	xori s9, s9, 1
	sb s9, 4344(sp)
	slt s9, s1, t3
	sw s9, 12488(sp)
	lw s9, 12488(sp)
	xori s9, s9, 1
	sb s9, 4348(sp)
	slt s9, t0, s8
	sb s9, 4352(sp)
	lw s9, 16032(sp)
	lw s10, 4(sp)
	xor s9, s9, s10
	sw s9, 12492(sp)
	lw s9, 12492(sp)
	seqz s9, s9
	sb s9, 4356(sp)
	slt s9, t6, s1
	sb s9, 4360(sp)
	lw s10, 16036(sp)
	lw s9, 16088(sp)
	slt s9, s9, s10
	sb s9, 4364(sp)
	slt s9, s6, t3
	sb s9, 4368(sp)
	slt s9, t2, a2
	sb s9, 4372(sp)
	slt s9, a7, s1
	sb s9, 4376(sp)
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	slt s9, s9, s10
	sw s9, 12496(sp)
	lw s9, 12496(sp)
	xori s9, s9, 1
	sb s9, 4380(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 4384(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 4388(sp)
	slt s9, a2, a1
	sw s9, 12500(sp)
	lw s9, 12500(sp)
	xori s9, s9, 1
	sb s9, 4392(sp)
	slt s9, s1, s7
	sb s9, 4396(sp)
	xor s9, t2, s6
	sw s9, 12504(sp)
	lw s9, 12504(sp)
	snez s9, s9
	sb s9, 4400(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 4404(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 4408(sp)
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	slt s9, s10, s9
	sb s9, 4412(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 12508(sp)
	lw s9, 12508(sp)
	seqz s9, s9
	sb s9, 4416(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 12512(sp)
	lw s9, 12512(sp)
	snez s9, s9
	sb s9, 4420(sp)
	slt s9, t2, a7
	sw s9, 12516(sp)
	lw s9, 12516(sp)
	xori s9, s9, 1
	sb s9, 4424(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 12520(sp)
	lw s9, 12520(sp)
	seqz s9, s9
	sb s9, 4428(sp)
	slt s9, ra, t1
	sb s9, 4432(sp)
	slt s9, s1, a6
	sw s9, 12524(sp)
	lw s9, 12524(sp)
	xori s9, s9, 1
	sb s9, 4436(sp)
	lw s9, 16056(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 12528(sp)
	lw s9, 12528(sp)
	seqz s9, s9
	sb s9, 4440(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 12532(sp)
	lw s9, 12532(sp)
	xori s9, s9, 1
	sb s9, 4444(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 4448(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 4452(sp)
	xor s9, a7, s6
	sw s9, 12536(sp)
	lw s9, 12536(sp)
	snez s9, s9
	sb s9, 4456(sp)
	xor s9, t0, a5
	sw s9, 12540(sp)
	lw s9, 12540(sp)
	seqz s9, s9
	sb s9, 4460(sp)
	slt s9, t3, a1
	sb s9, 4464(sp)
	xor s9, t2, s2
	sw s9, 12544(sp)
	lw s9, 12544(sp)
	seqz s9, s9
	sb s9, 4468(sp)
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	xor s9, s9, s10
	sw s9, 12548(sp)
	lw s9, 12548(sp)
	seqz s9, s9
	sb s9, 4472(sp)
	xor s9, ra, a1
	sw s9, 12552(sp)
	lw s9, 12552(sp)
	snez s9, s9
	sb s9, 4476(sp)
	slt s9, s5, s8
	sw s9, 12556(sp)
	lw s9, 12556(sp)
	xori s9, s9, 1
	sb s9, 4480(sp)
	slt s9, t0, s6
	sw s9, 12560(sp)
	lw s9, 12560(sp)
	xori s9, s9, 1
	sb s9, 4484(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 4488(sp)
	slt s9, s6, a3
	sb s9, 4492(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 4496(sp)
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	slt s9, s10, s9
	sw s9, 12564(sp)
	lw s9, 12564(sp)
	xori s9, s9, 1
	sb s9, 4500(sp)
	xor s9, t4, ra
	sw s9, 12568(sp)
	lw s9, 12568(sp)
	seqz s9, s9
	sb s9, 4504(sp)
	xor s9, t6, t0
	sw s9, 12572(sp)
	lw s9, 12572(sp)
	seqz s9, s9
	sb s9, 4508(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 12576(sp)
	lw s9, 12576(sp)
	xori s9, s9, 1
	sb s9, 4512(sp)
	slt s9, s4, s3
	sw s9, 12580(sp)
	lw s9, 12580(sp)
	xori s9, s9, 1
	sb s9, 4516(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 12584(sp)
	lw s9, 12584(sp)
	xori s9, s9, 1
	sb s9, 4520(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 12588(sp)
	lw s9, 12588(sp)
	snez s9, s9
	sb s9, 4524(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 4528(sp)
	slt s9, s2, t2
	sw s9, 12592(sp)
	lw s9, 12592(sp)
	xori s9, s9, 1
	sb s9, 4532(sp)
	xor s9, s3, s4
	sw s9, 12596(sp)
	lw s9, 12596(sp)
	snez s9, s9
	sb s9, 4536(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 4540(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 12600(sp)
	lw s9, 12600(sp)
	xori s9, s9, 1
	sb s9, 4544(sp)
	xor s9, a6, t4
	sw s9, 12604(sp)
	lw s9, 12604(sp)
	snez s9, s9
	sb s9, 4548(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 12608(sp)
	lw s9, 12608(sp)
	xori s9, s9, 1
	sb s9, 4552(sp)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 4556(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 12612(sp)
	lw s9, 12612(sp)
	xori s9, s9, 1
	sb s9, 4560(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 4564(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 12616(sp)
	lw s9, 12616(sp)
	xori s9, s9, 1
	sb s9, 4568(sp)
	slt s9, s2, t6
	sb s9, 4572(sp)
	slt s9, t6, s7
	sb s9, 4576(sp)
	slt s9, s3, s4
	sw s9, 12620(sp)
	lw s9, 12620(sp)
	xori s9, s9, 1
	sb s9, 4580(sp)
	slt s9, a6, t0
	sb s9, 4584(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 4588(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 4592(sp)
	slt s9, s4, s3
	sw s9, 12624(sp)
	lw s9, 12624(sp)
	xori s9, s9, 1
	sb s9, 4596(sp)
	slt s9, t6, s6
	sb s9, 4600(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 12628(sp)
	lw s9, 12628(sp)
	seqz s9, s9
	sb s9, 4604(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 12632(sp)
	lw s9, 12632(sp)
	xori s9, s9, 1
	sb s9, 4608(sp)
	slt s9, s0, s0
	sb s9, 4612(sp)
	slt s9, ra, a7
	sw s9, 12636(sp)
	lw s9, 12636(sp)
	xori s9, s9, 1
	sb s9, 4616(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 4620(sp)
	slt s9, s5, s0
	sw s9, 12640(sp)
	lw s9, 12640(sp)
	xori s9, s9, 1
	sb s9, 4624(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 4628(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 12644(sp)
	lw s9, 12644(sp)
	snez s9, s9
	sb s9, 4632(sp)
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	slt s9, s9, s10
	sb s9, 4636(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 12648(sp)
	lw s9, 12648(sp)
	xori s9, s9, 1
	sb s9, 4640(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 12652(sp)
	lw s9, 12652(sp)
	snez s9, s9
	sb s9, 4644(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 12656(sp)
	lw s9, 12656(sp)
	snez s9, s9
	sb s9, 4648(sp)
	lw s10, 16036(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 12660(sp)
	lw s9, 12660(sp)
	seqz s9, s9
	sb s9, 4652(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 4656(sp)
	xor s9, t1, s0
	sw s9, 12664(sp)
	lw s9, 12664(sp)
	snez s9, s9
	sb s9, 4660(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 4664(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 12668(sp)
	lw s9, 12668(sp)
	xori s9, s9, 1
	sb s9, 4668(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 12672(sp)
	lw s9, 12672(sp)
	xori s9, s9, 1
	sb s9, 4672(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 4676(sp)
	xor s9, s7, a3
	sw s9, 12676(sp)
	lw s9, 12676(sp)
	seqz s9, s9
	sb s9, 4680(sp)
	slt s9, t6, t5
	sw s9, 12680(sp)
	lw s9, 12680(sp)
	xori s9, s9, 1
	sb s9, 4684(sp)
	lw s9, 16012(sp)
	lw s10, 0(sp)
	slt s9, s10, s9
	sb s9, 4688(sp)
	slt s9, s8, t4
	sb s9, 4692(sp)
	xor s9, a5, s1
	sw s9, 12684(sp)
	lw s9, 12684(sp)
	snez s9, s9
	sb s9, 4696(sp)
	xor s9, t3, a0
	sw s9, 12688(sp)
	lw s9, 12688(sp)
	seqz s9, s9
	sb s9, 4700(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 12692(sp)
	lw s9, 12692(sp)
	xori s9, s9, 1
	sb s9, 4704(sp)
	slt s9, s2, s6
	sw s9, 12696(sp)
	lw s9, 12696(sp)
	xori s9, s9, 1
	sb s9, 4708(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 4712(sp)
	slt s9, s5, t0
	sb s9, 4716(sp)
	xor s9, t5, s0
	sw s9, 12700(sp)
	lw s9, 12700(sp)
	snez s9, s9
	sb s9, 4720(sp)
	slt s9, a3, t5
	sb s9, 4724(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 12704(sp)
	lw s9, 12704(sp)
	xori s9, s9, 1
	sb s9, 4728(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 12708(sp)
	lw s9, 12708(sp)
	seqz s9, s9
	sb s9, 4732(sp)
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	xor s9, s10, s9
	sw s9, 12712(sp)
	lw s9, 12712(sp)
	seqz s9, s9
	sb s9, 4736(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 4740(sp)
	xor s9, a1, s4
	sw s9, 12716(sp)
	lw s9, 12716(sp)
	seqz s9, s9
	sb s9, 4744(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 12720(sp)
	lw s9, 12720(sp)
	snez s9, s9
	sb s9, 4748(sp)
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sw s9, 12724(sp)
	lw s9, 12724(sp)
	xori s9, s9, 1
	sb s9, 4752(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 12728(sp)
	lw s9, 12728(sp)
	snez s9, s9
	sb s9, 4756(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 12732(sp)
	lw s9, 12732(sp)
	seqz s9, s9
	sb s9, 4760(sp)
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	xor s9, s10, s9
	sw s9, 12736(sp)
	lw s9, 12736(sp)
	snez s9, s9
	sb s9, 4764(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 4768(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 12740(sp)
	lw s9, 12740(sp)
	xori s9, s9, 1
	sb s9, 4772(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 4776(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 12744(sp)
	lw s9, 12744(sp)
	snez s9, s9
	sb s9, 4780(sp)
	slt s9, t3, t2
	sb s9, 4784(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 12748(sp)
	lw s9, 12748(sp)
	xori s9, s9, 1
	sb s9, 4788(sp)
	slt s9, t3, s8
	sw s9, 12752(sp)
	lw s9, 12752(sp)
	xori s9, s9, 1
	sb s9, 4792(sp)
	xor s9, t5, t3
	sw s9, 12756(sp)
	lw s9, 12756(sp)
	seqz s9, s9
	sb s9, 4796(sp)
	slt s9, t0, a0
	sw s9, 12760(sp)
	lw s9, 12760(sp)
	xori s9, s9, 1
	sb s9, 4800(sp)
	slt s9, a1, t5
	sw s9, 12764(sp)
	lw s9, 12764(sp)
	xori s9, s9, 1
	sb s9, 4804(sp)
	slt s9, ra, s2
	sb s9, 4808(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 12768(sp)
	lw s9, 12768(sp)
	xori s9, s9, 1
	sb s9, 4812(sp)
	slt s9, t2, t4
	sw s9, 12772(sp)
	lw s9, 12772(sp)
	xori s9, s9, 1
	sb s9, 4816(sp)
	xor s9, t3, t2
	sw s9, 12776(sp)
	lw s9, 12776(sp)
	seqz s9, s9
	sb s9, 4820(sp)
	slt s9, s4, s4
	sb s9, 4824(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 4828(sp)
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	slt s9, s10, s9
	sw s9, 12780(sp)
	lw s9, 12780(sp)
	xori s9, s9, 1
	sb s9, 4832(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 12784(sp)
	lw s9, 12784(sp)
	snez s9, s9
	sb s9, 4836(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 4840(sp)
	slt s9, s5, a4
	sw s9, 12788(sp)
	lw s9, 12788(sp)
	xori s9, s9, 1
	sb s9, 4844(sp)
	slt s9, a6, a6
	sw s9, 12792(sp)
	lw s9, 12792(sp)
	xori s9, s9, 1
	sb s9, 4848(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 12796(sp)
	lw s9, 12796(sp)
	snez s9, s9
	sb s9, 4852(sp)
	slt s9, a5, s8
	sb s9, 4856(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 12800(sp)
	lw s9, 12800(sp)
	xori s9, s9, 1
	sb s9, 4860(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 12804(sp)
	lw s9, 12804(sp)
	seqz s9, s9
	sb s9, 4864(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 4868(sp)
	xor s9, a7, s11
	sw s9, 12808(sp)
	lw s9, 12808(sp)
	snez s9, s9
	sb s9, 4872(sp)
	slt s9, a7, a6
	sw s9, 12812(sp)
	lw s9, 12812(sp)
	xori s9, s9, 1
	sb s9, 4876(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 4880(sp)
	slt s9, s5, a6
	sw s9, 12816(sp)
	lw s9, 12816(sp)
	xori s9, s9, 1
	sb s9, 4884(sp)
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	slt s9, s10, s9
	sb s9, 4888(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 12820(sp)
	lw s9, 12820(sp)
	snez s9, s9
	sb s9, 4892(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 4896(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 12824(sp)
	lw s9, 12824(sp)
	xori s9, s9, 1
	sb s9, 4900(sp)
	xor s9, t1, t0
	sw s9, 12828(sp)
	lw s9, 12828(sp)
	seqz s9, s9
	sb s9, 4904(sp)
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	slt s9, s9, s10
	sw s9, 12832(sp)
	lw s9, 12832(sp)
	xori s9, s9, 1
	sb s9, 4908(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 4912(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 4916(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 4920(sp)
	slt s9, t6, t2
	sw s9, 12836(sp)
	lw s9, 12836(sp)
	xori s9, s9, 1
	sb s9, 4924(sp)
	slt s9, a2, a1
	sw s9, 12840(sp)
	lw s9, 12840(sp)
	xori s9, s9, 1
	sb s9, 4928(sp)
	xor s9, s1, t4
	sw s9, 12844(sp)
	lw s9, 12844(sp)
	snez s9, s9
	sb s9, 4932(sp)
	xor s9, a6, s0
	sw s9, 12848(sp)
	lw s9, 12848(sp)
	snez s9, s9
	sb s9, 4936(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 4940(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 4944(sp)
	lw s9, 16064(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sw s9, 12852(sp)
	lw s9, 12852(sp)
	xori s9, s9, 1
	sb s9, 4948(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 4952(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 12856(sp)
	lw s9, 12856(sp)
	xori s9, s9, 1
	sb s9, 4956(sp)
	slt s9, s2, a4
	sb s9, 4960(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 4964(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 12860(sp)
	lw s9, 12860(sp)
	xori s9, s9, 1
	sb s9, 4968(sp)
	slt s9, s4, s4
	sb s9, 4972(sp)
	xor s9, a1, s4
	sw s9, 12864(sp)
	lw s9, 12864(sp)
	seqz s9, s9
	sb s9, 4976(sp)
	slt s9, s6, t4
	sb s9, 4980(sp)
	slt s9, a6, s11
	sw s9, 12868(sp)
	lw s9, 12868(sp)
	xori s9, s9, 1
	sb s9, 4984(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 4988(sp)
	slt s9, t0, t1
	sb s9, 4992(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 12872(sp)
	lw s9, 12872(sp)
	seqz s9, s9
	sb s9, 4996(sp)
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sw s9, 12876(sp)
	lw s9, 12876(sp)
	xori s9, s9, 1
	sb s9, 5000(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 5004(sp)
	xor s9, t6, s8
	sw s9, 12880(sp)
	lw s9, 12880(sp)
	seqz s9, s9
	sb s9, 5008(sp)
	slt s9, a5, s8
	sb s9, 5012(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 12884(sp)
	lw s9, 12884(sp)
	xori s9, s9, 1
	sb s9, 5016(sp)
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 12888(sp)
	lw s9, 12888(sp)
	xori s9, s9, 1
	sb s9, 5020(sp)
	slt s9, t2, t4
	sw s9, 12892(sp)
	lw s9, 12892(sp)
	xori s9, s9, 1
	sb s9, 5024(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 5028(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 5032(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 12896(sp)
	lw s9, 12896(sp)
	seqz s9, s9
	sb s9, 5036(sp)
	slt s9, a3, t5
	sb s9, 5040(sp)
	slt s9, a3, t1
	sw s9, 12900(sp)
	lw s9, 12900(sp)
	xori s9, s9, 1
	sb s9, 5044(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 5048(sp)
	lw s10, 16056(sp)
	lw s9, 16072(sp)
	slt s9, s9, s10
	sw s9, 12904(sp)
	lw s9, 12904(sp)
	xori s9, s9, 1
	sb s9, 5052(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 12908(sp)
	lw s9, 12908(sp)
	xori s9, s9, 1
	sb s9, 5056(sp)
	xor s9, t1, s0
	sw s9, 12912(sp)
	lw s9, 12912(sp)
	snez s9, s9
	sb s9, 5060(sp)
	xor s9, s8, s4
	sw s9, 12916(sp)
	lw s9, 12916(sp)
	snez s9, s9
	sb s9, 5064(sp)
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	slt s9, s10, s9
	sw s9, 12920(sp)
	lw s9, 12920(sp)
	xori s9, s9, 1
	sb s9, 5068(sp)
	lw s10, 16036(sp)
	lw s9, 16076(sp)
	slt s9, s10, s9
	sw s9, 12924(sp)
	lw s9, 12924(sp)
	xori s9, s9, 1
	sb s9, 5072(sp)
	slt s9, s3, ra
	sw s9, 12928(sp)
	lw s9, 12928(sp)
	xori s9, s9, 1
	sb s9, 5076(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 12932(sp)
	lw s9, 12932(sp)
	snez s9, s9
	sb s9, 5080(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 5084(sp)
	slt s9, s8, t2
	sw s9, 12936(sp)
	lw s9, 12936(sp)
	xori s9, s9, 1
	sb s9, 5088(sp)
	lw s9, 64(sp)
	sw s9, 12940(sp)
	lw s9, 12940(sp)
	sw s9, 60(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 5092(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 12944(sp)
	lw s9, 12944(sp)
	snez s9, s9
	sb s9, 5096(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 5100(sp)
	slt s9, s0, s3
	sb s9, 5104(sp)
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	xor s9, s10, s9
	sw s9, 12948(sp)
	lw s9, 12948(sp)
	snez s9, s9
	sb s9, 5108(sp)
	lw s10, 16032(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 12952(sp)
	lw s9, 12952(sp)
	seqz s9, s9
	sb s9, 5112(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 5116(sp)
	xor s9, t2, a4
	sw s9, 12956(sp)
	lw s9, 12956(sp)
	snez s9, s9
	sb s9, 5120(sp)
	lw s9, 16052(sp)
	lw s10, 16076(sp)
	xor s9, s10, s9
	sw s9, 12960(sp)
	lw s9, 12960(sp)
	seqz s9, s9
	sb s9, 5124(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 5128(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 12964(sp)
	lw s9, 12964(sp)
	seqz s9, s9
	sb s9, 5132(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 5136(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 12968(sp)
	lw s9, 12968(sp)
	seqz s9, s9
	sb s9, 5140(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 5144(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 12972(sp)
	lw s9, 12972(sp)
	snez s9, s9
	sb s9, 5148(sp)
	slt s9, s2, t6
	sb s9, 5152(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 5156(sp)
	xor s9, t6, t0
	sw s9, 12976(sp)
	lw s9, 12976(sp)
	seqz s9, s9
	sb s9, 5160(sp)
	slt s9, t5, t6
	sw s9, 12980(sp)
	lw s9, 12980(sp)
	xori s9, s9, 1
	sb s9, 5164(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 12984(sp)
	lw s9, 12984(sp)
	xori s9, s9, 1
	sb s9, 5168(sp)
	slt s9, ra, a7
	sw s9, 12988(sp)
	lw s9, 12988(sp)
	xori s9, s9, 1
	sb s9, 5172(sp)
	slt s9, a2, s11
	sb s9, 5176(sp)
	xor s9, a5, s6
	sw s9, 12992(sp)
	lw s9, 12992(sp)
	snez s9, s9
	sb s9, 5180(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 5184(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 12996(sp)
	lw s9, 12996(sp)
	xori s9, s9, 1
	sb s9, 5188(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 13000(sp)
	lw s9, 13000(sp)
	snez s9, s9
	sb s9, 5192(sp)
	slt s9, a1, t5
	sw s9, 13004(sp)
	lw s9, 13004(sp)
	xori s9, s9, 1
	sb s9, 5196(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 13008(sp)
	lw s9, 13008(sp)
	xori s9, s9, 1
	sb s9, 5200(sp)
	slt s9, s5, a6
	sw s9, 13012(sp)
	lw s9, 13012(sp)
	xori s9, s9, 1
	sb s9, 5204(sp)
	slt s9, s3, a3
	sb s9, 5208(sp)
	slt s9, a6, a6
	sw s9, 13016(sp)
	lw s9, 13016(sp)
	xori s9, s9, 1
	sb s9, 5212(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 13020(sp)
	lw s9, 13020(sp)
	xori s9, s9, 1
	sb s9, 5216(sp)
	slt s9, s4, t5
	sw s9, 13024(sp)
	lw s9, 13024(sp)
	xori s9, s9, 1
	sb s9, 5220(sp)
	lw s9, 16080(sp)
	lw s10, 4(sp)
	xor s9, s10, s9
	sw s9, 13028(sp)
	lw s9, 13028(sp)
	snez s9, s9
	sb s9, 5224(sp)
	slt s9, a5, s4
	sb s9, 5228(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 13032(sp)
	lw s9, 13032(sp)
	xori s9, s9, 1
	sb s9, 5232(sp)
	xor s9, a7, s11
	sw s9, 13036(sp)
	lw s9, 13036(sp)
	snez s9, s9
	sb s9, 5236(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 5240(sp)
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	xor s9, s10, s9
	sw s9, 13040(sp)
	lw s9, 13040(sp)
	seqz s9, s9
	sb s9, 5244(sp)
	slt s9, s11, a4
	sb s9, 5248(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 13044(sp)
	lw s9, 13044(sp)
	xori s9, s9, 1
	sb s9, 5252(sp)
	lw s10, 16016(sp)
	lw s9, 16032(sp)
	slt s9, s10, s9
	sb s9, 5256(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 13048(sp)
	lw s9, 13048(sp)
	snez s9, s9
	sb s9, 5260(sp)
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	slt s9, s9, s10
	sw s9, 13052(sp)
	lw s9, 13052(sp)
	xori s9, s9, 1
	sb s9, 5264(sp)
	xor s9, t5, s0
	sw s9, 13056(sp)
	lw s9, 13056(sp)
	snez s9, s9
	sb s9, 5268(sp)
	slt s9, s0, s0
	sb s9, 5272(sp)
	xor s9, t5, t3
	sw s9, 13060(sp)
	lw s9, 13060(sp)
	seqz s9, s9
	sb s9, 5276(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 5280(sp)
	slt s9, s3, s4
	sw s9, 13064(sp)
	lw s9, 13064(sp)
	xori s9, s9, 1
	sb s9, 5284(sp)
	slt s9, a7, a6
	sw s9, 13068(sp)
	lw s9, 13068(sp)
	xori s9, s9, 1
	sb s9, 5288(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 13072(sp)
	lw s9, 13072(sp)
	xori s9, s9, 1
	sb s9, 5292(sp)
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sb s9, 5296(sp)
	slt s9, s5, s8
	sw s9, 13076(sp)
	lw s9, 13076(sp)
	xori s9, s9, 1
	sb s9, 5300(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 5304(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 13080(sp)
	lw s9, 13080(sp)
	snez s9, s9
	sb s9, 5308(sp)
	slt s9, a0, t1
	sb s9, 5312(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 5316(sp)
	xor s9, ra, t1
	sw s9, 13084(sp)
	lw s9, 13084(sp)
	snez s9, s9
	sb s9, 5320(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 13088(sp)
	lw s9, 13088(sp)
	xori s9, s9, 1
	sb s9, 5324(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 5328(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 5332(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 5336(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 5340(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 13092(sp)
	lw s9, 13092(sp)
	xori s9, s9, 1
	sb s9, 5344(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 13096(sp)
	lw s9, 13096(sp)
	snez s9, s9
	sb s9, 5348(sp)
	xor s9, t2, s6
	sw s9, 13100(sp)
	lw s9, 13100(sp)
	snez s9, s9
	sb s9, 5352(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 13104(sp)
	lw s9, 13104(sp)
	xori s9, s9, 1
	sb s9, 5356(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 13108(sp)
	lw s9, 13108(sp)
	xori s9, s9, 1
	sb s9, 5360(sp)
	slt s9, a7, s1
	sb s9, 5364(sp)
	xor s9, a0, a6
	sw s9, 13112(sp)
	lw s9, 13112(sp)
	snez s9, s9
	sb s9, 5368(sp)
	lw s10, 16036(sp)
	lw s9, 16088(sp)
	slt s9, s9, s10
	sb s9, 5372(sp)
	slt s9, t5, ra
	sb s9, 5376(sp)
	slt s9, t5, t4
	sw s9, 13116(sp)
	lw s9, 13116(sp)
	xori s9, s9, 1
	sb s9, 5380(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 13120(sp)
	lw s9, 13120(sp)
	seqz s9, s9
	sb s9, 5384(sp)
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 13124(sp)
	lw s9, 13124(sp)
	xori s9, s9, 1
	sb s9, 5388(sp)
	slt s9, a3, t5
	sw s9, 13128(sp)
	lw s9, 13128(sp)
	xori s9, s9, 1
	sb s9, 5392(sp)
	xor s9, ra, a1
	sw s9, 13132(sp)
	lw s9, 13132(sp)
	snez s9, s9
	sb s9, 5396(sp)
	slt s9, s6, t3
	sb s9, 5400(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 13136(sp)
	lw s9, 13136(sp)
	xori s9, s9, 1
	sb s9, 5404(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 13140(sp)
	lw s9, 13140(sp)
	xori s9, s9, 1
	sb s9, 5408(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 13144(sp)
	lw s9, 13144(sp)
	xori s9, s9, 1
	sb s9, 5412(sp)
	slt s9, t0, s8
	sb s9, 5416(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 13148(sp)
	lw s9, 13148(sp)
	xori s9, s9, 1
	sb s9, 5420(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 13152(sp)
	lw s9, 13152(sp)
	seqz s9, s9
	sb s9, 5424(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 5428(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 5432(sp)
	slt s9, t2, a7
	sw s9, 13156(sp)
	lw s9, 13156(sp)
	xori s9, s9, 1
	sb s9, 5436(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 13160(sp)
	lw s9, 13160(sp)
	seqz s9, s9
	sb s9, 5440(sp)
	lw s9, 16088(sp)
	lw s10, 4(sp)
	slt s9, s9, s10
	sb s9, 5444(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 5448(sp)
	xor s9, t4, ra
	sw s9, 13164(sp)
	lw s9, 13164(sp)
	seqz s9, s9
	sb s9, 5452(sp)
	xor s9, t1, t0
	sw s9, 13168(sp)
	lw s9, 13168(sp)
	seqz s9, s9
	sb s9, 5456(sp)
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	xor s9, s9, s10
	sw s9, 13172(sp)
	lw s9, 13172(sp)
	seqz s9, s9
	sb s9, 5460(sp)
	xor s9, t2, s2
	sw s9, 13176(sp)
	lw s9, 13176(sp)
	snez s9, s9
	sb s9, 5464(sp)
	xor s9, a7, s6
	sw s9, 13180(sp)
	lw s9, 13180(sp)
	snez s9, s9
	sb s9, 5468(sp)
	xor s9, s8, a7
	sw s9, 13184(sp)
	lw s9, 13184(sp)
	seqz s9, s9
	sb s9, 5472(sp)
	xor s9, ra, s11
	sw s9, 13188(sp)
	lw s9, 13188(sp)
	seqz s9, s9
	sb s9, 5476(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 13192(sp)
	lw s9, 13192(sp)
	xori s9, s9, 1
	sb s9, 5480(sp)
	slt s9, t6, s6
	sb s9, 5484(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 5488(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 13196(sp)
	lw s9, 13196(sp)
	snez s9, s9
	sb s9, 5492(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 13200(sp)
	lw s9, 13200(sp)
	snez s9, s9
	sb s9, 5496(sp)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 5500(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 5504(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 13204(sp)
	lw s9, 13204(sp)
	xori s9, s9, 1
	sb s9, 5508(sp)
	xor s9, t3, t2
	sw s9, 13208(sp)
	lw s9, 13208(sp)
	seqz s9, s9
	sb s9, 5512(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 13212(sp)
	lw s9, 13212(sp)
	xori s9, s9, 1
	sb s9, 5516(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	xor s9, s9, s10
	sw s9, 13216(sp)
	lw s9, 13216(sp)
	snez s9, s9
	sb s9, 5520(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 5524(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 13220(sp)
	lw s9, 13220(sp)
	snez s9, s9
	sb s9, 5528(sp)
	slt s9, t6, t5
	sw s9, 13224(sp)
	lw s9, 13224(sp)
	xori s9, s9, 1
	sb s9, 5532(sp)
	xor s9, t2, s2
	sw s9, 13228(sp)
	lw s9, 13228(sp)
	seqz s9, s9
	sb s9, 5536(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 13232(sp)
	lw s9, 13232(sp)
	snez s9, s9
	sb s9, 5540(sp)
	slt s9, s1, s7
	sb s9, 5544(sp)
	slt s9, t1, ra
	sb s9, 5548(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 5552(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 5556(sp)
	slt s9, a6, t0
	sb s9, 5560(sp)
	slt s9, s4, s3
	sw s9, 13236(sp)
	lw s9, 13236(sp)
	xori s9, s9, 1
	sb s9, 5564(sp)
	slt s9, s4, s3
	sw s9, 13240(sp)
	lw s9, 13240(sp)
	xori s9, s9, 1
	sb s9, 5568(sp)
	slt s9, s0, t1
	sw s9, 13244(sp)
	lw s9, 13244(sp)
	xori s9, s9, 1
	sb s9, 5572(sp)
	xor s9, a5, s2
	sw s9, 13248(sp)
	lw s9, 13248(sp)
	snez s9, s9
	sb s9, 5576(sp)
	xor s9, t0, a7
	sw s9, 13252(sp)
	lw s9, 13252(sp)
	snez s9, s9
	sb s9, 5580(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 13256(sp)
	lw s9, 13256(sp)
	xori s9, s9, 1
	sb s9, 5584(sp)
	slt s9, a4, a4
	sb s9, 5588(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 13260(sp)
	lw s9, 13260(sp)
	seqz s9, s9
	sb s9, 5592(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 5596(sp)
	slt s9, t2, a2
	sb s9, 5600(sp)
	slt s9, t3, a1
	sb s9, 5604(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 5608(sp)
	xor s9, s5, s3
	sw s9, 13264(sp)
	lw s9, 13264(sp)
	snez s9, s9
	sb s9, 5612(sp)
	slt s9, s4, s5
	sw s9, 13268(sp)
	lw s9, 13268(sp)
	xori s9, s9, 1
	sb s9, 5616(sp)
	slt s9, ra, t1
	sb s9, 5620(sp)
	xor s9, a5, s1
	sw s9, 13272(sp)
	lw s9, 13272(sp)
	snez s9, s9
	sb s9, 5624(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 13276(sp)
	lw s9, 13276(sp)
	snez s9, s9
	sb s9, 5628(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 5632(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 5636(sp)
	slt s9, s8, a5
	sb s9, 5640(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 13280(sp)
	lw s9, 13280(sp)
	snez s9, s9
	sb s9, 5644(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 13284(sp)
	lw s9, 13284(sp)
	xori s9, s9, 1
	sb s9, 5648(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 13288(sp)
	lw s9, 13288(sp)
	seqz s9, s9
	sb s9, 5652(sp)
	slt s9, a5, t0
	sw s9, 13292(sp)
	lw s9, 13292(sp)
	xori s9, s9, 1
	sb s9, 5656(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 13296(sp)
	lw s9, 13296(sp)
	seqz s9, s9
	sb s9, 5660(sp)
	xor s9, a5, s4
	sw s9, 13300(sp)
	lw s9, 13300(sp)
	seqz s9, s9
	sb s9, 5664(sp)
	slt s9, a1, a1
	sw s9, 13304(sp)
	lw s9, 13304(sp)
	xori s9, s9, 1
	sb s9, 5668(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 13308(sp)
	lw s9, 13308(sp)
	xori s9, s9, 1
	sb s9, 5672(sp)
	xor s9, s4, t3
	sw s9, 13312(sp)
	lw s9, 13312(sp)
	seqz s9, s9
	sb s9, 5676(sp)
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	slt s9, s10, s9
	sw s9, 13316(sp)
	lw s9, 13316(sp)
	xori s9, s9, 1
	sb s9, 5680(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 13320(sp)
	lw s9, 13320(sp)
	xori s9, s9, 1
	sb s9, 5684(sp)
	xor s9, s7, a3
	sw s9, 13324(sp)
	lw s9, 13324(sp)
	seqz s9, s9
	sb s9, 5688(sp)
	slt s9, s8, s3
	sw s9, 13328(sp)
	lw s9, 13328(sp)
	xori s9, s9, 1
	sb s9, 5692(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 5696(sp)
	slt s9, s5, t0
	sb s9, 5700(sp)
	lw s9, 16036(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 13332(sp)
	lw s9, 13332(sp)
	seqz s9, s9
	sb s9, 5704(sp)
	slt s9, t0, s6
	sw s9, 13336(sp)
	lw s9, 13336(sp)
	xori s9, s9, 1
	sb s9, 5708(sp)
	xor s9, s11, s7
	sw s9, 13340(sp)
	lw s9, 13340(sp)
	snez s9, s9
	sb s9, 5712(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 5716(sp)
	slt s9, t2, a7
	sw s9, 13344(sp)
	lw s9, 13344(sp)
	xori s9, s9, 1
	sb s9, 5720(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 13348(sp)
	lw s9, 13348(sp)
	snez s9, s9
	sb s9, 5724(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 5728(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 13352(sp)
	lw s9, 13352(sp)
	seqz s9, s9
	sb s9, 5732(sp)
	xor s9, t1, t3
	sw s9, 13356(sp)
	lw s9, 13356(sp)
	seqz s9, s9
	sb s9, 5736(sp)
	xor s9, t6, a2
	sw s9, 13360(sp)
	lw s9, 13360(sp)
	seqz s9, s9
	sb s9, 5740(sp)
	slt s9, t1, s1
	sw s9, 13364(sp)
	lw s9, 13364(sp)
	xori s9, s9, 1
	sb s9, 5744(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 13368(sp)
	lw s9, 13368(sp)
	seqz s9, s9
	sb s9, 5748(sp)
	slt s9, s6, a3
	sb s9, 5752(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 5756(sp)
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	slt s9, s9, s10
	sw s9, 13372(sp)
	lw s9, 13372(sp)
	xori s9, s9, 1
	sb s9, 5760(sp)
	slt s9, ra, s2
	sb s9, 5764(sp)
	lw s10, 16056(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 13376(sp)
	lw s9, 13376(sp)
	seqz s9, s9
	sb s9, 5768(sp)
	xor s9, s3, s4
	sw s9, 13380(sp)
	lw s9, 13380(sp)
	snez s9, s9
	sb s9, 5772(sp)
	lw s10, 16076(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 13384(sp)
	lw s9, 13384(sp)
	xori s9, s9, 1
	sb s9, 5776(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 13388(sp)
	lw s9, 13388(sp)
	snez s9, s9
	sb s9, 5780(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 13392(sp)
	lw s9, 13392(sp)
	xori s9, s9, 1
	sb s9, 5784(sp)
	slt s9, a7, s1
	sb s9, 5788(sp)
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	slt s9, s9, s10
	sb s9, 5792(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 13396(sp)
	lw s9, 13396(sp)
	snez s9, s9
	sb s9, 5796(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 13400(sp)
	lw s9, 13400(sp)
	snez s9, s9
	sb s9, 5800(sp)
	slt s9, s2, t2
	sw s9, 13404(sp)
	lw s9, 13404(sp)
	xori s9, s9, 1
	sb s9, 5804(sp)
	xor s9, s4, s3
	sw s9, 13408(sp)
	lw s9, 13408(sp)
	snez s9, s9
	sb s9, 5808(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 5812(sp)
	slt s9, s8, t4
	sb s9, 5816(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 5820(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 13412(sp)
	lw s9, 13412(sp)
	seqz s9, s9
	sb s9, 5824(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 5828(sp)
	xor s9, s3, t3
	sw s9, 13416(sp)
	lw s9, 13416(sp)
	snez s9, s9
	sb s9, 5832(sp)
	slt s9, t6, s7
	sw s9, 13420(sp)
	lw s9, 13420(sp)
	xori s9, s9, 1
	sb s9, 5836(sp)
	xor s9, t3, a0
	sw s9, 13424(sp)
	lw s9, 13424(sp)
	seqz s9, s9
	sb s9, 5840(sp)
	slt s9, t3, s8
	sw s9, 13428(sp)
	lw s9, 13428(sp)
	xori s9, s9, 1
	sb s9, 5844(sp)
	slt s9, t0, a0
	sw s9, 13432(sp)
	lw s9, 13432(sp)
	xori s9, s9, 1
	sb s9, 5848(sp)
	slt s9, s5, s7
	sb s9, 5852(sp)
	slt s9, t6, t2
	sw s9, 13436(sp)
	lw s9, 13436(sp)
	xori s9, s9, 1
	sb s9, 5856(sp)
	slt s9, s2, s6
	sw s9, 13440(sp)
	lw s9, 13440(sp)
	xori s9, s9, 1
	sb s9, 5860(sp)
	lw s9, 16064(sp)
	lw s10, 4(sp)
	xor s9, s9, s10
	sw s9, 13444(sp)
	lw s9, 13444(sp)
	seqz s9, s9
	sb s9, 5864(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 13448(sp)
	lw s9, 13448(sp)
	snez s9, s9
	sb s9, 5868(sp)
	lw s9, 16088(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sw s9, 13452(sp)
	lw s9, 13452(sp)
	xori s9, s9, 1
	sb s9, 5872(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 5876(sp)
	lw s10, 16012(sp)
	lw s9, 0(sp)
	slt s9, s9, s10
	sb s9, 5880(sp)
	slt s9, s2, s7
	sw s9, 13456(sp)
	lw s9, 13456(sp)
	xori s9, s9, 1
	sb s9, 5884(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 5888(sp)
	slt s9, t5, t1
	sw s9, 13460(sp)
	lw s9, 13460(sp)
	xori s9, s9, 1
	sb s9, 5892(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 5896(sp)
	slt s9, a0, s1
	sb s9, 5900(sp)
	slt s9, a3, a3
	sw s9, 13464(sp)
	lw s9, 13464(sp)
	xori s9, s9, 1
	sb s9, 5904(sp)
	xor s9, a1, t3
	sw s9, 13468(sp)
	lw s9, 13468(sp)
	seqz s9, s9
	sb s9, 5908(sp)
	lw s9, 16056(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sb s9, 5912(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 5916(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 13472(sp)
	lw s9, 13472(sp)
	snez s9, s9
	sb s9, 5920(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 13476(sp)
	lw s9, 13476(sp)
	xori s9, s9, 1
	sb s9, 5924(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 5928(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 5932(sp)
	slt s9, a5, s7
	sb s9, 5936(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 5940(sp)
	slt s9, s5, a4
	sw s9, 13480(sp)
	lw s9, 13480(sp)
	xori s9, s9, 1
	sb s9, 5944(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 13484(sp)
	lw s9, 13484(sp)
	xori s9, s9, 1
	sb s9, 5948(sp)
	xor s9, t0, a0
	sw s9, 13488(sp)
	lw s9, 13488(sp)
	seqz s9, s9
	sb s9, 5952(sp)
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sb s9, 5956(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 13492(sp)
	lw s9, 13492(sp)
	seqz s9, s9
	sb s9, 5960(sp)
	xor s9, a6, t4
	sw s9, 13496(sp)
	lw s9, 13496(sp)
	snez s9, s9
	sb s9, 5964(sp)
	slt s9, t6, s1
	sb s9, 5968(sp)
	slt s9, t6, s7
	sb s9, 5972(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 13500(sp)
	lw s9, 13500(sp)
	xori s9, s9, 1
	sb s9, 5976(sp)
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	slt s9, s10, s9
	sw s9, 13504(sp)
	lw s9, 13504(sp)
	xori s9, s9, 1
	sb s9, 5980(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 5984(sp)
	slt s9, s1, a6
	sw s9, 13508(sp)
	lw s9, 13508(sp)
	xori s9, s9, 1
	sb s9, 5988(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 5992(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 13512(sp)
	lw s9, 13512(sp)
	snez s9, s9
	sb s9, 5996(sp)
	slt s9, a6, t0
	sb s9, 6000(sp)
	slt s9, t4, s0
	sw s9, 13516(sp)
	lw s9, 13516(sp)
	xori s9, s9, 1
	sb s9, 6004(sp)
	lw s9, 16048(sp)
	lw s10, 16032(sp)
	slt s9, s10, s9
	sw s9, 13520(sp)
	lw s9, 13520(sp)
	xori s9, s9, 1
	sb s9, 6008(sp)
	lw s9, 16028(sp)
	lw s10, 16080(sp)
	xor s9, s9, s10
	sw s9, 13524(sp)
	lw s9, 13524(sp)
	seqz s9, s9
	sb s9, 6012(sp)
	slt s9, t4, a2
	sw s9, 13528(sp)
	lw s9, 13528(sp)
	xori s9, s9, 1
	sb s9, 6016(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 13532(sp)
	lw s9, 13532(sp)
	snez s9, s9
	sb s9, 6020(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 13536(sp)
	lw s9, 13536(sp)
	seqz s9, s9
	sb s9, 6024(sp)
	slt s9, t3, t2
	sb s9, 6028(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 6032(sp)
	lw s10, 16076(sp)
	lw s9, 16072(sp)
	xor s9, s10, s9
	sw s9, 13540(sp)
	lw s9, 13540(sp)
	seqz s9, s9
	sb s9, 6036(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 13544(sp)
	lw s9, 13544(sp)
	xori s9, s9, 1
	sb s9, 6040(sp)
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	slt s9, s10, s9
	sb s9, 6044(sp)
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	xor s9, s9, s10
	sw s9, 13548(sp)
	lw s9, 13548(sp)
	seqz s9, s9
	sb s9, 6048(sp)
	slt s9, a2, a4
	sw s9, 13552(sp)
	lw s9, 13552(sp)
	xori s9, s9, 1
	sb s9, 6052(sp)
	slt s9, s0, a2
	sb s9, 6056(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 13556(sp)
	lw s9, 13556(sp)
	xori s9, s9, 1
	sb s9, 6060(sp)
	slt s9, a0, a5
	sw s9, 13560(sp)
	lw s9, 13560(sp)
	xori s9, s9, 1
	sb s9, 6064(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 6068(sp)
	slt s9, t6, s11
	sw s9, 13564(sp)
	lw s9, 13564(sp)
	xori s9, s9, 1
	sb s9, 6072(sp)
	xor s9, a2, s2
	sw s9, 13568(sp)
	lw s9, 13568(sp)
	seqz s9, s9
	sb s9, 6076(sp)
	slt s9, s5, s0
	sw s9, 13572(sp)
	lw s9, 13572(sp)
	xori s9, s9, 1
	sb s9, 6080(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 13576(sp)
	lw s9, 13576(sp)
	snez s9, s9
	sb s9, 6084(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 13580(sp)
	lw s9, 13580(sp)
	xori s9, s9, 1
	sb s9, 6088(sp)
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sb s9, 6092(sp)
	slt s9, s1, t3
	sw s9, 13584(sp)
	lw s9, 13584(sp)
	xori s9, s9, 1
	sb s9, 6096(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 13588(sp)
	lw s9, 13588(sp)
	snez s9, s9
	sb s9, 6100(sp)
	slt s9, a0, s4
	sb s9, 6104(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 13592(sp)
	lw s9, 13592(sp)
	snez s9, s9
	sb s9, 6108(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 13596(sp)
	lw s9, 13596(sp)
	xori s9, s9, 1
	sb s9, 6112(sp)
	xor s9, t0, a5
	sw s9, 13600(sp)
	lw s9, 13600(sp)
	seqz s9, s9
	sb s9, 6116(sp)
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	xor s9, s10, s9
	sw s9, 13604(sp)
	lw s9, 13604(sp)
	seqz s9, s9
	sb s9, 6120(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 13608(sp)
	lw s9, 13608(sp)
	snez s9, s9
	sb s9, 6124(sp)
	xor s9, s3, t3
	sw s9, 13612(sp)
	lw s9, 13612(sp)
	snez s9, s9
	sb s9, 6128(sp)
	lw s9, 16088(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sw s9, 13616(sp)
	lw s9, 13616(sp)
	xori s9, s9, 1
	sb s9, 6132(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 6136(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 6140(sp)
	xor s9, a6, s0
	sw s9, 13620(sp)
	lw s9, 13620(sp)
	snez s9, s9
	sb s9, 6144(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 6148(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 13624(sp)
	lw s9, 13624(sp)
	xori s9, s9, 1
	sb s9, 6152(sp)
	xor s9, s5, s3
	sw s9, 13628(sp)
	lw s9, 13628(sp)
	snez s9, s9
	sb s9, 6156(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 13632(sp)
	lw s9, 13632(sp)
	snez s9, s9
	sb s9, 6160(sp)
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	xor s9, s10, s9
	sw s9, 13636(sp)
	lw s9, 13636(sp)
	seqz s9, s9
	sb s9, 6164(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 13640(sp)
	lw s9, 13640(sp)
	snez s9, s9
	sb s9, 6168(sp)
	lw s9, 16064(sp)
	lw s10, 4(sp)
	xor s9, s9, s10
	sw s9, 13644(sp)
	lw s9, 13644(sp)
	seqz s9, s9
	sb s9, 6172(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 13648(sp)
	lw s9, 13648(sp)
	xori s9, s9, 1
	sb s9, 6176(sp)
	xor s9, s8, s4
	sw s9, 13652(sp)
	lw s9, 13652(sp)
	snez s9, s9
	sb s9, 6180(sp)
	slt s9, a2, a4
	sw s9, 13656(sp)
	lw s9, 13656(sp)
	xori s9, s9, 1
	sb s9, 6184(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 13660(sp)
	lw s9, 13660(sp)
	xori s9, s9, 1
	sb s9, 6188(sp)
	xor s9, t6, a2
	sw s9, 13664(sp)
	lw s9, 13664(sp)
	seqz s9, s9
	sb s9, 6192(sp)
	xor s9, s4, t3
	sw s9, 13668(sp)
	lw s9, 13668(sp)
	seqz s9, s9
	sb s9, 6196(sp)
	slt s9, a4, a4
	sb s9, 6200(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 13672(sp)
	lw s9, 13672(sp)
	snez s9, s9
	sb s9, 6204(sp)
	slt s9, t0, t1
	sb s9, 6208(sp)
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	slt s9, s9, s10
	sw s9, 13676(sp)
	lw s9, 13676(sp)
	xori s9, s9, 1
	sb s9, 6212(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 13680(sp)
	lw s9, 13680(sp)
	snez s9, s9
	sb s9, 6216(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 13684(sp)
	lw s9, 13684(sp)
	seqz s9, s9
	sb s9, 6220(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 6224(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 6228(sp)
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	xor s9, s9, s10
	sw s9, 13688(sp)
	lw s9, 13688(sp)
	seqz s9, s9
	sb s9, 6232(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 13692(sp)
	lw s9, 13692(sp)
	xori s9, s9, 1
	sb s9, 6236(sp)
	slt s9, t2, a7
	sw s9, 13696(sp)
	lw s9, 13696(sp)
	xori s9, s9, 1
	sb s9, 6240(sp)
	lw s10, 16080(sp)
	lw s9, 4(sp)
	xor s9, s9, s10
	sw s9, 13700(sp)
	lw s9, 13700(sp)
	snez s9, s9
	sb s9, 6244(sp)
	xor s9, s1, t4
	sw s9, 13704(sp)
	lw s9, 13704(sp)
	snez s9, s9
	sb s9, 6248(sp)
	slt s9, a0, t1
	sb s9, 6252(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 6256(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 13708(sp)
	lw s9, 13708(sp)
	seqz s9, s9
	sb s9, 6260(sp)
	lw s9, 16048(sp)
	lw s10, 16032(sp)
	slt s9, s10, s9
	sw s9, 13712(sp)
	lw s9, 13712(sp)
	xori s9, s9, 1
	sb s9, 6264(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 13716(sp)
	lw s9, 13716(sp)
	snez s9, s9
	sb s9, 6268(sp)
	slt s9, a0, s1
	sb s9, 6272(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 13720(sp)
	lw s9, 13720(sp)
	xori s9, s9, 1
	sb s9, 6276(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 13724(sp)
	lw s9, 13724(sp)
	snez s9, s9
	sb s9, 6280(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 13728(sp)
	lw s9, 13728(sp)
	xori s9, s9, 1
	sb s9, 6284(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 6288(sp)
	slt s9, t4, s0
	sw s9, 13732(sp)
	lw s9, 13732(sp)
	xori s9, s9, 1
	sb s9, 6292(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 6296(sp)
	lw s9, 16016(sp)
	lw s10, 16040(sp)
	slt s9, s9, s10
	sw s9, 13736(sp)
	lw s9, 13736(sp)
	xori s9, s9, 1
	sb s9, 6300(sp)
	slt s9, a1, a1
	sw s9, 13740(sp)
	lw s9, 13740(sp)
	xori s9, s9, 1
	sb s9, 6304(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 13744(sp)
	lw s9, 13744(sp)
	snez s9, s9
	sb s9, 6308(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 6312(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 6316(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 13748(sp)
	lw s9, 13748(sp)
	xori s9, s9, 1
	sb s9, 6320(sp)
	lw s10, 16088(sp)
	lw s9, 4(sp)
	slt s9, s10, s9
	sb s9, 6324(sp)
	slt s9, s6, t4
	sb s9, 6328(sp)
	slt s9, a5, t0
	sw s9, 13752(sp)
	lw s9, 13752(sp)
	xori s9, s9, 1
	sb s9, 6332(sp)
	slt s9, s4, t5
	sw s9, 13756(sp)
	lw s9, 13756(sp)
	xori s9, s9, 1
	sb s9, 6336(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 6340(sp)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 6344(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 13760(sp)
	lw s9, 13760(sp)
	snez s9, s9
	sb s9, 6348(sp)
	xor s9, s1, t4
	sw s9, 13764(sp)
	lw s9, 13764(sp)
	snez s9, s9
	sb s9, 6352(sp)
	xor s9, t2, s2
	sw s9, 13768(sp)
	lw s9, 13768(sp)
	seqz s9, s9
	sb s9, 6356(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 6360(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 6364(sp)
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	slt s9, s10, s9
	sw s9, 13772(sp)
	lw s9, 13772(sp)
	xori s9, s9, 1
	sb s9, 6368(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 6372(sp)
	slt s9, s0, s3
	sb s9, 6376(sp)
	slt s9, a0, s1
	sb s9, 6380(sp)
	slt s9, s5, a6
	sw s9, 13776(sp)
	lw s9, 13776(sp)
	xori s9, s9, 1
	sb s9, 6384(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 6388(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 13780(sp)
	lw s9, 13780(sp)
	xori s9, s9, 1
	sb s9, 6392(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 13784(sp)
	lw s9, 13784(sp)
	snez s9, s9
	sb s9, 6396(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 6400(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 6404(sp)
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	xor s9, s10, s9
	sw s9, 13788(sp)
	lw s9, 13788(sp)
	seqz s9, s9
	sb s9, 6408(sp)
	slt s9, s3, ra
	sw s9, 13792(sp)
	lw s9, 13792(sp)
	xori s9, s9, 1
	sb s9, 6412(sp)
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	slt s9, s10, s9
	sw s9, 13796(sp)
	lw s9, 13796(sp)
	xori s9, s9, 1
	sb s9, 6416(sp)
	lw s10, 16076(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 13800(sp)
	lw s9, 13800(sp)
	xori s9, s9, 1
	sb s9, 6420(sp)
	xor s9, t5, s0
	sw s9, 13804(sp)
	lw s9, 13804(sp)
	snez s9, s9
	sb s9, 6424(sp)
	slt s9, s8, t4
	sb s9, 6428(sp)
	slt s9, s2, t6
	sb s9, 6432(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 6436(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 6440(sp)
	xor s9, t2, s2
	sw s9, 13808(sp)
	lw s9, 13808(sp)
	snez s9, s9
	sb s9, 6444(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 6448(sp)
	slt s9, a3, t1
	sw s9, 13812(sp)
	lw s9, 13812(sp)
	xori s9, s9, 1
	sb s9, 6452(sp)
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	xor s9, s9, s10
	sw s9, 13816(sp)
	lw s9, 13816(sp)
	seqz s9, s9
	sb s9, 6456(sp)
	xor s9, t2, a4
	sw s9, 13820(sp)
	lw s9, 13820(sp)
	snez s9, s9
	sb s9, 6460(sp)
	slt s9, ra, t1
	sb s9, 6464(sp)
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	xor s9, s9, s10
	sw s9, 13824(sp)
	lw s9, 13824(sp)
	seqz s9, s9
	sb s9, 6468(sp)
	slt s9, s1, a6
	sw s9, 13828(sp)
	lw s9, 13828(sp)
	xori s9, s9, 1
	sb s9, 6472(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	slt s9, s10, s9
	sw s9, 13832(sp)
	lw s9, 13832(sp)
	xori s9, s9, 1
	sb s9, 6476(sp)
	xor s9, t3, a0
	sw s9, 13836(sp)
	lw s9, 13836(sp)
	seqz s9, s9
	sb s9, 6480(sp)
	slt s9, s6, a3
	sb s9, 6484(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 13840(sp)
	lw s9, 13840(sp)
	xori s9, s9, 1
	sb s9, 6488(sp)
	xor s9, a7, s6
	sw s9, 13844(sp)
	lw s9, 13844(sp)
	snez s9, s9
	sb s9, 6492(sp)
	lw s9, 16044(sp)
	lw s10, 16080(sp)
	slt s9, s10, s9
	sb s9, 6496(sp)
	xor s9, t0, a5
	sw s9, 13848(sp)
	lw s9, 13848(sp)
	seqz s9, s9
	sb s9, 6500(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 6504(sp)
	xor s9, s8, a7
	sw s9, 13852(sp)
	lw s9, 13852(sp)
	seqz s9, s9
	sb s9, 6508(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 13856(sp)
	lw s9, 13856(sp)
	snez s9, s9
	sb s9, 6512(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 13860(sp)
	lw s9, 13860(sp)
	snez s9, s9
	sb s9, 6516(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 6520(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 13864(sp)
	lw s9, 13864(sp)
	xori s9, s9, 1
	sb s9, 6524(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 13868(sp)
	lw s9, 13868(sp)
	snez s9, s9
	sb s9, 6528(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 13872(sp)
	lw s9, 13872(sp)
	xori s9, s9, 1
	sb s9, 6532(sp)
	slt s9, t3, t2
	sb s9, 6536(sp)
	slt s9, s3, a3
	sb s9, 6540(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 6544(sp)
	slt s9, t6, s7
	sb s9, 6548(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 6552(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 13876(sp)
	lw s9, 13876(sp)
	xori s9, s9, 1
	sb s9, 6556(sp)
	slt s9, t5, t1
	sw s9, 13880(sp)
	lw s9, 13880(sp)
	xori s9, s9, 1
	sb s9, 6560(sp)
	slt s9, t5, t6
	sw s9, 13884(sp)
	lw s9, 13884(sp)
	xori s9, s9, 1
	sb s9, 6564(sp)
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	xor s9, s10, s9
	sw s9, 13888(sp)
	lw s9, 13888(sp)
	seqz s9, s9
	sb s9, 6568(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 6572(sp)
	slt s9, s4, s3
	sw s9, 13892(sp)
	lw s9, 13892(sp)
	xori s9, s9, 1
	sb s9, 6576(sp)
	slt s9, t3, s8
	sw s9, 13896(sp)
	lw s9, 13896(sp)
	xori s9, s9, 1
	sb s9, 6580(sp)
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	slt s9, s9, s10
	sw s9, 13900(sp)
	lw s9, 13900(sp)
	xori s9, s9, 1
	sb s9, 6584(sp)
	slt s9, a0, a5
	sw s9, 13904(sp)
	lw s9, 13904(sp)
	xori s9, s9, 1
	sb s9, 6588(sp)
	slt s9, s1, t3
	sw s9, 13908(sp)
	lw s9, 13908(sp)
	xori s9, s9, 1
	sb s9, 6592(sp)
	slt s9, t5, t4
	sw s9, 13912(sp)
	lw s9, 13912(sp)
	xori s9, s9, 1
	sb s9, 6596(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 13916(sp)
	lw s9, 13916(sp)
	xori s9, s9, 1
	sb s9, 6600(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 6604(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 13920(sp)
	lw s9, 13920(sp)
	xori s9, s9, 1
	sb s9, 6608(sp)
	xor s9, a2, s2
	sw s9, 13924(sp)
	lw s9, 13924(sp)
	seqz s9, s9
	sb s9, 6612(sp)
	slt s9, a3, t5
	sb s9, 6616(sp)
	slt s9, s0, s0
	sb s9, 6620(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 13928(sp)
	lw s9, 13928(sp)
	seqz s9, s9
	sb s9, 6624(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 6628(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 13932(sp)
	lw s9, 13932(sp)
	seqz s9, s9
	sb s9, 6632(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 6636(sp)
	slt s9, a1, t5
	sw s9, 13936(sp)
	lw s9, 13936(sp)
	xori s9, s9, 1
	sb s9, 6640(sp)
	slt s9, s4, t5
	sw s9, 13940(sp)
	lw s9, 13940(sp)
	xori s9, s9, 1
	sb s9, 6644(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 6648(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 13944(sp)
	lw s9, 13944(sp)
	snez s9, s9
	sb s9, 6652(sp)
	slt s9, a4, a4
	sb s9, 6656(sp)
	slt s9, s11, a4
	sb s9, 6660(sp)
	slt s9, t4, s0
	sw s9, 13948(sp)
	lw s9, 13948(sp)
	xori s9, s9, 1
	sb s9, 6664(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 6668(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 13952(sp)
	lw s9, 13952(sp)
	seqz s9, s9
	sb s9, 6672(sp)
	xor s9, a5, s6
	sw s9, 13956(sp)
	lw s9, 13956(sp)
	snez s9, s9
	sb s9, 6676(sp)
	slt s9, a2, a4
	sw s9, 13960(sp)
	lw s9, 13960(sp)
	xori s9, s9, 1
	sb s9, 6680(sp)
	slt s9, a6, t0
	sb s9, 6684(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 6688(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 6692(sp)
	xor s9, s8, s4
	sw s9, 13964(sp)
	lw s9, 13964(sp)
	snez s9, s9
	sb s9, 6696(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 13968(sp)
	lw s9, 13968(sp)
	snez s9, s9
	sb s9, 6700(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 13972(sp)
	lw s9, 13972(sp)
	snez s9, s9
	sb s9, 6704(sp)
	slt s9, a7, a6
	sw s9, 13976(sp)
	lw s9, 13976(sp)
	xori s9, s9, 1
	sb s9, 6708(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 13980(sp)
	lw s9, 13980(sp)
	seqz s9, s9
	sb s9, 6712(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 6716(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 6720(sp)
	xor s9, a1, s4
	sw s9, 13984(sp)
	lw s9, 13984(sp)
	seqz s9, s9
	sb s9, 6724(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 6728(sp)
	slt s9, s2, s7
	sw s9, 13988(sp)
	lw s9, 13988(sp)
	xori s9, s9, 1
	sb s9, 6732(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 13992(sp)
	lw s9, 13992(sp)
	snez s9, s9
	sb s9, 6736(sp)
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	xor s9, s9, s10
	sw s9, 13996(sp)
	lw s9, 13996(sp)
	seqz s9, s9
	sb s9, 6740(sp)
	slt s9, a6, t0
	sb s9, 6744(sp)
	slt s9, a1, a1
	sw s9, 14000(sp)
	lw s9, 14000(sp)
	xori s9, s9, 1
	sb s9, 6748(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 14004(sp)
	lw s9, 14004(sp)
	seqz s9, s9
	sb s9, 6752(sp)
	slt s9, t6, t5
	sw s9, 14008(sp)
	lw s9, 14008(sp)
	xori s9, s9, 1
	sb s9, 6756(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 14012(sp)
	lw s9, 14012(sp)
	xori s9, s9, 1
	sb s9, 6760(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 14016(sp)
	lw s9, 14016(sp)
	xori s9, s9, 1
	sb s9, 6764(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 6768(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 6772(sp)
	xor s9, s4, t3
	sw s9, 14020(sp)
	lw s9, 14020(sp)
	seqz s9, s9
	sb s9, 6776(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 14024(sp)
	lw s9, 14024(sp)
	xori s9, s9, 1
	sb s9, 6780(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 14028(sp)
	lw s9, 14028(sp)
	seqz s9, s9
	sb s9, 6784(sp)
	lw s9, 0(sp)
	xor s9, s6, s9
	sw s9, 14032(sp)
	lw s9, 14032(sp)
	snez s9, s9
	sb s9, 6788(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 6792(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 14036(sp)
	lw s9, 14036(sp)
	xori s9, s9, 1
	sb s9, 6796(sp)
	slt s9, t0, a0
	sw s9, 14040(sp)
	lw s9, 14040(sp)
	xori s9, s9, 1
	sb s9, 6800(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 14044(sp)
	lw s9, 14044(sp)
	snez s9, s9
	sb s9, 6804(sp)
	lw s10, 16024(sp)
	lw s9, 16048(sp)
	xor s9, s9, s10
	sw s9, 14048(sp)
	lw s9, 14048(sp)
	snez s9, s9
	sb s9, 6808(sp)
	lw s9, 16060(sp)
	lw s10, 16012(sp)
	xor s9, s9, s10
	sw s9, 14052(sp)
	lw s9, 14052(sp)
	seqz s9, s9
	sb s9, 6812(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 6816(sp)
	slt s9, a5, s7
	sb s9, 6820(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 14056(sp)
	lw s9, 14056(sp)
	xori s9, s9, 1
	sb s9, 6824(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 6828(sp)
	slt s9, s6, t3
	sb s9, 6832(sp)
	slt s9, s2, t2
	sw s9, 14060(sp)
	lw s9, 14060(sp)
	xori s9, s9, 1
	sb s9, 6836(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 14064(sp)
	lw s9, 14064(sp)
	xori s9, s9, 1
	sb s9, 6840(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 14068(sp)
	lw s9, 14068(sp)
	xori s9, s9, 1
	sb s9, 6844(sp)
	lw s9, 16012(sp)
	lw s10, 0(sp)
	slt s9, s10, s9
	sb s9, 6848(sp)
	slt s9, a3, t5
	sw s9, 14072(sp)
	lw s9, 14072(sp)
	xori s9, s9, 1
	sb s9, 6852(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 14076(sp)
	lw s9, 14076(sp)
	xori s9, s9, 1
	sb s9, 6856(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 14080(sp)
	lw s9, 14080(sp)
	seqz s9, s9
	sb s9, 6860(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 14084(sp)
	lw s9, 14084(sp)
	snez s9, s9
	sb s9, 6864(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 14088(sp)
	lw s9, 14088(sp)
	snez s9, s9
	sb s9, 6868(sp)
	xor s9, t0, a7
	sw s9, 14092(sp)
	lw s9, 14092(sp)
	snez s9, s9
	sb s9, 6872(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 6876(sp)
	lw s9, 16056(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 14096(sp)
	lw s9, 14096(sp)
	seqz s9, s9
	sb s9, 6880(sp)
	slt s9, s3, s4
	sw s9, 14100(sp)
	lw s9, 14100(sp)
	xori s9, s9, 1
	sb s9, 6884(sp)
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 14104(sp)
	lw s9, 14104(sp)
	xori s9, s9, 1
	sb s9, 6888(sp)
	slt s9, s0, t1
	sw s9, 14108(sp)
	lw s9, 14108(sp)
	xori s9, s9, 1
	sb s9, 6892(sp)
	slt s9, t1, ra
	sb s9, 6896(sp)
	xor s9, t1, t0
	sw s9, 14112(sp)
	lw s9, 14112(sp)
	seqz s9, s9
	sb s9, 6900(sp)
	slt s9, s4, s5
	sw s9, 14116(sp)
	lw s9, 14116(sp)
	xori s9, s9, 1
	sb s9, 6904(sp)
	lw s10, 16036(sp)
	lw s9, 16076(sp)
	slt s9, s10, s9
	sw s9, 14120(sp)
	lw s9, 14120(sp)
	xori s9, s9, 1
	sb s9, 6908(sp)
	xor s9, t6, t0
	sw s9, 14124(sp)
	lw s9, 14124(sp)
	seqz s9, s9
	sb s9, 6912(sp)
	xor s9, ra, t1
	sw s9, 14128(sp)
	lw s9, 14128(sp)
	snez s9, s9
	sb s9, 6916(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 14132(sp)
	lw s9, 14132(sp)
	seqz s9, s9
	sb s9, 6920(sp)
	lw s9, 16032(sp)
	lw s10, 4(sp)
	xor s9, s9, s10
	sw s9, 14136(sp)
	lw s9, 14136(sp)
	seqz s9, s9
	sb s9, 6924(sp)
	xor s9, t0, a0
	sw s9, 14140(sp)
	lw s9, 14140(sp)
	seqz s9, s9
	sb s9, 6928(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 14144(sp)
	lw s9, 14144(sp)
	xori s9, s9, 1
	sb s9, 6932(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 14148(sp)
	lw s9, 14148(sp)
	xori s9, s9, 1
	sb s9, 6936(sp)
	slt s9, s8, t2
	sw s9, 14152(sp)
	lw s9, 14152(sp)
	xori s9, s9, 1
	sb s9, 6940(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 6944(sp)
	slt s9, t2, a7
	sw s9, 14156(sp)
	lw s9, 14156(sp)
	xori s9, s9, 1
	sb s9, 6948(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 14160(sp)
	lw s9, 14160(sp)
	xori s9, s9, 1
	sb s9, 6952(sp)
	xor s9, s11, s7
	sw s9, 14164(sp)
	lw s9, 14164(sp)
	snez s9, s9
	sb s9, 6956(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 6960(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 14168(sp)
	lw s9, 14168(sp)
	snez s9, s9
	sb s9, 6964(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 14172(sp)
	lw s9, 14172(sp)
	xori s9, s9, 1
	sb s9, 6968(sp)
	slt s9, s2, a4
	sb s9, 6972(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 6976(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 14176(sp)
	lw s9, 14176(sp)
	xori s9, s9, 1
	sb s9, 6980(sp)
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sb s9, 6984(sp)
	lw s10, 16036(sp)
	lw s9, 16088(sp)
	slt s9, s9, s10
	sb s9, 6988(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 14180(sp)
	lw s9, 14180(sp)
	seqz s9, s9
	sb s9, 6992(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 14184(sp)
	lw s9, 14184(sp)
	seqz s9, s9
	sb s9, 6996(sp)
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	xor s9, s10, s9
	sw s9, 14188(sp)
	lw s9, 14188(sp)
	seqz s9, s9
	sb s9, 7000(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 7004(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 7008(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 14192(sp)
	lw s9, 14192(sp)
	xori s9, s9, 1
	sb s9, 7012(sp)
	xor s9, t4, ra
	sw s9, 14196(sp)
	lw s9, 14196(sp)
	seqz s9, s9
	sb s9, 7016(sp)
	xor s9, s7, a3
	sw s9, 14200(sp)
	lw s9, 14200(sp)
	seqz s9, s9
	sb s9, 7020(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 7024(sp)
	slt s9, a5, s8
	sb s9, 7028(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 14204(sp)
	lw s9, 14204(sp)
	xori s9, s9, 1
	sb s9, 7032(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 7036(sp)
	xor s9, ra, a1
	sw s9, 14208(sp)
	lw s9, 14208(sp)
	snez s9, s9
	sb s9, 7040(sp)
	slt s9, a5, t0
	sw s9, 14212(sp)
	lw s9, 14212(sp)
	xori s9, s9, 1
	sb s9, 7044(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 14216(sp)
	lw s9, 14216(sp)
	xori s9, s9, 1
	sb s9, 7048(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 7052(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 14220(sp)
	lw s9, 14220(sp)
	xori s9, s9, 1
	sb s9, 7056(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 7060(sp)
	xor s9, t5, t3
	sw s9, 14224(sp)
	lw s9, 14224(sp)
	seqz s9, s9
	sb s9, 7064(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 14228(sp)
	lw s9, 14228(sp)
	snez s9, s9
	sb s9, 7068(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 14232(sp)
	lw s9, 14232(sp)
	xori s9, s9, 1
	sb s9, 7072(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 14236(sp)
	lw s9, 14236(sp)
	snez s9, s9
	sb s9, 7076(sp)
	slt s9, s5, s0
	sw s9, 14240(sp)
	lw s9, 14240(sp)
	xori s9, s9, 1
	sb s9, 7080(sp)
	slt s9, t4, a2
	sw s9, 14244(sp)
	lw s9, 14244(sp)
	xori s9, s9, 1
	sb s9, 7084(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 14248(sp)
	lw s9, 14248(sp)
	xori s9, s9, 1
	sb s9, 7088(sp)
	slt s9, a6, s11
	sw s9, 14252(sp)
	lw s9, 14252(sp)
	xori s9, s9, 1
	sb s9, 7092(sp)
	slt s9, s5, s7
	sb s9, 7096(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 14256(sp)
	lw s9, 14256(sp)
	snez s9, s9
	sb s9, 7100(sp)
	slt s9, s1, s7
	sb s9, 7104(sp)
	xor s9, s3, t3
	sw s9, 14260(sp)
	lw s9, 14260(sp)
	snez s9, s9
	sb s9, 7108(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 14264(sp)
	lw s9, 14264(sp)
	xori s9, s9, 1
	sb s9, 7112(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 7116(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 14268(sp)
	lw s9, 14268(sp)
	snez s9, s9
	sb s9, 7120(sp)
	xor s9, t1, t3
	sw s9, 14272(sp)
	lw s9, 14272(sp)
	seqz s9, s9
	sb s9, 7124(sp)
	slt s9, a6, a6
	sw s9, 14276(sp)
	lw s9, 14276(sp)
	xori s9, s9, 1
	sb s9, 7128(sp)
	xor s9, s4, s3
	sw s9, 14280(sp)
	lw s9, 14280(sp)
	snez s9, s9
	sb s9, 7132(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 14284(sp)
	lw s9, 14284(sp)
	snez s9, s9
	sb s9, 7136(sp)
	slt s9, a7, s1
	sb s9, 7140(sp)
	slt s9, t6, s7
	sw s9, 14288(sp)
	lw s9, 14288(sp)
	xori s9, s9, 1
	sb s9, 7144(sp)
	xor s9, t2, s6
	sw s9, 14292(sp)
	lw s9, 14292(sp)
	snez s9, s9
	sb s9, 7148(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 14296(sp)
	lw s9, 14296(sp)
	snez s9, s9
	sb s9, 7152(sp)
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	slt s9, s9, s10
	sb s9, 7156(sp)
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 14300(sp)
	lw s9, 14300(sp)
	xori s9, s9, 1
	sb s9, 7160(sp)
	lw s9, 16040(sp)
	slt s9, s9, t1
	sb s9, 7164(sp)
	slt s9, s5, t0
	sb s9, 7168(sp)
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	slt s9, s10, s9
	sw s9, 14304(sp)
	lw s9, 14304(sp)
	xori s9, s9, 1
	sb s9, 7172(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 14308(sp)
	lw s9, 14308(sp)
	xori s9, s9, 1
	sb s9, 7176(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 7180(sp)
	lw s10, 16092(sp)
	lw s9, 16040(sp)
	slt s9, s9, s10
	sb s9, 7184(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 14312(sp)
	lw s9, 14312(sp)
	seqz s9, s9
	sb s9, 7188(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 14316(sp)
	lw s9, 14316(sp)
	xori s9, s9, 1
	sb s9, 7192(sp)
	xor s9, a0, a6
	sw s9, 14320(sp)
	lw s9, 14320(sp)
	snez s9, s9
	sb s9, 7196(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 14324(sp)
	lw s9, 14324(sp)
	snez s9, s9
	sb s9, 7200(sp)
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	slt s9, s9, s10
	sb s9, 7204(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 14328(sp)
	lw s9, 14328(sp)
	snez s9, s9
	sb s9, 7208(sp)
	xor s9, t6, s8
	sw s9, 14332(sp)
	lw s9, 14332(sp)
	seqz s9, s9
	sb s9, 7212(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 7216(sp)
	xor s9, t2, s2
	sw s9, 14336(sp)
	lw s9, 14336(sp)
	snez s9, s9
	sb s9, 7220(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 7224(sp)
	slt s9, s5, s0
	sw s9, 14340(sp)
	lw s9, 14340(sp)
	xori s9, s9, 1
	sb s9, 7228(sp)
	xor s9, s1, t4
	sw s9, 14344(sp)
	lw s9, 14344(sp)
	snez s9, s9
	sb s9, 7232(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 14348(sp)
	lw s9, 14348(sp)
	seqz s9, s9
	sb s9, 7236(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 7240(sp)
	slt s9, a2, a1
	sw s9, 14352(sp)
	lw s9, 14352(sp)
	xori s9, s9, 1
	sb s9, 7244(sp)
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	slt s9, s10, s9
	sw s9, 14356(sp)
	lw s9, 14356(sp)
	xori s9, s9, 1
	sb s9, 7248(sp)
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	slt s9, s9, s10
	sw s9, 14360(sp)
	lw s9, 14360(sp)
	xori s9, s9, 1
	sb s9, 7252(sp)
	lw s9, 16080(sp)
	lw s10, 4(sp)
	xor s9, s10, s9
	sw s9, 14364(sp)
	lw s9, 14364(sp)
	snez s9, s9
	sb s9, 7256(sp)
	xor s9, a2, s2
	sw s9, 14368(sp)
	lw s9, 14368(sp)
	seqz s9, s9
	sb s9, 7260(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 7264(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 7268(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 7272(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 14372(sp)
	lw s9, 14372(sp)
	snez s9, s9
	sb s9, 7276(sp)
	xor s9, a5, s6
	sw s9, 14376(sp)
	lw s9, 14376(sp)
	snez s9, s9
	sb s9, 7280(sp)
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sb s9, 7284(sp)
	xor s9, t2, s6
	sw s9, 14380(sp)
	lw s9, 14380(sp)
	snez s9, s9
	sb s9, 7288(sp)
	slt s9, s6, t4
	sb s9, 7292(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 7296(sp)
	xor s9, t6, a2
	sw s9, 14384(sp)
	lw s9, 14384(sp)
	seqz s9, s9
	sb s9, 7300(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 7304(sp)
	xor s9, t2, s2
	sw s9, 14388(sp)
	lw s9, 14388(sp)
	snez s9, s9
	sb s9, 7308(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 14392(sp)
	lw s9, 14392(sp)
	xori s9, s9, 1
	sb s9, 7312(sp)
	xor s9, s3, t3
	sw s9, 14396(sp)
	lw s9, 14396(sp)
	snez s9, s9
	sb s9, 7316(sp)
	slt s9, a1, t5
	sw s9, 14400(sp)
	lw s9, 14400(sp)
	xori s9, s9, 1
	sb s9, 7320(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 7324(sp)
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sb s9, 7328(sp)
	lw s9, 16076(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sw s9, 14404(sp)
	lw s9, 14404(sp)
	xori s9, s9, 1
	sb s9, 7332(sp)
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	slt s9, s9, s10
	sw s9, 14408(sp)
	lw s9, 14408(sp)
	xori s9, s9, 1
	sb s9, 7336(sp)
	lw s9, 16016(sp)
	slt s9, t5, s9
	sb s9, 7340(sp)
	slt s9, t1, ra
	sb s9, 7344(sp)
	lw s9, 16032(sp)
	xor s9, a7, s9
	sw s9, 14412(sp)
	lw s9, 14412(sp)
	seqz s9, s9
	sb s9, 7348(sp)
	xor s9, s7, a3
	sw s9, 14416(sp)
	lw s9, 14416(sp)
	seqz s9, s9
	sb s9, 7352(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 7356(sp)
	slt s9, ra, s2
	sb s9, 7360(sp)
	xor s9, t0, a7
	sw s9, 14420(sp)
	lw s9, 14420(sp)
	snez s9, s9
	sb s9, 7364(sp)
	xor s9, t6, t0
	sw s9, 14424(sp)
	lw s9, 14424(sp)
	seqz s9, s9
	sb s9, 7368(sp)
	slt s9, s8, t2
	sw s9, 14428(sp)
	lw s9, 14428(sp)
	xori s9, s9, 1
	sb s9, 7372(sp)
	xor s9, s5, s3
	sw s9, 14432(sp)
	lw s9, 14432(sp)
	snez s9, s9
	sb s9, 7376(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 14436(sp)
	lw s9, 14436(sp)
	xori s9, s9, 1
	sb s9, 7380(sp)
	slt s9, a7, s1
	sb s9, 7384(sp)
	lw s9, 16056(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sb s9, 7388(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 14440(sp)
	lw s9, 14440(sp)
	seqz s9, s9
	sb s9, 7392(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 14444(sp)
	lw s9, 14444(sp)
	xori s9, s9, 1
	sb s9, 7396(sp)
	lw s9, 16036(sp)
	slt s9, s9, s0
	sb s9, 7400(sp)
	slt s9, a2, a4
	sw s9, 14448(sp)
	lw s9, 14448(sp)
	xori s9, s9, 1
	sb s9, 7404(sp)
	lw s9, 16024(sp)
	slt s9, a2, s9
	sb s9, 7408(sp)
	slt s9, s0, t1
	sw s9, 14452(sp)
	lw s9, 14452(sp)
	xori s9, s9, 1
	sb s9, 7412(sp)
	slt s9, t6, s7
	sw s9, 14456(sp)
	lw s9, 14456(sp)
	xori s9, s9, 1
	sb s9, 7416(sp)
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	xor s9, s10, s9
	sw s9, 14460(sp)
	lw s9, 14460(sp)
	seqz s9, s9
	sb s9, 7420(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 7424(sp)
	xor s9, s4, s3
	sw s9, 14464(sp)
	lw s9, 14464(sp)
	snez s9, s9
	sb s9, 7428(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 7432(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 14468(sp)
	lw s9, 14468(sp)
	seqz s9, s9
	sb s9, 7436(sp)
	xor s9, a7, s11
	sw s9, 14472(sp)
	lw s9, 14472(sp)
	snez s9, s9
	sb s9, 7440(sp)
	lw s9, 16036(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 14476(sp)
	lw s9, 14476(sp)
	seqz s9, s9
	sb s9, 7444(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 7448(sp)
	slt s9, s6, t3
	sb s9, 7452(sp)
	slt s9, s1, s7
	sb s9, 7456(sp)
	xor s9, ra, s11
	sw s9, 14480(sp)
	lw s9, 14480(sp)
	seqz s9, s9
	sb s9, 7460(sp)
	slt s9, t6, s1
	sb s9, 7464(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 14484(sp)
	lw s9, 14484(sp)
	seqz s9, s9
	sb s9, 7468(sp)
	slt s9, s4, s3
	sw s9, 14488(sp)
	lw s9, 14488(sp)
	xori s9, s9, 1
	sb s9, 7472(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 7476(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 14492(sp)
	lw s9, 14492(sp)
	snez s9, s9
	sb s9, 7480(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 7484(sp)
	lw s9, 16076(sp)
	slt s9, s9, a1
	sb s9, 7488(sp)
	lw s9, 16020(sp)
	slt s9, s9, s1
	sb s9, 7492(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 7496(sp)
	xor s9, a1, s4
	sw s9, 14496(sp)
	lw s9, 14496(sp)
	seqz s9, s9
	sb s9, 7500(sp)
	lw s9, 16092(sp)
	slt s9, s9, t4
	sw s9, 14500(sp)
	lw s9, 14500(sp)
	xori s9, s9, 1
	sb s9, 7504(sp)
	xor s9, t5, s0
	sw s9, 14504(sp)
	lw s9, 14504(sp)
	snez s9, s9
	sb s9, 7508(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 14508(sp)
	lw s9, 14508(sp)
	xori s9, s9, 1
	sb s9, 7512(sp)
	slt s9, t2, a2
	sb s9, 7516(sp)
	xor s9, a5, s4
	sw s9, 14512(sp)
	lw s9, 14512(sp)
	seqz s9, s9
	sb s9, 7520(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 14516(sp)
	lw s9, 14516(sp)
	xori s9, s9, 1
	sb s9, 7524(sp)
	xor s9, s4, t3
	sw s9, 14520(sp)
	lw s9, 14520(sp)
	seqz s9, s9
	sb s9, 7528(sp)
	xor s9, a6, t4
	sw s9, 14524(sp)
	lw s9, 14524(sp)
	snez s9, s9
	sb s9, 7532(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 14528(sp)
	lw s9, 14528(sp)
	snez s9, s9
	sb s9, 7536(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 7540(sp)
	xor s9, s8, s4
	sw s9, 14532(sp)
	lw s9, 14532(sp)
	snez s9, s9
	sb s9, 7544(sp)
	slt s9, t6, s11
	sw s9, 14536(sp)
	lw s9, 14536(sp)
	xori s9, s9, 1
	sb s9, 7548(sp)
	slt s9, t3, s8
	sw s9, 14540(sp)
	lw s9, 14540(sp)
	xori s9, s9, 1
	sb s9, 7552(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 14544(sp)
	lw s9, 14544(sp)
	snez s9, s9
	sb s9, 7556(sp)
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	slt s9, s10, s9
	sw s9, 14548(sp)
	lw s9, 14548(sp)
	xori s9, s9, 1
	sb s9, 7560(sp)
	slt s9, s5, s7
	sb s9, 7564(sp)
	slt s9, s2, t6
	sb s9, 7568(sp)
	slt s9, a0, t1
	sb s9, 7572(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 14552(sp)
	lw s9, 14552(sp)
	xori s9, s9, 1
	sb s9, 7576(sp)
	lw s9, 16012(sp)
	lw s10, 0(sp)
	slt s9, s10, s9
	sb s9, 7580(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 14556(sp)
	lw s9, 14556(sp)
	xori s9, s9, 1
	sb s9, 7584(sp)
	xor s9, s3, s4
	sw s9, 14560(sp)
	lw s9, 14560(sp)
	snez s9, s9
	sb s9, 7588(sp)
	xor s9, a5, s1
	sw s9, 14564(sp)
	lw s9, 14564(sp)
	snez s9, s9
	sb s9, 7592(sp)
	slt s9, s3, s4
	sw s9, 14568(sp)
	lw s9, 14568(sp)
	xori s9, s9, 1
	sb s9, 7596(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 14572(sp)
	lw s9, 14572(sp)
	xori s9, s9, 1
	sb s9, 7600(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 7604(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 14576(sp)
	lw s9, 14576(sp)
	seqz s9, s9
	sb s9, 7608(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 14580(sp)
	lw s9, 14580(sp)
	xori s9, s9, 1
	sb s9, 7612(sp)
	slt s9, a5, t0
	sw s9, 14584(sp)
	lw s9, 14584(sp)
	xori s9, s9, 1
	sb s9, 7616(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 14588(sp)
	lw s9, 14588(sp)
	snez s9, s9
	sb s9, 7620(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 14592(sp)
	lw s9, 14592(sp)
	snez s9, s9
	sb s9, 7624(sp)
	lw s9, 16072(sp)
	xor s9, s9, s8
	sw s9, 14596(sp)
	lw s9, 14596(sp)
	snez s9, s9
	sb s9, 7628(sp)
	slt s9, a5, s8
	sb s9, 7632(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 7636(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 14600(sp)
	lw s9, 14600(sp)
	xori s9, s9, 1
	sb s9, 7640(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 7644(sp)
	xor s9, a6, s0
	sw s9, 14604(sp)
	lw s9, 14604(sp)
	snez s9, s9
	sb s9, 7648(sp)
	slt s9, t2, a7
	sw s9, 14608(sp)
	lw s9, 14608(sp)
	xori s9, s9, 1
	sb s9, 7652(sp)
	slt s9, t0, a0
	sw s9, 14612(sp)
	lw s9, 14612(sp)
	xori s9, s9, 1
	sb s9, 7656(sp)
	slt s9, t6, s7
	sb s9, 7660(sp)
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	slt s9, s9, s10
	sb s9, 7664(sp)
	slt s9, t0, s8
	sb s9, 7668(sp)
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sw s9, 14616(sp)
	lw s9, 14616(sp)
	xori s9, s9, 1
	sb s9, 7672(sp)
	lw s10, 16092(sp)
	lw s9, 16040(sp)
	slt s9, s9, s10
	sb s9, 7676(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 7680(sp)
	slt s9, a3, t5
	sb s9, 7684(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 14620(sp)
	lw s9, 14620(sp)
	xori s9, s9, 1
	sb s9, 7688(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 7692(sp)
	slt s9, a5, s4
	sb s9, 7696(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 7700(sp)
	slt s9, a7, a6
	sw s9, 14624(sp)
	lw s9, 14624(sp)
	xori s9, s9, 1
	sb s9, 7704(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 7708(sp)
	xor s9, t1, s0
	sw s9, 14628(sp)
	lw s9, 14628(sp)
	snez s9, s9
	sb s9, 7712(sp)
	lw s9, 16088(sp)
	xor s9, s9, t5
	sw s9, 14632(sp)
	lw s9, 14632(sp)
	seqz s9, s9
	sb s9, 7716(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 7720(sp)
	slt s9, s2, t2
	sw s9, 14636(sp)
	lw s9, 14636(sp)
	xori s9, s9, 1
	sb s9, 7724(sp)
	slt s9, a6, a6
	sw s9, 14640(sp)
	lw s9, 14640(sp)
	xori s9, s9, 1
	sb s9, 7728(sp)
	xor s9, s11, s7
	sw s9, 14644(sp)
	lw s9, 14644(sp)
	snez s9, s9
	sb s9, 7732(sp)
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	xor s9, s9, s10
	sw s9, 14648(sp)
	lw s9, 14648(sp)
	seqz s9, s9
	sb s9, 7736(sp)
	slt s9, s5, s0
	sw s9, 14652(sp)
	lw s9, 14652(sp)
	xori s9, s9, 1
	sb s9, 7740(sp)
	xor s9, t1, t3
	sw s9, 14656(sp)
	lw s9, 14656(sp)
	seqz s9, s9
	sb s9, 7744(sp)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 7748(sp)
	slt s9, t6, s6
	sb s9, 7752(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 14660(sp)
	lw s9, 14660(sp)
	xori s9, s9, 1
	sb s9, 7756(sp)
	slt s9, t3, t2
	sb s9, 7760(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 7764(sp)
	slt s9, s8, s3
	sw s9, 14664(sp)
	lw s9, 14664(sp)
	xori s9, s9, 1
	sb s9, 7768(sp)
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	xor s9, s9, s10
	sw s9, 14668(sp)
	lw s9, 14668(sp)
	seqz s9, s9
	sb s9, 7772(sp)
	lw s10, 16088(sp)
	lw s9, 4(sp)
	slt s9, s10, s9
	sb s9, 7776(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 14672(sp)
	lw s9, 14672(sp)
	snez s9, s9
	sb s9, 7780(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 14676(sp)
	lw s9, 14676(sp)
	seqz s9, s9
	sb s9, 7784(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 14680(sp)
	lw s9, 14680(sp)
	xori s9, s9, 1
	sb s9, 7788(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	xor s9, s10, s9
	sw s9, 14684(sp)
	lw s9, 14684(sp)
	snez s9, s9
	sb s9, 7792(sp)
	xor s9, s8, a7
	sw s9, 14688(sp)
	lw s9, 14688(sp)
	seqz s9, s9
	sb s9, 7796(sp)
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	slt s9, s10, s9
	sw s9, 14692(sp)
	lw s9, 14692(sp)
	xori s9, s9, 1
	sb s9, 7800(sp)
	slt s9, a1, a1
	sw s9, 14696(sp)
	lw s9, 14696(sp)
	xori s9, s9, 1
	sb s9, 7804(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 7808(sp)
	slt s9, t3, a1
	sb s9, 7812(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 7816(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 14700(sp)
	lw s9, 14700(sp)
	xori s9, s9, 1
	sb s9, 7820(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 14704(sp)
	lw s9, 14704(sp)
	xori s9, s9, 1
	sb s9, 7824(sp)
	lw s9, 16056(sp)
	slt s9, s9, s6
	sb s9, 7828(sp)
	slt s9, s1, a6
	sw s9, 14708(sp)
	lw s9, 14708(sp)
	xori s9, s9, 1
	sb s9, 7832(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 14712(sp)
	lw s9, 14712(sp)
	snez s9, s9
	sb s9, 7836(sp)
	xor s9, t5, t3
	sw s9, 14716(sp)
	lw s9, 14716(sp)
	seqz s9, s9
	sb s9, 7840(sp)
	slt s9, a3, t5
	sw s9, 14720(sp)
	lw s9, 14720(sp)
	xori s9, s9, 1
	sb s9, 7844(sp)
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	slt s9, s9, s10
	sb s9, 7848(sp)
	xor s9, ra, a1
	sw s9, 14724(sp)
	lw s9, 14724(sp)
	snez s9, s9
	sb s9, 7852(sp)
	slt s9, s5, a4
	sw s9, 14728(sp)
	lw s9, 14728(sp)
	xori s9, s9, 1
	sb s9, 7856(sp)
	slt s9, a0, s1
	sb s9, 7860(sp)
	xor s9, t0, a0
	sw s9, 14732(sp)
	lw s9, 14732(sp)
	seqz s9, s9
	sb s9, 7864(sp)
	slt s9, s2, s7
	sw s9, 14736(sp)
	lw s9, 14736(sp)
	xori s9, s9, 1
	sb s9, 7868(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 14740(sp)
	lw s9, 14740(sp)
	seqz s9, s9
	sb s9, 7872(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 7876(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 7880(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 14744(sp)
	lw s9, 14744(sp)
	seqz s9, s9
	sb s9, 7884(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 14748(sp)
	lw s9, 14748(sp)
	seqz s9, s9
	sb s9, 7888(sp)
	slt s9, t0, s6
	sw s9, 14752(sp)
	lw s9, 14752(sp)
	xori s9, s9, 1
	sb s9, 7892(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 7896(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 14756(sp)
	lw s9, 14756(sp)
	snez s9, s9
	sb s9, 7900(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 7904(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 14760(sp)
	lw s9, 14760(sp)
	snez s9, s9
	sb s9, 7908(sp)
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 14764(sp)
	lw s9, 14764(sp)
	xori s9, s9, 1
	sb s9, 7912(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 7916(sp)
	slt s9, s8, t4
	sb s9, 7920(sp)
	xor s9, ra, t1
	sw s9, 14768(sp)
	lw s9, 14768(sp)
	snez s9, s9
	sb s9, 7924(sp)
	lw s9, 16056(sp)
	lw s10, 0(sp)
	xor s9, s10, s9
	sw s9, 14772(sp)
	lw s9, 14772(sp)
	seqz s9, s9
	sb s9, 7928(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 14776(sp)
	lw s9, 14776(sp)
	xori s9, s9, 1
	sb s9, 7932(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 14780(sp)
	lw s9, 14780(sp)
	snez s9, s9
	sb s9, 7936(sp)
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	xor s9, s10, s9
	sw s9, 14784(sp)
	lw s9, 14784(sp)
	seqz s9, s9
	sb s9, 7940(sp)
	slt s9, a0, s4
	sb s9, 7944(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 14788(sp)
	lw s9, 14788(sp)
	xori s9, s9, 1
	sb s9, 7948(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 14792(sp)
	lw s9, 14792(sp)
	xori s9, s9, 1
	sb s9, 7952(sp)
	slt s9, s11, a4
	sb s9, 7956(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 14796(sp)
	lw s9, 14796(sp)
	xori s9, s9, 1
	sb s9, 7960(sp)
	slt s9, s5, s8
	sw s9, 14800(sp)
	lw s9, 14800(sp)
	xori s9, s9, 1
	sb s9, 7964(sp)
	slt s9, a7, s1
	sb s9, 7968(sp)
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	slt s9, s10, s9
	sb s9, 7972(sp)
	lw s9, 16060(sp)
	slt s9, s9, t1
	sb s9, 7976(sp)
	slt s9, s0, s3
	sb s9, 7980(sp)
	slt s9, a6, t0
	sb s9, 7984(sp)
	slt s9, t4, a2
	sw s9, 14804(sp)
	lw s9, 14804(sp)
	xori s9, s9, 1
	sb s9, 7988(sp)
	slt s9, s8, a5
	sb s9, 7992(sp)
	slt s9, a6, t0
	sb s9, 7996(sp)
	slt s9, t5, t6
	sw s9, 14808(sp)
	lw s9, 14808(sp)
	xori s9, s9, 1
	sb s9, 8000(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 14812(sp)
	lw s9, 14812(sp)
	xori s9, s9, 1
	sb s9, 8004(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 14816(sp)
	lw s9, 14816(sp)
	snez s9, s9
	sb s9, 8008(sp)
	slt s9, s3, ra
	sw s9, 14820(sp)
	lw s9, 14820(sp)
	xori s9, s9, 1
	sb s9, 8012(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 14824(sp)
	lw s9, 14824(sp)
	xori s9, s9, 1
	sb s9, 8016(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 14828(sp)
	lw s9, 14828(sp)
	snez s9, s9
	sb s9, 8020(sp)
	xor s9, t3, a0
	sw s9, 14832(sp)
	lw s9, 14832(sp)
	seqz s9, s9
	sb s9, 8024(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 14836(sp)
	lw s9, 14836(sp)
	snez s9, s9
	sb s9, 8028(sp)
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	slt s9, s10, s9
	sw s9, 14840(sp)
	lw s9, 14840(sp)
	xori s9, s9, 1
	sb s9, 8032(sp)
	slt s9, a2, s11
	sb s9, 8036(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 14844(sp)
	lw s9, 14844(sp)
	seqz s9, s9
	sb s9, 8040(sp)
	slt s9, s0, s0
	sb s9, 8044(sp)
	slt s9, s2, a4
	sb s9, 8048(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 8052(sp)
	lw s9, 16092(sp)
	xor s9, s9, t3
	sw s9, 14848(sp)
	lw s9, 14848(sp)
	snez s9, s9
	sb s9, 8056(sp)
	xor s9, t1, t0
	sw s9, 14852(sp)
	lw s9, 14852(sp)
	seqz s9, s9
	sb s9, 8060(sp)
	slt s9, s4, s4
	sb s9, 8064(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 14856(sp)
	lw s9, 14856(sp)
	snez s9, s9
	sb s9, 8068(sp)
	slt s9, t1, s1
	sw s9, 14860(sp)
	lw s9, 14860(sp)
	xori s9, s9, 1
	sb s9, 8072(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 8076(sp)
	slt s9, a3, a3
	sw s9, 14864(sp)
	lw s9, 14864(sp)
	xori s9, s9, 1
	sb s9, 8080(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 14868(sp)
	lw s9, 14868(sp)
	seqz s9, s9
	sb s9, 8084(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 8088(sp)
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	xor s9, s10, s9
	sw s9, 14872(sp)
	lw s9, 14872(sp)
	snez s9, s9
	sb s9, 8092(sp)
	slt s9, s5, a6
	sw s9, 14876(sp)
	lw s9, 14876(sp)
	xori s9, s9, 1
	sb s9, 8096(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 8100(sp)
	lw s9, 16060(sp)
	slt s9, s8, s9
	sw s9, 14880(sp)
	lw s9, 14880(sp)
	xori s9, s9, 1
	sb s9, 8104(sp)
	slt s9, ra, a7
	sw s9, 14884(sp)
	lw s9, 14884(sp)
	xori s9, s9, 1
	sb s9, 8108(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 8112(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 8116(sp)
	xor s9, s1, t4
	sw s9, 14888(sp)
	lw s9, 14888(sp)
	snez s9, s9
	sb s9, 8120(sp)
	xor s9, a0, a6
	sw s9, 14892(sp)
	lw s9, 14892(sp)
	snez s9, s9
	sb s9, 8124(sp)
	lw s9, 16056(sp)
	lw s10, 16084(sp)
	slt s9, s10, s9
	sw s9, 14896(sp)
	lw s9, 14896(sp)
	xori s9, s9, 1
	sb s9, 8128(sp)
	slt s9, s4, s3
	sw s9, 14900(sp)
	lw s9, 14900(sp)
	xori s9, s9, 1
	sb s9, 8132(sp)
	xor s9, t0, a5
	sw s9, 14904(sp)
	lw s9, 14904(sp)
	seqz s9, s9
	sb s9, 8136(sp)
	lw s9, 16028(sp)
	slt s9, a6, s9
	sw s9, 14908(sp)
	lw s9, 14908(sp)
	xori s9, s9, 1
	sb s9, 8140(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 8144(sp)
	slt s9, t0, t1
	sb s9, 8148(sp)
	xor s9, t6, s8
	sw s9, 14912(sp)
	lw s9, 14912(sp)
	seqz s9, s9
	sb s9, 8152(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 8156(sp)
	slt s9, a6, s11
	sw s9, 14916(sp)
	lw s9, 14916(sp)
	xori s9, s9, 1
	sb s9, 8160(sp)
	lw s9, 16048(sp)
	lw s10, 16032(sp)
	slt s9, s10, s9
	sw s9, 14920(sp)
	lw s9, 14920(sp)
	xori s9, s9, 1
	sb s9, 8164(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 8168(sp)
	xor s9, t2, s2
	sw s9, 14924(sp)
	lw s9, 14924(sp)
	seqz s9, s9
	sb s9, 8172(sp)
	xor s9, a1, t3
	sw s9, 14928(sp)
	lw s9, 14928(sp)
	seqz s9, s9
	sb s9, 8176(sp)
	xor s9, t4, ra
	sw s9, 14932(sp)
	lw s9, 14932(sp)
	seqz s9, s9
	sb s9, 8180(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 14936(sp)
	lw s9, 14936(sp)
	seqz s9, s9
	sb s9, 8184(sp)
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	slt s9, s10, s9
	sw s9, 14940(sp)
	lw s9, 14940(sp)
	xori s9, s9, 1
	sb s9, 8188(sp)
	xor s9, a5, s2
	sw s9, 14944(sp)
	lw s9, 14944(sp)
	snez s9, s9
	sb s9, 8192(sp)
	slt s9, t6, s7
	sw s9, 14948(sp)
	lw s9, 14948(sp)
	xori s9, s9, 1
	sb s9, 8196(sp)
	slt s9, t0, t1
	sb s9, 8200(sp)
	lw s9, 0(sp)
	slt s9, s9, s9
	sb s9, 8204(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 14952(sp)
	lw s9, 14952(sp)
	xori s9, s9, 1
	sb s9, 8208(sp)
	xor s9, t2, s6
	sw s9, 14956(sp)
	lw s9, 14956(sp)
	snez s9, s9
	sb s9, 8212(sp)
	lw s9, 16020(sp)
	xor s9, s9, t5
	sw s9, 14960(sp)
	lw s9, 14960(sp)
	seqz s9, s9
	sb s9, 8216(sp)
	xor s9, a5, s4
	sw s9, 14964(sp)
	lw s9, 14964(sp)
	seqz s9, s9
	sb s9, 8220(sp)
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 14968(sp)
	lw s9, 14968(sp)
	xori s9, s9, 1
	sb s9, 8224(sp)
	lw s9, 16080(sp)
	slt s9, t2, s9
	sw s9, 14972(sp)
	lw s9, 14972(sp)
	xori s9, s9, 1
	sb s9, 8228(sp)
	slt s9, a3, t5
	sw s9, 14976(sp)
	lw s9, 14976(sp)
	xori s9, s9, 1
	sb s9, 8232(sp)
	slt s9, s0, t1
	sw s9, 14980(sp)
	lw s9, 14980(sp)
	xori s9, s9, 1
	sb s9, 8236(sp)
	lw s9, 16084(sp)
	slt s9, s5, s9
	sb s9, 8240(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 8244(sp)
	slt s9, t2, a7
	sw s9, 14984(sp)
	lw s9, 14984(sp)
	xori s9, s9, 1
	sb s9, 8248(sp)
	slt s9, s8, a5
	sb s9, 8252(sp)
	lw s9, 16040(sp)
	slt s9, t4, s9
	sb s9, 8256(sp)
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	xor s9, s10, s9
	sw s9, 14988(sp)
	lw s9, 14988(sp)
	seqz s9, s9
	sb s9, 8260(sp)
	slt s9, a0, t1
	sb s9, 8264(sp)
	xor s9, a7, s6
	sw s9, 14992(sp)
	lw s9, 14992(sp)
	snez s9, s9
	sb s9, 8268(sp)
	lw s9, 16064(sp)
	slt s9, s9, s11
	sw s9, 14996(sp)
	lw s9, 14996(sp)
	xori s9, s9, 1
	sb s9, 8272(sp)
	slt s9, s2, t2
	sw s9, 15000(sp)
	lw s9, 15000(sp)
	xori s9, s9, 1
	sb s9, 8276(sp)
	slt s9, t1, ra
	sb s9, 8280(sp)
	lw s10, 16036(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 15004(sp)
	lw s9, 15004(sp)
	seqz s9, s9
	sb s9, 8284(sp)
	slt s9, a2, a4
	sw s9, 15008(sp)
	lw s9, 15008(sp)
	xori s9, s9, 1
	sb s9, 8288(sp)
	slt s9, t5, t4
	sw s9, 15012(sp)
	lw s9, 15012(sp)
	xori s9, s9, 1
	sb s9, 8292(sp)
	lw s9, 16068(sp)
	slt s9, t5, s9
	sw s9, 15016(sp)
	lw s9, 15016(sp)
	xori s9, s9, 1
	sb s9, 8296(sp)
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	slt s9, s9, s10
	sw s9, 15020(sp)
	lw s9, 15020(sp)
	xori s9, s9, 1
	sb s9, 8300(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 15024(sp)
	lw s9, 15024(sp)
	snez s9, s9
	sb s9, 8304(sp)
	xor s9, t1, t3
	sw s9, 15028(sp)
	lw s9, 15028(sp)
	seqz s9, s9
	sb s9, 8308(sp)
	lw s9, 16064(sp)
	slt s9, s9, s3
	sb s9, 8312(sp)
	lw s9, 0(sp)
	slt s9, s9, a7
	sb s9, 8316(sp)
	lw s9, 16028(sp)
	xor s9, a1, s9
	sw s9, 15032(sp)
	lw s9, 15032(sp)
	seqz s9, s9
	sb s9, 8320(sp)
	lw s9, 16016(sp)
	xor s9, s9, a5
	sw s9, 15036(sp)
	lw s9, 15036(sp)
	snez s9, s9
	sb s9, 8324(sp)
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	slt s9, s10, s9
	sb s9, 8328(sp)
	slt s9, t1, s1
	sw s9, 15040(sp)
	lw s9, 15040(sp)
	xori s9, s9, 1
	sb s9, 8332(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 15044(sp)
	lw s9, 15044(sp)
	snez s9, s9
	sb s9, 8336(sp)
	xor s9, t6, t0
	sw s9, 15048(sp)
	lw s9, 15048(sp)
	seqz s9, s9
	sb s9, 8340(sp)
	xor s9, ra, t1
	sw s9, 15052(sp)
	lw s9, 15052(sp)
	snez s9, s9
	sb s9, 8344(sp)
	lw s9, 16024(sp)
	slt s9, s9, a6
	sb s9, 8348(sp)
	slt s9, t5, t6
	sw s9, 15056(sp)
	lw s9, 15056(sp)
	xori s9, s9, 1
	sb s9, 8352(sp)
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	slt s9, s9, s10
	sb s9, 8356(sp)
	slt s9, s3, s4
	sw s9, 15060(sp)
	lw s9, 15060(sp)
	xori s9, s9, 1
	sb s9, 8360(sp)
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	slt s9, s9, s10
	sb s9, 8364(sp)
	xor s9, a6, t4
	sw s9, 15064(sp)
	lw s9, 15064(sp)
	snez s9, s9
	sb s9, 8368(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 15068(sp)
	lw s9, 15068(sp)
	snez s9, s9
	sb s9, 8372(sp)
	lw s10, 16056(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 15072(sp)
	lw s9, 15072(sp)
	seqz s9, s9
	sb s9, 8376(sp)
	xor s9, t2, s2
	sw s9, 15076(sp)
	lw s9, 15076(sp)
	seqz s9, s9
	sb s9, 8380(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 15080(sp)
	lw s9, 15080(sp)
	snez s9, s9
	sb s9, 8384(sp)
	xor s9, a2, s2
	sw s9, 15084(sp)
	lw s9, 15084(sp)
	seqz s9, s9
	sb s9, 8388(sp)
	xor s9, t1, t0
	sw s9, 15088(sp)
	lw s9, 15088(sp)
	seqz s9, s9
	sb s9, 8392(sp)
	xor s9, t6, a2
	sw s9, 15092(sp)
	lw s9, 15092(sp)
	seqz s9, s9
	sb s9, 8396(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 8400(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 15096(sp)
	lw s9, 15096(sp)
	snez s9, s9
	sb s9, 8404(sp)
	slt s9, a7, s1
	sb s9, 8408(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 15100(sp)
	lw s9, 15100(sp)
	xori s9, s9, 1
	sb s9, 8412(sp)
	lw s9, 16024(sp)
	slt s9, s9, t0
	sb s9, 8416(sp)
	slt s9, s5, s8
	sw s9, 15104(sp)
	lw s9, 15104(sp)
	xori s9, s9, 1
	sb s9, 8420(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 8424(sp)
	xor s9, t5, s0
	sw s9, 15108(sp)
	lw s9, 15108(sp)
	snez s9, s9
	sb s9, 8428(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 8432(sp)
	slt s9, s5, a4
	sw s9, 15112(sp)
	lw s9, 15112(sp)
	xori s9, s9, 1
	sb s9, 8436(sp)
	lw s9, 16056(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sw s9, 15116(sp)
	lw s9, 15116(sp)
	xori s9, s9, 1
	sb s9, 8440(sp)
	xor s9, t4, ra
	sw s9, 15120(sp)
	lw s9, 15120(sp)
	seqz s9, s9
	sb s9, 8444(sp)
	lw s9, 16040(sp)
	slt s9, s9, t5
	sb s9, 8448(sp)
	lw s9, 16040(sp)
	slt s9, s9, t2
	sb s9, 8452(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 8456(sp)
	xor s9, ra, a1
	sw s9, 15124(sp)
	lw s9, 15124(sp)
	snez s9, s9
	sb s9, 8460(sp)
	slt s9, a5, s4
	sb s9, 8464(sp)
	slt s9, a1, a1
	sw s9, 15128(sp)
	lw s9, 15128(sp)
	xori s9, s9, 1
	sb s9, 8468(sp)
	xor s9, t3, t2
	sw s9, 15132(sp)
	lw s9, 15132(sp)
	seqz s9, s9
	sb s9, 8472(sp)
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sb s9, 8476(sp)
	xor s9, a6, s0
	sw s9, 15136(sp)
	lw s9, 15136(sp)
	snez s9, s9
	sb s9, 8480(sp)
	lw s9, 16068(sp)
	slt s9, s9, ra
	sw s9, 15140(sp)
	lw s9, 15140(sp)
	xori s9, s9, 1
	sb s9, 8484(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 8488(sp)
	xor s9, a0, a6
	sw s9, 15144(sp)
	lw s9, 15144(sp)
	snez s9, s9
	sb s9, 8492(sp)
	slt s9, s2, a4
	sb s9, 8496(sp)
	lw s9, 16052(sp)
	lw s10, 16032(sp)
	xor s9, s10, s9
	sw s9, 15148(sp)
	lw s9, 15148(sp)
	seqz s9, s9
	sb s9, 8500(sp)
	lw s9, 16076(sp)
	xor s9, s9, t4
	sw s9, 15152(sp)
	lw s9, 15152(sp)
	seqz s9, s9
	sb s9, 8504(sp)
	xor s9, t1, s0
	sw s9, 15156(sp)
	lw s9, 15156(sp)
	snez s9, s9
	sb s9, 8508(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 8512(sp)
	xor s9, a7, s11
	sw s9, 15160(sp)
	lw s9, 15160(sp)
	snez s9, s9
	sb s9, 8516(sp)
	lw s9, 16080(sp)
	lw s10, 4(sp)
	xor s9, s10, s9
	sw s9, 15164(sp)
	lw s9, 15164(sp)
	snez s9, s9
	sb s9, 8520(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 8524(sp)
	slt s9, a4, a4
	sb s9, 8528(sp)
	slt s9, s2, s6
	sw s9, 15168(sp)
	lw s9, 15168(sp)
	xori s9, s9, 1
	sb s9, 8532(sp)
	xor s9, t3, a0
	sw s9, 15172(sp)
	lw s9, 15172(sp)
	seqz s9, s9
	sb s9, 8536(sp)
	lw s9, 16076(sp)
	slt s9, s2, s9
	sw s9, 15176(sp)
	lw s9, 15176(sp)
	xori s9, s9, 1
	sb s9, 8540(sp)
	lw s10, 16012(sp)
	lw s9, 0(sp)
	slt s9, s9, s10
	sb s9, 8544(sp)
	lw s10, 16076(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 15180(sp)
	lw s9, 15180(sp)
	xori s9, s9, 1
	sb s9, 8548(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 15184(sp)
	lw s9, 15184(sp)
	xori s9, s9, 1
	sb s9, 8552(sp)
	xor s9, a1, t3
	sw s9, 15188(sp)
	lw s9, 15188(sp)
	seqz s9, s9
	sb s9, 8556(sp)
	lw s9, 16088(sp)
	slt s9, s9, a4
	sb s9, 8560(sp)
	xor s9, a1, s4
	sw s9, 15192(sp)
	lw s9, 15192(sp)
	seqz s9, s9
	sb s9, 8564(sp)
	lw s9, 16048(sp)
	xor s9, a4, s9
	sw s9, 15196(sp)
	lw s9, 15196(sp)
	seqz s9, s9
	sb s9, 8568(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 8572(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 15200(sp)
	lw s9, 15200(sp)
	xori s9, s9, 1
	sb s9, 8576(sp)
	slt s9, a7, s1
	sb s9, 8580(sp)
	slt s9, a2, a1
	sw s9, 15204(sp)
	lw s9, 15204(sp)
	xori s9, s9, 1
	sb s9, 8584(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 8588(sp)
	slt s9, s4, s5
	sw s9, 15208(sp)
	lw s9, 15208(sp)
	xori s9, s9, 1
	sb s9, 8592(sp)
	slt s9, t3, a1
	sb s9, 8596(sp)
	slt s9, s1, a6
	sw s9, 15212(sp)
	lw s9, 15212(sp)
	xori s9, s9, 1
	sb s9, 8600(sp)
	lw s9, 16068(sp)
	slt s9, s9, s6
	sw s9, 15216(sp)
	lw s9, 15216(sp)
	xori s9, s9, 1
	sb s9, 8604(sp)
	slt s9, s5, a6
	sw s9, 15220(sp)
	lw s9, 15220(sp)
	xori s9, s9, 1
	sb s9, 8608(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 15224(sp)
	lw s9, 15224(sp)
	xori s9, s9, 1
	sb s9, 8612(sp)
	xor s9, s4, t3
	sw s9, 15228(sp)
	lw s9, 15228(sp)
	seqz s9, s9
	sb s9, 8616(sp)
	slt s9, s3, a3
	sb s9, 8620(sp)
	lw s9, 16024(sp)
	xor s9, s9, a1
	sw s9, 15232(sp)
	lw s9, 15232(sp)
	seqz s9, s9
	sb s9, 8624(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 8628(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 15236(sp)
	lw s9, 15236(sp)
	xori s9, s9, 1
	sb s9, 8632(sp)
	lw s9, 16032(sp)
	slt s9, s9, a1
	sb s9, 8636(sp)
	slt s9, s1, t3
	sw s9, 15240(sp)
	lw s9, 15240(sp)
	xori s9, s9, 1
	sb s9, 8640(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 15244(sp)
	lw s9, 15244(sp)
	snez s9, s9
	sb s9, 8644(sp)
	slt s9, a6, s11
	sw s9, 15248(sp)
	lw s9, 15248(sp)
	xori s9, s9, 1
	sb s9, 8648(sp)
	xor s9, s11, s7
	sw s9, 15252(sp)
	lw s9, 15252(sp)
	snez s9, s9
	sb s9, 8652(sp)
	lw s9, 16056(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sb s9, 8656(sp)
	xor s9, s4, s3
	sw s9, 15256(sp)
	lw s9, 15256(sp)
	snez s9, s9
	sb s9, 8660(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 8664(sp)
	lw s9, 16072(sp)
	slt s9, s9, a0
	sb s9, 8668(sp)
	lw s9, 16028(sp)
	xor s9, s9, a1
	sw s9, 15260(sp)
	lw s9, 15260(sp)
	seqz s9, s9
	sb s9, 8672(sp)
	lw s9, 16036(sp)
	xor s9, s9, s7
	sw s9, 15264(sp)
	lw s9, 15264(sp)
	snez s9, s9
	sb s9, 8676(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 15268(sp)
	lw s9, 15268(sp)
	snez s9, s9
	sb s9, 8680(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 15272(sp)
	lw s9, 15272(sp)
	xori s9, s9, 1
	sb s9, 8684(sp)
	lw s9, 16076(sp)
	slt s9, s9, s4
	sw s9, 15276(sp)
	lw s9, 15276(sp)
	xori s9, s9, 1
	sb s9, 8688(sp)
	xor s9, s8, a7
	sw s9, 15280(sp)
	lw s9, 15280(sp)
	seqz s9, s9
	sb s9, 8692(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 8696(sp)
	slt s9, a6, t0
	sb s9, 8700(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 15284(sp)
	lw s9, 15284(sp)
	xori s9, s9, 1
	sb s9, 8704(sp)
	lw s9, 16048(sp)
	slt s9, s9, t1
	sb s9, 8708(sp)
	lw s9, 16044(sp)
	slt s9, s9, t4
	sb s9, 8712(sp)
	lw s9, 16052(sp)
	xor s9, s9, t6
	sw s9, 15288(sp)
	lw s9, 15288(sp)
	snez s9, s9
	sb s9, 8716(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 15292(sp)
	lw s9, 15292(sp)
	xori s9, s9, 1
	sb s9, 8720(sp)
	lw s9, 16084(sp)
	slt s9, a2, s9
	sb s9, 8724(sp)
	lw s9, 16052(sp)
	slt s9, s9, s11
	sw s9, 15296(sp)
	lw s9, 15296(sp)
	xori s9, s9, 1
	sb s9, 8728(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 15300(sp)
	lw s9, 15300(sp)
	snez s9, s9
	sb s9, 8732(sp)
	xor s9, t6, s8
	sw s9, 15304(sp)
	lw s9, 15304(sp)
	seqz s9, s9
	sb s9, 8736(sp)
	slt s9, s8, t2
	sw s9, 15308(sp)
	lw s9, 15308(sp)
	xori s9, s9, 1
	sb s9, 8740(sp)
	slt s9, s5, s7
	sb s9, 8744(sp)
	lw s9, 16060(sp)
	lw s10, 16064(sp)
	slt s9, s9, s10
	sw s9, 15312(sp)
	lw s9, 15312(sp)
	xori s9, s9, 1
	sb s9, 8748(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 15316(sp)
	lw s9, 15316(sp)
	xori s9, s9, 1
	sb s9, 8752(sp)
	lw s9, 16028(sp)
	slt s9, s9, t1
	sw s9, 15320(sp)
	lw s9, 15320(sp)
	xori s9, s9, 1
	sb s9, 8756(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 8760(sp)
	lw s9, 16068(sp)
	slt s9, s11, s9
	sb s9, 8764(sp)
	lw s9, 16040(sp)
	slt s9, s9, a6
	sb s9, 8768(sp)
	xor s9, ra, s11
	sw s9, 15324(sp)
	lw s9, 15324(sp)
	seqz s9, s9
	sb s9, 8772(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 8776(sp)
	slt s9, t4, a2
	sw s9, 15328(sp)
	lw s9, 15328(sp)
	xori s9, s9, 1
	sb s9, 8780(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 8784(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 8788(sp)
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	slt s9, s9, s10
	sw s9, 15332(sp)
	lw s9, 15332(sp)
	xori s9, s9, 1
	sb s9, 8792(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 15336(sp)
	lw s9, 15336(sp)
	snez s9, s9
	sb s9, 8796(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 15340(sp)
	lw s9, 15340(sp)
	xori s9, s9, 1
	sb s9, 8800(sp)
	lw s9, 16064(sp)
	lw s10, 4(sp)
	xor s9, s9, s10
	sw s9, 15344(sp)
	lw s9, 15344(sp)
	seqz s9, s9
	sb s9, 8804(sp)
	lw s9, 16088(sp)
	lw s10, 4(sp)
	slt s9, s9, s10
	sb s9, 8808(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 15348(sp)
	lw s9, 15348(sp)
	seqz s9, s9
	sb s9, 8812(sp)
	lw s9, 16032(sp)
	xor s9, t3, s9
	sw s9, 15352(sp)
	lw s9, 15352(sp)
	snez s9, s9
	sb s9, 8816(sp)
	slt s9, s8, s3
	sw s9, 15356(sp)
	lw s9, 15356(sp)
	xori s9, s9, 1
	sb s9, 8820(sp)
	lw s9, 16052(sp)
	xor s9, t1, s9
	sw s9, 15360(sp)
	lw s9, 15360(sp)
	seqz s9, s9
	sb s9, 8824(sp)
	slt s9, t5, ra
	sb s9, 8828(sp)
	slt s9, a5, t0
	sw s9, 15364(sp)
	lw s9, 15364(sp)
	xori s9, s9, 1
	sb s9, 8832(sp)
	slt s9, t6, s11
	sw s9, 15368(sp)
	lw s9, 15368(sp)
	xori s9, s9, 1
	sb s9, 8836(sp)
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	xor s9, s10, s9
	sw s9, 15372(sp)
	lw s9, 15372(sp)
	seqz s9, s9
	sb s9, 8840(sp)
	slt s9, a5, s8
	sb s9, 8844(sp)
	xor s9, a5, s2
	sw s9, 15376(sp)
	lw s9, 15376(sp)
	snez s9, s9
	sb s9, 8848(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 8852(sp)
	xor s9, t2, s2
	sw s9, 15380(sp)
	lw s9, 15380(sp)
	snez s9, s9
	sb s9, 8856(sp)
	slt s9, t4, s0
	sw s9, 15384(sp)
	lw s9, 15384(sp)
	xori s9, s9, 1
	sb s9, 8860(sp)
	lw s9, 16056(sp)
	slt s9, s9, t3
	sb s9, 8864(sp)
	lw s9, 16048(sp)
	xor s9, s8, s9
	sw s9, 15388(sp)
	lw s9, 15388(sp)
	snez s9, s9
	sb s9, 8868(sp)
	lw s10, 16032(sp)
	lw s9, 4(sp)
	xor s9, s10, s9
	sw s9, 15392(sp)
	lw s9, 15392(sp)
	seqz s9, s9
	sb s9, 8872(sp)
	slt s9, t6, s6
	sb s9, 8876(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 8880(sp)
	slt s9, t6, t2
	sw s9, 15396(sp)
	lw s9, 15396(sp)
	xori s9, s9, 1
	sb s9, 8884(sp)
	slt s9, t2, a2
	sb s9, 8888(sp)
	slt s9, t0, s6
	sw s9, 15400(sp)
	lw s9, 15400(sp)
	xori s9, s9, 1
	sb s9, 8892(sp)
	lw s9, 16052(sp)
	lw s10, 16076(sp)
	xor s9, s10, s9
	sw s9, 15404(sp)
	lw s9, 15404(sp)
	seqz s9, s9
	sb s9, 8896(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 15408(sp)
	lw s9, 15408(sp)
	snez s9, s9
	sb s9, 8900(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 15412(sp)
	lw s9, 15412(sp)
	xori s9, s9, 1
	sb s9, 8904(sp)
	lw s9, 16088(sp)
	slt s9, s9, t0
	sb s9, 8908(sp)
	lw s9, 16068(sp)
	slt s9, a7, s9
	sb s9, 8912(sp)
	slt s9, t0, s8
	sb s9, 8916(sp)
	xor s9, t0, a7
	sw s9, 15416(sp)
	lw s9, 15416(sp)
	snez s9, s9
	sb s9, 8920(sp)
	lw s9, 16084(sp)
	slt s9, t5, s9
	sb s9, 8924(sp)
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	slt s9, s9, s10
	sw s9, 15420(sp)
	lw s9, 15420(sp)
	xori s9, s9, 1
	sb s9, 8928(sp)
	slt s9, s8, t4
	sb s9, 8932(sp)
	lw s9, 16080(sp)
	slt s9, s2, s9
	sw s9, 15424(sp)
	lw s9, 15424(sp)
	xori s9, s9, 1
	sb s9, 8936(sp)
	slt s9, t4, a2
	sw s9, 15428(sp)
	lw s9, 15428(sp)
	xori s9, s9, 1
	sb s9, 8940(sp)
	lw s9, 16020(sp)
	slt s9, s9, s8
	sb s9, 8944(sp)
	xor s9, t0, a5
	sw s9, 15432(sp)
	lw s9, 15432(sp)
	seqz s9, s9
	sb s9, 8948(sp)
	slt s9, a6, a6
	sw s9, 15436(sp)
	lw s9, 15436(sp)
	xori s9, s9, 1
	sb s9, 8952(sp)
	lw s9, 16008(sp)
	xor s9, t0, s9
	sw s9, 15440(sp)
	lw s9, 15440(sp)
	snez s9, s9
	sb s9, 8956(sp)
	slt s9, a0, a5
	sw s9, 15444(sp)
	lw s9, 15444(sp)
	xori s9, s9, 1
	sb s9, 8960(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 8964(sp)
	lw s9, 0(sp)
	slt s9, s9, t3
	sb s9, 8968(sp)
	xor s9, s4, s3
	sw s9, 15448(sp)
	lw s9, 15448(sp)
	snez s9, s9
	sb s9, 8972(sp)
	slt s9, ra, a7
	sw s9, 15452(sp)
	lw s9, 15452(sp)
	xori s9, s9, 1
	sb s9, 8976(sp)
	lw s9, 16052(sp)
	xor s9, a1, s9
	sw s9, 15456(sp)
	lw s9, 15456(sp)
	snez s9, s9
	sb s9, 8980(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 15460(sp)
	lw s9, 15460(sp)
	snez s9, s9
	sb s9, 8984(sp)
	lw s9, 16080(sp)
	lw s10, 4(sp)
	xor s9, s10, s9
	sw s9, 15464(sp)
	lw s9, 15464(sp)
	snez s9, s9
	sb s9, 8988(sp)
	xor s9, t6, a2
	sw s9, 15468(sp)
	lw s9, 15468(sp)
	seqz s9, s9
	sb s9, 8992(sp)
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	xor s9, s10, s9
	sw s9, 15472(sp)
	lw s9, 15472(sp)
	seqz s9, s9
	sb s9, 8996(sp)
	slt s9, a5, t0
	sw s9, 15476(sp)
	lw s9, 15476(sp)
	xori s9, s9, 1
	sb s9, 9000(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 15480(sp)
	lw s9, 15480(sp)
	snez s9, s9
	sb s9, 9004(sp)
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sb s9, 9008(sp)
	slt s9, s6, a3
	sb s9, 9012(sp)
	slt s9, s4, s3
	sw s9, 15484(sp)
	lw s9, 15484(sp)
	xori s9, s9, 1
	sb s9, 9016(sp)
	lw s9, 16084(sp)
	xor s9, s9, a1
	sw s9, 15488(sp)
	lw s9, 15488(sp)
	snez s9, s9
	sb s9, 9020(sp)
	xor s9, s4, t3
	sw s9, 15492(sp)
	lw s9, 15492(sp)
	seqz s9, s9
	sb s9, 9024(sp)
	lw s10, 16056(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sb s9, 9028(sp)
	lw s9, 16020(sp)
	xor s9, s6, s9
	sw s9, 15496(sp)
	lw s9, 15496(sp)
	seqz s9, s9
	sb s9, 9032(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 9036(sp)
	lw s9, 16016(sp)
	slt s9, s9, s4
	sb s9, 9040(sp)
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	xor s9, s10, s9
	sw s9, 15500(sp)
	lw s9, 15500(sp)
	snez s9, s9
	sb s9, 9044(sp)
	xor s9, t5, t3
	sw s9, 15504(sp)
	lw s9, 15504(sp)
	seqz s9, s9
	sb s9, 9048(sp)
	lw s9, 16076(sp)
	slt s9, s9, s0
	sb s9, 9052(sp)
	xor s9, a1, s4
	sw s9, 15508(sp)
	lw s9, 15508(sp)
	seqz s9, s9
	sb s9, 9056(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 15512(sp)
	lw s9, 15512(sp)
	xori s9, s9, 1
	sb s9, 9060(sp)
	slt s9, s5, a6
	sw s9, 15516(sp)
	lw s9, 15516(sp)
	xori s9, s9, 1
	sb s9, 9064(sp)
	lw s9, 16020(sp)
	slt s9, s9, a1
	sw s9, 15520(sp)
	lw s9, 15520(sp)
	xori s9, s9, 1
	sb s9, 9068(sp)
	lw s9, 16016(sp)
	lw s10, 16040(sp)
	slt s9, s9, s10
	sw s9, 15524(sp)
	lw s9, 15524(sp)
	xori s9, s9, 1
	sb s9, 9072(sp)
	slt s9, t2, a7
	sw s9, 15528(sp)
	lw s9, 15528(sp)
	xori s9, s9, 1
	sb s9, 9076(sp)
	lw s9, 16052(sp)
	slt s9, t5, s9
	sw s9, 15532(sp)
	lw s9, 15532(sp)
	xori s9, s9, 1
	sb s9, 9080(sp)
	lw s9, 16044(sp)
	slt s9, s7, s9
	sw s9, 15536(sp)
	lw s9, 15536(sp)
	xori s9, s9, 1
	sb s9, 9084(sp)
	lw s9, 16048(sp)
	xor s9, s9, t2
	sw s9, 15540(sp)
	lw s9, 15540(sp)
	snez s9, s9
	sb s9, 9088(sp)
	slt s9, t6, s6
	sb s9, 9092(sp)
	slt s9, s5, t0
	sb s9, 9096(sp)
	lw s9, 16056(sp)
	slt s9, s9, a1
	sb s9, 9100(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 9104(sp)
	xor s9, a5, s1
	sw s9, 15544(sp)
	lw s9, 15544(sp)
	snez s9, s9
	sb s9, 9108(sp)
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	xor s9, s9, s10
	sw s9, 15548(sp)
	lw s9, 15548(sp)
	seqz s9, s9
	sb s9, 9112(sp)
	slt s9, a0, s4
	sb s9, 9116(sp)
	lw s9, 4(sp)
	slt s9, s11, s9
	sb s9, 9120(sp)
	slt s9, a3, t1
	sw s9, 15552(sp)
	lw s9, 15552(sp)
	xori s9, s9, 1
	sb s9, 9124(sp)
	lw s9, 16012(sp)
	slt s9, a3, s9
	sb s9, 9128(sp)
	lw s9, 16092(sp)
	xor s9, a1, s9
	sw s9, 15556(sp)
	lw s9, 15556(sp)
	seqz s9, s9
	sb s9, 9132(sp)
	lw s9, 16072(sp)
	slt s9, s9, s11
	sb s9, 9136(sp)
	slt s9, a7, s1
	sb s9, 9140(sp)
	slt s9, t6, s1
	sb s9, 9144(sp)
	lw s9, 16044(sp)
	xor s9, s9, s6
	sw s9, 15560(sp)
	lw s9, 15560(sp)
	snez s9, s9
	sb s9, 9148(sp)
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	xor s9, s9, s10
	sw s9, 15564(sp)
	lw s9, 15564(sp)
	seqz s9, s9
	sb s9, 9152(sp)
	lw s9, 16092(sp)
	slt s9, s8, s9
	sb s9, 9156(sp)
	lw s9, 16052(sp)
	slt s9, a4, s9
	sb s9, 9160(sp)
	slt s9, a7, s1
	sb s9, 9164(sp)
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	slt s9, s10, s9
	sw s9, 15568(sp)
	lw s9, 15568(sp)
	xori s9, s9, 1
	sb s9, 9168(sp)
	xor s9, s5, s3
	sw s9, 15572(sp)
	lw s9, 15572(sp)
	snez s9, s9
	sb s9, 9172(sp)
	lw s9, 16048(sp)
	lw s10, 16032(sp)
	slt s9, s10, s9
	sw s9, 15576(sp)
	lw s9, 15576(sp)
	xori s9, s9, 1
	sb s9, 9176(sp)
	slt s9, a5, s7
	sb s9, 9180(sp)
	slt s9, s5, s0
	sw s9, 15580(sp)
	lw s9, 15580(sp)
	xori s9, s9, 1
	sb s9, 9184(sp)
	lw s9, 16052(sp)
	xor s9, s9, s5
	sw s9, 15584(sp)
	lw s9, 15584(sp)
	snez s9, s9
	sb s9, 9188(sp)
	xor s9, t1, t3
	sw s9, 15588(sp)
	lw s9, 15588(sp)
	seqz s9, s9
	sb s9, 9192(sp)
	lw s9, 16044(sp)
	slt s9, s9, s4
	sw s9, 15592(sp)
	lw s9, 15592(sp)
	xori s9, s9, 1
	sb s9, 9196(sp)
	lw s10, 16064(sp)
	lw s9, 4(sp)
	slt s9, s9, s10
	sw s9, 15596(sp)
	lw s9, 15596(sp)
	xori s9, s9, 1
	sb s9, 9200(sp)
	xor s9, s8, s4
	sw s9, 15600(sp)
	lw s9, 15600(sp)
	snez s9, s9
	sb s9, 9204(sp)
	xor s9, t3, a0
	sw s9, 15604(sp)
	lw s9, 15604(sp)
	seqz s9, s9
	sb s9, 9208(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 15608(sp)
	lw s9, 15608(sp)
	xori s9, s9, 1
	sb s9, 9212(sp)
	slt s9, s1, t3
	sw s9, 15612(sp)
	lw s9, 15612(sp)
	xori s9, s9, 1
	sb s9, 9216(sp)
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	slt s9, s10, s9
	sb s9, 9220(sp)
	lw s9, 16008(sp)
	slt s9, s8, s9
	sw s9, 15616(sp)
	lw s9, 15616(sp)
	xori s9, s9, 1
	sb s9, 9224(sp)
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	xor s9, s9, s10
	sw s9, 15620(sp)
	lw s9, 15620(sp)
	seqz s9, s9
	sb s9, 9228(sp)
	slt s9, a5, s4
	sb s9, 9232(sp)
	lw s9, 16072(sp)
	slt s9, s0, s9
	sb s9, 9236(sp)
	lw s9, 16056(sp)
	xor s9, s9, a3
	sw s9, 15624(sp)
	lw s9, 15624(sp)
	snez s9, s9
	sb s9, 9240(sp)
	slt s9, s5, a4
	sw s9, 15628(sp)
	lw s9, 15628(sp)
	xori s9, s9, 1
	sb s9, 9244(sp)
	xor s9, t1, s0
	sw s9, 15632(sp)
	lw s9, 15632(sp)
	snez s9, s9
	sb s9, 9248(sp)
	lw s9, 0(sp)
	xor s9, ra, s9
	sw s9, 15636(sp)
	lw s9, 15636(sp)
	seqz s9, s9
	sb s9, 9252(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 15640(sp)
	lw s9, 15640(sp)
	xori s9, s9, 1
	sb s9, 9256(sp)
	lw s9, 0(sp)
	slt s9, s8, s9
	sb s9, 9260(sp)
	lw s9, 16036(sp)
	slt s9, s3, s9
	sw s9, 15644(sp)
	lw s9, 15644(sp)
	xori s9, s9, 1
	sb s9, 9264(sp)
	lw s10, 16056(sp)
	lw s9, 0(sp)
	xor s9, s9, s10
	sw s9, 15648(sp)
	lw s9, 15648(sp)
	seqz s9, s9
	sb s9, 9268(sp)
	lw s9, 16092(sp)
	slt s9, s0, s9
	sb s9, 9272(sp)
	lw s9, 0(sp)
	xor s9, t2, s9
	sw s9, 15652(sp)
	lw s9, 15652(sp)
	seqz s9, s9
	sb s9, 9276(sp)
	xor s9, s3, s4
	sw s9, 15656(sp)
	lw s9, 15656(sp)
	snez s9, s9
	sb s9, 9280(sp)
	lw s9, 16060(sp)
	slt s9, s1, s9
	sb s9, 9284(sp)
	xor s9, a7, s11
	sw s9, 15660(sp)
	lw s9, 15660(sp)
	snez s9, s9
	sb s9, 9288(sp)
	lw s9, 16088(sp)
	slt s9, a6, s9
	sw s9, 15664(sp)
	lw s9, 15664(sp)
	xori s9, s9, 1
	sb s9, 9292(sp)
	slt s9, t1, ra
	sb s9, 9296(sp)
	lw s9, 16024(sp)
	slt s9, s9, s0
	sw s9, 15668(sp)
	lw s9, 15668(sp)
	xori s9, s9, 1
	sb s9, 9300(sp)
	lw s9, 4(sp)
	slt s9, s9, t0
	sb s9, 9304(sp)
	slt s9, t2, a2
	sb s9, 9308(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 15672(sp)
	lw s9, 15672(sp)
	snez s9, s9
	sb s9, 9312(sp)
	lw s9, 16068(sp)
	slt s9, s9, s7
	sb s9, 9316(sp)
	lw s9, 16060(sp)
	lw s10, 16064(sp)
	slt s9, s9, s10
	sw s9, 15676(sp)
	lw s9, 15676(sp)
	xori s9, s9, 1
	sb s9, 9320(sp)
	lw s10, 16016(sp)
	lw s9, 16032(sp)
	slt s9, s10, s9
	sb s9, 9324(sp)
	xor s9, t2, s2
	sw s9, 15680(sp)
	lw s9, 15680(sp)
	seqz s9, s9
	sb s9, 9328(sp)
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	xor s9, s9, s10
	sw s9, 15684(sp)
	lw s9, 15684(sp)
	seqz s9, s9
	sb s9, 9332(sp)
	slt s9, t5, t4
	sw s9, 15688(sp)
	lw s9, 15688(sp)
	xori s9, s9, 1
	sb s9, 9336(sp)
	lw s9, 16012(sp)
	slt s9, s9, a4
	sb s9, 9340(sp)
	slt s9, s8, a5
	sb s9, 9344(sp)
	slt s9, s5, s7
	sb s9, 9348(sp)
	slt s9, a3, t5
	sw s9, 15692(sp)
	lw s9, 15692(sp)
	xori s9, s9, 1
	sb s9, 9352(sp)
	lw s9, 16092(sp)
	slt s9, t0, s9
	sb s9, 9356(sp)
	lw s9, 16092(sp)
	xor s9, s9, s7
	sw s9, 15696(sp)
	lw s9, 15696(sp)
	snez s9, s9
	sb s9, 9360(sp)
	slt s9, s6, t4
	sb s9, 9364(sp)
	lw s9, 16012(sp)
	xor s9, s9, a2
	sw s9, 15700(sp)
	lw s9, 15700(sp)
	snez s9, s9
	sb s9, 9368(sp)
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	slt s9, s9, s10
	sb s9, 9372(sp)
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	xor s9, s10, s9
	sw s9, 15704(sp)
	lw s9, 15704(sp)
	seqz s9, s9
	sb s9, 9376(sp)
	slt s9, s8, s3
	sw s9, 15708(sp)
	lw s9, 15708(sp)
	xori s9, s9, 1
	sb s9, 9380(sp)
	lw s9, 16068(sp)
	slt s9, s9, a3
	sw s9, 15712(sp)
	lw s9, 15712(sp)
	xori s9, s9, 1
	sb s9, 9384(sp)
	slt s9, s6, t3
	sb s9, 9388(sp)
	lw s9, 16088(sp)
	slt s9, s9, a2
	sw s9, 15716(sp)
	lw s9, 15716(sp)
	xori s9, s9, 1
	sb s9, 9392(sp)
	slt s9, a2, a1
	sw s9, 15720(sp)
	lw s9, 15720(sp)
	xori s9, s9, 1
	sb s9, 9396(sp)
	lw s9, 16056(sp)
	lw s10, 16080(sp)
	slt s9, s9, s10
	sw s9, 15724(sp)
	lw s9, 15724(sp)
	xori s9, s9, 1
	sb s9, 9400(sp)
	slt s9, s3, ra
	sw s9, 15728(sp)
	lw s9, 15728(sp)
	xori s9, s9, 1
	sb s9, 9404(sp)
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	xor s9, s9, s10
	sw s9, 15732(sp)
	lw s9, 15732(sp)
	seqz s9, s9
	sb s9, 9408(sp)
	lw s9, 16084(sp)
	slt s9, s9, a6
	sw s9, 15736(sp)
	lw s9, 15736(sp)
	xori s9, s9, 1
	sb s9, 9412(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 15740(sp)
	lw s9, 15740(sp)
	xori s9, s9, 1
	sb s9, 9416(sp)
	lw s9, 16044(sp)
	xor s9, s9, a3
	sw s9, 15744(sp)
	lw s9, 15744(sp)
	seqz s9, s9
	sb s9, 9420(sp)
	lw s9, 16008(sp)
	slt s9, a0, s9
	sb s9, 9424(sp)
	slt s9, a1, a1
	sw s9, 15748(sp)
	lw s9, 15748(sp)
	xori s9, s9, 1
	sb s9, 9428(sp)
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	slt s9, s10, s9
	sw s9, 15752(sp)
	lw s9, 15752(sp)
	xori s9, s9, 1
	sb s9, 9432(sp)
	lw s9, 16092(sp)
	slt s9, s9, s7
	sb s9, 9436(sp)
	lw s9, 16008(sp)
	xor s9, s9, a0
	sw s9, 15756(sp)
	lw s9, 15756(sp)
	snez s9, s9
	sb s9, 9440(sp)
	xor s9, t6, a2
	sw s9, 15760(sp)
	lw s9, 15760(sp)
	seqz s9, s9
	sb s9, 9444(sp)
	xor s9, t0, a5
	sw s9, 15764(sp)
	lw s9, 15764(sp)
	seqz s9, s9
	sb s9, 9448(sp)
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	xor s9, s9, s10
	sw s9, 15768(sp)
	lw s9, 15768(sp)
	seqz s9, s9
	sb s9, 9452(sp)
	slt s9, ra, s2
	sb s9, 9456(sp)
	lw s9, 16060(sp)
	slt s9, a2, s9
	sw s9, 15772(sp)
	lw s9, 15772(sp)
	xori s9, s9, 1
	sb s9, 9460(sp)
	lw s9, 4(sp)
	slt s9, a4, s9
	sw s9, 15776(sp)
	lw s9, 15776(sp)
	xori s9, s9, 1
	sb s9, 9464(sp)
	xor s9, s4, t3
	sw s9, 15780(sp)
	lw s9, 15780(sp)
	seqz s9, s9
	sb s9, 9468(sp)
	slt s9, a6, s11
	sw s9, 15784(sp)
	lw s9, 15784(sp)
	xori s9, s9, 1
	sb s9, 9472(sp)
	lw s9, 16028(sp)
	xor s9, s9, s5
	sw s9, 15788(sp)
	lw s9, 15788(sp)
	snez s9, s9
	sb s9, 9476(sp)
	xor s9, a1, t3
	sw s9, 15792(sp)
	lw s9, 15792(sp)
	seqz s9, s9
	sb s9, 9480(sp)
	slt s9, s5, s0
	sw s9, 15796(sp)
	lw s9, 15796(sp)
	xori s9, s9, 1
	sb s9, 9484(sp)
	lw s9, 16072(sp)
	slt s9, t2, s9
	sw s9, 15800(sp)
	lw s9, 15800(sp)
	xori s9, s9, 1
	sb s9, 9488(sp)
	slt s9, a4, a4
	sb s9, 9492(sp)
	xor s9, ra, a1
	sw s9, 15804(sp)
	lw s9, 15804(sp)
	snez s9, s9
	sb s9, 9496(sp)
	xor s9, t3, t2
	sw s9, 15808(sp)
	lw s9, 15808(sp)
	seqz s9, s9
	sb s9, 9500(sp)
	slt s9, a0, s1
	sb s9, 9504(sp)
	lw s9, 16080(sp)
	xor s9, s9, a4
	sw s9, 15812(sp)
	lw s9, 15812(sp)
	snez s9, s9
	sb s9, 9508(sp)
	lw s9, 16064(sp)
	slt s9, s9, s5
	sw s9, 15816(sp)
	lw s9, 15816(sp)
	xori s9, s9, 1
	sb s9, 9512(sp)
	xor s9, s1, t4
	sw s9, 15820(sp)
	lw s9, 15820(sp)
	snez s9, s9
	sb s9, 9516(sp)
	slt s9, a6, a6
	sw s9, 15824(sp)
	lw s9, 15824(sp)
	xori s9, s9, 1
	sb s9, 9520(sp)
	lw s9, 16076(sp)
	xor s9, s9, s8
	sw s9, 15828(sp)
	lw s9, 15828(sp)
	snez s9, s9
	sb s9, 9524(sp)
	lw s9, 16088(sp)
	lw s10, 4(sp)
	slt s9, s9, s10
	sb s9, 9528(sp)
	slt s9, a5, s7
	sb s9, 9532(sp)
	lw s9, 4(sp)
	slt s9, t3, s9
	sb s9, 9536(sp)
	slt s9, a2, a1
	sw s9, 15832(sp)
	lw s9, 15832(sp)
	xori s9, s9, 1
	sb s9, 9540(sp)
	lw s9, 16092(sp)
	xor s9, s9, s9
	sw s9, 15836(sp)
	lw s9, 15836(sp)
	snez s9, s9
	sb s9, 9544(sp)
	xor s9, s8, s4
	sw s9, 15840(sp)
	lw s9, 15840(sp)
	snez s9, s9
	sb s9, 9548(sp)
	lw s9, 16056(sp)
	lw s10, 4(sp)
	slt s9, s10, s9
	sb s9, 9552(sp)
	lw s9, 16064(sp)
	slt s9, a5, s9
	sb s9, 9556(sp)
	lw s9, 16044(sp)
	lw s10, 16080(sp)
	slt s9, s10, s9
	sb s9, 9560(sp)
	lw s9, 16048(sp)
	slt s9, s9, a3
	sb s9, 9564(sp)
	slt s9, s8, t2
	sw s9, 15844(sp)
	lw s9, 15844(sp)
	xori s9, s9, 1
	sb s9, 9568(sp)
	lw s9, 16020(sp)
	slt s9, s9, t4
	sw s9, 15848(sp)
	lw s9, 15848(sp)
	xori s9, s9, 1
	sb s9, 9572(sp)
	lw s9, 16088(sp)
	slt s9, s9, s0
	sw s9, 15852(sp)
	lw s9, 15852(sp)
	xori s9, s9, 1
	sb s9, 9576(sp)
	lw s9, 16040(sp)
	slt s9, s9, a0
	sb s9, 9580(sp)
	slt s9, a5, s4
	sb s9, 9584(sp)
	slt s9, s0, s0
	sb s9, 9588(sp)
	xor s9, t2, s2
	sw s9, 15856(sp)
	lw s9, 15856(sp)
	snez s9, s9
	sb s9, 9592(sp)
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	slt s9, s10, s9
	sb s9, 9596(sp)
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	slt s9, s9, s10
	sw s9, 15860(sp)
	lw s9, 15860(sp)
	xori s9, s9, 1
	sb s9, 9600(sp)
	lw s9, 16036(sp)
	xor s9, s9, s4
	sw s9, 15864(sp)
	lw s9, 15864(sp)
	snez s9, s9
	sb s9, 9604(sp)
	lw s9, 16032(sp)
	xor s9, s9, s2
	sw s9, 15868(sp)
	lw s9, 15868(sp)
	snez s9, s9
	sb s9, 9608(sp)
	lw s9, 16088(sp)
	slt s9, s9, s3
	sb s9, 9612(sp)
	slt s9, t5, t6
	sw s9, 15872(sp)
	lw s9, 15872(sp)
	xori s9, s9, 1
	sb s9, 9616(sp)
	slt s9, s6, t4
	sb s9, 9620(sp)
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	slt s9, s10, s9
	sw s9, 15876(sp)
	lw s9, 15876(sp)
	xori s9, s9, 1
	sb s9, 9624(sp)
	xor s9, t1, t3
	sw s9, 15880(sp)
	lw s9, 15880(sp)
	seqz s9, s9
	sb s9, 9628(sp)
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	xor s9, s9, s10
	sw s9, 15884(sp)
	lw s9, 15884(sp)
	seqz s9, s9
	sb s9, 9632(sp)
	slt s9, ra, t1
	sb s9, 9636(sp)
	lw s9, 0(sp)
	slt s9, t1, s9
	sw s9, 15888(sp)
	lw s9, 15888(sp)
	xori s9, s9, 1
	sb s9, 9640(sp)
	lw s9, 16044(sp)
	slt s9, a5, s9
	sw s9, 15892(sp)
	lw s9, 15892(sp)
	xori s9, s9, 1
	sb s9, 9644(sp)
	lw s9, 16044(sp)
	xor s9, a5, s9
	sw s9, 15896(sp)
	lw s9, 15896(sp)
	snez s9, s9
	sb s9, 9648(sp)
	lw s9, 16084(sp)
	slt s9, a3, s9
	sb s9, 9652(sp)
	lw s9, 16068(sp)
	slt s9, s9, s2
	sw s9, 15900(sp)
	lw s9, 15900(sp)
	xori s9, s9, 1
	sb s9, 9656(sp)
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	xor s9, s10, s9
	sw s9, 15904(sp)
	lw s9, 15904(sp)
	snez s9, s9
	sb s9, 9660(sp)
	slt s9, s1, t3
	sw s9, 15908(sp)
	lw s9, 15908(sp)
	xori s9, s9, 1
	sb s9, 9664(sp)
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	slt s9, s10, s9
	sw s9, 15912(sp)
	lw s9, 15912(sp)
	xori s9, s9, 1
	sb s9, 9668(sp)
	lw s9, 68(sp)
	sw s9, 15984(sp)
.cls_taskStress_con_0_b.4: 
	lw s9, 15984(sp)
	lw s10, 16028(sp)
	beq s10, s9, .cls_taskStress_con_0_b.5
.cls_taskStress_con_0_b.6: 
	lw t0, 64(sp)
	lw t1, 0(t0)
	li t0, -1
	beq t1, t0, .cls_taskStress_con_0_b.9
.cls_taskStress_con_0_b.10: 
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
	addi sp, sp, 16096
	ret
.cls_taskStress_con_0_b.2: 
	lw a6, 16028(sp)
	addi a6, a6, 6
	sw a6, 9672(sp)
	addi a6, s2, 4
	sw a6, 9676(sp)
	lw a6, 16092(sp)
	addi a6, a6, 9
	sw a6, 9716(sp)
	addi t1, t1, 1
	sw t1, 9680(sp)
	addi t1, s5, 4
	sw t1, 9732(sp)
	lw t1, 16024(sp)
	addi t1, t1, 6
	sw t1, 9684(sp)
	addi t1, t2, 6
	sw t1, 9688(sp)
	addi t1, t3, 2
	sw t1, 9692(sp)
	addi t1, a7, 1
	sw t1, 9696(sp)
	lw t1, 16012(sp)
	addi t1, t1, 1
	sw t1, 9740(sp)
	addi a6, s4, 4
	addi t1, s1, 9
	lw t2, 0(sp)
	addi t2, t2, 8
	sw t2, 9720(sp)
	addi t3, s3, 9
	addi t2, a3, 8
	sw t2, 9724(sp)
	lw t2, 16080(sp)
	addi t2, t2, 6
	sw t2, 9736(sp)
	lw t2, 16064(sp)
	addi t2, t2, 6
	sw t2, 9700(sp)
	lw t2, 16036(sp)
	addi t2, t2, 7
	sw t2, 9744(sp)
	lw t2, 16048(sp)
	addi a3, t2, 5
	lw t2, 16068(sp)
	addi s2, t2, 1
	lw t2, 16016(sp)
	addi s1, t2, 7
	lw t2, 16072(sp)
	addi t2, t2, 9
	sw t2, 9704(sp)
	lw t2, 16084(sp)
	addi t2, t2, 9
	sw t2, 9708(sp)
	addi s0, s0, 9
	lw t2, 16052(sp)
	addi t2, t2, 9
	sw t2, 9712(sp)
	lw t2, 16040(sp)
	addi t2, t2, 2
	sw t2, 9728(sp)
	li a7, 2
	lw t2, 68(sp)
	div t2, t2, a7
	lw a7, 68(sp)
	xori a7, a7, 1
	addi a7, a7, 10
	mv s5, ra
	sw a6, 16012(sp)
	lw a6, 16032(sp)
	sw a6, 16092(sp)
	sw a0, 16040(sp)
	mv s4, t1
	sw a7, 68(sp)
	mv a0, t2
	lw t1, 4(sp)
	sw t1, 16024(sp)
	sw s8, 16032(sp)
	lw a7, 16056(sp)
	lw t1, 9740(sp)
	sw t1, 16056(sp)
	sw s11, 16016(sp)
	sw a2, 16080(sp)
	lw t1, 16076(sp)
	sw t1, 16072(sp)
	lw t1, 16060(sp)
	sw t1, 16064(sp)
	sw s1, 16068(sp)
	lw a2, 16020(sp)
	sw s2, 16048(sp)
	sw t3, 0(sp)
	sw t6, 16028(sp)
	lw a6, 16008(sp)
	lw t1, 9744(sp)
	sw t1, 16060(sp)
	mv s11, t0
	sw s0, 16084(sp)
	sw a3, 16036(sp)
	lw t1, 9732(sp)
	lw s2, 9716(sp)
	lw s0, 16044(sp)
	lw a3, 9736(sp)
	mv t2, t5
	lw t3, 16088(sp)
	lw t6, 9676(sp)
	lw s1, 9720(sp)
	sw a5, 4(sp)
	lw s3, 9724(sp)
	lw t0, 9728(sp)
	sw t0, 16052(sp)
	lw ra, 9684(sp)
	lw s8, 9680(sp)
	mv t5, t4
	mv t0, s6
	mv a5, a4
	lw a4, 9672(sp)
	sw a4, 16008(sp)
	lw a4, 9700(sp)
	sw a4, 16020(sp)
	lw a4, 9688(sp)
	lw s6, 9704(sp)
	lw t4, 9712(sp)
	sw t4, 16044(sp)
	sw a1, 16076(sp)
	lw t4, 9692(sp)
	sw s7, 16088(sp)
	lw a1, 9708(sp)
	lw s7, 9696(sp)
	j .cls_taskStress_con_0_b.1
.cls_taskStress_con_0_b.5: 
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	bne s10, s9, .cls_taskStress_con_0_b.7
.cls_taskStress_con_0_b.8: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.12
.cls_taskStress_con_0_b.13: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.15
.cls_taskStress_con_0_b.16: 
	bge s4, s3, .cls_taskStress_con_0_b.18
.cls_taskStress_con_0_b.19: 
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	beq s9, s10, .cls_taskStress_con_0_b.18
.cls_taskStress_con_0_b.23: 
	bge t0, s6, .cls_taskStress_con_0_b.18
.cls_taskStress_con_0_b.27: 
	blt a6, t0, .cls_taskStress_con_0_b.18
.cls_taskStress_con_0_b.31: 
	blt s2, t6, .cls_taskStress_con_0_b.18
.cls_taskStress_con_0_b.35: 
	lw s9, 16080(sp)
	lw s10, 4(sp)
	bne s10, s9, .cls_taskStress_con_0_b.18
.cls_taskStress_con_0_b.39: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.18
.cls_taskStress_con_0_b.43: 
	blt a0, s4, .cls_taskStress_con_0_b.18
	j .cls_taskStress_con_0_b.22
.cls_taskStress_con_0_b.7: 
	bge s1, t3, .cls_taskStress_con_0_b.11
	j .cls_taskStress_con_0_b.8
.cls_taskStress_con_0_b.9: 
	la a0, .cls_taskStress_con_0.0
	call g_println
	j .cls_taskStress_con_0_b.10
.cls_taskStress_con_0_b.11: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.14
	j .cls_taskStress_con_0_b.8
.cls_taskStress_con_0_b.12: 
	bge a3, t5, .cls_taskStress_con_0_b.15
	j .cls_taskStress_con_0_b.13
.cls_taskStress_con_0_b.14: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.17
	j .cls_taskStress_con_0_b.8
.cls_taskStress_con_0_b.15: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.18
	j .cls_taskStress_con_0_b.16
.cls_taskStress_con_0_b.17: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.20
	j .cls_taskStress_con_0_b.8
.cls_taskStress_con_0_b.18: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.21
.cls_taskStress_con_0_b.22: 
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	bge s9, s10, .cls_taskStress_con_0_b.21
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.20: 
	lw s10, 16056(sp)
	lw s9, 16072(sp)
	bge s9, s10, .cls_taskStress_con_0_b.24
	j .cls_taskStress_con_0_b.8
.cls_taskStress_con_0_b.21: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.25
.cls_taskStress_con_0_b.26: 
	beq s7, a3, .cls_taskStress_con_0_b.29
.cls_taskStress_con_0_b.30: 
	blt s8, t4, .cls_taskStress_con_0_b.29
	j .cls_taskStress_con_0_b.34
.cls_taskStress_con_0_b.24: 
	blt s6, t4, .cls_taskStress_con_0_b.12
	j .cls_taskStress_con_0_b.8
.cls_taskStress_con_0_b.25: 
	bne a5, s1, .cls_taskStress_con_0_b.28
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.28: 
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.32
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.29: 
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	beq s10, s9, .cls_taskStress_con_0_b.33
.cls_taskStress_con_0_b.34: 
	blt t1, ra, .cls_taskStress_con_0_b.37
.cls_taskStress_con_0_b.38: 
	bge a1, a1, .cls_taskStress_con_0_b.41
.cls_taskStress_con_0_b.42: 
	bne a5, s2, .cls_taskStress_con_0_b.41
.cls_taskStress_con_0_b.47: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.41
.cls_taskStress_con_0_b.51: 
	bne a6, t4, .cls_taskStress_con_0_b.41
	j .cls_taskStress_con_0_b.46
.cls_taskStress_con_0_b.32: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.36
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.33: 
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	blt s10, s9, .cls_taskStress_con_0_b.37
	j .cls_taskStress_con_0_b.34
.cls_taskStress_con_0_b.36: 
	beq a1, s4, .cls_taskStress_con_0_b.40
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.37: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.41
	j .cls_taskStress_con_0_b.38
.cls_taskStress_con_0_b.40: 
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	beq s9, s10, .cls_taskStress_con_0_b.44
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.41: 
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	beq s9, s10, .cls_taskStress_con_0_b.45
.cls_taskStress_con_0_b.46: 
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	blt s10, s9, .cls_taskStress_con_0_b.45
	j .cls_taskStress_con_0_b.50
.cls_taskStress_con_0_b.44: 
	bge s4, s3, .cls_taskStress_con_0_b.48
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.45: 
	bne a5, s6, .cls_taskStress_con_0_b.49
.cls_taskStress_con_0_b.50: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.54
.cls_taskStress_con_0_b.55: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.54
	j .cls_taskStress_con_0_b.59
.cls_taskStress_con_0_b.48: 
	beq ra, s11, .cls_taskStress_con_0_b.52
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.49: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.53
	j .cls_taskStress_con_0_b.50
.cls_taskStress_con_0_b.52: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.56
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.53: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.57
	j .cls_taskStress_con_0_b.50
.cls_taskStress_con_0_b.54: 
	blt t3, a1, .cls_taskStress_con_0_b.58
.cls_taskStress_con_0_b.59: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.61
.cls_taskStress_con_0_b.62: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.64
.cls_taskStress_con_0_b.65: 
	bge s8, t2, .cls_taskStress_con_0_b.64
	j .cls_taskStress_con_0_b.68
.cls_taskStress_con_0_b.56: 
	lw s9, 16088(sp)
	lw s10, 4(sp)
	blt s9, s10, .cls_taskStress_con_0_b.60
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.57: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.54
	j .cls_taskStress_con_0_b.50
.cls_taskStress_con_0_b.58: 
	lw s9, 16036(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.61
	j .cls_taskStress_con_0_b.59
.cls_taskStress_con_0_b.60: 
	beq t0, a0, .cls_taskStress_con_0_b.29
	j .cls_taskStress_con_0_b.26
.cls_taskStress_con_0_b.61: 
	blt a0, s1, .cls_taskStress_con_0_b.63
	j .cls_taskStress_con_0_b.62
.cls_taskStress_con_0_b.63: 
	blt s3, a3, .cls_taskStress_con_0_b.66
	j .cls_taskStress_con_0_b.62
.cls_taskStress_con_0_b.64: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bne s10, s9, .cls_taskStress_con_0_b.67
.cls_taskStress_con_0_b.68: 
	bne s3, s4, .cls_taskStress_con_0_b.67
	j .cls_taskStress_con_0_b.71
.cls_taskStress_con_0_b.66: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.69
	j .cls_taskStress_con_0_b.62
.cls_taskStress_con_0_b.67: 
	bge a3, t1, .cls_taskStress_con_0_b.70
.cls_taskStress_con_0_b.71: 
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	bge s10, s9, .cls_taskStress_con_0_b.74
.cls_taskStress_con_0_b.75: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.74
.cls_taskStress_con_0_b.78: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.74
.cls_taskStress_con_0_b.81: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.74
	j .cls_taskStress_con_0_b.77
.cls_taskStress_con_0_b.69: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.72
	j .cls_taskStress_con_0_b.62
.cls_taskStress_con_0_b.70: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.73
	j .cls_taskStress_con_0_b.71
.cls_taskStress_con_0_b.72: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.64
	j .cls_taskStress_con_0_b.62
.cls_taskStress_con_0_b.73: 
	beq t3, a0, .cls_taskStress_con_0_b.74
	j .cls_taskStress_con_0_b.71
.cls_taskStress_con_0_b.74: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.76
.cls_taskStress_con_0_b.77: 
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	blt s10, s9, .cls_taskStress_con_0_b.79
.cls_taskStress_con_0_b.80: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.79
.cls_taskStress_con_0_b.84: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.79
	j .cls_taskStress_con_0_b.83
.cls_taskStress_con_0_b.76: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.79
	j .cls_taskStress_con_0_b.77
.cls_taskStress_con_0_b.79: 
	blt t0, t1, .cls_taskStress_con_0_b.82
.cls_taskStress_con_0_b.83: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.82
	j .cls_taskStress_con_0_b.86
.cls_taskStress_con_0_b.82: 
	bge s4, s5, .cls_taskStress_con_0_b.85
.cls_taskStress_con_0_b.86: 
	bge a1, t5, .cls_taskStress_con_0_b.85
	j .cls_taskStress_con_0_b.88
.cls_taskStress_con_0_b.85: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.88: 
	bge t0, a0, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.91: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.95: 
	bne s5, s3, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.99: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.104: 
	bne s3, t3, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.108: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.111: 
	bge ra, a7, .cls_taskStress_con_0_b.87
.cls_taskStress_con_0_b.115: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.87
	j .cls_taskStress_con_0_b.90
.cls_taskStress_con_0_b.87: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.89
.cls_taskStress_con_0_b.90: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.89
.cls_taskStress_con_0_b.94: 
	beq s8, a7, .cls_taskStress_con_0_b.89
	j .cls_taskStress_con_0_b.93
.cls_taskStress_con_0_b.89: 
	beq t1, t0, .cls_taskStress_con_0_b.92
.cls_taskStress_con_0_b.93: 
	bge s2, s6, .cls_taskStress_con_0_b.92
.cls_taskStress_con_0_b.98: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.92
.cls_taskStress_con_0_b.103: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.92
	j .cls_taskStress_con_0_b.97
.cls_taskStress_con_0_b.92: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.96
.cls_taskStress_con_0_b.97: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.96
.cls_taskStress_con_0_b.102: 
	bne s4, s3, .cls_taskStress_con_0_b.96
.cls_taskStress_con_0_b.107: 
	bge s8, s3, .cls_taskStress_con_0_b.96
	j .cls_taskStress_con_0_b.101
.cls_taskStress_con_0_b.96: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.100
.cls_taskStress_con_0_b.101: 
	blt a6, t0, .cls_taskStress_con_0_b.100
	j .cls_taskStress_con_0_b.106
.cls_taskStress_con_0_b.100: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.105
.cls_taskStress_con_0_b.106: 
	blt a7, s1, .cls_taskStress_con_0_b.105
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.105: 
	bge a7, a6, .cls_taskStress_con_0_b.109
.cls_taskStress_con_0_b.110: 
	blt s0, s3, .cls_taskStress_con_0_b.113
.cls_taskStress_con_0_b.114: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.117
.cls_taskStress_con_0_b.118: 
	bge t4, s0, .cls_taskStress_con_0_b.120
.cls_taskStress_con_0_b.121: 
	beq t4, ra, .cls_taskStress_con_0_b.123
.cls_taskStress_con_0_b.124: 
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	bge s10, s9, .cls_taskStress_con_0_b.127
.cls_taskStress_con_0_b.128: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.127
.cls_taskStress_con_0_b.132: 
	beq t3, t2, .cls_taskStress_con_0_b.127
	j .cls_taskStress_con_0_b.131
.cls_taskStress_con_0_b.109: 
	blt a4, a4, .cls_taskStress_con_0_b.112
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.112: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.116
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.113: 
	bne a7, s6, .cls_taskStress_con_0_b.117
	j .cls_taskStress_con_0_b.114
.cls_taskStress_con_0_b.116: 
	beq t5, t3, .cls_taskStress_con_0_b.119
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.117: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.120
	j .cls_taskStress_con_0_b.118
.cls_taskStress_con_0_b.119: 
	lw s10, 16076(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.122
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.120: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.123
	j .cls_taskStress_con_0_b.121
.cls_taskStress_con_0_b.122: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.125
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.123: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.126
	j .cls_taskStress_con_0_b.124
.cls_taskStress_con_0_b.125: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.129
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.126: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.127
	j .cls_taskStress_con_0_b.124
.cls_taskStress_con_0_b.127: 
	bge s4, t5, .cls_taskStress_con_0_b.130
.cls_taskStress_con_0_b.131: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.130
	j .cls_taskStress_con_0_b.134
.cls_taskStress_con_0_b.129: 
	blt t2, a2, .cls_taskStress_con_0_b.113
	j .cls_taskStress_con_0_b.110
.cls_taskStress_con_0_b.130: 
	beq a2, s2, .cls_taskStress_con_0_b.133
.cls_taskStress_con_0_b.134: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.133
.cls_taskStress_con_0_b.137: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.133
.cls_taskStress_con_0_b.140: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.133
.cls_taskStress_con_0_b.143: 
	bge s3, s4, .cls_taskStress_con_0_b.133
.cls_taskStress_con_0_b.146: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.133
	j .cls_taskStress_con_0_b.136
.cls_taskStress_con_0_b.133: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.135
.cls_taskStress_con_0_b.136: 
	bne ra, t1, .cls_taskStress_con_0_b.138
.cls_taskStress_con_0_b.139: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.138
	j .cls_taskStress_con_0_b.142
.cls_taskStress_con_0_b.135: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.138
	j .cls_taskStress_con_0_b.136
.cls_taskStress_con_0_b.138: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.141
.cls_taskStress_con_0_b.142: 
	lw s10, 16076(sp)
	lw s9, 16072(sp)
	beq s10, s9, .cls_taskStress_con_0_b.144
.cls_taskStress_con_0_b.145: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.147
.cls_taskStress_con_0_b.148: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.147
.cls_taskStress_con_0_b.151: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.147
	j .cls_taskStress_con_0_b.150
.cls_taskStress_con_0_b.141: 
	bne t2, s6, .cls_taskStress_con_0_b.144
	j .cls_taskStress_con_0_b.142
.cls_taskStress_con_0_b.144: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.147
	j .cls_taskStress_con_0_b.145
.cls_taskStress_con_0_b.147: 
	beq t0, a5, .cls_taskStress_con_0_b.149
.cls_taskStress_con_0_b.150: 
	bge s2, t2, .cls_taskStress_con_0_b.149
	j .cls_taskStress_con_0_b.153
.cls_taskStress_con_0_b.149: 
	blt s6, t3, .cls_taskStress_con_0_b.152
.cls_taskStress_con_0_b.153: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.152
.cls_taskStress_con_0_b.156: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.152
	j .cls_taskStress_con_0_b.155
.cls_taskStress_con_0_b.152: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.154
.cls_taskStress_con_0_b.155: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.154
.cls_taskStress_con_0_b.159: 
	blt a2, s11, .cls_taskStress_con_0_b.154
.cls_taskStress_con_0_b.163: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.154
.cls_taskStress_con_0_b.168: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.154
.cls_taskStress_con_0_b.174: 
	bge a2, a1, .cls_taskStress_con_0_b.154
.cls_taskStress_con_0_b.179: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.154
.cls_taskStress_con_0_b.182: 
	blt a5, s7, .cls_taskStress_con_0_b.154
	j .cls_taskStress_con_0_b.158
.cls_taskStress_con_0_b.154: 
	bge a5, t0, .cls_taskStress_con_0_b.157
.cls_taskStress_con_0_b.158: 
	bge t4, a2, .cls_taskStress_con_0_b.157
.cls_taskStress_con_0_b.162: 
	lw s9, 16056(sp)
	lw s10, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.157
.cls_taskStress_con_0_b.167: 
	bge t1, s1, .cls_taskStress_con_0_b.157
.cls_taskStress_con_0_b.173: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.157
.cls_taskStress_con_0_b.178: 
	blt a5, s8, .cls_taskStress_con_0_b.157
	j .cls_taskStress_con_0_b.161
.cls_taskStress_con_0_b.157: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.160
.cls_taskStress_con_0_b.161: 
	bge s0, t1, .cls_taskStress_con_0_b.160
.cls_taskStress_con_0_b.166: 
	blt t6, s6, .cls_taskStress_con_0_b.160
.cls_taskStress_con_0_b.172: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.160
	j .cls_taskStress_con_0_b.165
.cls_taskStress_con_0_b.160: 
	bge t2, a7, .cls_taskStress_con_0_b.164
.cls_taskStress_con_0_b.165: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.164
.cls_taskStress_con_0_b.171: 
	lw s10, 16012(sp)
	lw s9, 0(sp)
	blt s9, s10, .cls_taskStress_con_0_b.164
.cls_taskStress_con_0_b.177: 
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	bge s10, s9, .cls_taskStress_con_0_b.164
	j .cls_taskStress_con_0_b.170
.cls_taskStress_con_0_b.164: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.169
.cls_taskStress_con_0_b.170: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.169
	j .cls_taskStress_con_0_b.176
.cls_taskStress_con_0_b.169: 
	bge s5, s0, .cls_taskStress_con_0_b.175
.cls_taskStress_con_0_b.176: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.180
.cls_taskStress_con_0_b.181: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.183
.cls_taskStress_con_0_b.184: 
	bge t6, s11, .cls_taskStress_con_0_b.183
.cls_taskStress_con_0_b.187: 
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	blt s10, s9, .cls_taskStress_con_0_b.183
	j .cls_taskStress_con_0_b.186
.cls_taskStress_con_0_b.175: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.180
	j .cls_taskStress_con_0_b.176
.cls_taskStress_con_0_b.180: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.183
	j .cls_taskStress_con_0_b.181
.cls_taskStress_con_0_b.183: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.185
.cls_taskStress_con_0_b.186: 
	blt t0, s8, .cls_taskStress_con_0_b.189
.cls_taskStress_con_0_b.190: 
	blt a7, s1, .cls_taskStress_con_0_b.189
	j .cls_taskStress_con_0_b.192
.cls_taskStress_con_0_b.185: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.188
	j .cls_taskStress_con_0_b.186
.cls_taskStress_con_0_b.188: 
	blt s5, t0, .cls_taskStress_con_0_b.189
	j .cls_taskStress_con_0_b.186
.cls_taskStress_con_0_b.189: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.191
.cls_taskStress_con_0_b.192: 
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	bge s9, s10, .cls_taskStress_con_0_b.194
.cls_taskStress_con_0_b.195: 
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	beq s10, s9, .cls_taskStress_con_0_b.196
.cls_taskStress_con_0_b.197: 
	bge t6, s7, .cls_taskStress_con_0_b.196
	j .cls_taskStress_con_0_b.199
.cls_taskStress_con_0_b.191: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.193
	j .cls_taskStress_con_0_b.192
.cls_taskStress_con_0_b.193: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.194
	j .cls_taskStress_con_0_b.192
.cls_taskStress_con_0_b.194: 
	beq t2, s2, .cls_taskStress_con_0_b.196
	j .cls_taskStress_con_0_b.195
.cls_taskStress_con_0_b.196: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.198
.cls_taskStress_con_0_b.199: 
	bge t3, s8, .cls_taskStress_con_0_b.200
.cls_taskStress_con_0_b.201: 
	bge t2, a7, .cls_taskStress_con_0_b.200
	j .cls_taskStress_con_0_b.203
.cls_taskStress_con_0_b.198: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.200
	j .cls_taskStress_con_0_b.199
.cls_taskStress_con_0_b.200: 
	beq s4, t3, .cls_taskStress_con_0_b.202
.cls_taskStress_con_0_b.203: 
	bne a6, s0, .cls_taskStress_con_0_b.205
.cls_taskStress_con_0_b.206: 
	blt t6, s7, .cls_taskStress_con_0_b.205
	j .cls_taskStress_con_0_b.208
.cls_taskStress_con_0_b.202: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.204
	j .cls_taskStress_con_0_b.203
.cls_taskStress_con_0_b.204: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.205
	j .cls_taskStress_con_0_b.203
.cls_taskStress_con_0_b.205: 
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	beq s9, s10, .cls_taskStress_con_0_b.207
.cls_taskStress_con_0_b.208: 
	bge t6, t5, .cls_taskStress_con_0_b.207
.cls_taskStress_con_0_b.211: 
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	blt s9, s10, .cls_taskStress_con_0_b.207
.cls_taskStress_con_0_b.214: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.207
	j .cls_taskStress_con_0_b.210
.cls_taskStress_con_0_b.207: 
	beq a5, s4, .cls_taskStress_con_0_b.209
.cls_taskStress_con_0_b.210: 
	blt ra, t1, .cls_taskStress_con_0_b.209
	j .cls_taskStress_con_0_b.213
.cls_taskStress_con_0_b.209: 
	bne a0, a6, .cls_taskStress_con_0_b.212
.cls_taskStress_con_0_b.213: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.212
	j .cls_taskStress_con_0_b.216
.cls_taskStress_con_0_b.212: 
	bge a6, s11, .cls_taskStress_con_0_b.215
.cls_taskStress_con_0_b.216: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.218
.cls_taskStress_con_0_b.219: 
	blt s2, a4, .cls_taskStress_con_0_b.221
.cls_taskStress_con_0_b.222: 
	blt t3, t2, .cls_taskStress_con_0_b.221
	j .cls_taskStress_con_0_b.224
.cls_taskStress_con_0_b.215: 
	blt s8, a5, .cls_taskStress_con_0_b.217
	j .cls_taskStress_con_0_b.216
.cls_taskStress_con_0_b.217: 
	bge s3, ra, .cls_taskStress_con_0_b.220
	j .cls_taskStress_con_0_b.216
.cls_taskStress_con_0_b.218: 
	bne t1, s0, .cls_taskStress_con_0_b.221
	j .cls_taskStress_con_0_b.219
.cls_taskStress_con_0_b.220: 
	blt s0, a2, .cls_taskStress_con_0_b.218
	j .cls_taskStress_con_0_b.216
.cls_taskStress_con_0_b.221: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.223
.cls_taskStress_con_0_b.224: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.223
	j .cls_taskStress_con_0_b.226
.cls_taskStress_con_0_b.223: 
	beq t6, a2, .cls_taskStress_con_0_b.225
.cls_taskStress_con_0_b.226: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.225
	j .cls_taskStress_con_0_b.228
.cls_taskStress_con_0_b.225: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.227
.cls_taskStress_con_0_b.228: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.227
	j .cls_taskStress_con_0_b.230
.cls_taskStress_con_0_b.227: 
	bge t5, t1, .cls_taskStress_con_0_b.229
.cls_taskStress_con_0_b.230: 
	blt s6, a3, .cls_taskStress_con_0_b.232
.cls_taskStress_con_0_b.233: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.235
.cls_taskStress_con_0_b.236: 
	bne t2, a4, .cls_taskStress_con_0_b.238
.cls_taskStress_con_0_b.239: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.238
	j .cls_taskStress_con_0_b.242
.cls_taskStress_con_0_b.229: 
	bne s11, s7, .cls_taskStress_con_0_b.231
	j .cls_taskStress_con_0_b.230
.cls_taskStress_con_0_b.231: 
	lw s9, 16056(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.234
	j .cls_taskStress_con_0_b.230
.cls_taskStress_con_0_b.232: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.235
	j .cls_taskStress_con_0_b.233
.cls_taskStress_con_0_b.234: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.232
	j .cls_taskStress_con_0_b.230
.cls_taskStress_con_0_b.235: 
	bge a6, a6, .cls_taskStress_con_0_b.237
	j .cls_taskStress_con_0_b.236
.cls_taskStress_con_0_b.237: 
	blt a0, t1, .cls_taskStress_con_0_b.240
	j .cls_taskStress_con_0_b.236
.cls_taskStress_con_0_b.238: 
	bne s8, s4, .cls_taskStress_con_0_b.241
.cls_taskStress_con_0_b.242: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.241
.cls_taskStress_con_0_b.245: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.241
	j .cls_taskStress_con_0_b.244
.cls_taskStress_con_0_b.240: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.238
	j .cls_taskStress_con_0_b.236
.cls_taskStress_con_0_b.241: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.243
.cls_taskStress_con_0_b.244: 
	blt s4, s4, .cls_taskStress_con_0_b.246
.cls_taskStress_con_0_b.247: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.248
.cls_taskStress_con_0_b.249: 
	blt ra, s2, .cls_taskStress_con_0_b.248
	j .cls_taskStress_con_0_b.251
.cls_taskStress_con_0_b.243: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.246
	j .cls_taskStress_con_0_b.244
.cls_taskStress_con_0_b.246: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.248
	j .cls_taskStress_con_0_b.247
.cls_taskStress_con_0_b.248: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.250
.cls_taskStress_con_0_b.251: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.250
	j .cls_taskStress_con_0_b.253
.cls_taskStress_con_0_b.250: 
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	bge s10, s9, .cls_taskStress_con_0_b.252
.cls_taskStress_con_0_b.253: 
	beq t6, s8, .cls_taskStress_con_0_b.254
.cls_taskStress_con_0_b.255: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.256
.cls_taskStress_con_0_b.257: 
	bne t0, a7, .cls_taskStress_con_0_b.256
.cls_taskStress_con_0_b.260: 
	beq t1, t3, .cls_taskStress_con_0_b.256
	j .cls_taskStress_con_0_b.259
.cls_taskStress_con_0_b.252: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.254
	j .cls_taskStress_con_0_b.253
.cls_taskStress_con_0_b.254: 
	blt s11, a4, .cls_taskStress_con_0_b.256
	j .cls_taskStress_con_0_b.255
.cls_taskStress_con_0_b.256: 
	lw s9, 16056(sp)
	lw s10, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.258
.cls_taskStress_con_0_b.259: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.261
.cls_taskStress_con_0_b.262: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.264
.cls_taskStress_con_0_b.265: 
	blt s0, s0, .cls_taskStress_con_0_b.264
.cls_taskStress_con_0_b.269: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.264
	j .cls_taskStress_con_0_b.268
.cls_taskStress_con_0_b.258: 
	bge s1, a6, .cls_taskStress_con_0_b.261
	j .cls_taskStress_con_0_b.259
.cls_taskStress_con_0_b.261: 
	bge s2, s7, .cls_taskStress_con_0_b.263
	j .cls_taskStress_con_0_b.262
.cls_taskStress_con_0_b.263: 
	bne t2, s2, .cls_taskStress_con_0_b.266
	j .cls_taskStress_con_0_b.262
.cls_taskStress_con_0_b.264: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.267
.cls_taskStress_con_0_b.268: 
	lw s9, 16056(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.272: 
	bge t5, t4, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.275: 
	bne ra, a1, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.278: 
	bge s5, s8, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.282: 
	bne a7, s11, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.286: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.271
.cls_taskStress_con_0_b.289: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.271
	j .cls_taskStress_con_0_b.274
.cls_taskStress_con_0_b.266: 
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	blt s9, s10, .cls_taskStress_con_0_b.264
	j .cls_taskStress_con_0_b.262
.cls_taskStress_con_0_b.267: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.270
	j .cls_taskStress_con_0_b.268
.cls_taskStress_con_0_b.270: 
	blt a5, s4, .cls_taskStress_con_0_b.271
	j .cls_taskStress_con_0_b.268
.cls_taskStress_con_0_b.271: 
	blt t6, s1, .cls_taskStress_con_0_b.273
.cls_taskStress_con_0_b.274: 
	blt t5, ra, .cls_taskStress_con_0_b.273
	j .cls_taskStress_con_0_b.277
.cls_taskStress_con_0_b.273: 
	bge s5, a6, .cls_taskStress_con_0_b.276
.cls_taskStress_con_0_b.277: 
	bne s1, t4, .cls_taskStress_con_0_b.276
.cls_taskStress_con_0_b.281: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.276
.cls_taskStress_con_0_b.285: 
	bge a3, a3, .cls_taskStress_con_0_b.276
	j .cls_taskStress_con_0_b.280
.cls_taskStress_con_0_b.276: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.279
.cls_taskStress_con_0_b.280: 
	bge t5, t6, .cls_taskStress_con_0_b.279
	j .cls_taskStress_con_0_b.284
.cls_taskStress_con_0_b.279: 
	blt s5, s7, .cls_taskStress_con_0_b.283
.cls_taskStress_con_0_b.284: 
	lw s9, 16032(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.283
	j .cls_taskStress_con_0_b.288
.cls_taskStress_con_0_b.283: 
	bge t6, t2, .cls_taskStress_con_0_b.287
.cls_taskStress_con_0_b.288: 
	bge s5, a4, .cls_taskStress_con_0_b.287
	j .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.287: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.290
.cls_taskStress_con_0_b.291: 
	bge t2, t4, .cls_taskStress_con_0_b.292
.cls_taskStress_con_0_b.293: 
	bne t5, s0, .cls_taskStress_con_0_b.294
.cls_taskStress_con_0_b.295: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.297: 
	bge a2, a4, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.300: 
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.303: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.305: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.307: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.310: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.296
.cls_taskStress_con_0_b.314: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.296
	j .cls_taskStress_con_0_b.299
.cls_taskStress_con_0_b.290: 
	blt a3, t5, .cls_taskStress_con_0_b.292
	j .cls_taskStress_con_0_b.291
.cls_taskStress_con_0_b.292: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.294
	j .cls_taskStress_con_0_b.293
.cls_taskStress_con_0_b.294: 
	beq a1, t3, .cls_taskStress_con_0_b.296
	j .cls_taskStress_con_0_b.295
.cls_taskStress_con_0_b.296: 
	beq t6, t0, .cls_taskStress_con_0_b.298
.cls_taskStress_con_0_b.299: 
	bge a0, a5, .cls_taskStress_con_0_b.298
	j .cls_taskStress_con_0_b.302
.cls_taskStress_con_0_b.298: 
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.301
.cls_taskStress_con_0_b.302: 
	blt s1, s7, .cls_taskStress_con_0_b.301
	j .cls_taskStress_con_0_b.6
.cls_taskStress_con_0_b.301: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.304
	j .cls_taskStress_con_0_b.6
.cls_taskStress_con_0_b.304: 
	lw s9, 15984(sp)
	addi s9, s9, 1
	sw s9, 15932(sp)
	lw s9, 15932(sp)
	sw s9, 16000(sp)
.cls_taskStress_con_0_b.306: 
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	bne s10, s9, .cls_taskStress_con_0_b.308
.cls_taskStress_con_0_b.309: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	beq s10, s9, .cls_taskStress_con_0_b.312
.cls_taskStress_con_0_b.313: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.316
.cls_taskStress_con_0_b.317: 
	bge s4, s3, .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.320: 
	lw s9, 16052(sp)
	lw s10, 16076(sp)
	beq s10, s9, .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.324: 
	bge t0, s6, .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.328: 
	blt a6, t0, .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.332: 
	blt s2, t6, .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.336: 
	lw s9, 16080(sp)
	lw s10, 4(sp)
	bne s10, s9, .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.340: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.319
.cls_taskStress_con_0_b.344: 
	blt a0, s4, .cls_taskStress_con_0_b.319
	j .cls_taskStress_con_0_b.323
.cls_taskStress_con_0_b.308: 
	bge s1, t3, .cls_taskStress_con_0_b.311
	j .cls_taskStress_con_0_b.309
.cls_taskStress_con_0_b.311: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.315
	j .cls_taskStress_con_0_b.309
.cls_taskStress_con_0_b.312: 
	bge a3, t5, .cls_taskStress_con_0_b.316
	j .cls_taskStress_con_0_b.313
.cls_taskStress_con_0_b.315: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.318
	j .cls_taskStress_con_0_b.309
.cls_taskStress_con_0_b.316: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.319
	j .cls_taskStress_con_0_b.317
.cls_taskStress_con_0_b.318: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.321
	j .cls_taskStress_con_0_b.309
.cls_taskStress_con_0_b.319: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.322
.cls_taskStress_con_0_b.323: 
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	bge s9, s10, .cls_taskStress_con_0_b.322
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.321: 
	lw s10, 16056(sp)
	lw s9, 16072(sp)
	bge s9, s10, .cls_taskStress_con_0_b.325
	j .cls_taskStress_con_0_b.309
.cls_taskStress_con_0_b.322: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.326
.cls_taskStress_con_0_b.327: 
	beq s7, a3, .cls_taskStress_con_0_b.330
.cls_taskStress_con_0_b.331: 
	blt s8, t4, .cls_taskStress_con_0_b.330
	j .cls_taskStress_con_0_b.335
.cls_taskStress_con_0_b.325: 
	blt s6, t4, .cls_taskStress_con_0_b.312
	j .cls_taskStress_con_0_b.309
.cls_taskStress_con_0_b.326: 
	bne a5, s1, .cls_taskStress_con_0_b.329
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.329: 
	lw s9, 16088(sp)
	lw s10, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.333
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.330: 
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	beq s10, s9, .cls_taskStress_con_0_b.334
.cls_taskStress_con_0_b.335: 
	blt t1, ra, .cls_taskStress_con_0_b.338
.cls_taskStress_con_0_b.339: 
	bge a1, a1, .cls_taskStress_con_0_b.342
.cls_taskStress_con_0_b.343: 
	bne a5, s2, .cls_taskStress_con_0_b.342
.cls_taskStress_con_0_b.348: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.342
.cls_taskStress_con_0_b.352: 
	bne a6, t4, .cls_taskStress_con_0_b.342
	j .cls_taskStress_con_0_b.347
.cls_taskStress_con_0_b.333: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.337
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.334: 
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	blt s10, s9, .cls_taskStress_con_0_b.338
	j .cls_taskStress_con_0_b.335
.cls_taskStress_con_0_b.337: 
	beq a1, s4, .cls_taskStress_con_0_b.341
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.338: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.342
	j .cls_taskStress_con_0_b.339
.cls_taskStress_con_0_b.341: 
	lw s9, 16052(sp)
	lw s10, 16032(sp)
	beq s10, s9, .cls_taskStress_con_0_b.345
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.342: 
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	beq s10, s9, .cls_taskStress_con_0_b.346
.cls_taskStress_con_0_b.347: 
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	blt s10, s9, .cls_taskStress_con_0_b.346
	j .cls_taskStress_con_0_b.351
.cls_taskStress_con_0_b.345: 
	bge s4, s3, .cls_taskStress_con_0_b.349
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.346: 
	bne a5, s6, .cls_taskStress_con_0_b.350
.cls_taskStress_con_0_b.351: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.355
.cls_taskStress_con_0_b.356: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.355
	j .cls_taskStress_con_0_b.360
.cls_taskStress_con_0_b.349: 
	beq ra, s11, .cls_taskStress_con_0_b.353
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.350: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.354
	j .cls_taskStress_con_0_b.351
.cls_taskStress_con_0_b.353: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.357
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.354: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.358
	j .cls_taskStress_con_0_b.351
.cls_taskStress_con_0_b.355: 
	blt t3, a1, .cls_taskStress_con_0_b.359
.cls_taskStress_con_0_b.360: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.362
.cls_taskStress_con_0_b.363: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.365
.cls_taskStress_con_0_b.366: 
	bge s8, t2, .cls_taskStress_con_0_b.365
	j .cls_taskStress_con_0_b.369
.cls_taskStress_con_0_b.357: 
	lw s10, 16088(sp)
	lw s9, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.361
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.358: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.355
	j .cls_taskStress_con_0_b.351
.cls_taskStress_con_0_b.359: 
	lw s10, 16036(sp)
	lw s9, 0(sp)
	beq s9, s10, .cls_taskStress_con_0_b.362
	j .cls_taskStress_con_0_b.360
.cls_taskStress_con_0_b.361: 
	beq t0, a0, .cls_taskStress_con_0_b.330
	j .cls_taskStress_con_0_b.327
.cls_taskStress_con_0_b.362: 
	blt a0, s1, .cls_taskStress_con_0_b.364
	j .cls_taskStress_con_0_b.363
.cls_taskStress_con_0_b.364: 
	blt s3, a3, .cls_taskStress_con_0_b.367
	j .cls_taskStress_con_0_b.363
.cls_taskStress_con_0_b.365: 
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	bne s9, s10, .cls_taskStress_con_0_b.368
.cls_taskStress_con_0_b.369: 
	bne s3, s4, .cls_taskStress_con_0_b.368
	j .cls_taskStress_con_0_b.372
.cls_taskStress_con_0_b.367: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.370
	j .cls_taskStress_con_0_b.363
.cls_taskStress_con_0_b.368: 
	bge a3, t1, .cls_taskStress_con_0_b.371
.cls_taskStress_con_0_b.372: 
	lw s9, 16060(sp)
	lw s10, 16064(sp)
	bge s9, s10, .cls_taskStress_con_0_b.375
.cls_taskStress_con_0_b.376: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.375
.cls_taskStress_con_0_b.379: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.375
.cls_taskStress_con_0_b.382: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.375
	j .cls_taskStress_con_0_b.378
.cls_taskStress_con_0_b.370: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.373
	j .cls_taskStress_con_0_b.363
.cls_taskStress_con_0_b.371: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.374
	j .cls_taskStress_con_0_b.372
.cls_taskStress_con_0_b.373: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.365
	j .cls_taskStress_con_0_b.363
.cls_taskStress_con_0_b.374: 
	beq t3, a0, .cls_taskStress_con_0_b.375
	j .cls_taskStress_con_0_b.372
.cls_taskStress_con_0_b.375: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.377
.cls_taskStress_con_0_b.378: 
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	blt s10, s9, .cls_taskStress_con_0_b.380
.cls_taskStress_con_0_b.381: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.380
.cls_taskStress_con_0_b.385: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.380
	j .cls_taskStress_con_0_b.384
.cls_taskStress_con_0_b.377: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.380
	j .cls_taskStress_con_0_b.378
.cls_taskStress_con_0_b.380: 
	blt t0, t1, .cls_taskStress_con_0_b.383
.cls_taskStress_con_0_b.384: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.383
	j .cls_taskStress_con_0_b.387
.cls_taskStress_con_0_b.383: 
	bge s4, s5, .cls_taskStress_con_0_b.386
.cls_taskStress_con_0_b.387: 
	bge a1, t5, .cls_taskStress_con_0_b.386
	j .cls_taskStress_con_0_b.389
.cls_taskStress_con_0_b.386: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.389: 
	bge t0, a0, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.392: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.396: 
	bne s5, s3, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.400: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.405: 
	bne s3, t3, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.409: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.412: 
	bge ra, a7, .cls_taskStress_con_0_b.388
.cls_taskStress_con_0_b.416: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.388
	j .cls_taskStress_con_0_b.391
.cls_taskStress_con_0_b.388: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.390
.cls_taskStress_con_0_b.391: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.390
.cls_taskStress_con_0_b.395: 
	beq s8, a7, .cls_taskStress_con_0_b.390
	j .cls_taskStress_con_0_b.394
.cls_taskStress_con_0_b.390: 
	beq t1, t0, .cls_taskStress_con_0_b.393
.cls_taskStress_con_0_b.394: 
	bge s2, s6, .cls_taskStress_con_0_b.393
.cls_taskStress_con_0_b.399: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.393
.cls_taskStress_con_0_b.404: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.393
	j .cls_taskStress_con_0_b.398
.cls_taskStress_con_0_b.393: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.397
.cls_taskStress_con_0_b.398: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.397
.cls_taskStress_con_0_b.403: 
	bne s4, s3, .cls_taskStress_con_0_b.397
.cls_taskStress_con_0_b.408: 
	bge s8, s3, .cls_taskStress_con_0_b.397
	j .cls_taskStress_con_0_b.402
.cls_taskStress_con_0_b.397: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.401
.cls_taskStress_con_0_b.402: 
	blt a6, t0, .cls_taskStress_con_0_b.401
	j .cls_taskStress_con_0_b.407
.cls_taskStress_con_0_b.401: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.406
.cls_taskStress_con_0_b.407: 
	blt a7, s1, .cls_taskStress_con_0_b.406
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.406: 
	bge a7, a6, .cls_taskStress_con_0_b.410
.cls_taskStress_con_0_b.411: 
	blt s0, s3, .cls_taskStress_con_0_b.414
.cls_taskStress_con_0_b.415: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.418
.cls_taskStress_con_0_b.419: 
	bge t4, s0, .cls_taskStress_con_0_b.421
.cls_taskStress_con_0_b.422: 
	beq t4, ra, .cls_taskStress_con_0_b.424
.cls_taskStress_con_0_b.425: 
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	bge s10, s9, .cls_taskStress_con_0_b.428
.cls_taskStress_con_0_b.429: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.428
.cls_taskStress_con_0_b.433: 
	beq t3, t2, .cls_taskStress_con_0_b.428
	j .cls_taskStress_con_0_b.432
.cls_taskStress_con_0_b.410: 
	blt a4, a4, .cls_taskStress_con_0_b.413
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.413: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.417
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.414: 
	bne a7, s6, .cls_taskStress_con_0_b.418
	j .cls_taskStress_con_0_b.415
.cls_taskStress_con_0_b.417: 
	beq t5, t3, .cls_taskStress_con_0_b.420
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.418: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.421
	j .cls_taskStress_con_0_b.419
.cls_taskStress_con_0_b.420: 
	lw s10, 16076(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.423
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.421: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.424
	j .cls_taskStress_con_0_b.422
.cls_taskStress_con_0_b.423: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.426
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.424: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.427
	j .cls_taskStress_con_0_b.425
.cls_taskStress_con_0_b.426: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.430
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.427: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.428
	j .cls_taskStress_con_0_b.425
.cls_taskStress_con_0_b.428: 
	bge s4, t5, .cls_taskStress_con_0_b.431
.cls_taskStress_con_0_b.432: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.431
	j .cls_taskStress_con_0_b.435
.cls_taskStress_con_0_b.430: 
	blt t2, a2, .cls_taskStress_con_0_b.414
	j .cls_taskStress_con_0_b.411
.cls_taskStress_con_0_b.431: 
	beq a2, s2, .cls_taskStress_con_0_b.434
.cls_taskStress_con_0_b.435: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.434
.cls_taskStress_con_0_b.438: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.434
.cls_taskStress_con_0_b.441: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.434
.cls_taskStress_con_0_b.444: 
	bge s3, s4, .cls_taskStress_con_0_b.434
.cls_taskStress_con_0_b.447: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.434
	j .cls_taskStress_con_0_b.437
.cls_taskStress_con_0_b.434: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.436
.cls_taskStress_con_0_b.437: 
	bne ra, t1, .cls_taskStress_con_0_b.439
.cls_taskStress_con_0_b.440: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.439
	j .cls_taskStress_con_0_b.443
.cls_taskStress_con_0_b.436: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.439
	j .cls_taskStress_con_0_b.437
.cls_taskStress_con_0_b.439: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.442
.cls_taskStress_con_0_b.443: 
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	beq s9, s10, .cls_taskStress_con_0_b.445
.cls_taskStress_con_0_b.446: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.448
.cls_taskStress_con_0_b.449: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.448
.cls_taskStress_con_0_b.452: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.448
	j .cls_taskStress_con_0_b.451
.cls_taskStress_con_0_b.442: 
	bne t2, s6, .cls_taskStress_con_0_b.445
	j .cls_taskStress_con_0_b.443
.cls_taskStress_con_0_b.445: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.448
	j .cls_taskStress_con_0_b.446
.cls_taskStress_con_0_b.448: 
	beq t0, a5, .cls_taskStress_con_0_b.450
.cls_taskStress_con_0_b.451: 
	bge s2, t2, .cls_taskStress_con_0_b.450
	j .cls_taskStress_con_0_b.454
.cls_taskStress_con_0_b.450: 
	blt s6, t3, .cls_taskStress_con_0_b.453
.cls_taskStress_con_0_b.454: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.453
.cls_taskStress_con_0_b.457: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.453
	j .cls_taskStress_con_0_b.456
.cls_taskStress_con_0_b.453: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.455
.cls_taskStress_con_0_b.456: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.455
.cls_taskStress_con_0_b.460: 
	blt a2, s11, .cls_taskStress_con_0_b.455
.cls_taskStress_con_0_b.464: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.455
.cls_taskStress_con_0_b.469: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.455
.cls_taskStress_con_0_b.475: 
	bge a2, a1, .cls_taskStress_con_0_b.455
.cls_taskStress_con_0_b.480: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.455
.cls_taskStress_con_0_b.483: 
	blt a5, s7, .cls_taskStress_con_0_b.455
	j .cls_taskStress_con_0_b.459
.cls_taskStress_con_0_b.455: 
	bge a5, t0, .cls_taskStress_con_0_b.458
.cls_taskStress_con_0_b.459: 
	bge t4, a2, .cls_taskStress_con_0_b.458
.cls_taskStress_con_0_b.463: 
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.458
.cls_taskStress_con_0_b.468: 
	bge t1, s1, .cls_taskStress_con_0_b.458
.cls_taskStress_con_0_b.474: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.458
.cls_taskStress_con_0_b.479: 
	blt a5, s8, .cls_taskStress_con_0_b.458
	j .cls_taskStress_con_0_b.462
.cls_taskStress_con_0_b.458: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.461
.cls_taskStress_con_0_b.462: 
	bge s0, t1, .cls_taskStress_con_0_b.461
.cls_taskStress_con_0_b.467: 
	blt t6, s6, .cls_taskStress_con_0_b.461
.cls_taskStress_con_0_b.473: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.461
	j .cls_taskStress_con_0_b.466
.cls_taskStress_con_0_b.461: 
	bge t2, a7, .cls_taskStress_con_0_b.465
.cls_taskStress_con_0_b.466: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.465
.cls_taskStress_con_0_b.472: 
	lw s9, 16012(sp)
	lw s10, 0(sp)
	blt s10, s9, .cls_taskStress_con_0_b.465
.cls_taskStress_con_0_b.478: 
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	bge s10, s9, .cls_taskStress_con_0_b.465
	j .cls_taskStress_con_0_b.471
.cls_taskStress_con_0_b.465: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.470
.cls_taskStress_con_0_b.471: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.470
	j .cls_taskStress_con_0_b.477
.cls_taskStress_con_0_b.470: 
	bge s5, s0, .cls_taskStress_con_0_b.476
.cls_taskStress_con_0_b.477: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.481
.cls_taskStress_con_0_b.482: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.484
.cls_taskStress_con_0_b.485: 
	bge t6, s11, .cls_taskStress_con_0_b.484
.cls_taskStress_con_0_b.488: 
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	blt s10, s9, .cls_taskStress_con_0_b.484
	j .cls_taskStress_con_0_b.487
.cls_taskStress_con_0_b.476: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.481
	j .cls_taskStress_con_0_b.477
.cls_taskStress_con_0_b.481: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.484
	j .cls_taskStress_con_0_b.482
.cls_taskStress_con_0_b.484: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.486
.cls_taskStress_con_0_b.487: 
	blt t0, s8, .cls_taskStress_con_0_b.490
.cls_taskStress_con_0_b.491: 
	blt a7, s1, .cls_taskStress_con_0_b.490
	j .cls_taskStress_con_0_b.493
.cls_taskStress_con_0_b.486: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.489
	j .cls_taskStress_con_0_b.487
.cls_taskStress_con_0_b.489: 
	blt s5, t0, .cls_taskStress_con_0_b.490
	j .cls_taskStress_con_0_b.487
.cls_taskStress_con_0_b.490: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.492
.cls_taskStress_con_0_b.493: 
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.495
.cls_taskStress_con_0_b.496: 
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	beq s10, s9, .cls_taskStress_con_0_b.497
.cls_taskStress_con_0_b.498: 
	bge t6, s7, .cls_taskStress_con_0_b.497
	j .cls_taskStress_con_0_b.500
.cls_taskStress_con_0_b.492: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.494
	j .cls_taskStress_con_0_b.493
.cls_taskStress_con_0_b.494: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.495
	j .cls_taskStress_con_0_b.493
.cls_taskStress_con_0_b.495: 
	beq t2, s2, .cls_taskStress_con_0_b.497
	j .cls_taskStress_con_0_b.496
.cls_taskStress_con_0_b.497: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.499
.cls_taskStress_con_0_b.500: 
	bge t3, s8, .cls_taskStress_con_0_b.501
.cls_taskStress_con_0_b.502: 
	bge t2, a7, .cls_taskStress_con_0_b.501
	j .cls_taskStress_con_0_b.504
.cls_taskStress_con_0_b.499: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.501
	j .cls_taskStress_con_0_b.500
.cls_taskStress_con_0_b.501: 
	beq s4, t3, .cls_taskStress_con_0_b.503
.cls_taskStress_con_0_b.504: 
	bne a6, s0, .cls_taskStress_con_0_b.506
.cls_taskStress_con_0_b.507: 
	blt t6, s7, .cls_taskStress_con_0_b.506
	j .cls_taskStress_con_0_b.509
.cls_taskStress_con_0_b.503: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.505
	j .cls_taskStress_con_0_b.504
.cls_taskStress_con_0_b.505: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.506
	j .cls_taskStress_con_0_b.504
.cls_taskStress_con_0_b.506: 
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	beq s10, s9, .cls_taskStress_con_0_b.508
.cls_taskStress_con_0_b.509: 
	bge t6, t5, .cls_taskStress_con_0_b.508
.cls_taskStress_con_0_b.512: 
	lw s9, 16044(sp)
	lw s10, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.508
.cls_taskStress_con_0_b.515: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.508
	j .cls_taskStress_con_0_b.511
.cls_taskStress_con_0_b.508: 
	beq a5, s4, .cls_taskStress_con_0_b.510
.cls_taskStress_con_0_b.511: 
	blt ra, t1, .cls_taskStress_con_0_b.510
	j .cls_taskStress_con_0_b.514
.cls_taskStress_con_0_b.510: 
	bne a0, a6, .cls_taskStress_con_0_b.513
.cls_taskStress_con_0_b.514: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.513
	j .cls_taskStress_con_0_b.517
.cls_taskStress_con_0_b.513: 
	bge a6, s11, .cls_taskStress_con_0_b.516
.cls_taskStress_con_0_b.517: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.519
.cls_taskStress_con_0_b.520: 
	blt s2, a4, .cls_taskStress_con_0_b.522
.cls_taskStress_con_0_b.523: 
	blt t3, t2, .cls_taskStress_con_0_b.522
	j .cls_taskStress_con_0_b.525
.cls_taskStress_con_0_b.516: 
	blt s8, a5, .cls_taskStress_con_0_b.518
	j .cls_taskStress_con_0_b.517
.cls_taskStress_con_0_b.518: 
	bge s3, ra, .cls_taskStress_con_0_b.521
	j .cls_taskStress_con_0_b.517
.cls_taskStress_con_0_b.519: 
	bne t1, s0, .cls_taskStress_con_0_b.522
	j .cls_taskStress_con_0_b.520
.cls_taskStress_con_0_b.521: 
	blt s0, a2, .cls_taskStress_con_0_b.519
	j .cls_taskStress_con_0_b.517
.cls_taskStress_con_0_b.522: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.524
.cls_taskStress_con_0_b.525: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.524
	j .cls_taskStress_con_0_b.527
.cls_taskStress_con_0_b.524: 
	beq t6, a2, .cls_taskStress_con_0_b.526
.cls_taskStress_con_0_b.527: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.526
	j .cls_taskStress_con_0_b.529
.cls_taskStress_con_0_b.526: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.528
.cls_taskStress_con_0_b.529: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.528
	j .cls_taskStress_con_0_b.531
.cls_taskStress_con_0_b.528: 
	bge t5, t1, .cls_taskStress_con_0_b.530
.cls_taskStress_con_0_b.531: 
	blt s6, a3, .cls_taskStress_con_0_b.533
.cls_taskStress_con_0_b.534: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.536
.cls_taskStress_con_0_b.537: 
	bne t2, a4, .cls_taskStress_con_0_b.539
.cls_taskStress_con_0_b.540: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.539
	j .cls_taskStress_con_0_b.543
.cls_taskStress_con_0_b.530: 
	bne s11, s7, .cls_taskStress_con_0_b.532
	j .cls_taskStress_con_0_b.531
.cls_taskStress_con_0_b.532: 
	lw s10, 16056(sp)
	lw s9, 0(sp)
	beq s9, s10, .cls_taskStress_con_0_b.535
	j .cls_taskStress_con_0_b.531
.cls_taskStress_con_0_b.533: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.536
	j .cls_taskStress_con_0_b.534
.cls_taskStress_con_0_b.535: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.533
	j .cls_taskStress_con_0_b.531
.cls_taskStress_con_0_b.536: 
	bge a6, a6, .cls_taskStress_con_0_b.538
	j .cls_taskStress_con_0_b.537
.cls_taskStress_con_0_b.538: 
	blt a0, t1, .cls_taskStress_con_0_b.541
	j .cls_taskStress_con_0_b.537
.cls_taskStress_con_0_b.539: 
	bne s8, s4, .cls_taskStress_con_0_b.542
.cls_taskStress_con_0_b.543: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.542
.cls_taskStress_con_0_b.546: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.542
	j .cls_taskStress_con_0_b.545
.cls_taskStress_con_0_b.541: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.539
	j .cls_taskStress_con_0_b.537
.cls_taskStress_con_0_b.542: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.544
.cls_taskStress_con_0_b.545: 
	blt s4, s4, .cls_taskStress_con_0_b.547
.cls_taskStress_con_0_b.548: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.549
.cls_taskStress_con_0_b.550: 
	blt ra, s2, .cls_taskStress_con_0_b.549
	j .cls_taskStress_con_0_b.552
.cls_taskStress_con_0_b.544: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.547
	j .cls_taskStress_con_0_b.545
.cls_taskStress_con_0_b.547: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.549
	j .cls_taskStress_con_0_b.548
.cls_taskStress_con_0_b.549: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.551
.cls_taskStress_con_0_b.552: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.551
	j .cls_taskStress_con_0_b.554
.cls_taskStress_con_0_b.551: 
	lw s9, 16016(sp)
	lw s10, 16040(sp)
	bge s9, s10, .cls_taskStress_con_0_b.553
.cls_taskStress_con_0_b.554: 
	beq t6, s8, .cls_taskStress_con_0_b.555
.cls_taskStress_con_0_b.556: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.557
.cls_taskStress_con_0_b.558: 
	bne t0, a7, .cls_taskStress_con_0_b.557
.cls_taskStress_con_0_b.561: 
	beq t1, t3, .cls_taskStress_con_0_b.557
	j .cls_taskStress_con_0_b.560
.cls_taskStress_con_0_b.553: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.555
	j .cls_taskStress_con_0_b.554
.cls_taskStress_con_0_b.555: 
	blt s11, a4, .cls_taskStress_con_0_b.557
	j .cls_taskStress_con_0_b.556
.cls_taskStress_con_0_b.557: 
	lw s9, 16056(sp)
	lw s10, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.559
.cls_taskStress_con_0_b.560: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.562
.cls_taskStress_con_0_b.563: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.565
.cls_taskStress_con_0_b.566: 
	blt s0, s0, .cls_taskStress_con_0_b.565
.cls_taskStress_con_0_b.570: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.565
	j .cls_taskStress_con_0_b.569
.cls_taskStress_con_0_b.559: 
	bge s1, a6, .cls_taskStress_con_0_b.562
	j .cls_taskStress_con_0_b.560
.cls_taskStress_con_0_b.562: 
	bge s2, s7, .cls_taskStress_con_0_b.564
	j .cls_taskStress_con_0_b.563
.cls_taskStress_con_0_b.564: 
	bne t2, s2, .cls_taskStress_con_0_b.567
	j .cls_taskStress_con_0_b.563
.cls_taskStress_con_0_b.565: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.568
.cls_taskStress_con_0_b.569: 
	lw s9, 16056(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.572
.cls_taskStress_con_0_b.573: 
	bge t5, t4, .cls_taskStress_con_0_b.572
.cls_taskStress_con_0_b.576: 
	bne ra, a1, .cls_taskStress_con_0_b.572
.cls_taskStress_con_0_b.579: 
	bge s5, s8, .cls_taskStress_con_0_b.572
.cls_taskStress_con_0_b.583: 
	bne a7, s11, .cls_taskStress_con_0_b.572
.cls_taskStress_con_0_b.587: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.572
.cls_taskStress_con_0_b.590: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.572
	j .cls_taskStress_con_0_b.575
.cls_taskStress_con_0_b.567: 
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	blt s9, s10, .cls_taskStress_con_0_b.565
	j .cls_taskStress_con_0_b.563
.cls_taskStress_con_0_b.568: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.571
	j .cls_taskStress_con_0_b.569
.cls_taskStress_con_0_b.571: 
	blt a5, s4, .cls_taskStress_con_0_b.572
	j .cls_taskStress_con_0_b.569
.cls_taskStress_con_0_b.572: 
	blt t6, s1, .cls_taskStress_con_0_b.574
.cls_taskStress_con_0_b.575: 
	blt t5, ra, .cls_taskStress_con_0_b.574
	j .cls_taskStress_con_0_b.578
.cls_taskStress_con_0_b.574: 
	bge s5, a6, .cls_taskStress_con_0_b.577
.cls_taskStress_con_0_b.578: 
	bne s1, t4, .cls_taskStress_con_0_b.577
.cls_taskStress_con_0_b.582: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.577
.cls_taskStress_con_0_b.586: 
	bge a3, a3, .cls_taskStress_con_0_b.577
	j .cls_taskStress_con_0_b.581
.cls_taskStress_con_0_b.577: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.580
.cls_taskStress_con_0_b.581: 
	bge t5, t6, .cls_taskStress_con_0_b.580
	j .cls_taskStress_con_0_b.585
.cls_taskStress_con_0_b.580: 
	blt s5, s7, .cls_taskStress_con_0_b.584
.cls_taskStress_con_0_b.585: 
	lw s10, 16032(sp)
	lw s9, 4(sp)
	beq s10, s9, .cls_taskStress_con_0_b.584
	j .cls_taskStress_con_0_b.589
.cls_taskStress_con_0_b.584: 
	bge t6, t2, .cls_taskStress_con_0_b.588
.cls_taskStress_con_0_b.589: 
	bge s5, a4, .cls_taskStress_con_0_b.588
	j .cls_taskStress_con_0_b.592
.cls_taskStress_con_0_b.588: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.591
.cls_taskStress_con_0_b.592: 
	bge t2, t4, .cls_taskStress_con_0_b.593
.cls_taskStress_con_0_b.594: 
	bne t5, s0, .cls_taskStress_con_0_b.595
.cls_taskStress_con_0_b.596: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.597
.cls_taskStress_con_0_b.598: 
	bge a2, a4, .cls_taskStress_con_0_b.597
.cls_taskStress_con_0_b.601: 
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.597
.cls_taskStress_con_0_b.604: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.597
.cls_taskStress_con_0_b.607: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.597
.cls_taskStress_con_0_b.609: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.597
.cls_taskStress_con_0_b.612: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.597
.cls_taskStress_con_0_b.616: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.597
	j .cls_taskStress_con_0_b.600
.cls_taskStress_con_0_b.591: 
	blt a3, t5, .cls_taskStress_con_0_b.593
	j .cls_taskStress_con_0_b.592
.cls_taskStress_con_0_b.593: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.595
	j .cls_taskStress_con_0_b.594
.cls_taskStress_con_0_b.595: 
	beq a1, t3, .cls_taskStress_con_0_b.597
	j .cls_taskStress_con_0_b.596
.cls_taskStress_con_0_b.597: 
	beq t6, t0, .cls_taskStress_con_0_b.599
.cls_taskStress_con_0_b.600: 
	bge a0, a5, .cls_taskStress_con_0_b.599
	j .cls_taskStress_con_0_b.603
.cls_taskStress_con_0_b.599: 
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.602
.cls_taskStress_con_0_b.603: 
	blt s1, s7, .cls_taskStress_con_0_b.602
	j .cls_taskStress_con_0_b.606
.cls_taskStress_con_0_b.602: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.605
.cls_taskStress_con_0_b.606: 
	lw s9, 16000(sp)
	addi s9, s9, 1
	sw s9, 15968(sp)
	lw s9, 15968(sp)
	sw s9, 15984(sp)
	j .cls_taskStress_con_0_b.4
.cls_taskStress_con_0_b.605: 
	lw s9, 16000(sp)
	addi s9, s9, 1
	sw s9, 15936(sp)
	lw s9, 15936(sp)
	sw s9, 15992(sp)
.cls_taskStress_con_0_b.608: 
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	bne s10, s9, .cls_taskStress_con_0_b.610
.cls_taskStress_con_0_b.611: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	beq s10, s9, .cls_taskStress_con_0_b.614
.cls_taskStress_con_0_b.615: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.618
.cls_taskStress_con_0_b.619: 
	bge s4, s3, .cls_taskStress_con_0_b.621
.cls_taskStress_con_0_b.622: 
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	beq s9, s10, .cls_taskStress_con_0_b.621
.cls_taskStress_con_0_b.626: 
	bge t0, s6, .cls_taskStress_con_0_b.621
.cls_taskStress_con_0_b.630: 
	blt a6, t0, .cls_taskStress_con_0_b.621
.cls_taskStress_con_0_b.634: 
	blt s2, t6, .cls_taskStress_con_0_b.621
.cls_taskStress_con_0_b.638: 
	lw s10, 16080(sp)
	lw s9, 4(sp)
	bne s9, s10, .cls_taskStress_con_0_b.621
.cls_taskStress_con_0_b.642: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.621
.cls_taskStress_con_0_b.646: 
	blt a0, s4, .cls_taskStress_con_0_b.621
	j .cls_taskStress_con_0_b.625
.cls_taskStress_con_0_b.610: 
	bge s1, t3, .cls_taskStress_con_0_b.613
	j .cls_taskStress_con_0_b.611
.cls_taskStress_con_0_b.613: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.617
	j .cls_taskStress_con_0_b.611
.cls_taskStress_con_0_b.614: 
	bge a3, t5, .cls_taskStress_con_0_b.618
	j .cls_taskStress_con_0_b.615
.cls_taskStress_con_0_b.617: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.620
	j .cls_taskStress_con_0_b.611
.cls_taskStress_con_0_b.618: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.621
	j .cls_taskStress_con_0_b.619
.cls_taskStress_con_0_b.620: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.623
	j .cls_taskStress_con_0_b.611
.cls_taskStress_con_0_b.621: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.624
.cls_taskStress_con_0_b.625: 
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	bge s9, s10, .cls_taskStress_con_0_b.624
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.623: 
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.627
	j .cls_taskStress_con_0_b.611
.cls_taskStress_con_0_b.624: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.628
.cls_taskStress_con_0_b.629: 
	beq s7, a3, .cls_taskStress_con_0_b.632
.cls_taskStress_con_0_b.633: 
	blt s8, t4, .cls_taskStress_con_0_b.632
	j .cls_taskStress_con_0_b.637
.cls_taskStress_con_0_b.627: 
	blt s6, t4, .cls_taskStress_con_0_b.614
	j .cls_taskStress_con_0_b.611
.cls_taskStress_con_0_b.628: 
	bne a5, s1, .cls_taskStress_con_0_b.631
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.631: 
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.635
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.632: 
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	beq s10, s9, .cls_taskStress_con_0_b.636
.cls_taskStress_con_0_b.637: 
	blt t1, ra, .cls_taskStress_con_0_b.640
.cls_taskStress_con_0_b.641: 
	bge a1, a1, .cls_taskStress_con_0_b.644
.cls_taskStress_con_0_b.645: 
	bne a5, s2, .cls_taskStress_con_0_b.644
.cls_taskStress_con_0_b.650: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.644
.cls_taskStress_con_0_b.654: 
	bne a6, t4, .cls_taskStress_con_0_b.644
	j .cls_taskStress_con_0_b.649
.cls_taskStress_con_0_b.635: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.639
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.636: 
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	blt s10, s9, .cls_taskStress_con_0_b.640
	j .cls_taskStress_con_0_b.637
.cls_taskStress_con_0_b.639: 
	beq a1, s4, .cls_taskStress_con_0_b.643
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.640: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.644
	j .cls_taskStress_con_0_b.641
.cls_taskStress_con_0_b.643: 
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	beq s9, s10, .cls_taskStress_con_0_b.647
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.644: 
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	beq s10, s9, .cls_taskStress_con_0_b.648
.cls_taskStress_con_0_b.649: 
	lw s10, 16092(sp)
	lw s9, 16040(sp)
	blt s9, s10, .cls_taskStress_con_0_b.648
	j .cls_taskStress_con_0_b.653
.cls_taskStress_con_0_b.647: 
	bge s4, s3, .cls_taskStress_con_0_b.651
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.648: 
	bne a5, s6, .cls_taskStress_con_0_b.652
.cls_taskStress_con_0_b.653: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.657
.cls_taskStress_con_0_b.658: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.657
	j .cls_taskStress_con_0_b.662
.cls_taskStress_con_0_b.651: 
	beq ra, s11, .cls_taskStress_con_0_b.655
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.652: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.656
	j .cls_taskStress_con_0_b.653
.cls_taskStress_con_0_b.655: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.659
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.656: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.660
	j .cls_taskStress_con_0_b.653
.cls_taskStress_con_0_b.657: 
	blt t3, a1, .cls_taskStress_con_0_b.661
.cls_taskStress_con_0_b.662: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.664
.cls_taskStress_con_0_b.665: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.667
.cls_taskStress_con_0_b.668: 
	bge s8, t2, .cls_taskStress_con_0_b.667
	j .cls_taskStress_con_0_b.671
.cls_taskStress_con_0_b.659: 
	lw s10, 16088(sp)
	lw s9, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.663
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.660: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.657
	j .cls_taskStress_con_0_b.653
.cls_taskStress_con_0_b.661: 
	lw s10, 16036(sp)
	lw s9, 0(sp)
	beq s9, s10, .cls_taskStress_con_0_b.664
	j .cls_taskStress_con_0_b.662
.cls_taskStress_con_0_b.663: 
	beq t0, a0, .cls_taskStress_con_0_b.632
	j .cls_taskStress_con_0_b.629
.cls_taskStress_con_0_b.664: 
	blt a0, s1, .cls_taskStress_con_0_b.666
	j .cls_taskStress_con_0_b.665
.cls_taskStress_con_0_b.666: 
	blt s3, a3, .cls_taskStress_con_0_b.669
	j .cls_taskStress_con_0_b.665
.cls_taskStress_con_0_b.667: 
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	bne s9, s10, .cls_taskStress_con_0_b.670
.cls_taskStress_con_0_b.671: 
	bne s3, s4, .cls_taskStress_con_0_b.670
	j .cls_taskStress_con_0_b.674
.cls_taskStress_con_0_b.669: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.672
	j .cls_taskStress_con_0_b.665
.cls_taskStress_con_0_b.670: 
	bge a3, t1, .cls_taskStress_con_0_b.673
.cls_taskStress_con_0_b.674: 
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	bge s10, s9, .cls_taskStress_con_0_b.677
.cls_taskStress_con_0_b.678: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.677
.cls_taskStress_con_0_b.681: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.677
.cls_taskStress_con_0_b.684: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.677
	j .cls_taskStress_con_0_b.680
.cls_taskStress_con_0_b.672: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.675
	j .cls_taskStress_con_0_b.665
.cls_taskStress_con_0_b.673: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.676
	j .cls_taskStress_con_0_b.674
.cls_taskStress_con_0_b.675: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.667
	j .cls_taskStress_con_0_b.665
.cls_taskStress_con_0_b.676: 
	beq t3, a0, .cls_taskStress_con_0_b.677
	j .cls_taskStress_con_0_b.674
.cls_taskStress_con_0_b.677: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.679
.cls_taskStress_con_0_b.680: 
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	blt s9, s10, .cls_taskStress_con_0_b.682
.cls_taskStress_con_0_b.683: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.682
.cls_taskStress_con_0_b.687: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.682
	j .cls_taskStress_con_0_b.686
.cls_taskStress_con_0_b.679: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.682
	j .cls_taskStress_con_0_b.680
.cls_taskStress_con_0_b.682: 
	blt t0, t1, .cls_taskStress_con_0_b.685
.cls_taskStress_con_0_b.686: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.685
	j .cls_taskStress_con_0_b.689
.cls_taskStress_con_0_b.685: 
	bge s4, s5, .cls_taskStress_con_0_b.688
.cls_taskStress_con_0_b.689: 
	bge a1, t5, .cls_taskStress_con_0_b.688
	j .cls_taskStress_con_0_b.691
.cls_taskStress_con_0_b.688: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.691: 
	bge t0, a0, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.694: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.698: 
	bne s5, s3, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.702: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.707: 
	bne s3, t3, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.711: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.714: 
	bge ra, a7, .cls_taskStress_con_0_b.690
.cls_taskStress_con_0_b.718: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.690
	j .cls_taskStress_con_0_b.693
.cls_taskStress_con_0_b.690: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.692
.cls_taskStress_con_0_b.693: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.692
.cls_taskStress_con_0_b.697: 
	beq s8, a7, .cls_taskStress_con_0_b.692
	j .cls_taskStress_con_0_b.696
.cls_taskStress_con_0_b.692: 
	beq t1, t0, .cls_taskStress_con_0_b.695
.cls_taskStress_con_0_b.696: 
	bge s2, s6, .cls_taskStress_con_0_b.695
.cls_taskStress_con_0_b.701: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.695
.cls_taskStress_con_0_b.706: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.695
	j .cls_taskStress_con_0_b.700
.cls_taskStress_con_0_b.695: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.699
.cls_taskStress_con_0_b.700: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.699
.cls_taskStress_con_0_b.705: 
	bne s4, s3, .cls_taskStress_con_0_b.699
.cls_taskStress_con_0_b.710: 
	bge s8, s3, .cls_taskStress_con_0_b.699
	j .cls_taskStress_con_0_b.704
.cls_taskStress_con_0_b.699: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.703
.cls_taskStress_con_0_b.704: 
	blt a6, t0, .cls_taskStress_con_0_b.703
	j .cls_taskStress_con_0_b.709
.cls_taskStress_con_0_b.703: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.708
.cls_taskStress_con_0_b.709: 
	blt a7, s1, .cls_taskStress_con_0_b.708
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.708: 
	bge a7, a6, .cls_taskStress_con_0_b.712
.cls_taskStress_con_0_b.713: 
	blt s0, s3, .cls_taskStress_con_0_b.716
.cls_taskStress_con_0_b.717: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.720
.cls_taskStress_con_0_b.721: 
	bge t4, s0, .cls_taskStress_con_0_b.723
.cls_taskStress_con_0_b.724: 
	beq t4, ra, .cls_taskStress_con_0_b.726
.cls_taskStress_con_0_b.727: 
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	bge s9, s10, .cls_taskStress_con_0_b.730
.cls_taskStress_con_0_b.731: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.730
.cls_taskStress_con_0_b.735: 
	beq t3, t2, .cls_taskStress_con_0_b.730
	j .cls_taskStress_con_0_b.734
.cls_taskStress_con_0_b.712: 
	blt a4, a4, .cls_taskStress_con_0_b.715
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.715: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.719
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.716: 
	bne a7, s6, .cls_taskStress_con_0_b.720
	j .cls_taskStress_con_0_b.717
.cls_taskStress_con_0_b.719: 
	beq t5, t3, .cls_taskStress_con_0_b.722
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.720: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.723
	j .cls_taskStress_con_0_b.721
.cls_taskStress_con_0_b.722: 
	lw s9, 16076(sp)
	lw s10, 4(sp)
	bge s10, s9, .cls_taskStress_con_0_b.725
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.723: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.726
	j .cls_taskStress_con_0_b.724
.cls_taskStress_con_0_b.725: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.728
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.726: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.729
	j .cls_taskStress_con_0_b.727
.cls_taskStress_con_0_b.728: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.732
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.729: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.730
	j .cls_taskStress_con_0_b.727
.cls_taskStress_con_0_b.730: 
	bge s4, t5, .cls_taskStress_con_0_b.733
.cls_taskStress_con_0_b.734: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.733
	j .cls_taskStress_con_0_b.737
.cls_taskStress_con_0_b.732: 
	blt t2, a2, .cls_taskStress_con_0_b.716
	j .cls_taskStress_con_0_b.713
.cls_taskStress_con_0_b.733: 
	beq a2, s2, .cls_taskStress_con_0_b.736
.cls_taskStress_con_0_b.737: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.736
.cls_taskStress_con_0_b.740: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.736
.cls_taskStress_con_0_b.743: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.736
.cls_taskStress_con_0_b.746: 
	bge s3, s4, .cls_taskStress_con_0_b.736
.cls_taskStress_con_0_b.749: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.736
	j .cls_taskStress_con_0_b.739
.cls_taskStress_con_0_b.736: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.738
.cls_taskStress_con_0_b.739: 
	bne ra, t1, .cls_taskStress_con_0_b.741
.cls_taskStress_con_0_b.742: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.741
	j .cls_taskStress_con_0_b.745
.cls_taskStress_con_0_b.738: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.741
	j .cls_taskStress_con_0_b.739
.cls_taskStress_con_0_b.741: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.744
.cls_taskStress_con_0_b.745: 
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	beq s9, s10, .cls_taskStress_con_0_b.747
.cls_taskStress_con_0_b.748: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.750
.cls_taskStress_con_0_b.751: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.750
.cls_taskStress_con_0_b.754: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.750
	j .cls_taskStress_con_0_b.753
.cls_taskStress_con_0_b.744: 
	bne t2, s6, .cls_taskStress_con_0_b.747
	j .cls_taskStress_con_0_b.745
.cls_taskStress_con_0_b.747: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.750
	j .cls_taskStress_con_0_b.748
.cls_taskStress_con_0_b.750: 
	beq t0, a5, .cls_taskStress_con_0_b.752
.cls_taskStress_con_0_b.753: 
	bge s2, t2, .cls_taskStress_con_0_b.752
	j .cls_taskStress_con_0_b.756
.cls_taskStress_con_0_b.752: 
	blt s6, t3, .cls_taskStress_con_0_b.755
.cls_taskStress_con_0_b.756: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.755
.cls_taskStress_con_0_b.759: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.755
	j .cls_taskStress_con_0_b.758
.cls_taskStress_con_0_b.755: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.757
.cls_taskStress_con_0_b.758: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.757
.cls_taskStress_con_0_b.762: 
	blt a2, s11, .cls_taskStress_con_0_b.757
.cls_taskStress_con_0_b.766: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.757
.cls_taskStress_con_0_b.771: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.757
.cls_taskStress_con_0_b.777: 
	bge a2, a1, .cls_taskStress_con_0_b.757
.cls_taskStress_con_0_b.782: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.757
.cls_taskStress_con_0_b.785: 
	blt a5, s7, .cls_taskStress_con_0_b.757
	j .cls_taskStress_con_0_b.761
.cls_taskStress_con_0_b.757: 
	bge a5, t0, .cls_taskStress_con_0_b.760
.cls_taskStress_con_0_b.761: 
	bge t4, a2, .cls_taskStress_con_0_b.760
.cls_taskStress_con_0_b.765: 
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.760
.cls_taskStress_con_0_b.770: 
	bge t1, s1, .cls_taskStress_con_0_b.760
.cls_taskStress_con_0_b.776: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.760
.cls_taskStress_con_0_b.781: 
	blt a5, s8, .cls_taskStress_con_0_b.760
	j .cls_taskStress_con_0_b.764
.cls_taskStress_con_0_b.760: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.763
.cls_taskStress_con_0_b.764: 
	bge s0, t1, .cls_taskStress_con_0_b.763
.cls_taskStress_con_0_b.769: 
	blt t6, s6, .cls_taskStress_con_0_b.763
.cls_taskStress_con_0_b.775: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.763
	j .cls_taskStress_con_0_b.768
.cls_taskStress_con_0_b.763: 
	bge t2, a7, .cls_taskStress_con_0_b.767
.cls_taskStress_con_0_b.768: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.767
.cls_taskStress_con_0_b.774: 
	lw s10, 16012(sp)
	lw s9, 0(sp)
	blt s9, s10, .cls_taskStress_con_0_b.767
.cls_taskStress_con_0_b.780: 
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	bge s10, s9, .cls_taskStress_con_0_b.767
	j .cls_taskStress_con_0_b.773
.cls_taskStress_con_0_b.767: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.772
.cls_taskStress_con_0_b.773: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.772
	j .cls_taskStress_con_0_b.779
.cls_taskStress_con_0_b.772: 
	bge s5, s0, .cls_taskStress_con_0_b.778
.cls_taskStress_con_0_b.779: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.783
.cls_taskStress_con_0_b.784: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.786
.cls_taskStress_con_0_b.787: 
	bge t6, s11, .cls_taskStress_con_0_b.786
.cls_taskStress_con_0_b.790: 
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	blt s10, s9, .cls_taskStress_con_0_b.786
	j .cls_taskStress_con_0_b.789
.cls_taskStress_con_0_b.778: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.783
	j .cls_taskStress_con_0_b.779
.cls_taskStress_con_0_b.783: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.786
	j .cls_taskStress_con_0_b.784
.cls_taskStress_con_0_b.786: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.788
.cls_taskStress_con_0_b.789: 
	blt t0, s8, .cls_taskStress_con_0_b.792
.cls_taskStress_con_0_b.793: 
	blt a7, s1, .cls_taskStress_con_0_b.792
	j .cls_taskStress_con_0_b.795
.cls_taskStress_con_0_b.788: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.791
	j .cls_taskStress_con_0_b.789
.cls_taskStress_con_0_b.791: 
	blt s5, t0, .cls_taskStress_con_0_b.792
	j .cls_taskStress_con_0_b.789
.cls_taskStress_con_0_b.792: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.794
.cls_taskStress_con_0_b.795: 
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.797
.cls_taskStress_con_0_b.798: 
	lw s9, 16028(sp)
	lw s10, 16080(sp)
	beq s9, s10, .cls_taskStress_con_0_b.799
.cls_taskStress_con_0_b.800: 
	bge t6, s7, .cls_taskStress_con_0_b.799
	j .cls_taskStress_con_0_b.802
.cls_taskStress_con_0_b.794: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.796
	j .cls_taskStress_con_0_b.795
.cls_taskStress_con_0_b.796: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.797
	j .cls_taskStress_con_0_b.795
.cls_taskStress_con_0_b.797: 
	beq t2, s2, .cls_taskStress_con_0_b.799
	j .cls_taskStress_con_0_b.798
.cls_taskStress_con_0_b.799: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.801
.cls_taskStress_con_0_b.802: 
	bge t3, s8, .cls_taskStress_con_0_b.803
.cls_taskStress_con_0_b.804: 
	bge t2, a7, .cls_taskStress_con_0_b.803
	j .cls_taskStress_con_0_b.806
.cls_taskStress_con_0_b.801: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.803
	j .cls_taskStress_con_0_b.802
.cls_taskStress_con_0_b.803: 
	beq s4, t3, .cls_taskStress_con_0_b.805
.cls_taskStress_con_0_b.806: 
	bne a6, s0, .cls_taskStress_con_0_b.808
.cls_taskStress_con_0_b.809: 
	blt t6, s7, .cls_taskStress_con_0_b.808
	j .cls_taskStress_con_0_b.811
.cls_taskStress_con_0_b.805: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.807
	j .cls_taskStress_con_0_b.806
.cls_taskStress_con_0_b.807: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.808
	j .cls_taskStress_con_0_b.806
.cls_taskStress_con_0_b.808: 
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	beq s9, s10, .cls_taskStress_con_0_b.810
.cls_taskStress_con_0_b.811: 
	bge t6, t5, .cls_taskStress_con_0_b.810
.cls_taskStress_con_0_b.814: 
	lw s9, 16044(sp)
	lw s10, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.810
.cls_taskStress_con_0_b.817: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.810
	j .cls_taskStress_con_0_b.813
.cls_taskStress_con_0_b.810: 
	beq a5, s4, .cls_taskStress_con_0_b.812
.cls_taskStress_con_0_b.813: 
	blt ra, t1, .cls_taskStress_con_0_b.812
	j .cls_taskStress_con_0_b.816
.cls_taskStress_con_0_b.812: 
	bne a0, a6, .cls_taskStress_con_0_b.815
.cls_taskStress_con_0_b.816: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.815
	j .cls_taskStress_con_0_b.819
.cls_taskStress_con_0_b.815: 
	bge a6, s11, .cls_taskStress_con_0_b.818
.cls_taskStress_con_0_b.819: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.821
.cls_taskStress_con_0_b.822: 
	blt s2, a4, .cls_taskStress_con_0_b.824
.cls_taskStress_con_0_b.825: 
	blt t3, t2, .cls_taskStress_con_0_b.824
	j .cls_taskStress_con_0_b.827
.cls_taskStress_con_0_b.818: 
	blt s8, a5, .cls_taskStress_con_0_b.820
	j .cls_taskStress_con_0_b.819
.cls_taskStress_con_0_b.820: 
	bge s3, ra, .cls_taskStress_con_0_b.823
	j .cls_taskStress_con_0_b.819
.cls_taskStress_con_0_b.821: 
	bne t1, s0, .cls_taskStress_con_0_b.824
	j .cls_taskStress_con_0_b.822
.cls_taskStress_con_0_b.823: 
	blt s0, a2, .cls_taskStress_con_0_b.821
	j .cls_taskStress_con_0_b.819
.cls_taskStress_con_0_b.824: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.826
.cls_taskStress_con_0_b.827: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.826
	j .cls_taskStress_con_0_b.829
.cls_taskStress_con_0_b.826: 
	beq t6, a2, .cls_taskStress_con_0_b.828
.cls_taskStress_con_0_b.829: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.828
	j .cls_taskStress_con_0_b.831
.cls_taskStress_con_0_b.828: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.830
.cls_taskStress_con_0_b.831: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.830
	j .cls_taskStress_con_0_b.833
.cls_taskStress_con_0_b.830: 
	bge t5, t1, .cls_taskStress_con_0_b.832
.cls_taskStress_con_0_b.833: 
	blt s6, a3, .cls_taskStress_con_0_b.835
.cls_taskStress_con_0_b.836: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.838
.cls_taskStress_con_0_b.839: 
	bne t2, a4, .cls_taskStress_con_0_b.841
.cls_taskStress_con_0_b.842: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.841
	j .cls_taskStress_con_0_b.845
.cls_taskStress_con_0_b.832: 
	bne s11, s7, .cls_taskStress_con_0_b.834
	j .cls_taskStress_con_0_b.833
.cls_taskStress_con_0_b.834: 
	lw s9, 16056(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.837
	j .cls_taskStress_con_0_b.833
.cls_taskStress_con_0_b.835: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.838
	j .cls_taskStress_con_0_b.836
.cls_taskStress_con_0_b.837: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.835
	j .cls_taskStress_con_0_b.833
.cls_taskStress_con_0_b.838: 
	bge a6, a6, .cls_taskStress_con_0_b.840
	j .cls_taskStress_con_0_b.839
.cls_taskStress_con_0_b.840: 
	blt a0, t1, .cls_taskStress_con_0_b.843
	j .cls_taskStress_con_0_b.839
.cls_taskStress_con_0_b.841: 
	bne s8, s4, .cls_taskStress_con_0_b.844
.cls_taskStress_con_0_b.845: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.844
.cls_taskStress_con_0_b.848: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.844
	j .cls_taskStress_con_0_b.847
.cls_taskStress_con_0_b.843: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.841
	j .cls_taskStress_con_0_b.839
.cls_taskStress_con_0_b.844: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.846
.cls_taskStress_con_0_b.847: 
	blt s4, s4, .cls_taskStress_con_0_b.849
.cls_taskStress_con_0_b.850: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.851
.cls_taskStress_con_0_b.852: 
	blt ra, s2, .cls_taskStress_con_0_b.851
	j .cls_taskStress_con_0_b.854
.cls_taskStress_con_0_b.846: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.849
	j .cls_taskStress_con_0_b.847
.cls_taskStress_con_0_b.849: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.851
	j .cls_taskStress_con_0_b.850
.cls_taskStress_con_0_b.851: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.853
.cls_taskStress_con_0_b.854: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.853
	j .cls_taskStress_con_0_b.856
.cls_taskStress_con_0_b.853: 
	lw s9, 16016(sp)
	lw s10, 16040(sp)
	bge s9, s10, .cls_taskStress_con_0_b.855
.cls_taskStress_con_0_b.856: 
	beq t6, s8, .cls_taskStress_con_0_b.857
.cls_taskStress_con_0_b.858: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.859
.cls_taskStress_con_0_b.860: 
	bne t0, a7, .cls_taskStress_con_0_b.859
.cls_taskStress_con_0_b.863: 
	beq t1, t3, .cls_taskStress_con_0_b.859
	j .cls_taskStress_con_0_b.862
.cls_taskStress_con_0_b.855: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.857
	j .cls_taskStress_con_0_b.856
.cls_taskStress_con_0_b.857: 
	blt s11, a4, .cls_taskStress_con_0_b.859
	j .cls_taskStress_con_0_b.858
.cls_taskStress_con_0_b.859: 
	lw s9, 16056(sp)
	lw s10, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.861
.cls_taskStress_con_0_b.862: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.864
.cls_taskStress_con_0_b.865: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.867
.cls_taskStress_con_0_b.868: 
	blt s0, s0, .cls_taskStress_con_0_b.867
.cls_taskStress_con_0_b.872: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.867
	j .cls_taskStress_con_0_b.871
.cls_taskStress_con_0_b.861: 
	bge s1, a6, .cls_taskStress_con_0_b.864
	j .cls_taskStress_con_0_b.862
.cls_taskStress_con_0_b.864: 
	bge s2, s7, .cls_taskStress_con_0_b.866
	j .cls_taskStress_con_0_b.865
.cls_taskStress_con_0_b.866: 
	bne t2, s2, .cls_taskStress_con_0_b.869
	j .cls_taskStress_con_0_b.865
.cls_taskStress_con_0_b.867: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.870
.cls_taskStress_con_0_b.871: 
	lw s9, 16056(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.874
.cls_taskStress_con_0_b.875: 
	bge t5, t4, .cls_taskStress_con_0_b.874
.cls_taskStress_con_0_b.878: 
	bne ra, a1, .cls_taskStress_con_0_b.874
.cls_taskStress_con_0_b.881: 
	bge s5, s8, .cls_taskStress_con_0_b.874
.cls_taskStress_con_0_b.885: 
	bne a7, s11, .cls_taskStress_con_0_b.874
.cls_taskStress_con_0_b.889: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.874
.cls_taskStress_con_0_b.892: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.874
	j .cls_taskStress_con_0_b.877
.cls_taskStress_con_0_b.869: 
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	blt s9, s10, .cls_taskStress_con_0_b.867
	j .cls_taskStress_con_0_b.865
.cls_taskStress_con_0_b.870: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.873
	j .cls_taskStress_con_0_b.871
.cls_taskStress_con_0_b.873: 
	blt a5, s4, .cls_taskStress_con_0_b.874
	j .cls_taskStress_con_0_b.871
.cls_taskStress_con_0_b.874: 
	blt t6, s1, .cls_taskStress_con_0_b.876
.cls_taskStress_con_0_b.877: 
	blt t5, ra, .cls_taskStress_con_0_b.876
	j .cls_taskStress_con_0_b.880
.cls_taskStress_con_0_b.876: 
	bge s5, a6, .cls_taskStress_con_0_b.879
.cls_taskStress_con_0_b.880: 
	bne s1, t4, .cls_taskStress_con_0_b.879
.cls_taskStress_con_0_b.884: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.879
.cls_taskStress_con_0_b.888: 
	bge a3, a3, .cls_taskStress_con_0_b.879
	j .cls_taskStress_con_0_b.883
.cls_taskStress_con_0_b.879: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.882
.cls_taskStress_con_0_b.883: 
	bge t5, t6, .cls_taskStress_con_0_b.882
	j .cls_taskStress_con_0_b.887
.cls_taskStress_con_0_b.882: 
	blt s5, s7, .cls_taskStress_con_0_b.886
.cls_taskStress_con_0_b.887: 
	lw s9, 16032(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.886
	j .cls_taskStress_con_0_b.891
.cls_taskStress_con_0_b.886: 
	bge t6, t2, .cls_taskStress_con_0_b.890
.cls_taskStress_con_0_b.891: 
	bge s5, a4, .cls_taskStress_con_0_b.890
	j .cls_taskStress_con_0_b.894
.cls_taskStress_con_0_b.890: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.893
.cls_taskStress_con_0_b.894: 
	bge t2, t4, .cls_taskStress_con_0_b.895
.cls_taskStress_con_0_b.896: 
	bne t5, s0, .cls_taskStress_con_0_b.897
.cls_taskStress_con_0_b.898: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.899
.cls_taskStress_con_0_b.900: 
	bge a2, a4, .cls_taskStress_con_0_b.899
.cls_taskStress_con_0_b.903: 
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.899
.cls_taskStress_con_0_b.906: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.899
.cls_taskStress_con_0_b.909: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.899
.cls_taskStress_con_0_b.911: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.899
.cls_taskStress_con_0_b.914: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.899
.cls_taskStress_con_0_b.918: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.899
	j .cls_taskStress_con_0_b.902
.cls_taskStress_con_0_b.893: 
	blt a3, t5, .cls_taskStress_con_0_b.895
	j .cls_taskStress_con_0_b.894
.cls_taskStress_con_0_b.895: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.897
	j .cls_taskStress_con_0_b.896
.cls_taskStress_con_0_b.897: 
	beq a1, t3, .cls_taskStress_con_0_b.899
	j .cls_taskStress_con_0_b.898
.cls_taskStress_con_0_b.899: 
	beq t6, t0, .cls_taskStress_con_0_b.901
.cls_taskStress_con_0_b.902: 
	bge a0, a5, .cls_taskStress_con_0_b.901
	j .cls_taskStress_con_0_b.905
.cls_taskStress_con_0_b.901: 
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.904
.cls_taskStress_con_0_b.905: 
	blt s1, s7, .cls_taskStress_con_0_b.904
	j .cls_taskStress_con_0_b.908
.cls_taskStress_con_0_b.904: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.907
.cls_taskStress_con_0_b.908: 
	lw s9, 15992(sp)
	addi s9, s9, 1
	sw s9, 15956(sp)
	lw s9, 15956(sp)
	sw s9, 16000(sp)
	j .cls_taskStress_con_0_b.306
.cls_taskStress_con_0_b.907: 
	lw s9, 15992(sp)
	addi s9, s9, 1
	sw s9, 15964(sp)
	lw s9, 15964(sp)
	sw s9, 15988(sp)
.cls_taskStress_con_0_b.910: 
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	bne s10, s9, .cls_taskStress_con_0_b.912
.cls_taskStress_con_0_b.913: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	beq s10, s9, .cls_taskStress_con_0_b.916
.cls_taskStress_con_0_b.917: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.920
.cls_taskStress_con_0_b.921: 
	bge s4, s3, .cls_taskStress_con_0_b.923
.cls_taskStress_con_0_b.924: 
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	beq s9, s10, .cls_taskStress_con_0_b.923
.cls_taskStress_con_0_b.928: 
	bge t0, s6, .cls_taskStress_con_0_b.923
.cls_taskStress_con_0_b.932: 
	blt a6, t0, .cls_taskStress_con_0_b.923
.cls_taskStress_con_0_b.936: 
	blt s2, t6, .cls_taskStress_con_0_b.923
.cls_taskStress_con_0_b.940: 
	lw s9, 16080(sp)
	lw s10, 4(sp)
	bne s10, s9, .cls_taskStress_con_0_b.923
.cls_taskStress_con_0_b.944: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.923
.cls_taskStress_con_0_b.948: 
	blt a0, s4, .cls_taskStress_con_0_b.923
	j .cls_taskStress_con_0_b.927
.cls_taskStress_con_0_b.912: 
	bge s1, t3, .cls_taskStress_con_0_b.915
	j .cls_taskStress_con_0_b.913
.cls_taskStress_con_0_b.915: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.919
	j .cls_taskStress_con_0_b.913
.cls_taskStress_con_0_b.916: 
	bge a3, t5, .cls_taskStress_con_0_b.920
	j .cls_taskStress_con_0_b.917
.cls_taskStress_con_0_b.919: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.922
	j .cls_taskStress_con_0_b.913
.cls_taskStress_con_0_b.920: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.923
	j .cls_taskStress_con_0_b.921
.cls_taskStress_con_0_b.922: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.925
	j .cls_taskStress_con_0_b.913
.cls_taskStress_con_0_b.923: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.926
.cls_taskStress_con_0_b.927: 
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	bge s9, s10, .cls_taskStress_con_0_b.926
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.925: 
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.929
	j .cls_taskStress_con_0_b.913
.cls_taskStress_con_0_b.926: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.930
.cls_taskStress_con_0_b.931: 
	beq s7, a3, .cls_taskStress_con_0_b.934
.cls_taskStress_con_0_b.935: 
	blt s8, t4, .cls_taskStress_con_0_b.934
	j .cls_taskStress_con_0_b.939
.cls_taskStress_con_0_b.929: 
	blt s6, t4, .cls_taskStress_con_0_b.916
	j .cls_taskStress_con_0_b.913
.cls_taskStress_con_0_b.930: 
	bne a5, s1, .cls_taskStress_con_0_b.933
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.933: 
	lw s9, 16088(sp)
	lw s10, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.937
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.934: 
	lw s9, 16060(sp)
	lw s10, 16012(sp)
	beq s9, s10, .cls_taskStress_con_0_b.938
.cls_taskStress_con_0_b.939: 
	blt t1, ra, .cls_taskStress_con_0_b.942
.cls_taskStress_con_0_b.943: 
	bge a1, a1, .cls_taskStress_con_0_b.946
.cls_taskStress_con_0_b.947: 
	bne a5, s2, .cls_taskStress_con_0_b.946
.cls_taskStress_con_0_b.952: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.946
.cls_taskStress_con_0_b.956: 
	bne a6, t4, .cls_taskStress_con_0_b.946
	j .cls_taskStress_con_0_b.951
.cls_taskStress_con_0_b.937: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.941
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.938: 
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	blt s10, s9, .cls_taskStress_con_0_b.942
	j .cls_taskStress_con_0_b.939
.cls_taskStress_con_0_b.941: 
	beq a1, s4, .cls_taskStress_con_0_b.945
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.942: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.946
	j .cls_taskStress_con_0_b.943
.cls_taskStress_con_0_b.945: 
	lw s9, 16052(sp)
	lw s10, 16032(sp)
	beq s10, s9, .cls_taskStress_con_0_b.949
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.946: 
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	beq s9, s10, .cls_taskStress_con_0_b.950
.cls_taskStress_con_0_b.951: 
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	blt s10, s9, .cls_taskStress_con_0_b.950
	j .cls_taskStress_con_0_b.955
.cls_taskStress_con_0_b.949: 
	bge s4, s3, .cls_taskStress_con_0_b.953
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.950: 
	bne a5, s6, .cls_taskStress_con_0_b.954
.cls_taskStress_con_0_b.955: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.959
.cls_taskStress_con_0_b.960: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.959
	j .cls_taskStress_con_0_b.964
.cls_taskStress_con_0_b.953: 
	beq ra, s11, .cls_taskStress_con_0_b.957
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.954: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.958
	j .cls_taskStress_con_0_b.955
.cls_taskStress_con_0_b.957: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.961
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.958: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.962
	j .cls_taskStress_con_0_b.955
.cls_taskStress_con_0_b.959: 
	blt t3, a1, .cls_taskStress_con_0_b.963
.cls_taskStress_con_0_b.964: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.966
.cls_taskStress_con_0_b.967: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.969
.cls_taskStress_con_0_b.970: 
	bge s8, t2, .cls_taskStress_con_0_b.969
	j .cls_taskStress_con_0_b.973
.cls_taskStress_con_0_b.961: 
	lw s10, 16088(sp)
	lw s9, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.965
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.962: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.959
	j .cls_taskStress_con_0_b.955
.cls_taskStress_con_0_b.963: 
	lw s9, 16036(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.966
	j .cls_taskStress_con_0_b.964
.cls_taskStress_con_0_b.965: 
	beq t0, a0, .cls_taskStress_con_0_b.934
	j .cls_taskStress_con_0_b.931
.cls_taskStress_con_0_b.966: 
	blt a0, s1, .cls_taskStress_con_0_b.968
	j .cls_taskStress_con_0_b.967
.cls_taskStress_con_0_b.968: 
	blt s3, a3, .cls_taskStress_con_0_b.971
	j .cls_taskStress_con_0_b.967
.cls_taskStress_con_0_b.969: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bne s10, s9, .cls_taskStress_con_0_b.972
.cls_taskStress_con_0_b.973: 
	bne s3, s4, .cls_taskStress_con_0_b.972
	j .cls_taskStress_con_0_b.976
.cls_taskStress_con_0_b.971: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.974
	j .cls_taskStress_con_0_b.967
.cls_taskStress_con_0_b.972: 
	bge a3, t1, .cls_taskStress_con_0_b.975
.cls_taskStress_con_0_b.976: 
	lw s9, 16060(sp)
	lw s10, 16064(sp)
	bge s9, s10, .cls_taskStress_con_0_b.979
.cls_taskStress_con_0_b.980: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.979
.cls_taskStress_con_0_b.983: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.979
.cls_taskStress_con_0_b.986: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.979
	j .cls_taskStress_con_0_b.982
.cls_taskStress_con_0_b.974: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.977
	j .cls_taskStress_con_0_b.967
.cls_taskStress_con_0_b.975: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.978
	j .cls_taskStress_con_0_b.976
.cls_taskStress_con_0_b.977: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.969
	j .cls_taskStress_con_0_b.967
.cls_taskStress_con_0_b.978: 
	beq t3, a0, .cls_taskStress_con_0_b.979
	j .cls_taskStress_con_0_b.976
.cls_taskStress_con_0_b.979: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.981
.cls_taskStress_con_0_b.982: 
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	blt s10, s9, .cls_taskStress_con_0_b.984
.cls_taskStress_con_0_b.985: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.984
.cls_taskStress_con_0_b.989: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.984
	j .cls_taskStress_con_0_b.988
.cls_taskStress_con_0_b.981: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.984
	j .cls_taskStress_con_0_b.982
.cls_taskStress_con_0_b.984: 
	blt t0, t1, .cls_taskStress_con_0_b.987
.cls_taskStress_con_0_b.988: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.987
	j .cls_taskStress_con_0_b.991
.cls_taskStress_con_0_b.987: 
	bge s4, s5, .cls_taskStress_con_0_b.990
.cls_taskStress_con_0_b.991: 
	bge a1, t5, .cls_taskStress_con_0_b.990
	j .cls_taskStress_con_0_b.993
.cls_taskStress_con_0_b.990: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.993: 
	bge t0, a0, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.996: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.1000: 
	bne s5, s3, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.1004: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.1009: 
	bne s3, t3, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.1013: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.1016: 
	bge ra, a7, .cls_taskStress_con_0_b.992
.cls_taskStress_con_0_b.1020: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.992
	j .cls_taskStress_con_0_b.995
.cls_taskStress_con_0_b.992: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.994
.cls_taskStress_con_0_b.995: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.994
.cls_taskStress_con_0_b.999: 
	beq s8, a7, .cls_taskStress_con_0_b.994
	j .cls_taskStress_con_0_b.998
.cls_taskStress_con_0_b.994: 
	beq t1, t0, .cls_taskStress_con_0_b.997
.cls_taskStress_con_0_b.998: 
	bge s2, s6, .cls_taskStress_con_0_b.997
.cls_taskStress_con_0_b.1003: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.997
.cls_taskStress_con_0_b.1008: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.997
	j .cls_taskStress_con_0_b.1002
.cls_taskStress_con_0_b.997: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.1001
.cls_taskStress_con_0_b.1002: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.1001
.cls_taskStress_con_0_b.1007: 
	bne s4, s3, .cls_taskStress_con_0_b.1001
.cls_taskStress_con_0_b.1012: 
	bge s8, s3, .cls_taskStress_con_0_b.1001
	j .cls_taskStress_con_0_b.1006
.cls_taskStress_con_0_b.1001: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.1005
.cls_taskStress_con_0_b.1006: 
	blt a6, t0, .cls_taskStress_con_0_b.1005
	j .cls_taskStress_con_0_b.1011
.cls_taskStress_con_0_b.1005: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.1010
.cls_taskStress_con_0_b.1011: 
	blt a7, s1, .cls_taskStress_con_0_b.1010
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1010: 
	bge a7, a6, .cls_taskStress_con_0_b.1014
.cls_taskStress_con_0_b.1015: 
	blt s0, s3, .cls_taskStress_con_0_b.1018
.cls_taskStress_con_0_b.1019: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1022
.cls_taskStress_con_0_b.1023: 
	bge t4, s0, .cls_taskStress_con_0_b.1025
.cls_taskStress_con_0_b.1026: 
	beq t4, ra, .cls_taskStress_con_0_b.1028
.cls_taskStress_con_0_b.1029: 
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1032
.cls_taskStress_con_0_b.1033: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.1032
.cls_taskStress_con_0_b.1037: 
	beq t3, t2, .cls_taskStress_con_0_b.1032
	j .cls_taskStress_con_0_b.1036
.cls_taskStress_con_0_b.1014: 
	blt a4, a4, .cls_taskStress_con_0_b.1017
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1017: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.1021
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1018: 
	bne a7, s6, .cls_taskStress_con_0_b.1022
	j .cls_taskStress_con_0_b.1019
.cls_taskStress_con_0_b.1021: 
	beq t5, t3, .cls_taskStress_con_0_b.1024
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1022: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1025
	j .cls_taskStress_con_0_b.1023
.cls_taskStress_con_0_b.1024: 
	lw s10, 16076(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1027
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1025: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.1028
	j .cls_taskStress_con_0_b.1026
.cls_taskStress_con_0_b.1027: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1030
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1028: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1031
	j .cls_taskStress_con_0_b.1029
.cls_taskStress_con_0_b.1030: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1034
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1031: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.1032
	j .cls_taskStress_con_0_b.1029
.cls_taskStress_con_0_b.1032: 
	bge s4, t5, .cls_taskStress_con_0_b.1035
.cls_taskStress_con_0_b.1036: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.1035
	j .cls_taskStress_con_0_b.1039
.cls_taskStress_con_0_b.1034: 
	blt t2, a2, .cls_taskStress_con_0_b.1018
	j .cls_taskStress_con_0_b.1015
.cls_taskStress_con_0_b.1035: 
	beq a2, s2, .cls_taskStress_con_0_b.1038
.cls_taskStress_con_0_b.1039: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.1038
.cls_taskStress_con_0_b.1042: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.1038
.cls_taskStress_con_0_b.1045: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1038
.cls_taskStress_con_0_b.1048: 
	bge s3, s4, .cls_taskStress_con_0_b.1038
.cls_taskStress_con_0_b.1051: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1038
	j .cls_taskStress_con_0_b.1041
.cls_taskStress_con_0_b.1038: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1040
.cls_taskStress_con_0_b.1041: 
	bne ra, t1, .cls_taskStress_con_0_b.1043
.cls_taskStress_con_0_b.1044: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1043
	j .cls_taskStress_con_0_b.1047
.cls_taskStress_con_0_b.1040: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.1043
	j .cls_taskStress_con_0_b.1041
.cls_taskStress_con_0_b.1043: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.1046
.cls_taskStress_con_0_b.1047: 
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1049
.cls_taskStress_con_0_b.1050: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1052
.cls_taskStress_con_0_b.1053: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.1052
.cls_taskStress_con_0_b.1056: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.1052
	j .cls_taskStress_con_0_b.1055
.cls_taskStress_con_0_b.1046: 
	bne t2, s6, .cls_taskStress_con_0_b.1049
	j .cls_taskStress_con_0_b.1047
.cls_taskStress_con_0_b.1049: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.1052
	j .cls_taskStress_con_0_b.1050
.cls_taskStress_con_0_b.1052: 
	beq t0, a5, .cls_taskStress_con_0_b.1054
.cls_taskStress_con_0_b.1055: 
	bge s2, t2, .cls_taskStress_con_0_b.1054
	j .cls_taskStress_con_0_b.1058
.cls_taskStress_con_0_b.1054: 
	blt s6, t3, .cls_taskStress_con_0_b.1057
.cls_taskStress_con_0_b.1058: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1057
.cls_taskStress_con_0_b.1061: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.1057
	j .cls_taskStress_con_0_b.1060
.cls_taskStress_con_0_b.1057: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.1059
.cls_taskStress_con_0_b.1060: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.1059
.cls_taskStress_con_0_b.1064: 
	blt a2, s11, .cls_taskStress_con_0_b.1059
.cls_taskStress_con_0_b.1068: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1059
.cls_taskStress_con_0_b.1073: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.1059
.cls_taskStress_con_0_b.1079: 
	bge a2, a1, .cls_taskStress_con_0_b.1059
.cls_taskStress_con_0_b.1084: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.1059
.cls_taskStress_con_0_b.1087: 
	blt a5, s7, .cls_taskStress_con_0_b.1059
	j .cls_taskStress_con_0_b.1063
.cls_taskStress_con_0_b.1059: 
	bge a5, t0, .cls_taskStress_con_0_b.1062
.cls_taskStress_con_0_b.1063: 
	bge t4, a2, .cls_taskStress_con_0_b.1062
.cls_taskStress_con_0_b.1067: 
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1062
.cls_taskStress_con_0_b.1072: 
	bge t1, s1, .cls_taskStress_con_0_b.1062
.cls_taskStress_con_0_b.1078: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.1062
.cls_taskStress_con_0_b.1083: 
	blt a5, s8, .cls_taskStress_con_0_b.1062
	j .cls_taskStress_con_0_b.1066
.cls_taskStress_con_0_b.1062: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1065
.cls_taskStress_con_0_b.1066: 
	bge s0, t1, .cls_taskStress_con_0_b.1065
.cls_taskStress_con_0_b.1071: 
	blt t6, s6, .cls_taskStress_con_0_b.1065
.cls_taskStress_con_0_b.1077: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.1065
	j .cls_taskStress_con_0_b.1070
.cls_taskStress_con_0_b.1065: 
	bge t2, a7, .cls_taskStress_con_0_b.1069
.cls_taskStress_con_0_b.1070: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.1069
.cls_taskStress_con_0_b.1076: 
	lw s10, 16012(sp)
	lw s9, 0(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1069
.cls_taskStress_con_0_b.1082: 
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1069
	j .cls_taskStress_con_0_b.1075
.cls_taskStress_con_0_b.1069: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1074
.cls_taskStress_con_0_b.1075: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.1074
	j .cls_taskStress_con_0_b.1081
.cls_taskStress_con_0_b.1074: 
	bge s5, s0, .cls_taskStress_con_0_b.1080
.cls_taskStress_con_0_b.1081: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.1085
.cls_taskStress_con_0_b.1086: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1088
.cls_taskStress_con_0_b.1089: 
	bge t6, s11, .cls_taskStress_con_0_b.1088
.cls_taskStress_con_0_b.1092: 
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1088
	j .cls_taskStress_con_0_b.1091
.cls_taskStress_con_0_b.1080: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.1085
	j .cls_taskStress_con_0_b.1081
.cls_taskStress_con_0_b.1085: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1088
	j .cls_taskStress_con_0_b.1086
.cls_taskStress_con_0_b.1088: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.1090
.cls_taskStress_con_0_b.1091: 
	blt t0, s8, .cls_taskStress_con_0_b.1094
.cls_taskStress_con_0_b.1095: 
	blt a7, s1, .cls_taskStress_con_0_b.1094
	j .cls_taskStress_con_0_b.1097
.cls_taskStress_con_0_b.1090: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1093
	j .cls_taskStress_con_0_b.1091
.cls_taskStress_con_0_b.1093: 
	blt s5, t0, .cls_taskStress_con_0_b.1094
	j .cls_taskStress_con_0_b.1091
.cls_taskStress_con_0_b.1094: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.1096
.cls_taskStress_con_0_b.1097: 
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1099
.cls_taskStress_con_0_b.1100: 
	lw s9, 16028(sp)
	lw s10, 16080(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1101
.cls_taskStress_con_0_b.1102: 
	bge t6, s7, .cls_taskStress_con_0_b.1101
	j .cls_taskStress_con_0_b.1104
.cls_taskStress_con_0_b.1096: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.1098
	j .cls_taskStress_con_0_b.1097
.cls_taskStress_con_0_b.1098: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.1099
	j .cls_taskStress_con_0_b.1097
.cls_taskStress_con_0_b.1099: 
	beq t2, s2, .cls_taskStress_con_0_b.1101
	j .cls_taskStress_con_0_b.1100
.cls_taskStress_con_0_b.1101: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.1103
.cls_taskStress_con_0_b.1104: 
	bge t3, s8, .cls_taskStress_con_0_b.1105
.cls_taskStress_con_0_b.1106: 
	bge t2, a7, .cls_taskStress_con_0_b.1105
	j .cls_taskStress_con_0_b.1108
.cls_taskStress_con_0_b.1103: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.1105
	j .cls_taskStress_con_0_b.1104
.cls_taskStress_con_0_b.1105: 
	beq s4, t3, .cls_taskStress_con_0_b.1107
.cls_taskStress_con_0_b.1108: 
	bne a6, s0, .cls_taskStress_con_0_b.1110
.cls_taskStress_con_0_b.1111: 
	blt t6, s7, .cls_taskStress_con_0_b.1110
	j .cls_taskStress_con_0_b.1113
.cls_taskStress_con_0_b.1107: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1109
	j .cls_taskStress_con_0_b.1108
.cls_taskStress_con_0_b.1109: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.1110
	j .cls_taskStress_con_0_b.1108
.cls_taskStress_con_0_b.1110: 
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1112
.cls_taskStress_con_0_b.1113: 
	bge t6, t5, .cls_taskStress_con_0_b.1112
.cls_taskStress_con_0_b.1116: 
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1112
.cls_taskStress_con_0_b.1119: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.1112
	j .cls_taskStress_con_0_b.1115
.cls_taskStress_con_0_b.1112: 
	beq a5, s4, .cls_taskStress_con_0_b.1114
.cls_taskStress_con_0_b.1115: 
	blt ra, t1, .cls_taskStress_con_0_b.1114
	j .cls_taskStress_con_0_b.1118
.cls_taskStress_con_0_b.1114: 
	bne a0, a6, .cls_taskStress_con_0_b.1117
.cls_taskStress_con_0_b.1118: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.1117
	j .cls_taskStress_con_0_b.1121
.cls_taskStress_con_0_b.1117: 
	bge a6, s11, .cls_taskStress_con_0_b.1120
.cls_taskStress_con_0_b.1121: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.1123
.cls_taskStress_con_0_b.1124: 
	blt s2, a4, .cls_taskStress_con_0_b.1126
.cls_taskStress_con_0_b.1127: 
	blt t3, t2, .cls_taskStress_con_0_b.1126
	j .cls_taskStress_con_0_b.1129
.cls_taskStress_con_0_b.1120: 
	blt s8, a5, .cls_taskStress_con_0_b.1122
	j .cls_taskStress_con_0_b.1121
.cls_taskStress_con_0_b.1122: 
	bge s3, ra, .cls_taskStress_con_0_b.1125
	j .cls_taskStress_con_0_b.1121
.cls_taskStress_con_0_b.1123: 
	bne t1, s0, .cls_taskStress_con_0_b.1126
	j .cls_taskStress_con_0_b.1124
.cls_taskStress_con_0_b.1125: 
	blt s0, a2, .cls_taskStress_con_0_b.1123
	j .cls_taskStress_con_0_b.1121
.cls_taskStress_con_0_b.1126: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1128
.cls_taskStress_con_0_b.1129: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.1128
	j .cls_taskStress_con_0_b.1131
.cls_taskStress_con_0_b.1128: 
	beq t6, a2, .cls_taskStress_con_0_b.1130
.cls_taskStress_con_0_b.1131: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.1130
	j .cls_taskStress_con_0_b.1133
.cls_taskStress_con_0_b.1130: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.1132
.cls_taskStress_con_0_b.1133: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.1132
	j .cls_taskStress_con_0_b.1135
.cls_taskStress_con_0_b.1132: 
	bge t5, t1, .cls_taskStress_con_0_b.1134
.cls_taskStress_con_0_b.1135: 
	blt s6, a3, .cls_taskStress_con_0_b.1137
.cls_taskStress_con_0_b.1138: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.1140
.cls_taskStress_con_0_b.1141: 
	bne t2, a4, .cls_taskStress_con_0_b.1143
.cls_taskStress_con_0_b.1144: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.1143
	j .cls_taskStress_con_0_b.1147
.cls_taskStress_con_0_b.1134: 
	bne s11, s7, .cls_taskStress_con_0_b.1136
	j .cls_taskStress_con_0_b.1135
.cls_taskStress_con_0_b.1136: 
	lw s9, 16056(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1139
	j .cls_taskStress_con_0_b.1135
.cls_taskStress_con_0_b.1137: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.1140
	j .cls_taskStress_con_0_b.1138
.cls_taskStress_con_0_b.1139: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.1137
	j .cls_taskStress_con_0_b.1135
.cls_taskStress_con_0_b.1140: 
	bge a6, a6, .cls_taskStress_con_0_b.1142
	j .cls_taskStress_con_0_b.1141
.cls_taskStress_con_0_b.1142: 
	blt a0, t1, .cls_taskStress_con_0_b.1145
	j .cls_taskStress_con_0_b.1141
.cls_taskStress_con_0_b.1143: 
	bne s8, s4, .cls_taskStress_con_0_b.1146
.cls_taskStress_con_0_b.1147: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.1146
.cls_taskStress_con_0_b.1150: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.1146
	j .cls_taskStress_con_0_b.1149
.cls_taskStress_con_0_b.1145: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1143
	j .cls_taskStress_con_0_b.1141
.cls_taskStress_con_0_b.1146: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.1148
.cls_taskStress_con_0_b.1149: 
	blt s4, s4, .cls_taskStress_con_0_b.1151
.cls_taskStress_con_0_b.1152: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.1153
.cls_taskStress_con_0_b.1154: 
	blt ra, s2, .cls_taskStress_con_0_b.1153
	j .cls_taskStress_con_0_b.1156
.cls_taskStress_con_0_b.1148: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.1151
	j .cls_taskStress_con_0_b.1149
.cls_taskStress_con_0_b.1151: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.1153
	j .cls_taskStress_con_0_b.1152
.cls_taskStress_con_0_b.1153: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.1155
.cls_taskStress_con_0_b.1156: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.1155
	j .cls_taskStress_con_0_b.1158
.cls_taskStress_con_0_b.1155: 
	lw s9, 16016(sp)
	lw s10, 16040(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1157
.cls_taskStress_con_0_b.1158: 
	beq t6, s8, .cls_taskStress_con_0_b.1159
.cls_taskStress_con_0_b.1160: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.1161
.cls_taskStress_con_0_b.1162: 
	bne t0, a7, .cls_taskStress_con_0_b.1161
.cls_taskStress_con_0_b.1165: 
	beq t1, t3, .cls_taskStress_con_0_b.1161
	j .cls_taskStress_con_0_b.1164
.cls_taskStress_con_0_b.1157: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.1159
	j .cls_taskStress_con_0_b.1158
.cls_taskStress_con_0_b.1159: 
	blt s11, a4, .cls_taskStress_con_0_b.1161
	j .cls_taskStress_con_0_b.1160
.cls_taskStress_con_0_b.1161: 
	lw s9, 16056(sp)
	lw s10, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1163
.cls_taskStress_con_0_b.1164: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.1166
.cls_taskStress_con_0_b.1167: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.1169
.cls_taskStress_con_0_b.1170: 
	blt s0, s0, .cls_taskStress_con_0_b.1169
.cls_taskStress_con_0_b.1174: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.1169
	j .cls_taskStress_con_0_b.1173
.cls_taskStress_con_0_b.1163: 
	bge s1, a6, .cls_taskStress_con_0_b.1166
	j .cls_taskStress_con_0_b.1164
.cls_taskStress_con_0_b.1166: 
	bge s2, s7, .cls_taskStress_con_0_b.1168
	j .cls_taskStress_con_0_b.1167
.cls_taskStress_con_0_b.1168: 
	bne t2, s2, .cls_taskStress_con_0_b.1171
	j .cls_taskStress_con_0_b.1167
.cls_taskStress_con_0_b.1169: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1172
.cls_taskStress_con_0_b.1173: 
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1176
.cls_taskStress_con_0_b.1177: 
	bge t5, t4, .cls_taskStress_con_0_b.1176
.cls_taskStress_con_0_b.1180: 
	bne ra, a1, .cls_taskStress_con_0_b.1176
.cls_taskStress_con_0_b.1183: 
	bge s5, s8, .cls_taskStress_con_0_b.1176
.cls_taskStress_con_0_b.1187: 
	bne a7, s11, .cls_taskStress_con_0_b.1176
.cls_taskStress_con_0_b.1191: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.1176
.cls_taskStress_con_0_b.1194: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.1176
	j .cls_taskStress_con_0_b.1179
.cls_taskStress_con_0_b.1171: 
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1169
	j .cls_taskStress_con_0_b.1167
.cls_taskStress_con_0_b.1172: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.1175
	j .cls_taskStress_con_0_b.1173
.cls_taskStress_con_0_b.1175: 
	blt a5, s4, .cls_taskStress_con_0_b.1176
	j .cls_taskStress_con_0_b.1173
.cls_taskStress_con_0_b.1176: 
	blt t6, s1, .cls_taskStress_con_0_b.1178
.cls_taskStress_con_0_b.1179: 
	blt t5, ra, .cls_taskStress_con_0_b.1178
	j .cls_taskStress_con_0_b.1182
.cls_taskStress_con_0_b.1178: 
	bge s5, a6, .cls_taskStress_con_0_b.1181
.cls_taskStress_con_0_b.1182: 
	bne s1, t4, .cls_taskStress_con_0_b.1181
.cls_taskStress_con_0_b.1186: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.1181
.cls_taskStress_con_0_b.1190: 
	bge a3, a3, .cls_taskStress_con_0_b.1181
	j .cls_taskStress_con_0_b.1185
.cls_taskStress_con_0_b.1181: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.1184
.cls_taskStress_con_0_b.1185: 
	bge t5, t6, .cls_taskStress_con_0_b.1184
	j .cls_taskStress_con_0_b.1189
.cls_taskStress_con_0_b.1184: 
	blt s5, s7, .cls_taskStress_con_0_b.1188
.cls_taskStress_con_0_b.1189: 
	lw s9, 16032(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1188
	j .cls_taskStress_con_0_b.1193
.cls_taskStress_con_0_b.1188: 
	bge t6, t2, .cls_taskStress_con_0_b.1192
.cls_taskStress_con_0_b.1193: 
	bge s5, a4, .cls_taskStress_con_0_b.1192
	j .cls_taskStress_con_0_b.1196
.cls_taskStress_con_0_b.1192: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.1195
.cls_taskStress_con_0_b.1196: 
	bge t2, t4, .cls_taskStress_con_0_b.1197
.cls_taskStress_con_0_b.1198: 
	bne t5, s0, .cls_taskStress_con_0_b.1199
.cls_taskStress_con_0_b.1200: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.1201
.cls_taskStress_con_0_b.1202: 
	bge a2, a4, .cls_taskStress_con_0_b.1201
.cls_taskStress_con_0_b.1205: 
	lw s9, 16064(sp)
	lw s10, 16080(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1201
.cls_taskStress_con_0_b.1208: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.1201
.cls_taskStress_con_0_b.1211: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.1201
.cls_taskStress_con_0_b.1213: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.1201
.cls_taskStress_con_0_b.1216: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.1201
.cls_taskStress_con_0_b.1220: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.1201
	j .cls_taskStress_con_0_b.1204
.cls_taskStress_con_0_b.1195: 
	blt a3, t5, .cls_taskStress_con_0_b.1197
	j .cls_taskStress_con_0_b.1196
.cls_taskStress_con_0_b.1197: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.1199
	j .cls_taskStress_con_0_b.1198
.cls_taskStress_con_0_b.1199: 
	beq a1, t3, .cls_taskStress_con_0_b.1201
	j .cls_taskStress_con_0_b.1200
.cls_taskStress_con_0_b.1201: 
	beq t6, t0, .cls_taskStress_con_0_b.1203
.cls_taskStress_con_0_b.1204: 
	bge a0, a5, .cls_taskStress_con_0_b.1203
	j .cls_taskStress_con_0_b.1207
.cls_taskStress_con_0_b.1203: 
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1206
.cls_taskStress_con_0_b.1207: 
	blt s1, s7, .cls_taskStress_con_0_b.1206
	j .cls_taskStress_con_0_b.1210
.cls_taskStress_con_0_b.1206: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.1209
.cls_taskStress_con_0_b.1210: 
	lw s9, 15988(sp)
	addi s9, s9, 1
	sw s9, 15920(sp)
	lw s9, 15920(sp)
	sw s9, 15992(sp)
	j .cls_taskStress_con_0_b.608
.cls_taskStress_con_0_b.1209: 
	lw s9, 15988(sp)
	addi s9, s9, 1
	sw s9, 15960(sp)
	lw s9, 15960(sp)
	sw s9, 15980(sp)
.cls_taskStress_con_0_b.1212: 
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	bne s10, s9, .cls_taskStress_con_0_b.1214
.cls_taskStress_con_0_b.1215: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1218
.cls_taskStress_con_0_b.1219: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.1222
.cls_taskStress_con_0_b.1223: 
	bge s4, s3, .cls_taskStress_con_0_b.1225
.cls_taskStress_con_0_b.1226: 
	lw s9, 16052(sp)
	lw s10, 16076(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1225
.cls_taskStress_con_0_b.1230: 
	bge t0, s6, .cls_taskStress_con_0_b.1225
.cls_taskStress_con_0_b.1234: 
	blt a6, t0, .cls_taskStress_con_0_b.1225
.cls_taskStress_con_0_b.1238: 
	blt s2, t6, .cls_taskStress_con_0_b.1225
.cls_taskStress_con_0_b.1242: 
	lw s10, 16080(sp)
	lw s9, 4(sp)
	bne s9, s10, .cls_taskStress_con_0_b.1225
.cls_taskStress_con_0_b.1246: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.1225
.cls_taskStress_con_0_b.1250: 
	blt a0, s4, .cls_taskStress_con_0_b.1225
	j .cls_taskStress_con_0_b.1229
.cls_taskStress_con_0_b.1214: 
	bge s1, t3, .cls_taskStress_con_0_b.1217
	j .cls_taskStress_con_0_b.1215
.cls_taskStress_con_0_b.1217: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.1221
	j .cls_taskStress_con_0_b.1215
.cls_taskStress_con_0_b.1218: 
	bge a3, t5, .cls_taskStress_con_0_b.1222
	j .cls_taskStress_con_0_b.1219
.cls_taskStress_con_0_b.1221: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.1224
	j .cls_taskStress_con_0_b.1215
.cls_taskStress_con_0_b.1222: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.1225
	j .cls_taskStress_con_0_b.1223
.cls_taskStress_con_0_b.1224: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.1227
	j .cls_taskStress_con_0_b.1215
.cls_taskStress_con_0_b.1225: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.1228
.cls_taskStress_con_0_b.1229: 
	lw s10, 16036(sp)
	lw s9, 16076(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1228
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1227: 
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1231
	j .cls_taskStress_con_0_b.1215
.cls_taskStress_con_0_b.1228: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.1232
.cls_taskStress_con_0_b.1233: 
	beq s7, a3, .cls_taskStress_con_0_b.1236
.cls_taskStress_con_0_b.1237: 
	blt s8, t4, .cls_taskStress_con_0_b.1236
	j .cls_taskStress_con_0_b.1241
.cls_taskStress_con_0_b.1231: 
	blt s6, t4, .cls_taskStress_con_0_b.1218
	j .cls_taskStress_con_0_b.1215
.cls_taskStress_con_0_b.1232: 
	bne a5, s1, .cls_taskStress_con_0_b.1235
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1235: 
	lw s9, 16088(sp)
	lw s10, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1239
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1236: 
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1240
.cls_taskStress_con_0_b.1241: 
	blt t1, ra, .cls_taskStress_con_0_b.1244
.cls_taskStress_con_0_b.1245: 
	bge a1, a1, .cls_taskStress_con_0_b.1248
.cls_taskStress_con_0_b.1249: 
	bne a5, s2, .cls_taskStress_con_0_b.1248
.cls_taskStress_con_0_b.1254: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.1248
.cls_taskStress_con_0_b.1258: 
	bne a6, t4, .cls_taskStress_con_0_b.1248
	j .cls_taskStress_con_0_b.1253
.cls_taskStress_con_0_b.1239: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.1243
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1240: 
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1244
	j .cls_taskStress_con_0_b.1241
.cls_taskStress_con_0_b.1243: 
	beq a1, s4, .cls_taskStress_con_0_b.1247
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1244: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.1248
	j .cls_taskStress_con_0_b.1245
.cls_taskStress_con_0_b.1247: 
	lw s9, 16052(sp)
	lw s10, 16032(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1251
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1248: 
	lw s9, 16024(sp)
	lw s10, 16068(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1252
.cls_taskStress_con_0_b.1253: 
	lw s10, 16092(sp)
	lw s9, 16040(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1252
	j .cls_taskStress_con_0_b.1257
.cls_taskStress_con_0_b.1251: 
	bge s4, s3, .cls_taskStress_con_0_b.1255
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1252: 
	bne a5, s6, .cls_taskStress_con_0_b.1256
.cls_taskStress_con_0_b.1257: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.1261
.cls_taskStress_con_0_b.1262: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.1261
	j .cls_taskStress_con_0_b.1266
.cls_taskStress_con_0_b.1255: 
	beq ra, s11, .cls_taskStress_con_0_b.1259
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1256: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.1260
	j .cls_taskStress_con_0_b.1257
.cls_taskStress_con_0_b.1259: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.1263
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1260: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.1264
	j .cls_taskStress_con_0_b.1257
.cls_taskStress_con_0_b.1261: 
	blt t3, a1, .cls_taskStress_con_0_b.1265
.cls_taskStress_con_0_b.1266: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.1268
.cls_taskStress_con_0_b.1269: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.1271
.cls_taskStress_con_0_b.1272: 
	bge s8, t2, .cls_taskStress_con_0_b.1271
	j .cls_taskStress_con_0_b.1275
.cls_taskStress_con_0_b.1263: 
	lw s9, 16088(sp)
	lw s10, 4(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1267
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1264: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.1261
	j .cls_taskStress_con_0_b.1257
.cls_taskStress_con_0_b.1265: 
	lw s9, 16036(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1268
	j .cls_taskStress_con_0_b.1266
.cls_taskStress_con_0_b.1267: 
	beq t0, a0, .cls_taskStress_con_0_b.1236
	j .cls_taskStress_con_0_b.1233
.cls_taskStress_con_0_b.1268: 
	blt a0, s1, .cls_taskStress_con_0_b.1270
	j .cls_taskStress_con_0_b.1269
.cls_taskStress_con_0_b.1270: 
	blt s3, a3, .cls_taskStress_con_0_b.1273
	j .cls_taskStress_con_0_b.1269
.cls_taskStress_con_0_b.1271: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bne s10, s9, .cls_taskStress_con_0_b.1274
.cls_taskStress_con_0_b.1275: 
	bne s3, s4, .cls_taskStress_con_0_b.1274
	j .cls_taskStress_con_0_b.1278
.cls_taskStress_con_0_b.1273: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.1276
	j .cls_taskStress_con_0_b.1269
.cls_taskStress_con_0_b.1274: 
	bge a3, t1, .cls_taskStress_con_0_b.1277
.cls_taskStress_con_0_b.1278: 
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1281
.cls_taskStress_con_0_b.1282: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.1281
.cls_taskStress_con_0_b.1285: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1281
.cls_taskStress_con_0_b.1288: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.1281
	j .cls_taskStress_con_0_b.1284
.cls_taskStress_con_0_b.1276: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1279
	j .cls_taskStress_con_0_b.1269
.cls_taskStress_con_0_b.1277: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.1280
	j .cls_taskStress_con_0_b.1278
.cls_taskStress_con_0_b.1279: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.1271
	j .cls_taskStress_con_0_b.1269
.cls_taskStress_con_0_b.1280: 
	beq t3, a0, .cls_taskStress_con_0_b.1281
	j .cls_taskStress_con_0_b.1278
.cls_taskStress_con_0_b.1281: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.1283
.cls_taskStress_con_0_b.1284: 
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1286
.cls_taskStress_con_0_b.1287: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.1286
.cls_taskStress_con_0_b.1291: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1286
	j .cls_taskStress_con_0_b.1290
.cls_taskStress_con_0_b.1283: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.1286
	j .cls_taskStress_con_0_b.1284
.cls_taskStress_con_0_b.1286: 
	blt t0, t1, .cls_taskStress_con_0_b.1289
.cls_taskStress_con_0_b.1290: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.1289
	j .cls_taskStress_con_0_b.1293
.cls_taskStress_con_0_b.1289: 
	bge s4, s5, .cls_taskStress_con_0_b.1292
.cls_taskStress_con_0_b.1293: 
	bge a1, t5, .cls_taskStress_con_0_b.1292
	j .cls_taskStress_con_0_b.1295
.cls_taskStress_con_0_b.1292: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1295: 
	bge t0, a0, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1298: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1302: 
	bne s5, s3, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1306: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1311: 
	bne s3, t3, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1315: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1318: 
	bge ra, a7, .cls_taskStress_con_0_b.1294
.cls_taskStress_con_0_b.1322: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.1294
	j .cls_taskStress_con_0_b.1297
.cls_taskStress_con_0_b.1294: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1296
.cls_taskStress_con_0_b.1297: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.1296
.cls_taskStress_con_0_b.1301: 
	beq s8, a7, .cls_taskStress_con_0_b.1296
	j .cls_taskStress_con_0_b.1300
.cls_taskStress_con_0_b.1296: 
	beq t1, t0, .cls_taskStress_con_0_b.1299
.cls_taskStress_con_0_b.1300: 
	bge s2, s6, .cls_taskStress_con_0_b.1299
.cls_taskStress_con_0_b.1305: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1299
.cls_taskStress_con_0_b.1310: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.1299
	j .cls_taskStress_con_0_b.1304
.cls_taskStress_con_0_b.1299: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.1303
.cls_taskStress_con_0_b.1304: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.1303
.cls_taskStress_con_0_b.1309: 
	bne s4, s3, .cls_taskStress_con_0_b.1303
.cls_taskStress_con_0_b.1314: 
	bge s8, s3, .cls_taskStress_con_0_b.1303
	j .cls_taskStress_con_0_b.1308
.cls_taskStress_con_0_b.1303: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.1307
.cls_taskStress_con_0_b.1308: 
	blt a6, t0, .cls_taskStress_con_0_b.1307
	j .cls_taskStress_con_0_b.1313
.cls_taskStress_con_0_b.1307: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.1312
.cls_taskStress_con_0_b.1313: 
	blt a7, s1, .cls_taskStress_con_0_b.1312
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1312: 
	bge a7, a6, .cls_taskStress_con_0_b.1316
.cls_taskStress_con_0_b.1317: 
	blt s0, s3, .cls_taskStress_con_0_b.1320
.cls_taskStress_con_0_b.1321: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1324
.cls_taskStress_con_0_b.1325: 
	bge t4, s0, .cls_taskStress_con_0_b.1327
.cls_taskStress_con_0_b.1328: 
	beq t4, ra, .cls_taskStress_con_0_b.1330
.cls_taskStress_con_0_b.1331: 
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1334
.cls_taskStress_con_0_b.1335: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.1334
.cls_taskStress_con_0_b.1339: 
	beq t3, t2, .cls_taskStress_con_0_b.1334
	j .cls_taskStress_con_0_b.1338
.cls_taskStress_con_0_b.1316: 
	blt a4, a4, .cls_taskStress_con_0_b.1319
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1319: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.1323
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1320: 
	bne a7, s6, .cls_taskStress_con_0_b.1324
	j .cls_taskStress_con_0_b.1321
.cls_taskStress_con_0_b.1323: 
	beq t5, t3, .cls_taskStress_con_0_b.1326
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1324: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1327
	j .cls_taskStress_con_0_b.1325
.cls_taskStress_con_0_b.1326: 
	lw s10, 16076(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1329
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1327: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.1330
	j .cls_taskStress_con_0_b.1328
.cls_taskStress_con_0_b.1329: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1332
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1330: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1333
	j .cls_taskStress_con_0_b.1331
.cls_taskStress_con_0_b.1332: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1336
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1333: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.1334
	j .cls_taskStress_con_0_b.1331
.cls_taskStress_con_0_b.1334: 
	bge s4, t5, .cls_taskStress_con_0_b.1337
.cls_taskStress_con_0_b.1338: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.1337
	j .cls_taskStress_con_0_b.1341
.cls_taskStress_con_0_b.1336: 
	blt t2, a2, .cls_taskStress_con_0_b.1320
	j .cls_taskStress_con_0_b.1317
.cls_taskStress_con_0_b.1337: 
	beq a2, s2, .cls_taskStress_con_0_b.1340
.cls_taskStress_con_0_b.1341: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.1340
.cls_taskStress_con_0_b.1344: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.1340
.cls_taskStress_con_0_b.1347: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1340
.cls_taskStress_con_0_b.1350: 
	bge s3, s4, .cls_taskStress_con_0_b.1340
.cls_taskStress_con_0_b.1353: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1340
	j .cls_taskStress_con_0_b.1343
.cls_taskStress_con_0_b.1340: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1342
.cls_taskStress_con_0_b.1343: 
	bne ra, t1, .cls_taskStress_con_0_b.1345
.cls_taskStress_con_0_b.1346: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1345
	j .cls_taskStress_con_0_b.1349
.cls_taskStress_con_0_b.1342: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.1345
	j .cls_taskStress_con_0_b.1343
.cls_taskStress_con_0_b.1345: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.1348
.cls_taskStress_con_0_b.1349: 
	lw s9, 16076(sp)
	lw s10, 16072(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1351
.cls_taskStress_con_0_b.1352: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1354
.cls_taskStress_con_0_b.1355: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.1354
.cls_taskStress_con_0_b.1358: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.1354
	j .cls_taskStress_con_0_b.1357
.cls_taskStress_con_0_b.1348: 
	bne t2, s6, .cls_taskStress_con_0_b.1351
	j .cls_taskStress_con_0_b.1349
.cls_taskStress_con_0_b.1351: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.1354
	j .cls_taskStress_con_0_b.1352
.cls_taskStress_con_0_b.1354: 
	beq t0, a5, .cls_taskStress_con_0_b.1356
.cls_taskStress_con_0_b.1357: 
	bge s2, t2, .cls_taskStress_con_0_b.1356
	j .cls_taskStress_con_0_b.1360
.cls_taskStress_con_0_b.1356: 
	blt s6, t3, .cls_taskStress_con_0_b.1359
.cls_taskStress_con_0_b.1360: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1359
.cls_taskStress_con_0_b.1363: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.1359
	j .cls_taskStress_con_0_b.1362
.cls_taskStress_con_0_b.1359: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.1361
.cls_taskStress_con_0_b.1362: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.1361
.cls_taskStress_con_0_b.1366: 
	blt a2, s11, .cls_taskStress_con_0_b.1361
.cls_taskStress_con_0_b.1370: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1361
.cls_taskStress_con_0_b.1375: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.1361
.cls_taskStress_con_0_b.1381: 
	bge a2, a1, .cls_taskStress_con_0_b.1361
.cls_taskStress_con_0_b.1386: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.1361
.cls_taskStress_con_0_b.1389: 
	blt a5, s7, .cls_taskStress_con_0_b.1361
	j .cls_taskStress_con_0_b.1365
.cls_taskStress_con_0_b.1361: 
	bge a5, t0, .cls_taskStress_con_0_b.1364
.cls_taskStress_con_0_b.1365: 
	bge t4, a2, .cls_taskStress_con_0_b.1364
.cls_taskStress_con_0_b.1369: 
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1364
.cls_taskStress_con_0_b.1374: 
	bge t1, s1, .cls_taskStress_con_0_b.1364
.cls_taskStress_con_0_b.1380: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.1364
.cls_taskStress_con_0_b.1385: 
	blt a5, s8, .cls_taskStress_con_0_b.1364
	j .cls_taskStress_con_0_b.1368
.cls_taskStress_con_0_b.1364: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1367
.cls_taskStress_con_0_b.1368: 
	bge s0, t1, .cls_taskStress_con_0_b.1367
.cls_taskStress_con_0_b.1373: 
	blt t6, s6, .cls_taskStress_con_0_b.1367
.cls_taskStress_con_0_b.1379: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.1367
	j .cls_taskStress_con_0_b.1372
.cls_taskStress_con_0_b.1367: 
	bge t2, a7, .cls_taskStress_con_0_b.1371
.cls_taskStress_con_0_b.1372: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.1371
.cls_taskStress_con_0_b.1378: 
	lw s9, 16012(sp)
	lw s10, 0(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1371
.cls_taskStress_con_0_b.1384: 
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1371
	j .cls_taskStress_con_0_b.1377
.cls_taskStress_con_0_b.1371: 
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1376
.cls_taskStress_con_0_b.1377: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.1376
	j .cls_taskStress_con_0_b.1383
.cls_taskStress_con_0_b.1376: 
	bge s5, s0, .cls_taskStress_con_0_b.1382
.cls_taskStress_con_0_b.1383: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.1387
.cls_taskStress_con_0_b.1388: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1390
.cls_taskStress_con_0_b.1391: 
	bge t6, s11, .cls_taskStress_con_0_b.1390
.cls_taskStress_con_0_b.1394: 
	lw s10, 16036(sp)
	lw s9, 16088(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1390
	j .cls_taskStress_con_0_b.1393
.cls_taskStress_con_0_b.1382: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.1387
	j .cls_taskStress_con_0_b.1383
.cls_taskStress_con_0_b.1387: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1390
	j .cls_taskStress_con_0_b.1388
.cls_taskStress_con_0_b.1390: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.1392
.cls_taskStress_con_0_b.1393: 
	blt t0, s8, .cls_taskStress_con_0_b.1396
.cls_taskStress_con_0_b.1397: 
	blt a7, s1, .cls_taskStress_con_0_b.1396
	j .cls_taskStress_con_0_b.1399
.cls_taskStress_con_0_b.1392: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1395
	j .cls_taskStress_con_0_b.1393
.cls_taskStress_con_0_b.1395: 
	blt s5, t0, .cls_taskStress_con_0_b.1396
	j .cls_taskStress_con_0_b.1393
.cls_taskStress_con_0_b.1396: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.1398
.cls_taskStress_con_0_b.1399: 
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1401
.cls_taskStress_con_0_b.1402: 
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1403
.cls_taskStress_con_0_b.1404: 
	bge t6, s7, .cls_taskStress_con_0_b.1403
	j .cls_taskStress_con_0_b.1406
.cls_taskStress_con_0_b.1398: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.1400
	j .cls_taskStress_con_0_b.1399
.cls_taskStress_con_0_b.1400: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.1401
	j .cls_taskStress_con_0_b.1399
.cls_taskStress_con_0_b.1401: 
	beq t2, s2, .cls_taskStress_con_0_b.1403
	j .cls_taskStress_con_0_b.1402
.cls_taskStress_con_0_b.1403: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.1405
.cls_taskStress_con_0_b.1406: 
	bge t3, s8, .cls_taskStress_con_0_b.1407
.cls_taskStress_con_0_b.1408: 
	bge t2, a7, .cls_taskStress_con_0_b.1407
	j .cls_taskStress_con_0_b.1410
.cls_taskStress_con_0_b.1405: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.1407
	j .cls_taskStress_con_0_b.1406
.cls_taskStress_con_0_b.1407: 
	beq s4, t3, .cls_taskStress_con_0_b.1409
.cls_taskStress_con_0_b.1410: 
	bne a6, s0, .cls_taskStress_con_0_b.1412
.cls_taskStress_con_0_b.1413: 
	blt t6, s7, .cls_taskStress_con_0_b.1412
	j .cls_taskStress_con_0_b.1415
.cls_taskStress_con_0_b.1409: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1411
	j .cls_taskStress_con_0_b.1410
.cls_taskStress_con_0_b.1411: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.1412
	j .cls_taskStress_con_0_b.1410
.cls_taskStress_con_0_b.1412: 
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1414
.cls_taskStress_con_0_b.1415: 
	bge t6, t5, .cls_taskStress_con_0_b.1414
.cls_taskStress_con_0_b.1418: 
	lw s9, 16044(sp)
	lw s10, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1414
.cls_taskStress_con_0_b.1421: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.1414
	j .cls_taskStress_con_0_b.1417
.cls_taskStress_con_0_b.1414: 
	beq a5, s4, .cls_taskStress_con_0_b.1416
.cls_taskStress_con_0_b.1417: 
	blt ra, t1, .cls_taskStress_con_0_b.1416
	j .cls_taskStress_con_0_b.1420
.cls_taskStress_con_0_b.1416: 
	bne a0, a6, .cls_taskStress_con_0_b.1419
.cls_taskStress_con_0_b.1420: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.1419
	j .cls_taskStress_con_0_b.1423
.cls_taskStress_con_0_b.1419: 
	bge a6, s11, .cls_taskStress_con_0_b.1422
.cls_taskStress_con_0_b.1423: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.1425
.cls_taskStress_con_0_b.1426: 
	blt s2, a4, .cls_taskStress_con_0_b.1428
.cls_taskStress_con_0_b.1429: 
	blt t3, t2, .cls_taskStress_con_0_b.1428
	j .cls_taskStress_con_0_b.1431
.cls_taskStress_con_0_b.1422: 
	blt s8, a5, .cls_taskStress_con_0_b.1424
	j .cls_taskStress_con_0_b.1423
.cls_taskStress_con_0_b.1424: 
	bge s3, ra, .cls_taskStress_con_0_b.1427
	j .cls_taskStress_con_0_b.1423
.cls_taskStress_con_0_b.1425: 
	bne t1, s0, .cls_taskStress_con_0_b.1428
	j .cls_taskStress_con_0_b.1426
.cls_taskStress_con_0_b.1427: 
	blt s0, a2, .cls_taskStress_con_0_b.1425
	j .cls_taskStress_con_0_b.1423
.cls_taskStress_con_0_b.1428: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1430
.cls_taskStress_con_0_b.1431: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.1430
	j .cls_taskStress_con_0_b.1433
.cls_taskStress_con_0_b.1430: 
	beq t6, a2, .cls_taskStress_con_0_b.1432
.cls_taskStress_con_0_b.1433: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.1432
	j .cls_taskStress_con_0_b.1435
.cls_taskStress_con_0_b.1432: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.1434
.cls_taskStress_con_0_b.1435: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.1434
	j .cls_taskStress_con_0_b.1437
.cls_taskStress_con_0_b.1434: 
	bge t5, t1, .cls_taskStress_con_0_b.1436
.cls_taskStress_con_0_b.1437: 
	blt s6, a3, .cls_taskStress_con_0_b.1439
.cls_taskStress_con_0_b.1440: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.1442
.cls_taskStress_con_0_b.1443: 
	bne t2, a4, .cls_taskStress_con_0_b.1445
.cls_taskStress_con_0_b.1446: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.1445
	j .cls_taskStress_con_0_b.1449
.cls_taskStress_con_0_b.1436: 
	bne s11, s7, .cls_taskStress_con_0_b.1438
	j .cls_taskStress_con_0_b.1437
.cls_taskStress_con_0_b.1438: 
	lw s9, 16056(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1441
	j .cls_taskStress_con_0_b.1437
.cls_taskStress_con_0_b.1439: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.1442
	j .cls_taskStress_con_0_b.1440
.cls_taskStress_con_0_b.1441: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.1439
	j .cls_taskStress_con_0_b.1437
.cls_taskStress_con_0_b.1442: 
	bge a6, a6, .cls_taskStress_con_0_b.1444
	j .cls_taskStress_con_0_b.1443
.cls_taskStress_con_0_b.1444: 
	blt a0, t1, .cls_taskStress_con_0_b.1447
	j .cls_taskStress_con_0_b.1443
.cls_taskStress_con_0_b.1445: 
	bne s8, s4, .cls_taskStress_con_0_b.1448
.cls_taskStress_con_0_b.1449: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.1448
.cls_taskStress_con_0_b.1452: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.1448
	j .cls_taskStress_con_0_b.1451
.cls_taskStress_con_0_b.1447: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1445
	j .cls_taskStress_con_0_b.1443
.cls_taskStress_con_0_b.1448: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.1450
.cls_taskStress_con_0_b.1451: 
	blt s4, s4, .cls_taskStress_con_0_b.1453
.cls_taskStress_con_0_b.1454: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.1455
.cls_taskStress_con_0_b.1456: 
	blt ra, s2, .cls_taskStress_con_0_b.1455
	j .cls_taskStress_con_0_b.1458
.cls_taskStress_con_0_b.1450: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.1453
	j .cls_taskStress_con_0_b.1451
.cls_taskStress_con_0_b.1453: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.1455
	j .cls_taskStress_con_0_b.1454
.cls_taskStress_con_0_b.1455: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.1457
.cls_taskStress_con_0_b.1458: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.1457
	j .cls_taskStress_con_0_b.1460
.cls_taskStress_con_0_b.1457: 
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1459
.cls_taskStress_con_0_b.1460: 
	beq t6, s8, .cls_taskStress_con_0_b.1461
.cls_taskStress_con_0_b.1462: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.1463
.cls_taskStress_con_0_b.1464: 
	bne t0, a7, .cls_taskStress_con_0_b.1463
.cls_taskStress_con_0_b.1467: 
	beq t1, t3, .cls_taskStress_con_0_b.1463
	j .cls_taskStress_con_0_b.1466
.cls_taskStress_con_0_b.1459: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.1461
	j .cls_taskStress_con_0_b.1460
.cls_taskStress_con_0_b.1461: 
	blt s11, a4, .cls_taskStress_con_0_b.1463
	j .cls_taskStress_con_0_b.1462
.cls_taskStress_con_0_b.1463: 
	lw s10, 16056(sp)
	lw s9, 4(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1465
.cls_taskStress_con_0_b.1466: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.1468
.cls_taskStress_con_0_b.1469: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.1471
.cls_taskStress_con_0_b.1472: 
	blt s0, s0, .cls_taskStress_con_0_b.1471
.cls_taskStress_con_0_b.1476: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.1471
	j .cls_taskStress_con_0_b.1475
.cls_taskStress_con_0_b.1465: 
	bge s1, a6, .cls_taskStress_con_0_b.1468
	j .cls_taskStress_con_0_b.1466
.cls_taskStress_con_0_b.1468: 
	bge s2, s7, .cls_taskStress_con_0_b.1470
	j .cls_taskStress_con_0_b.1469
.cls_taskStress_con_0_b.1470: 
	bne t2, s2, .cls_taskStress_con_0_b.1473
	j .cls_taskStress_con_0_b.1469
.cls_taskStress_con_0_b.1471: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1474
.cls_taskStress_con_0_b.1475: 
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1478
.cls_taskStress_con_0_b.1479: 
	bge t5, t4, .cls_taskStress_con_0_b.1478
.cls_taskStress_con_0_b.1482: 
	bne ra, a1, .cls_taskStress_con_0_b.1478
.cls_taskStress_con_0_b.1485: 
	bge s5, s8, .cls_taskStress_con_0_b.1478
.cls_taskStress_con_0_b.1489: 
	bne a7, s11, .cls_taskStress_con_0_b.1478
.cls_taskStress_con_0_b.1493: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.1478
.cls_taskStress_con_0_b.1496: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.1478
	j .cls_taskStress_con_0_b.1481
.cls_taskStress_con_0_b.1473: 
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1471
	j .cls_taskStress_con_0_b.1469
.cls_taskStress_con_0_b.1474: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.1477
	j .cls_taskStress_con_0_b.1475
.cls_taskStress_con_0_b.1477: 
	blt a5, s4, .cls_taskStress_con_0_b.1478
	j .cls_taskStress_con_0_b.1475
.cls_taskStress_con_0_b.1478: 
	blt t6, s1, .cls_taskStress_con_0_b.1480
.cls_taskStress_con_0_b.1481: 
	blt t5, ra, .cls_taskStress_con_0_b.1480
	j .cls_taskStress_con_0_b.1484
.cls_taskStress_con_0_b.1480: 
	bge s5, a6, .cls_taskStress_con_0_b.1483
.cls_taskStress_con_0_b.1484: 
	bne s1, t4, .cls_taskStress_con_0_b.1483
.cls_taskStress_con_0_b.1488: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.1483
.cls_taskStress_con_0_b.1492: 
	bge a3, a3, .cls_taskStress_con_0_b.1483
	j .cls_taskStress_con_0_b.1487
.cls_taskStress_con_0_b.1483: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.1486
.cls_taskStress_con_0_b.1487: 
	bge t5, t6, .cls_taskStress_con_0_b.1486
	j .cls_taskStress_con_0_b.1491
.cls_taskStress_con_0_b.1486: 
	blt s5, s7, .cls_taskStress_con_0_b.1490
.cls_taskStress_con_0_b.1491: 
	lw s9, 16032(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1490
	j .cls_taskStress_con_0_b.1495
.cls_taskStress_con_0_b.1490: 
	bge t6, t2, .cls_taskStress_con_0_b.1494
.cls_taskStress_con_0_b.1495: 
	bge s5, a4, .cls_taskStress_con_0_b.1494
	j .cls_taskStress_con_0_b.1498
.cls_taskStress_con_0_b.1494: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.1497
.cls_taskStress_con_0_b.1498: 
	bge t2, t4, .cls_taskStress_con_0_b.1499
.cls_taskStress_con_0_b.1500: 
	bne t5, s0, .cls_taskStress_con_0_b.1501
.cls_taskStress_con_0_b.1502: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.1503
.cls_taskStress_con_0_b.1504: 
	bge a2, a4, .cls_taskStress_con_0_b.1503
.cls_taskStress_con_0_b.1507: 
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1503
.cls_taskStress_con_0_b.1510: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.1503
.cls_taskStress_con_0_b.1513: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.1503
.cls_taskStress_con_0_b.1515: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.1503
.cls_taskStress_con_0_b.1518: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.1503
.cls_taskStress_con_0_b.1522: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.1503
	j .cls_taskStress_con_0_b.1506
.cls_taskStress_con_0_b.1497: 
	blt a3, t5, .cls_taskStress_con_0_b.1499
	j .cls_taskStress_con_0_b.1498
.cls_taskStress_con_0_b.1499: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.1501
	j .cls_taskStress_con_0_b.1500
.cls_taskStress_con_0_b.1501: 
	beq a1, t3, .cls_taskStress_con_0_b.1503
	j .cls_taskStress_con_0_b.1502
.cls_taskStress_con_0_b.1503: 
	beq t6, t0, .cls_taskStress_con_0_b.1505
.cls_taskStress_con_0_b.1506: 
	bge a0, a5, .cls_taskStress_con_0_b.1505
	j .cls_taskStress_con_0_b.1509
.cls_taskStress_con_0_b.1505: 
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1508
.cls_taskStress_con_0_b.1509: 
	blt s1, s7, .cls_taskStress_con_0_b.1508
	j .cls_taskStress_con_0_b.1512
.cls_taskStress_con_0_b.1508: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.1511
.cls_taskStress_con_0_b.1512: 
	lw s9, 15980(sp)
	addi s9, s9, 1
	sw s9, 15952(sp)
	lw s9, 15952(sp)
	sw s9, 15988(sp)
	j .cls_taskStress_con_0_b.910
.cls_taskStress_con_0_b.1511: 
	lw s9, 15980(sp)
	addi s9, s9, 1
	sw s9, 15944(sp)
	lw s9, 15944(sp)
	sw s9, 15976(sp)
.cls_taskStress_con_0_b.1514: 
	lw s10, 16024(sp)
	lw s9, 16048(sp)
	bne s9, s10, .cls_taskStress_con_0_b.1516
.cls_taskStress_con_0_b.1517: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1520
.cls_taskStress_con_0_b.1521: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.1524
.cls_taskStress_con_0_b.1525: 
	bge s4, s3, .cls_taskStress_con_0_b.1527
.cls_taskStress_con_0_b.1528: 
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1527
.cls_taskStress_con_0_b.1532: 
	bge t0, s6, .cls_taskStress_con_0_b.1527
.cls_taskStress_con_0_b.1536: 
	blt a6, t0, .cls_taskStress_con_0_b.1527
.cls_taskStress_con_0_b.1540: 
	blt s2, t6, .cls_taskStress_con_0_b.1527
.cls_taskStress_con_0_b.1544: 
	lw s10, 16080(sp)
	lw s9, 4(sp)
	bne s9, s10, .cls_taskStress_con_0_b.1527
.cls_taskStress_con_0_b.1548: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.1527
.cls_taskStress_con_0_b.1552: 
	blt a0, s4, .cls_taskStress_con_0_b.1527
	j .cls_taskStress_con_0_b.1531
.cls_taskStress_con_0_b.1516: 
	bge s1, t3, .cls_taskStress_con_0_b.1519
	j .cls_taskStress_con_0_b.1517
.cls_taskStress_con_0_b.1519: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.1523
	j .cls_taskStress_con_0_b.1517
.cls_taskStress_con_0_b.1520: 
	bge a3, t5, .cls_taskStress_con_0_b.1524
	j .cls_taskStress_con_0_b.1521
.cls_taskStress_con_0_b.1523: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.1526
	j .cls_taskStress_con_0_b.1517
.cls_taskStress_con_0_b.1524: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.1527
	j .cls_taskStress_con_0_b.1525
.cls_taskStress_con_0_b.1526: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.1529
	j .cls_taskStress_con_0_b.1517
.cls_taskStress_con_0_b.1527: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.1530
.cls_taskStress_con_0_b.1531: 
	lw s9, 16036(sp)
	lw s10, 16076(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1530
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1529: 
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1533
	j .cls_taskStress_con_0_b.1517
.cls_taskStress_con_0_b.1530: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.1534
.cls_taskStress_con_0_b.1535: 
	beq s7, a3, .cls_taskStress_con_0_b.1538
.cls_taskStress_con_0_b.1539: 
	blt s8, t4, .cls_taskStress_con_0_b.1538
	j .cls_taskStress_con_0_b.1543
.cls_taskStress_con_0_b.1533: 
	blt s6, t4, .cls_taskStress_con_0_b.1520
	j .cls_taskStress_con_0_b.1517
.cls_taskStress_con_0_b.1534: 
	bne a5, s1, .cls_taskStress_con_0_b.1537
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1537: 
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1541
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1538: 
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1542
.cls_taskStress_con_0_b.1543: 
	blt t1, ra, .cls_taskStress_con_0_b.1546
.cls_taskStress_con_0_b.1547: 
	bge a1, a1, .cls_taskStress_con_0_b.1550
.cls_taskStress_con_0_b.1551: 
	bne a5, s2, .cls_taskStress_con_0_b.1550
.cls_taskStress_con_0_b.1556: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.1550
.cls_taskStress_con_0_b.1560: 
	bne a6, t4, .cls_taskStress_con_0_b.1550
	j .cls_taskStress_con_0_b.1555
.cls_taskStress_con_0_b.1541: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.1545
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1542: 
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1546
	j .cls_taskStress_con_0_b.1543
.cls_taskStress_con_0_b.1545: 
	beq a1, s4, .cls_taskStress_con_0_b.1549
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1546: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.1550
	j .cls_taskStress_con_0_b.1547
.cls_taskStress_con_0_b.1549: 
	lw s9, 16052(sp)
	lw s10, 16032(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1553
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1550: 
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1554
.cls_taskStress_con_0_b.1555: 
	lw s9, 16092(sp)
	lw s10, 16040(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1554
	j .cls_taskStress_con_0_b.1559
.cls_taskStress_con_0_b.1553: 
	bge s4, s3, .cls_taskStress_con_0_b.1557
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1554: 
	bne a5, s6, .cls_taskStress_con_0_b.1558
.cls_taskStress_con_0_b.1559: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.1563
.cls_taskStress_con_0_b.1564: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.1563
	j .cls_taskStress_con_0_b.1568
.cls_taskStress_con_0_b.1557: 
	beq ra, s11, .cls_taskStress_con_0_b.1561
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1558: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.1562
	j .cls_taskStress_con_0_b.1559
.cls_taskStress_con_0_b.1561: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.1565
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1562: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.1566
	j .cls_taskStress_con_0_b.1559
.cls_taskStress_con_0_b.1563: 
	blt t3, a1, .cls_taskStress_con_0_b.1567
.cls_taskStress_con_0_b.1568: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.1570
.cls_taskStress_con_0_b.1571: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.1573
.cls_taskStress_con_0_b.1574: 
	bge s8, t2, .cls_taskStress_con_0_b.1573
	j .cls_taskStress_con_0_b.1577
.cls_taskStress_con_0_b.1565: 
	lw s9, 16088(sp)
	lw s10, 4(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1569
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1566: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.1563
	j .cls_taskStress_con_0_b.1559
.cls_taskStress_con_0_b.1567: 
	lw s9, 16036(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1570
	j .cls_taskStress_con_0_b.1568
.cls_taskStress_con_0_b.1569: 
	beq t0, a0, .cls_taskStress_con_0_b.1538
	j .cls_taskStress_con_0_b.1535
.cls_taskStress_con_0_b.1570: 
	blt a0, s1, .cls_taskStress_con_0_b.1572
	j .cls_taskStress_con_0_b.1571
.cls_taskStress_con_0_b.1572: 
	blt s3, a3, .cls_taskStress_con_0_b.1575
	j .cls_taskStress_con_0_b.1571
.cls_taskStress_con_0_b.1573: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bne s10, s9, .cls_taskStress_con_0_b.1576
.cls_taskStress_con_0_b.1577: 
	bne s3, s4, .cls_taskStress_con_0_b.1576
	j .cls_taskStress_con_0_b.1580
.cls_taskStress_con_0_b.1575: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.1578
	j .cls_taskStress_con_0_b.1571
.cls_taskStress_con_0_b.1576: 
	bge a3, t1, .cls_taskStress_con_0_b.1579
.cls_taskStress_con_0_b.1580: 
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1583
.cls_taskStress_con_0_b.1584: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.1583
.cls_taskStress_con_0_b.1587: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1583
.cls_taskStress_con_0_b.1590: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.1583
	j .cls_taskStress_con_0_b.1586
.cls_taskStress_con_0_b.1578: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1581
	j .cls_taskStress_con_0_b.1571
.cls_taskStress_con_0_b.1579: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.1582
	j .cls_taskStress_con_0_b.1580
.cls_taskStress_con_0_b.1581: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.1573
	j .cls_taskStress_con_0_b.1571
.cls_taskStress_con_0_b.1582: 
	beq t3, a0, .cls_taskStress_con_0_b.1583
	j .cls_taskStress_con_0_b.1580
.cls_taskStress_con_0_b.1583: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.1585
.cls_taskStress_con_0_b.1586: 
	lw s10, 16008(sp)
	lw s9, 16036(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1588
.cls_taskStress_con_0_b.1589: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.1588
.cls_taskStress_con_0_b.1593: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1588
	j .cls_taskStress_con_0_b.1592
.cls_taskStress_con_0_b.1585: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.1588
	j .cls_taskStress_con_0_b.1586
.cls_taskStress_con_0_b.1588: 
	blt t0, t1, .cls_taskStress_con_0_b.1591
.cls_taskStress_con_0_b.1592: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.1591
	j .cls_taskStress_con_0_b.1595
.cls_taskStress_con_0_b.1591: 
	bge s4, s5, .cls_taskStress_con_0_b.1594
.cls_taskStress_con_0_b.1595: 
	bge a1, t5, .cls_taskStress_con_0_b.1594
	j .cls_taskStress_con_0_b.1597
.cls_taskStress_con_0_b.1594: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1597: 
	bge t0, a0, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1600: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1604: 
	bne s5, s3, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1608: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1613: 
	bne s3, t3, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1617: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1620: 
	bge ra, a7, .cls_taskStress_con_0_b.1596
.cls_taskStress_con_0_b.1624: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.1596
	j .cls_taskStress_con_0_b.1599
.cls_taskStress_con_0_b.1596: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1598
.cls_taskStress_con_0_b.1599: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.1598
.cls_taskStress_con_0_b.1603: 
	beq s8, a7, .cls_taskStress_con_0_b.1598
	j .cls_taskStress_con_0_b.1602
.cls_taskStress_con_0_b.1598: 
	beq t1, t0, .cls_taskStress_con_0_b.1601
.cls_taskStress_con_0_b.1602: 
	bge s2, s6, .cls_taskStress_con_0_b.1601
.cls_taskStress_con_0_b.1607: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1601
.cls_taskStress_con_0_b.1612: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.1601
	j .cls_taskStress_con_0_b.1606
.cls_taskStress_con_0_b.1601: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.1605
.cls_taskStress_con_0_b.1606: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.1605
.cls_taskStress_con_0_b.1611: 
	bne s4, s3, .cls_taskStress_con_0_b.1605
.cls_taskStress_con_0_b.1616: 
	bge s8, s3, .cls_taskStress_con_0_b.1605
	j .cls_taskStress_con_0_b.1610
.cls_taskStress_con_0_b.1605: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.1609
.cls_taskStress_con_0_b.1610: 
	blt a6, t0, .cls_taskStress_con_0_b.1609
	j .cls_taskStress_con_0_b.1615
.cls_taskStress_con_0_b.1609: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.1614
.cls_taskStress_con_0_b.1615: 
	blt a7, s1, .cls_taskStress_con_0_b.1614
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1614: 
	bge a7, a6, .cls_taskStress_con_0_b.1618
.cls_taskStress_con_0_b.1619: 
	blt s0, s3, .cls_taskStress_con_0_b.1622
.cls_taskStress_con_0_b.1623: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1626
.cls_taskStress_con_0_b.1627: 
	bge t4, s0, .cls_taskStress_con_0_b.1629
.cls_taskStress_con_0_b.1630: 
	beq t4, ra, .cls_taskStress_con_0_b.1632
.cls_taskStress_con_0_b.1633: 
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1636
.cls_taskStress_con_0_b.1637: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.1636
.cls_taskStress_con_0_b.1641: 
	beq t3, t2, .cls_taskStress_con_0_b.1636
	j .cls_taskStress_con_0_b.1640
.cls_taskStress_con_0_b.1618: 
	blt a4, a4, .cls_taskStress_con_0_b.1621
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1621: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.1625
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1622: 
	bne a7, s6, .cls_taskStress_con_0_b.1626
	j .cls_taskStress_con_0_b.1623
.cls_taskStress_con_0_b.1625: 
	beq t5, t3, .cls_taskStress_con_0_b.1628
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1626: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1629
	j .cls_taskStress_con_0_b.1627
.cls_taskStress_con_0_b.1628: 
	lw s9, 16076(sp)
	lw s10, 4(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1631
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1629: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.1632
	j .cls_taskStress_con_0_b.1630
.cls_taskStress_con_0_b.1631: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1634
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1632: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1635
	j .cls_taskStress_con_0_b.1633
.cls_taskStress_con_0_b.1634: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1638
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1635: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.1636
	j .cls_taskStress_con_0_b.1633
.cls_taskStress_con_0_b.1636: 
	bge s4, t5, .cls_taskStress_con_0_b.1639
.cls_taskStress_con_0_b.1640: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.1639
	j .cls_taskStress_con_0_b.1643
.cls_taskStress_con_0_b.1638: 
	blt t2, a2, .cls_taskStress_con_0_b.1622
	j .cls_taskStress_con_0_b.1619
.cls_taskStress_con_0_b.1639: 
	beq a2, s2, .cls_taskStress_con_0_b.1642
.cls_taskStress_con_0_b.1643: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.1642
.cls_taskStress_con_0_b.1646: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.1642
.cls_taskStress_con_0_b.1649: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1642
.cls_taskStress_con_0_b.1652: 
	bge s3, s4, .cls_taskStress_con_0_b.1642
.cls_taskStress_con_0_b.1655: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1642
	j .cls_taskStress_con_0_b.1645
.cls_taskStress_con_0_b.1642: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1644
.cls_taskStress_con_0_b.1645: 
	bne ra, t1, .cls_taskStress_con_0_b.1647
.cls_taskStress_con_0_b.1648: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1647
	j .cls_taskStress_con_0_b.1651
.cls_taskStress_con_0_b.1644: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.1647
	j .cls_taskStress_con_0_b.1645
.cls_taskStress_con_0_b.1647: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.1650
.cls_taskStress_con_0_b.1651: 
	lw s10, 16076(sp)
	lw s9, 16072(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1653
.cls_taskStress_con_0_b.1654: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1656
.cls_taskStress_con_0_b.1657: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.1656
.cls_taskStress_con_0_b.1660: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.1656
	j .cls_taskStress_con_0_b.1659
.cls_taskStress_con_0_b.1650: 
	bne t2, s6, .cls_taskStress_con_0_b.1653
	j .cls_taskStress_con_0_b.1651
.cls_taskStress_con_0_b.1653: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.1656
	j .cls_taskStress_con_0_b.1654
.cls_taskStress_con_0_b.1656: 
	beq t0, a5, .cls_taskStress_con_0_b.1658
.cls_taskStress_con_0_b.1659: 
	bge s2, t2, .cls_taskStress_con_0_b.1658
	j .cls_taskStress_con_0_b.1662
.cls_taskStress_con_0_b.1658: 
	blt s6, t3, .cls_taskStress_con_0_b.1661
.cls_taskStress_con_0_b.1662: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1661
.cls_taskStress_con_0_b.1665: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.1661
	j .cls_taskStress_con_0_b.1664
.cls_taskStress_con_0_b.1661: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.1663
.cls_taskStress_con_0_b.1664: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.1663
.cls_taskStress_con_0_b.1668: 
	blt a2, s11, .cls_taskStress_con_0_b.1663
.cls_taskStress_con_0_b.1672: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1663
.cls_taskStress_con_0_b.1677: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.1663
.cls_taskStress_con_0_b.1683: 
	bge a2, a1, .cls_taskStress_con_0_b.1663
.cls_taskStress_con_0_b.1688: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.1663
.cls_taskStress_con_0_b.1691: 
	blt a5, s7, .cls_taskStress_con_0_b.1663
	j .cls_taskStress_con_0_b.1667
.cls_taskStress_con_0_b.1663: 
	bge a5, t0, .cls_taskStress_con_0_b.1666
.cls_taskStress_con_0_b.1667: 
	bge t4, a2, .cls_taskStress_con_0_b.1666
.cls_taskStress_con_0_b.1671: 
	lw s10, 16056(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1666
.cls_taskStress_con_0_b.1676: 
	bge t1, s1, .cls_taskStress_con_0_b.1666
.cls_taskStress_con_0_b.1682: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.1666
.cls_taskStress_con_0_b.1687: 
	blt a5, s8, .cls_taskStress_con_0_b.1666
	j .cls_taskStress_con_0_b.1670
.cls_taskStress_con_0_b.1666: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1669
.cls_taskStress_con_0_b.1670: 
	bge s0, t1, .cls_taskStress_con_0_b.1669
.cls_taskStress_con_0_b.1675: 
	blt t6, s6, .cls_taskStress_con_0_b.1669
.cls_taskStress_con_0_b.1681: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.1669
	j .cls_taskStress_con_0_b.1674
.cls_taskStress_con_0_b.1669: 
	bge t2, a7, .cls_taskStress_con_0_b.1673
.cls_taskStress_con_0_b.1674: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.1673
.cls_taskStress_con_0_b.1680: 
	lw s10, 16012(sp)
	lw s9, 0(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1673
.cls_taskStress_con_0_b.1686: 
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1673
	j .cls_taskStress_con_0_b.1679
.cls_taskStress_con_0_b.1673: 
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1678
.cls_taskStress_con_0_b.1679: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.1678
	j .cls_taskStress_con_0_b.1685
.cls_taskStress_con_0_b.1678: 
	bge s5, s0, .cls_taskStress_con_0_b.1684
.cls_taskStress_con_0_b.1685: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.1689
.cls_taskStress_con_0_b.1690: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1692
.cls_taskStress_con_0_b.1693: 
	bge t6, s11, .cls_taskStress_con_0_b.1692
.cls_taskStress_con_0_b.1696: 
	lw s9, 16036(sp)
	lw s10, 16088(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1692
	j .cls_taskStress_con_0_b.1695
.cls_taskStress_con_0_b.1684: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.1689
	j .cls_taskStress_con_0_b.1685
.cls_taskStress_con_0_b.1689: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1692
	j .cls_taskStress_con_0_b.1690
.cls_taskStress_con_0_b.1692: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.1694
.cls_taskStress_con_0_b.1695: 
	blt t0, s8, .cls_taskStress_con_0_b.1698
.cls_taskStress_con_0_b.1699: 
	blt a7, s1, .cls_taskStress_con_0_b.1698
	j .cls_taskStress_con_0_b.1701
.cls_taskStress_con_0_b.1694: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1697
	j .cls_taskStress_con_0_b.1695
.cls_taskStress_con_0_b.1697: 
	blt s5, t0, .cls_taskStress_con_0_b.1698
	j .cls_taskStress_con_0_b.1695
.cls_taskStress_con_0_b.1698: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.1700
.cls_taskStress_con_0_b.1701: 
	lw s10, 16048(sp)
	lw s9, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1703
.cls_taskStress_con_0_b.1704: 
	lw s9, 16028(sp)
	lw s10, 16080(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1705
.cls_taskStress_con_0_b.1706: 
	bge t6, s7, .cls_taskStress_con_0_b.1705
	j .cls_taskStress_con_0_b.1708
.cls_taskStress_con_0_b.1700: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.1702
	j .cls_taskStress_con_0_b.1701
.cls_taskStress_con_0_b.1702: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.1703
	j .cls_taskStress_con_0_b.1701
.cls_taskStress_con_0_b.1703: 
	beq t2, s2, .cls_taskStress_con_0_b.1705
	j .cls_taskStress_con_0_b.1704
.cls_taskStress_con_0_b.1705: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.1707
.cls_taskStress_con_0_b.1708: 
	bge t3, s8, .cls_taskStress_con_0_b.1709
.cls_taskStress_con_0_b.1710: 
	bge t2, a7, .cls_taskStress_con_0_b.1709
	j .cls_taskStress_con_0_b.1712
.cls_taskStress_con_0_b.1707: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.1709
	j .cls_taskStress_con_0_b.1708
.cls_taskStress_con_0_b.1709: 
	beq s4, t3, .cls_taskStress_con_0_b.1711
.cls_taskStress_con_0_b.1712: 
	bne a6, s0, .cls_taskStress_con_0_b.1714
.cls_taskStress_con_0_b.1715: 
	blt t6, s7, .cls_taskStress_con_0_b.1714
	j .cls_taskStress_con_0_b.1717
.cls_taskStress_con_0_b.1711: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1713
	j .cls_taskStress_con_0_b.1712
.cls_taskStress_con_0_b.1713: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.1714
	j .cls_taskStress_con_0_b.1712
.cls_taskStress_con_0_b.1714: 
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1716
.cls_taskStress_con_0_b.1717: 
	bge t6, t5, .cls_taskStress_con_0_b.1716
.cls_taskStress_con_0_b.1720: 
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1716
.cls_taskStress_con_0_b.1723: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.1716
	j .cls_taskStress_con_0_b.1719
.cls_taskStress_con_0_b.1716: 
	beq a5, s4, .cls_taskStress_con_0_b.1718
.cls_taskStress_con_0_b.1719: 
	blt ra, t1, .cls_taskStress_con_0_b.1718
	j .cls_taskStress_con_0_b.1722
.cls_taskStress_con_0_b.1718: 
	bne a0, a6, .cls_taskStress_con_0_b.1721
.cls_taskStress_con_0_b.1722: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.1721
	j .cls_taskStress_con_0_b.1725
.cls_taskStress_con_0_b.1721: 
	bge a6, s11, .cls_taskStress_con_0_b.1724
.cls_taskStress_con_0_b.1725: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.1727
.cls_taskStress_con_0_b.1728: 
	blt s2, a4, .cls_taskStress_con_0_b.1730
.cls_taskStress_con_0_b.1731: 
	blt t3, t2, .cls_taskStress_con_0_b.1730
	j .cls_taskStress_con_0_b.1733
.cls_taskStress_con_0_b.1724: 
	blt s8, a5, .cls_taskStress_con_0_b.1726
	j .cls_taskStress_con_0_b.1725
.cls_taskStress_con_0_b.1726: 
	bge s3, ra, .cls_taskStress_con_0_b.1729
	j .cls_taskStress_con_0_b.1725
.cls_taskStress_con_0_b.1727: 
	bne t1, s0, .cls_taskStress_con_0_b.1730
	j .cls_taskStress_con_0_b.1728
.cls_taskStress_con_0_b.1729: 
	blt s0, a2, .cls_taskStress_con_0_b.1727
	j .cls_taskStress_con_0_b.1725
.cls_taskStress_con_0_b.1730: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1732
.cls_taskStress_con_0_b.1733: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.1732
	j .cls_taskStress_con_0_b.1735
.cls_taskStress_con_0_b.1732: 
	beq t6, a2, .cls_taskStress_con_0_b.1734
.cls_taskStress_con_0_b.1735: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.1734
	j .cls_taskStress_con_0_b.1737
.cls_taskStress_con_0_b.1734: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.1736
.cls_taskStress_con_0_b.1737: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.1736
	j .cls_taskStress_con_0_b.1739
.cls_taskStress_con_0_b.1736: 
	bge t5, t1, .cls_taskStress_con_0_b.1738
.cls_taskStress_con_0_b.1739: 
	blt s6, a3, .cls_taskStress_con_0_b.1741
.cls_taskStress_con_0_b.1742: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.1744
.cls_taskStress_con_0_b.1745: 
	bne t2, a4, .cls_taskStress_con_0_b.1747
.cls_taskStress_con_0_b.1748: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.1747
	j .cls_taskStress_con_0_b.1751
.cls_taskStress_con_0_b.1738: 
	bne s11, s7, .cls_taskStress_con_0_b.1740
	j .cls_taskStress_con_0_b.1739
.cls_taskStress_con_0_b.1740: 
	lw s9, 16056(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1743
	j .cls_taskStress_con_0_b.1739
.cls_taskStress_con_0_b.1741: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.1744
	j .cls_taskStress_con_0_b.1742
.cls_taskStress_con_0_b.1743: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.1741
	j .cls_taskStress_con_0_b.1739
.cls_taskStress_con_0_b.1744: 
	bge a6, a6, .cls_taskStress_con_0_b.1746
	j .cls_taskStress_con_0_b.1745
.cls_taskStress_con_0_b.1746: 
	blt a0, t1, .cls_taskStress_con_0_b.1749
	j .cls_taskStress_con_0_b.1745
.cls_taskStress_con_0_b.1747: 
	bne s8, s4, .cls_taskStress_con_0_b.1750
.cls_taskStress_con_0_b.1751: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.1750
.cls_taskStress_con_0_b.1754: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.1750
	j .cls_taskStress_con_0_b.1753
.cls_taskStress_con_0_b.1749: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1747
	j .cls_taskStress_con_0_b.1745
.cls_taskStress_con_0_b.1750: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.1752
.cls_taskStress_con_0_b.1753: 
	blt s4, s4, .cls_taskStress_con_0_b.1755
.cls_taskStress_con_0_b.1756: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.1757
.cls_taskStress_con_0_b.1758: 
	blt ra, s2, .cls_taskStress_con_0_b.1757
	j .cls_taskStress_con_0_b.1760
.cls_taskStress_con_0_b.1752: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.1755
	j .cls_taskStress_con_0_b.1753
.cls_taskStress_con_0_b.1755: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.1757
	j .cls_taskStress_con_0_b.1756
.cls_taskStress_con_0_b.1757: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.1759
.cls_taskStress_con_0_b.1760: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.1759
	j .cls_taskStress_con_0_b.1762
.cls_taskStress_con_0_b.1759: 
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1761
.cls_taskStress_con_0_b.1762: 
	beq t6, s8, .cls_taskStress_con_0_b.1763
.cls_taskStress_con_0_b.1764: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.1765
.cls_taskStress_con_0_b.1766: 
	bne t0, a7, .cls_taskStress_con_0_b.1765
.cls_taskStress_con_0_b.1769: 
	beq t1, t3, .cls_taskStress_con_0_b.1765
	j .cls_taskStress_con_0_b.1768
.cls_taskStress_con_0_b.1761: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.1763
	j .cls_taskStress_con_0_b.1762
.cls_taskStress_con_0_b.1763: 
	blt s11, a4, .cls_taskStress_con_0_b.1765
	j .cls_taskStress_con_0_b.1764
.cls_taskStress_con_0_b.1765: 
	lw s10, 16056(sp)
	lw s9, 4(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1767
.cls_taskStress_con_0_b.1768: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.1770
.cls_taskStress_con_0_b.1771: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.1773
.cls_taskStress_con_0_b.1774: 
	blt s0, s0, .cls_taskStress_con_0_b.1773
.cls_taskStress_con_0_b.1778: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.1773
	j .cls_taskStress_con_0_b.1777
.cls_taskStress_con_0_b.1767: 
	bge s1, a6, .cls_taskStress_con_0_b.1770
	j .cls_taskStress_con_0_b.1768
.cls_taskStress_con_0_b.1770: 
	bge s2, s7, .cls_taskStress_con_0_b.1772
	j .cls_taskStress_con_0_b.1771
.cls_taskStress_con_0_b.1772: 
	bne t2, s2, .cls_taskStress_con_0_b.1775
	j .cls_taskStress_con_0_b.1771
.cls_taskStress_con_0_b.1773: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1776
.cls_taskStress_con_0_b.1777: 
	lw s9, 16056(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1780
.cls_taskStress_con_0_b.1781: 
	bge t5, t4, .cls_taskStress_con_0_b.1780
.cls_taskStress_con_0_b.1784: 
	bne ra, a1, .cls_taskStress_con_0_b.1780
.cls_taskStress_con_0_b.1787: 
	bge s5, s8, .cls_taskStress_con_0_b.1780
.cls_taskStress_con_0_b.1791: 
	bne a7, s11, .cls_taskStress_con_0_b.1780
.cls_taskStress_con_0_b.1795: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.1780
.cls_taskStress_con_0_b.1798: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.1780
	j .cls_taskStress_con_0_b.1783
.cls_taskStress_con_0_b.1775: 
	lw s10, 16016(sp)
	lw s9, 16032(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1773
	j .cls_taskStress_con_0_b.1771
.cls_taskStress_con_0_b.1776: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.1779
	j .cls_taskStress_con_0_b.1777
.cls_taskStress_con_0_b.1779: 
	blt a5, s4, .cls_taskStress_con_0_b.1780
	j .cls_taskStress_con_0_b.1777
.cls_taskStress_con_0_b.1780: 
	blt t6, s1, .cls_taskStress_con_0_b.1782
.cls_taskStress_con_0_b.1783: 
	blt t5, ra, .cls_taskStress_con_0_b.1782
	j .cls_taskStress_con_0_b.1786
.cls_taskStress_con_0_b.1782: 
	bge s5, a6, .cls_taskStress_con_0_b.1785
.cls_taskStress_con_0_b.1786: 
	bne s1, t4, .cls_taskStress_con_0_b.1785
.cls_taskStress_con_0_b.1790: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.1785
.cls_taskStress_con_0_b.1794: 
	bge a3, a3, .cls_taskStress_con_0_b.1785
	j .cls_taskStress_con_0_b.1789
.cls_taskStress_con_0_b.1785: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.1788
.cls_taskStress_con_0_b.1789: 
	bge t5, t6, .cls_taskStress_con_0_b.1788
	j .cls_taskStress_con_0_b.1793
.cls_taskStress_con_0_b.1788: 
	blt s5, s7, .cls_taskStress_con_0_b.1792
.cls_taskStress_con_0_b.1793: 
	lw s9, 16032(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1792
	j .cls_taskStress_con_0_b.1797
.cls_taskStress_con_0_b.1792: 
	bge t6, t2, .cls_taskStress_con_0_b.1796
.cls_taskStress_con_0_b.1797: 
	bge s5, a4, .cls_taskStress_con_0_b.1796
	j .cls_taskStress_con_0_b.1800
.cls_taskStress_con_0_b.1796: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.1799
.cls_taskStress_con_0_b.1800: 
	bge t2, t4, .cls_taskStress_con_0_b.1801
.cls_taskStress_con_0_b.1802: 
	bne t5, s0, .cls_taskStress_con_0_b.1803
.cls_taskStress_con_0_b.1804: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.1805
.cls_taskStress_con_0_b.1806: 
	bge a2, a4, .cls_taskStress_con_0_b.1805
.cls_taskStress_con_0_b.1809: 
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1805
.cls_taskStress_con_0_b.1812: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.1805
.cls_taskStress_con_0_b.1815: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.1805
.cls_taskStress_con_0_b.1817: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.1805
.cls_taskStress_con_0_b.1820: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.1805
.cls_taskStress_con_0_b.1824: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.1805
	j .cls_taskStress_con_0_b.1808
.cls_taskStress_con_0_b.1799: 
	blt a3, t5, .cls_taskStress_con_0_b.1801
	j .cls_taskStress_con_0_b.1800
.cls_taskStress_con_0_b.1801: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.1803
	j .cls_taskStress_con_0_b.1802
.cls_taskStress_con_0_b.1803: 
	beq a1, t3, .cls_taskStress_con_0_b.1805
	j .cls_taskStress_con_0_b.1804
.cls_taskStress_con_0_b.1805: 
	beq t6, t0, .cls_taskStress_con_0_b.1807
.cls_taskStress_con_0_b.1808: 
	bge a0, a5, .cls_taskStress_con_0_b.1807
	j .cls_taskStress_con_0_b.1811
.cls_taskStress_con_0_b.1807: 
	lw s10, 16048(sp)
	lw s9, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1810
.cls_taskStress_con_0_b.1811: 
	blt s1, s7, .cls_taskStress_con_0_b.1810
	j .cls_taskStress_con_0_b.1814
.cls_taskStress_con_0_b.1810: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.1813
.cls_taskStress_con_0_b.1814: 
	lw s9, 15976(sp)
	addi s9, s9, 1
	sw s9, 9756(sp)
	lw s9, 9756(sp)
	sw s9, 15980(sp)
	j .cls_taskStress_con_0_b.1212
.cls_taskStress_con_0_b.1813: 
	lw s9, 15976(sp)
	addi s9, s9, 1
	sw s9, 15924(sp)
	lw s9, 15924(sp)
	sw s9, 15996(sp)
.cls_taskStress_con_0_b.1816: 
	lw s10, 16024(sp)
	lw s9, 16048(sp)
	bne s9, s10, .cls_taskStress_con_0_b.1818
.cls_taskStress_con_0_b.1819: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1822
.cls_taskStress_con_0_b.1823: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.1826
.cls_taskStress_con_0_b.1827: 
	bge s4, s3, .cls_taskStress_con_0_b.1829
.cls_taskStress_con_0_b.1830: 
	lw s10, 16052(sp)
	lw s9, 16076(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1829
.cls_taskStress_con_0_b.1834: 
	bge t0, s6, .cls_taskStress_con_0_b.1829
.cls_taskStress_con_0_b.1838: 
	blt a6, t0, .cls_taskStress_con_0_b.1829
.cls_taskStress_con_0_b.1842: 
	blt s2, t6, .cls_taskStress_con_0_b.1829
.cls_taskStress_con_0_b.1846: 
	lw s10, 16080(sp)
	lw s9, 4(sp)
	bne s9, s10, .cls_taskStress_con_0_b.1829
.cls_taskStress_con_0_b.1850: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.1829
.cls_taskStress_con_0_b.1854: 
	blt a0, s4, .cls_taskStress_con_0_b.1829
	j .cls_taskStress_con_0_b.1833
.cls_taskStress_con_0_b.1818: 
	bge s1, t3, .cls_taskStress_con_0_b.1821
	j .cls_taskStress_con_0_b.1819
.cls_taskStress_con_0_b.1821: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.1825
	j .cls_taskStress_con_0_b.1819
.cls_taskStress_con_0_b.1822: 
	bge a3, t5, .cls_taskStress_con_0_b.1826
	j .cls_taskStress_con_0_b.1823
.cls_taskStress_con_0_b.1825: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.1828
	j .cls_taskStress_con_0_b.1819
.cls_taskStress_con_0_b.1826: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.1829
	j .cls_taskStress_con_0_b.1827
.cls_taskStress_con_0_b.1828: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.1831
	j .cls_taskStress_con_0_b.1819
.cls_taskStress_con_0_b.1829: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.1832
.cls_taskStress_con_0_b.1833: 
	lw s10, 16036(sp)
	lw s9, 16076(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1832
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1831: 
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1835
	j .cls_taskStress_con_0_b.1819
.cls_taskStress_con_0_b.1832: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.1836
.cls_taskStress_con_0_b.1837: 
	beq s7, a3, .cls_taskStress_con_0_b.1840
.cls_taskStress_con_0_b.1841: 
	blt s8, t4, .cls_taskStress_con_0_b.1840
	j .cls_taskStress_con_0_b.1845
.cls_taskStress_con_0_b.1835: 
	blt s6, t4, .cls_taskStress_con_0_b.1822
	j .cls_taskStress_con_0_b.1819
.cls_taskStress_con_0_b.1836: 
	bne a5, s1, .cls_taskStress_con_0_b.1839
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1839: 
	lw s9, 16088(sp)
	lw s10, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1843
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1840: 
	lw s9, 16060(sp)
	lw s10, 16012(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1844
.cls_taskStress_con_0_b.1845: 
	blt t1, ra, .cls_taskStress_con_0_b.1848
.cls_taskStress_con_0_b.1849: 
	bge a1, a1, .cls_taskStress_con_0_b.1852
.cls_taskStress_con_0_b.1853: 
	bne a5, s2, .cls_taskStress_con_0_b.1852
.cls_taskStress_con_0_b.1858: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.1852
.cls_taskStress_con_0_b.1862: 
	bne a6, t4, .cls_taskStress_con_0_b.1852
	j .cls_taskStress_con_0_b.1857
.cls_taskStress_con_0_b.1843: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.1847
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1844: 
	lw s10, 16064(sp)
	lw s9, 16072(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1848
	j .cls_taskStress_con_0_b.1845
.cls_taskStress_con_0_b.1847: 
	beq a1, s4, .cls_taskStress_con_0_b.1851
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1848: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.1852
	j .cls_taskStress_con_0_b.1849
.cls_taskStress_con_0_b.1851: 
	lw s10, 16052(sp)
	lw s9, 16032(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1855
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1852: 
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	beq s9, s10, .cls_taskStress_con_0_b.1856
.cls_taskStress_con_0_b.1857: 
	lw s10, 16092(sp)
	lw s9, 16040(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1856
	j .cls_taskStress_con_0_b.1861
.cls_taskStress_con_0_b.1855: 
	bge s4, s3, .cls_taskStress_con_0_b.1859
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1856: 
	bne a5, s6, .cls_taskStress_con_0_b.1860
.cls_taskStress_con_0_b.1861: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.1865
.cls_taskStress_con_0_b.1866: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.1865
	j .cls_taskStress_con_0_b.1870
.cls_taskStress_con_0_b.1859: 
	beq ra, s11, .cls_taskStress_con_0_b.1863
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1860: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.1864
	j .cls_taskStress_con_0_b.1861
.cls_taskStress_con_0_b.1863: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.1867
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1864: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.1868
	j .cls_taskStress_con_0_b.1861
.cls_taskStress_con_0_b.1865: 
	blt t3, a1, .cls_taskStress_con_0_b.1869
.cls_taskStress_con_0_b.1870: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.1872
.cls_taskStress_con_0_b.1873: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.1875
.cls_taskStress_con_0_b.1876: 
	bge s8, t2, .cls_taskStress_con_0_b.1875
	j .cls_taskStress_con_0_b.1879
.cls_taskStress_con_0_b.1867: 
	lw s10, 16088(sp)
	lw s9, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1871
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1868: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.1865
	j .cls_taskStress_con_0_b.1861
.cls_taskStress_con_0_b.1869: 
	lw s9, 16036(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1872
	j .cls_taskStress_con_0_b.1870
.cls_taskStress_con_0_b.1871: 
	beq t0, a0, .cls_taskStress_con_0_b.1840
	j .cls_taskStress_con_0_b.1837
.cls_taskStress_con_0_b.1872: 
	blt a0, s1, .cls_taskStress_con_0_b.1874
	j .cls_taskStress_con_0_b.1873
.cls_taskStress_con_0_b.1874: 
	blt s3, a3, .cls_taskStress_con_0_b.1877
	j .cls_taskStress_con_0_b.1873
.cls_taskStress_con_0_b.1875: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bne s10, s9, .cls_taskStress_con_0_b.1878
.cls_taskStress_con_0_b.1879: 
	bne s3, s4, .cls_taskStress_con_0_b.1878
	j .cls_taskStress_con_0_b.1882
.cls_taskStress_con_0_b.1877: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.1880
	j .cls_taskStress_con_0_b.1873
.cls_taskStress_con_0_b.1878: 
	bge a3, t1, .cls_taskStress_con_0_b.1881
.cls_taskStress_con_0_b.1882: 
	lw s9, 16060(sp)
	lw s10, 16064(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1885
.cls_taskStress_con_0_b.1886: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.1885
.cls_taskStress_con_0_b.1889: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1885
.cls_taskStress_con_0_b.1892: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.1885
	j .cls_taskStress_con_0_b.1888
.cls_taskStress_con_0_b.1880: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1883
	j .cls_taskStress_con_0_b.1873
.cls_taskStress_con_0_b.1881: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.1884
	j .cls_taskStress_con_0_b.1882
.cls_taskStress_con_0_b.1883: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.1875
	j .cls_taskStress_con_0_b.1873
.cls_taskStress_con_0_b.1884: 
	beq t3, a0, .cls_taskStress_con_0_b.1885
	j .cls_taskStress_con_0_b.1882
.cls_taskStress_con_0_b.1885: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.1887
.cls_taskStress_con_0_b.1888: 
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1890
.cls_taskStress_con_0_b.1891: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.1890
.cls_taskStress_con_0_b.1895: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1890
	j .cls_taskStress_con_0_b.1894
.cls_taskStress_con_0_b.1887: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.1890
	j .cls_taskStress_con_0_b.1888
.cls_taskStress_con_0_b.1890: 
	blt t0, t1, .cls_taskStress_con_0_b.1893
.cls_taskStress_con_0_b.1894: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.1893
	j .cls_taskStress_con_0_b.1897
.cls_taskStress_con_0_b.1893: 
	bge s4, s5, .cls_taskStress_con_0_b.1896
.cls_taskStress_con_0_b.1897: 
	bge a1, t5, .cls_taskStress_con_0_b.1896
	j .cls_taskStress_con_0_b.1899
.cls_taskStress_con_0_b.1896: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1899: 
	bge t0, a0, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1902: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1906: 
	bne s5, s3, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1910: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1915: 
	bne s3, t3, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1919: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1922: 
	bge ra, a7, .cls_taskStress_con_0_b.1898
.cls_taskStress_con_0_b.1926: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.1898
	j .cls_taskStress_con_0_b.1901
.cls_taskStress_con_0_b.1898: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1900
.cls_taskStress_con_0_b.1901: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.1900
.cls_taskStress_con_0_b.1905: 
	beq s8, a7, .cls_taskStress_con_0_b.1900
	j .cls_taskStress_con_0_b.1904
.cls_taskStress_con_0_b.1900: 
	beq t1, t0, .cls_taskStress_con_0_b.1903
.cls_taskStress_con_0_b.1904: 
	bge s2, s6, .cls_taskStress_con_0_b.1903
.cls_taskStress_con_0_b.1909: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1903
.cls_taskStress_con_0_b.1914: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.1903
	j .cls_taskStress_con_0_b.1908
.cls_taskStress_con_0_b.1903: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.1907
.cls_taskStress_con_0_b.1908: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.1907
.cls_taskStress_con_0_b.1913: 
	bne s4, s3, .cls_taskStress_con_0_b.1907
.cls_taskStress_con_0_b.1918: 
	bge s8, s3, .cls_taskStress_con_0_b.1907
	j .cls_taskStress_con_0_b.1912
.cls_taskStress_con_0_b.1907: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.1911
.cls_taskStress_con_0_b.1912: 
	blt a6, t0, .cls_taskStress_con_0_b.1911
	j .cls_taskStress_con_0_b.1917
.cls_taskStress_con_0_b.1911: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.1916
.cls_taskStress_con_0_b.1917: 
	blt a7, s1, .cls_taskStress_con_0_b.1916
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1916: 
	bge a7, a6, .cls_taskStress_con_0_b.1920
.cls_taskStress_con_0_b.1921: 
	blt s0, s3, .cls_taskStress_con_0_b.1924
.cls_taskStress_con_0_b.1925: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1928
.cls_taskStress_con_0_b.1929: 
	bge t4, s0, .cls_taskStress_con_0_b.1931
.cls_taskStress_con_0_b.1932: 
	beq t4, ra, .cls_taskStress_con_0_b.1934
.cls_taskStress_con_0_b.1935: 
	lw s10, 16060(sp)
	lw s9, 16028(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1938
.cls_taskStress_con_0_b.1939: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.1938
.cls_taskStress_con_0_b.1943: 
	beq t3, t2, .cls_taskStress_con_0_b.1938
	j .cls_taskStress_con_0_b.1942
.cls_taskStress_con_0_b.1920: 
	blt a4, a4, .cls_taskStress_con_0_b.1923
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1923: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.1927
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1924: 
	bne a7, s6, .cls_taskStress_con_0_b.1928
	j .cls_taskStress_con_0_b.1925
.cls_taskStress_con_0_b.1927: 
	beq t5, t3, .cls_taskStress_con_0_b.1930
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1928: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1931
	j .cls_taskStress_con_0_b.1929
.cls_taskStress_con_0_b.1930: 
	lw s9, 16076(sp)
	lw s10, 4(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1933
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1931: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.1934
	j .cls_taskStress_con_0_b.1932
.cls_taskStress_con_0_b.1933: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1936
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1934: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1937
	j .cls_taskStress_con_0_b.1935
.cls_taskStress_con_0_b.1936: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1940
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1937: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.1938
	j .cls_taskStress_con_0_b.1935
.cls_taskStress_con_0_b.1938: 
	bge s4, t5, .cls_taskStress_con_0_b.1941
.cls_taskStress_con_0_b.1942: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.1941
	j .cls_taskStress_con_0_b.1945
.cls_taskStress_con_0_b.1940: 
	blt t2, a2, .cls_taskStress_con_0_b.1924
	j .cls_taskStress_con_0_b.1921
.cls_taskStress_con_0_b.1941: 
	beq a2, s2, .cls_taskStress_con_0_b.1944
.cls_taskStress_con_0_b.1945: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.1944
.cls_taskStress_con_0_b.1948: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.1944
.cls_taskStress_con_0_b.1951: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.1944
.cls_taskStress_con_0_b.1954: 
	bge s3, s4, .cls_taskStress_con_0_b.1944
.cls_taskStress_con_0_b.1957: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.1944
	j .cls_taskStress_con_0_b.1947
.cls_taskStress_con_0_b.1944: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.1946
.cls_taskStress_con_0_b.1947: 
	bne ra, t1, .cls_taskStress_con_0_b.1949
.cls_taskStress_con_0_b.1950: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.1949
	j .cls_taskStress_con_0_b.1953
.cls_taskStress_con_0_b.1946: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.1949
	j .cls_taskStress_con_0_b.1947
.cls_taskStress_con_0_b.1949: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.1952
.cls_taskStress_con_0_b.1953: 
	lw s10, 16076(sp)
	lw s9, 16072(sp)
	beq s10, s9, .cls_taskStress_con_0_b.1955
.cls_taskStress_con_0_b.1956: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1958
.cls_taskStress_con_0_b.1959: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.1958
.cls_taskStress_con_0_b.1962: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.1958
	j .cls_taskStress_con_0_b.1961
.cls_taskStress_con_0_b.1952: 
	bne t2, s6, .cls_taskStress_con_0_b.1955
	j .cls_taskStress_con_0_b.1953
.cls_taskStress_con_0_b.1955: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.1958
	j .cls_taskStress_con_0_b.1956
.cls_taskStress_con_0_b.1958: 
	beq t0, a5, .cls_taskStress_con_0_b.1960
.cls_taskStress_con_0_b.1961: 
	bge s2, t2, .cls_taskStress_con_0_b.1960
	j .cls_taskStress_con_0_b.1964
.cls_taskStress_con_0_b.1960: 
	blt s6, t3, .cls_taskStress_con_0_b.1963
.cls_taskStress_con_0_b.1964: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.1963
.cls_taskStress_con_0_b.1967: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.1963
	j .cls_taskStress_con_0_b.1966
.cls_taskStress_con_0_b.1963: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.1965
.cls_taskStress_con_0_b.1966: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.1965
.cls_taskStress_con_0_b.1970: 
	blt a2, s11, .cls_taskStress_con_0_b.1965
.cls_taskStress_con_0_b.1974: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.1965
.cls_taskStress_con_0_b.1979: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.1965
.cls_taskStress_con_0_b.1985: 
	bge a2, a1, .cls_taskStress_con_0_b.1965
.cls_taskStress_con_0_b.1990: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.1965
.cls_taskStress_con_0_b.1993: 
	blt a5, s7, .cls_taskStress_con_0_b.1965
	j .cls_taskStress_con_0_b.1969
.cls_taskStress_con_0_b.1965: 
	bge a5, t0, .cls_taskStress_con_0_b.1968
.cls_taskStress_con_0_b.1969: 
	bge t4, a2, .cls_taskStress_con_0_b.1968
.cls_taskStress_con_0_b.1973: 
	lw s9, 16056(sp)
	lw s10, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.1968
.cls_taskStress_con_0_b.1978: 
	bge t1, s1, .cls_taskStress_con_0_b.1968
.cls_taskStress_con_0_b.1984: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.1968
.cls_taskStress_con_0_b.1989: 
	blt a5, s8, .cls_taskStress_con_0_b.1968
	j .cls_taskStress_con_0_b.1972
.cls_taskStress_con_0_b.1968: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.1971
.cls_taskStress_con_0_b.1972: 
	bge s0, t1, .cls_taskStress_con_0_b.1971
.cls_taskStress_con_0_b.1977: 
	blt t6, s6, .cls_taskStress_con_0_b.1971
.cls_taskStress_con_0_b.1983: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.1971
	j .cls_taskStress_con_0_b.1976
.cls_taskStress_con_0_b.1971: 
	bge t2, a7, .cls_taskStress_con_0_b.1975
.cls_taskStress_con_0_b.1976: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.1975
.cls_taskStress_con_0_b.1982: 
	lw s9, 16012(sp)
	lw s10, 0(sp)
	blt s10, s9, .cls_taskStress_con_0_b.1975
.cls_taskStress_con_0_b.1988: 
	lw s10, 16092(sp)
	lw s9, 16020(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1975
	j .cls_taskStress_con_0_b.1981
.cls_taskStress_con_0_b.1975: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.1980
.cls_taskStress_con_0_b.1981: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.1980
	j .cls_taskStress_con_0_b.1987
.cls_taskStress_con_0_b.1980: 
	bge s5, s0, .cls_taskStress_con_0_b.1986
.cls_taskStress_con_0_b.1987: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.1991
.cls_taskStress_con_0_b.1992: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1994
.cls_taskStress_con_0_b.1995: 
	bge t6, s11, .cls_taskStress_con_0_b.1994
.cls_taskStress_con_0_b.1998: 
	lw s10, 16036(sp)
	lw s9, 16088(sp)
	blt s9, s10, .cls_taskStress_con_0_b.1994
	j .cls_taskStress_con_0_b.1997
.cls_taskStress_con_0_b.1986: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.1991
	j .cls_taskStress_con_0_b.1987
.cls_taskStress_con_0_b.1991: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.1994
	j .cls_taskStress_con_0_b.1992
.cls_taskStress_con_0_b.1994: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.1996
.cls_taskStress_con_0_b.1997: 
	blt t0, s8, .cls_taskStress_con_0_b.2000
.cls_taskStress_con_0_b.2001: 
	blt a7, s1, .cls_taskStress_con_0_b.2000
	j .cls_taskStress_con_0_b.2003
.cls_taskStress_con_0_b.1996: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.1999
	j .cls_taskStress_con_0_b.1997
.cls_taskStress_con_0_b.1999: 
	blt s5, t0, .cls_taskStress_con_0_b.2000
	j .cls_taskStress_con_0_b.1997
.cls_taskStress_con_0_b.2000: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.2002
.cls_taskStress_con_0_b.2003: 
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2005
.cls_taskStress_con_0_b.2006: 
	lw s9, 16028(sp)
	lw s10, 16080(sp)
	beq s9, s10, .cls_taskStress_con_0_b.2007
.cls_taskStress_con_0_b.2008: 
	bge t6, s7, .cls_taskStress_con_0_b.2007
	j .cls_taskStress_con_0_b.2010
.cls_taskStress_con_0_b.2002: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.2004
	j .cls_taskStress_con_0_b.2003
.cls_taskStress_con_0_b.2004: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.2005
	j .cls_taskStress_con_0_b.2003
.cls_taskStress_con_0_b.2005: 
	beq t2, s2, .cls_taskStress_con_0_b.2007
	j .cls_taskStress_con_0_b.2006
.cls_taskStress_con_0_b.2007: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.2009
.cls_taskStress_con_0_b.2010: 
	bge t3, s8, .cls_taskStress_con_0_b.2011
.cls_taskStress_con_0_b.2012: 
	bge t2, a7, .cls_taskStress_con_0_b.2011
	j .cls_taskStress_con_0_b.2014
.cls_taskStress_con_0_b.2009: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.2011
	j .cls_taskStress_con_0_b.2010
.cls_taskStress_con_0_b.2011: 
	beq s4, t3, .cls_taskStress_con_0_b.2013
.cls_taskStress_con_0_b.2014: 
	bne a6, s0, .cls_taskStress_con_0_b.2016
.cls_taskStress_con_0_b.2017: 
	blt t6, s7, .cls_taskStress_con_0_b.2016
	j .cls_taskStress_con_0_b.2019
.cls_taskStress_con_0_b.2013: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.2015
	j .cls_taskStress_con_0_b.2014
.cls_taskStress_con_0_b.2015: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.2016
	j .cls_taskStress_con_0_b.2014
.cls_taskStress_con_0_b.2016: 
	lw s10, 16016(sp)
	lw s9, 16084(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2018
.cls_taskStress_con_0_b.2019: 
	bge t6, t5, .cls_taskStress_con_0_b.2018
.cls_taskStress_con_0_b.2022: 
	lw s9, 16044(sp)
	lw s10, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2018
.cls_taskStress_con_0_b.2025: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.2018
	j .cls_taskStress_con_0_b.2021
.cls_taskStress_con_0_b.2018: 
	beq a5, s4, .cls_taskStress_con_0_b.2020
.cls_taskStress_con_0_b.2021: 
	blt ra, t1, .cls_taskStress_con_0_b.2020
	j .cls_taskStress_con_0_b.2024
.cls_taskStress_con_0_b.2020: 
	bne a0, a6, .cls_taskStress_con_0_b.2023
.cls_taskStress_con_0_b.2024: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.2023
	j .cls_taskStress_con_0_b.2027
.cls_taskStress_con_0_b.2023: 
	bge a6, s11, .cls_taskStress_con_0_b.2026
.cls_taskStress_con_0_b.2027: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.2029
.cls_taskStress_con_0_b.2030: 
	blt s2, a4, .cls_taskStress_con_0_b.2032
.cls_taskStress_con_0_b.2033: 
	blt t3, t2, .cls_taskStress_con_0_b.2032
	j .cls_taskStress_con_0_b.2035
.cls_taskStress_con_0_b.2026: 
	blt s8, a5, .cls_taskStress_con_0_b.2028
	j .cls_taskStress_con_0_b.2027
.cls_taskStress_con_0_b.2028: 
	bge s3, ra, .cls_taskStress_con_0_b.2031
	j .cls_taskStress_con_0_b.2027
.cls_taskStress_con_0_b.2029: 
	bne t1, s0, .cls_taskStress_con_0_b.2032
	j .cls_taskStress_con_0_b.2030
.cls_taskStress_con_0_b.2031: 
	blt s0, a2, .cls_taskStress_con_0_b.2029
	j .cls_taskStress_con_0_b.2027
.cls_taskStress_con_0_b.2032: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.2034
.cls_taskStress_con_0_b.2035: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.2034
	j .cls_taskStress_con_0_b.2037
.cls_taskStress_con_0_b.2034: 
	beq t6, a2, .cls_taskStress_con_0_b.2036
.cls_taskStress_con_0_b.2037: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.2036
	j .cls_taskStress_con_0_b.2039
.cls_taskStress_con_0_b.2036: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.2038
.cls_taskStress_con_0_b.2039: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.2038
	j .cls_taskStress_con_0_b.2041
.cls_taskStress_con_0_b.2038: 
	bge t5, t1, .cls_taskStress_con_0_b.2040
.cls_taskStress_con_0_b.2041: 
	blt s6, a3, .cls_taskStress_con_0_b.2043
.cls_taskStress_con_0_b.2044: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.2046
.cls_taskStress_con_0_b.2047: 
	bne t2, a4, .cls_taskStress_con_0_b.2049
.cls_taskStress_con_0_b.2050: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.2049
	j .cls_taskStress_con_0_b.2053
.cls_taskStress_con_0_b.2040: 
	bne s11, s7, .cls_taskStress_con_0_b.2042
	j .cls_taskStress_con_0_b.2041
.cls_taskStress_con_0_b.2042: 
	lw s9, 16056(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2045
	j .cls_taskStress_con_0_b.2041
.cls_taskStress_con_0_b.2043: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.2046
	j .cls_taskStress_con_0_b.2044
.cls_taskStress_con_0_b.2045: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.2043
	j .cls_taskStress_con_0_b.2041
.cls_taskStress_con_0_b.2046: 
	bge a6, a6, .cls_taskStress_con_0_b.2048
	j .cls_taskStress_con_0_b.2047
.cls_taskStress_con_0_b.2048: 
	blt a0, t1, .cls_taskStress_con_0_b.2051
	j .cls_taskStress_con_0_b.2047
.cls_taskStress_con_0_b.2049: 
	bne s8, s4, .cls_taskStress_con_0_b.2052
.cls_taskStress_con_0_b.2053: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.2052
.cls_taskStress_con_0_b.2056: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.2052
	j .cls_taskStress_con_0_b.2055
.cls_taskStress_con_0_b.2051: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.2049
	j .cls_taskStress_con_0_b.2047
.cls_taskStress_con_0_b.2052: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.2054
.cls_taskStress_con_0_b.2055: 
	blt s4, s4, .cls_taskStress_con_0_b.2057
.cls_taskStress_con_0_b.2058: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.2059
.cls_taskStress_con_0_b.2060: 
	blt ra, s2, .cls_taskStress_con_0_b.2059
	j .cls_taskStress_con_0_b.2062
.cls_taskStress_con_0_b.2054: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.2057
	j .cls_taskStress_con_0_b.2055
.cls_taskStress_con_0_b.2057: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.2059
	j .cls_taskStress_con_0_b.2058
.cls_taskStress_con_0_b.2059: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.2061
.cls_taskStress_con_0_b.2062: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.2061
	j .cls_taskStress_con_0_b.2064
.cls_taskStress_con_0_b.2061: 
	lw s9, 16016(sp)
	lw s10, 16040(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2063
.cls_taskStress_con_0_b.2064: 
	beq t6, s8, .cls_taskStress_con_0_b.2065
.cls_taskStress_con_0_b.2066: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.2067
.cls_taskStress_con_0_b.2068: 
	bne t0, a7, .cls_taskStress_con_0_b.2067
.cls_taskStress_con_0_b.2071: 
	beq t1, t3, .cls_taskStress_con_0_b.2067
	j .cls_taskStress_con_0_b.2070
.cls_taskStress_con_0_b.2063: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.2065
	j .cls_taskStress_con_0_b.2064
.cls_taskStress_con_0_b.2065: 
	blt s11, a4, .cls_taskStress_con_0_b.2067
	j .cls_taskStress_con_0_b.2066
.cls_taskStress_con_0_b.2067: 
	lw s10, 16056(sp)
	lw s9, 4(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2069
.cls_taskStress_con_0_b.2070: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.2072
.cls_taskStress_con_0_b.2073: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.2075
.cls_taskStress_con_0_b.2076: 
	blt s0, s0, .cls_taskStress_con_0_b.2075
.cls_taskStress_con_0_b.2080: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.2075
	j .cls_taskStress_con_0_b.2079
.cls_taskStress_con_0_b.2069: 
	bge s1, a6, .cls_taskStress_con_0_b.2072
	j .cls_taskStress_con_0_b.2070
.cls_taskStress_con_0_b.2072: 
	bge s2, s7, .cls_taskStress_con_0_b.2074
	j .cls_taskStress_con_0_b.2073
.cls_taskStress_con_0_b.2074: 
	bne t2, s2, .cls_taskStress_con_0_b.2077
	j .cls_taskStress_con_0_b.2073
.cls_taskStress_con_0_b.2075: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.2078
.cls_taskStress_con_0_b.2079: 
	lw s10, 16056(sp)
	lw s9, 16084(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2082
.cls_taskStress_con_0_b.2083: 
	bge t5, t4, .cls_taskStress_con_0_b.2082
.cls_taskStress_con_0_b.2086: 
	bne ra, a1, .cls_taskStress_con_0_b.2082
.cls_taskStress_con_0_b.2089: 
	bge s5, s8, .cls_taskStress_con_0_b.2082
.cls_taskStress_con_0_b.2093: 
	bne a7, s11, .cls_taskStress_con_0_b.2082
.cls_taskStress_con_0_b.2097: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.2082
.cls_taskStress_con_0_b.2100: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.2082
	j .cls_taskStress_con_0_b.2085
.cls_taskStress_con_0_b.2077: 
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2075
	j .cls_taskStress_con_0_b.2073
.cls_taskStress_con_0_b.2078: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.2081
	j .cls_taskStress_con_0_b.2079
.cls_taskStress_con_0_b.2081: 
	blt a5, s4, .cls_taskStress_con_0_b.2082
	j .cls_taskStress_con_0_b.2079
.cls_taskStress_con_0_b.2082: 
	blt t6, s1, .cls_taskStress_con_0_b.2084
.cls_taskStress_con_0_b.2085: 
	blt t5, ra, .cls_taskStress_con_0_b.2084
	j .cls_taskStress_con_0_b.2088
.cls_taskStress_con_0_b.2084: 
	bge s5, a6, .cls_taskStress_con_0_b.2087
.cls_taskStress_con_0_b.2088: 
	bne s1, t4, .cls_taskStress_con_0_b.2087
.cls_taskStress_con_0_b.2092: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.2087
.cls_taskStress_con_0_b.2096: 
	bge a3, a3, .cls_taskStress_con_0_b.2087
	j .cls_taskStress_con_0_b.2091
.cls_taskStress_con_0_b.2087: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.2090
.cls_taskStress_con_0_b.2091: 
	bge t5, t6, .cls_taskStress_con_0_b.2090
	j .cls_taskStress_con_0_b.2095
.cls_taskStress_con_0_b.2090: 
	blt s5, s7, .cls_taskStress_con_0_b.2094
.cls_taskStress_con_0_b.2095: 
	lw s10, 16032(sp)
	lw s9, 4(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2094
	j .cls_taskStress_con_0_b.2099
.cls_taskStress_con_0_b.2094: 
	bge t6, t2, .cls_taskStress_con_0_b.2098
.cls_taskStress_con_0_b.2099: 
	bge s5, a4, .cls_taskStress_con_0_b.2098
	j .cls_taskStress_con_0_b.2102
.cls_taskStress_con_0_b.2098: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.2101
.cls_taskStress_con_0_b.2102: 
	bge t2, t4, .cls_taskStress_con_0_b.2103
.cls_taskStress_con_0_b.2104: 
	bne t5, s0, .cls_taskStress_con_0_b.2105
.cls_taskStress_con_0_b.2106: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.2107
.cls_taskStress_con_0_b.2108: 
	bge a2, a4, .cls_taskStress_con_0_b.2107
.cls_taskStress_con_0_b.2111: 
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2107
.cls_taskStress_con_0_b.2114: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.2107
.cls_taskStress_con_0_b.2117: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.2107
.cls_taskStress_con_0_b.2119: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.2107
.cls_taskStress_con_0_b.2122: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.2107
.cls_taskStress_con_0_b.2126: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.2107
	j .cls_taskStress_con_0_b.2110
.cls_taskStress_con_0_b.2101: 
	blt a3, t5, .cls_taskStress_con_0_b.2103
	j .cls_taskStress_con_0_b.2102
.cls_taskStress_con_0_b.2103: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.2105
	j .cls_taskStress_con_0_b.2104
.cls_taskStress_con_0_b.2105: 
	beq a1, t3, .cls_taskStress_con_0_b.2107
	j .cls_taskStress_con_0_b.2106
.cls_taskStress_con_0_b.2107: 
	beq t6, t0, .cls_taskStress_con_0_b.2109
.cls_taskStress_con_0_b.2110: 
	bge a0, a5, .cls_taskStress_con_0_b.2109
	j .cls_taskStress_con_0_b.2113
.cls_taskStress_con_0_b.2109: 
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2112
.cls_taskStress_con_0_b.2113: 
	blt s1, s7, .cls_taskStress_con_0_b.2112
	j .cls_taskStress_con_0_b.2116
.cls_taskStress_con_0_b.2112: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.2115
.cls_taskStress_con_0_b.2116: 
	lw s9, 15996(sp)
	addi s9, s9, 1
	sw s9, 15948(sp)
	lw s9, 15948(sp)
	sw s9, 15976(sp)
	j .cls_taskStress_con_0_b.1514
.cls_taskStress_con_0_b.2115: 
	lw s9, 15996(sp)
	addi s9, s9, 1
	sw s9, 15972(sp)
	lw s9, 15972(sp)
	sw s9, 16004(sp)
.cls_taskStress_con_0_b.2118: 
	lw s9, 16024(sp)
	lw s10, 16048(sp)
	bne s10, s9, .cls_taskStress_con_0_b.2120
.cls_taskStress_con_0_b.2121: 
	lw s9, 16064(sp)
	lw s10, 4(sp)
	beq s9, s10, .cls_taskStress_con_0_b.2124
.cls_taskStress_con_0_b.2125: 
	lw s9, 16084(sp)
	blt s5, s9, .cls_taskStress_con_0_b.2128
.cls_taskStress_con_0_b.2129: 
	bge s4, s3, .cls_taskStress_con_0_b.2131
.cls_taskStress_con_0_b.2132: 
	lw s9, 16052(sp)
	lw s10, 16076(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2131
.cls_taskStress_con_0_b.2136: 
	bge t0, s6, .cls_taskStress_con_0_b.2131
.cls_taskStress_con_0_b.2140: 
	blt a6, t0, .cls_taskStress_con_0_b.2131
.cls_taskStress_con_0_b.2144: 
	blt s2, t6, .cls_taskStress_con_0_b.2131
.cls_taskStress_con_0_b.2148: 
	lw s9, 16080(sp)
	lw s10, 4(sp)
	bne s10, s9, .cls_taskStress_con_0_b.2131
.cls_taskStress_con_0_b.2152: 
	lw s9, 16056(sp)
	blt s9, s6, .cls_taskStress_con_0_b.2131
.cls_taskStress_con_0_b.2156: 
	blt a0, s4, .cls_taskStress_con_0_b.2131
	j .cls_taskStress_con_0_b.2135
.cls_taskStress_con_0_b.2120: 
	bge s1, t3, .cls_taskStress_con_0_b.2123
	j .cls_taskStress_con_0_b.2121
.cls_taskStress_con_0_b.2123: 
	lw s9, 16044(sp)
	bge s7, s9, .cls_taskStress_con_0_b.2127
	j .cls_taskStress_con_0_b.2121
.cls_taskStress_con_0_b.2124: 
	bge a3, t5, .cls_taskStress_con_0_b.2128
	j .cls_taskStress_con_0_b.2125
.cls_taskStress_con_0_b.2127: 
	lw s9, 4(sp)
	bge a4, s9, .cls_taskStress_con_0_b.2130
	j .cls_taskStress_con_0_b.2121
.cls_taskStress_con_0_b.2128: 
	lw s9, 16060(sp)
	bge s8, s9, .cls_taskStress_con_0_b.2131
	j .cls_taskStress_con_0_b.2129
.cls_taskStress_con_0_b.2130: 
	lw s9, 16020(sp)
	beq s9, t5, .cls_taskStress_con_0_b.2133
	j .cls_taskStress_con_0_b.2121
.cls_taskStress_con_0_b.2131: 
	lw s9, 16020(sp)
	beq s6, s9, .cls_taskStress_con_0_b.2134
.cls_taskStress_con_0_b.2135: 
	lw s10, 16036(sp)
	lw s9, 16076(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2134
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2133: 
	lw s9, 16056(sp)
	lw s10, 16072(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2137
	j .cls_taskStress_con_0_b.2121
.cls_taskStress_con_0_b.2134: 
	lw s9, 16036(sp)
	blt s9, s0, .cls_taskStress_con_0_b.2138
.cls_taskStress_con_0_b.2139: 
	beq s7, a3, .cls_taskStress_con_0_b.2142
.cls_taskStress_con_0_b.2143: 
	blt s8, t4, .cls_taskStress_con_0_b.2142
	j .cls_taskStress_con_0_b.2147
.cls_taskStress_con_0_b.2137: 
	blt s6, t4, .cls_taskStress_con_0_b.2124
	j .cls_taskStress_con_0_b.2121
.cls_taskStress_con_0_b.2138: 
	bne a5, s1, .cls_taskStress_con_0_b.2141
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2141: 
	lw s10, 16088(sp)
	lw s9, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2145
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2142: 
	lw s10, 16060(sp)
	lw s9, 16012(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2146
.cls_taskStress_con_0_b.2147: 
	blt t1, ra, .cls_taskStress_con_0_b.2150
.cls_taskStress_con_0_b.2151: 
	bge a1, a1, .cls_taskStress_con_0_b.2154
.cls_taskStress_con_0_b.2155: 
	bne a5, s2, .cls_taskStress_con_0_b.2154
.cls_taskStress_con_0_b.2160: 
	lw s9, 16052(sp)
	bne s9, s5, .cls_taskStress_con_0_b.2154
.cls_taskStress_con_0_b.2164: 
	bne a6, t4, .cls_taskStress_con_0_b.2154
	j .cls_taskStress_con_0_b.2159
.cls_taskStress_con_0_b.2145: 
	lw s9, 16044(sp)
	bne s9, s6, .cls_taskStress_con_0_b.2149
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2146: 
	lw s9, 16064(sp)
	lw s10, 16072(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2150
	j .cls_taskStress_con_0_b.2147
.cls_taskStress_con_0_b.2149: 
	beq a1, s4, .cls_taskStress_con_0_b.2153
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2150: 
	lw s9, 16032(sp)
	bne t3, s9, .cls_taskStress_con_0_b.2154
	j .cls_taskStress_con_0_b.2151
.cls_taskStress_con_0_b.2153: 
	lw s9, 16052(sp)
	lw s10, 16032(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2157
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2154: 
	lw s10, 16024(sp)
	lw s9, 16068(sp)
	beq s9, s10, .cls_taskStress_con_0_b.2158
.cls_taskStress_con_0_b.2159: 
	lw s10, 16092(sp)
	lw s9, 16040(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2158
	j .cls_taskStress_con_0_b.2163
.cls_taskStress_con_0_b.2157: 
	bge s4, s3, .cls_taskStress_con_0_b.2161
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2158: 
	bne a5, s6, .cls_taskStress_con_0_b.2162
.cls_taskStress_con_0_b.2163: 
	lw s9, 0(sp)
	blt s9, s9, .cls_taskStress_con_0_b.2167
.cls_taskStress_con_0_b.2168: 
	lw s9, 16056(sp)
	blt s9, t3, .cls_taskStress_con_0_b.2167
	j .cls_taskStress_con_0_b.2172
.cls_taskStress_con_0_b.2161: 
	beq ra, s11, .cls_taskStress_con_0_b.2165
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2162: 
	lw s9, 16016(sp)
	blt t5, s9, .cls_taskStress_con_0_b.2166
	j .cls_taskStress_con_0_b.2163
.cls_taskStress_con_0_b.2165: 
	lw s9, 16052(sp)
	bge t5, s9, .cls_taskStress_con_0_b.2169
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2166: 
	lw s9, 16024(sp)
	beq s9, a1, .cls_taskStress_con_0_b.2170
	j .cls_taskStress_con_0_b.2163
.cls_taskStress_con_0_b.2167: 
	blt t3, a1, .cls_taskStress_con_0_b.2171
.cls_taskStress_con_0_b.2172: 
	lw s9, 16024(sp)
	blt a2, s9, .cls_taskStress_con_0_b.2174
.cls_taskStress_con_0_b.2175: 
	lw s9, 16032(sp)
	beq a7, s9, .cls_taskStress_con_0_b.2177
.cls_taskStress_con_0_b.2178: 
	bge s8, t2, .cls_taskStress_con_0_b.2177
	j .cls_taskStress_con_0_b.2181
.cls_taskStress_con_0_b.2169: 
	lw s10, 16088(sp)
	lw s9, 4(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2173
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2170: 
	lw s9, 16064(sp)
	bge s9, s5, .cls_taskStress_con_0_b.2167
	j .cls_taskStress_con_0_b.2163
.cls_taskStress_con_0_b.2171: 
	lw s9, 16036(sp)
	lw s10, 0(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2174
	j .cls_taskStress_con_0_b.2172
.cls_taskStress_con_0_b.2173: 
	beq t0, a0, .cls_taskStress_con_0_b.2142
	j .cls_taskStress_con_0_b.2139
.cls_taskStress_con_0_b.2174: 
	blt a0, s1, .cls_taskStress_con_0_b.2176
	j .cls_taskStress_con_0_b.2175
.cls_taskStress_con_0_b.2176: 
	blt s3, a3, .cls_taskStress_con_0_b.2179
	j .cls_taskStress_con_0_b.2175
.cls_taskStress_con_0_b.2177: 
	lw s9, 16060(sp)
	lw s10, 16084(sp)
	bne s10, s9, .cls_taskStress_con_0_b.2180
.cls_taskStress_con_0_b.2181: 
	bne s3, s4, .cls_taskStress_con_0_b.2180
	j .cls_taskStress_con_0_b.2184
.cls_taskStress_con_0_b.2179: 
	lw s9, 16068(sp)
	blt a7, s9, .cls_taskStress_con_0_b.2182
	j .cls_taskStress_con_0_b.2175
.cls_taskStress_con_0_b.2180: 
	bge a3, t1, .cls_taskStress_con_0_b.2183
.cls_taskStress_con_0_b.2184: 
	lw s10, 16060(sp)
	lw s9, 16064(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2187
.cls_taskStress_con_0_b.2188: 
	lw s9, 16044(sp)
	bge a5, s9, .cls_taskStress_con_0_b.2187
.cls_taskStress_con_0_b.2191: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.2187
.cls_taskStress_con_0_b.2194: 
	lw s9, 16088(sp)
	bge a6, s9, .cls_taskStress_con_0_b.2187
	j .cls_taskStress_con_0_b.2190
.cls_taskStress_con_0_b.2182: 
	lw s9, 16056(sp)
	blt s9, a1, .cls_taskStress_con_0_b.2185
	j .cls_taskStress_con_0_b.2175
.cls_taskStress_con_0_b.2183: 
	lw s9, 16040(sp)
	blt s9, t5, .cls_taskStress_con_0_b.2186
	j .cls_taskStress_con_0_b.2184
.cls_taskStress_con_0_b.2185: 
	lw s9, 16028(sp)
	bge s9, t1, .cls_taskStress_con_0_b.2177
	j .cls_taskStress_con_0_b.2175
.cls_taskStress_con_0_b.2186: 
	beq t3, a0, .cls_taskStress_con_0_b.2187
	j .cls_taskStress_con_0_b.2184
.cls_taskStress_con_0_b.2187: 
	lw s9, 16052(sp)
	bge s9, s11, .cls_taskStress_con_0_b.2189
.cls_taskStress_con_0_b.2190: 
	lw s9, 16008(sp)
	lw s10, 16036(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2192
.cls_taskStress_con_0_b.2193: 
	lw s9, 16020(sp)
	blt s9, s1, .cls_taskStress_con_0_b.2192
.cls_taskStress_con_0_b.2197: 
	lw s9, 16088(sp)
	blt s9, a4, .cls_taskStress_con_0_b.2192
	j .cls_taskStress_con_0_b.2196
.cls_taskStress_con_0_b.2189: 
	lw s9, 16068(sp)
	bge t5, s9, .cls_taskStress_con_0_b.2192
	j .cls_taskStress_con_0_b.2190
.cls_taskStress_con_0_b.2192: 
	blt t0, t1, .cls_taskStress_con_0_b.2195
.cls_taskStress_con_0_b.2196: 
	lw s9, 16080(sp)
	bne s9, a4, .cls_taskStress_con_0_b.2195
	j .cls_taskStress_con_0_b.2199
.cls_taskStress_con_0_b.2195: 
	bge s4, s5, .cls_taskStress_con_0_b.2198
.cls_taskStress_con_0_b.2199: 
	bge a1, t5, .cls_taskStress_con_0_b.2198
	j .cls_taskStress_con_0_b.2201
.cls_taskStress_con_0_b.2198: 
	lw s9, 16072(sp)
	blt s9, a0, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2201: 
	bge t0, a0, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2204: 
	lw s9, 16092(sp)
	blt s9, s7, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2208: 
	bne s5, s3, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2212: 
	lw s9, 16084(sp)
	bne s9, a1, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2217: 
	bne s3, t3, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2221: 
	lw s9, 16028(sp)
	beq a1, s9, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2224: 
	bge ra, a7, .cls_taskStress_con_0_b.2200
.cls_taskStress_con_0_b.2228: 
	lw s9, 16036(sp)
	bge s3, s9, .cls_taskStress_con_0_b.2200
	j .cls_taskStress_con_0_b.2203
.cls_taskStress_con_0_b.2200: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.2202
.cls_taskStress_con_0_b.2203: 
	lw s9, 16020(sp)
	blt s9, s8, .cls_taskStress_con_0_b.2202
.cls_taskStress_con_0_b.2207: 
	beq s8, a7, .cls_taskStress_con_0_b.2202
	j .cls_taskStress_con_0_b.2206
.cls_taskStress_con_0_b.2202: 
	beq t1, t0, .cls_taskStress_con_0_b.2205
.cls_taskStress_con_0_b.2206: 
	bge s2, s6, .cls_taskStress_con_0_b.2205
.cls_taskStress_con_0_b.2211: 
	lw s9, 16024(sp)
	blt s9, t0, .cls_taskStress_con_0_b.2205
.cls_taskStress_con_0_b.2216: 
	lw s9, 16084(sp)
	bge s9, a6, .cls_taskStress_con_0_b.2205
	j .cls_taskStress_con_0_b.2210
.cls_taskStress_con_0_b.2205: 
	lw s9, 16028(sp)
	beq s9, a1, .cls_taskStress_con_0_b.2209
.cls_taskStress_con_0_b.2210: 
	lw s9, 4(sp)
	blt s11, s9, .cls_taskStress_con_0_b.2209
.cls_taskStress_con_0_b.2215: 
	bne s4, s3, .cls_taskStress_con_0_b.2209
.cls_taskStress_con_0_b.2220: 
	bge s8, s3, .cls_taskStress_con_0_b.2209
	j .cls_taskStress_con_0_b.2214
.cls_taskStress_con_0_b.2209: 
	lw s9, 16020(sp)
	bge s9, t4, .cls_taskStress_con_0_b.2213
.cls_taskStress_con_0_b.2214: 
	blt a6, t0, .cls_taskStress_con_0_b.2213
	j .cls_taskStress_con_0_b.2219
.cls_taskStress_con_0_b.2213: 
	lw s9, 16044(sp)
	bne a5, s9, .cls_taskStress_con_0_b.2218
.cls_taskStress_con_0_b.2219: 
	blt a7, s1, .cls_taskStress_con_0_b.2218
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2218: 
	bge a7, a6, .cls_taskStress_con_0_b.2222
.cls_taskStress_con_0_b.2223: 
	blt s0, s3, .cls_taskStress_con_0_b.2226
.cls_taskStress_con_0_b.2227: 
	lw s9, 16044(sp)
	bge s9, s4, .cls_taskStress_con_0_b.2230
.cls_taskStress_con_0_b.2231: 
	bge t4, s0, .cls_taskStress_con_0_b.2233
.cls_taskStress_con_0_b.2234: 
	beq t4, ra, .cls_taskStress_con_0_b.2236
.cls_taskStress_con_0_b.2237: 
	lw s9, 16060(sp)
	lw s10, 16028(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2240
.cls_taskStress_con_0_b.2241: 
	lw s9, 16048(sp)
	beq a4, s9, .cls_taskStress_con_0_b.2240
.cls_taskStress_con_0_b.2245: 
	beq t3, t2, .cls_taskStress_con_0_b.2240
	j .cls_taskStress_con_0_b.2244
.cls_taskStress_con_0_b.2222: 
	blt a4, a4, .cls_taskStress_con_0_b.2225
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2225: 
	lw s9, 16008(sp)
	blt a0, s9, .cls_taskStress_con_0_b.2229
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2226: 
	bne a7, s6, .cls_taskStress_con_0_b.2230
	j .cls_taskStress_con_0_b.2227
.cls_taskStress_con_0_b.2229: 
	beq t5, t3, .cls_taskStress_con_0_b.2232
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2230: 
	lw s10, 16048(sp)
	lw s9, 16032(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2233
	j .cls_taskStress_con_0_b.2231
.cls_taskStress_con_0_b.2232: 
	lw s10, 16076(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2235
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2233: 
	lw s9, 16076(sp)
	bne s9, s8, .cls_taskStress_con_0_b.2236
	j .cls_taskStress_con_0_b.2234
.cls_taskStress_con_0_b.2235: 
	lw s10, 16064(sp)
	lw s9, 4(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2238
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2236: 
	lw s9, 16040(sp)
	blt s9, a6, .cls_taskStress_con_0_b.2239
	j .cls_taskStress_con_0_b.2237
.cls_taskStress_con_0_b.2238: 
	lw s9, 16076(sp)
	bge s2, s9, .cls_taskStress_con_0_b.2242
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2239: 
	lw s9, 16092(sp)
	beq a1, s9, .cls_taskStress_con_0_b.2240
	j .cls_taskStress_con_0_b.2237
.cls_taskStress_con_0_b.2240: 
	bge s4, t5, .cls_taskStress_con_0_b.2243
.cls_taskStress_con_0_b.2244: 
	lw s9, 0(sp)
	beq ra, s9, .cls_taskStress_con_0_b.2243
	j .cls_taskStress_con_0_b.2247
.cls_taskStress_con_0_b.2242: 
	blt t2, a2, .cls_taskStress_con_0_b.2226
	j .cls_taskStress_con_0_b.2223
.cls_taskStress_con_0_b.2243: 
	beq a2, s2, .cls_taskStress_con_0_b.2246
.cls_taskStress_con_0_b.2247: 
	lw s9, 4(sp)
	blt t3, s9, .cls_taskStress_con_0_b.2246
.cls_taskStress_con_0_b.2250: 
	lw s9, 16052(sp)
	blt a4, s9, .cls_taskStress_con_0_b.2246
.cls_taskStress_con_0_b.2253: 
	lw s9, 16032(sp)
	blt s9, a1, .cls_taskStress_con_0_b.2246
.cls_taskStress_con_0_b.2256: 
	bge s3, s4, .cls_taskStress_con_0_b.2246
.cls_taskStress_con_0_b.2259: 
	lw s9, 4(sp)
	blt s9, t0, .cls_taskStress_con_0_b.2246
	j .cls_taskStress_con_0_b.2249
.cls_taskStress_con_0_b.2246: 
	lw s9, 16080(sp)
	bge s2, s9, .cls_taskStress_con_0_b.2248
.cls_taskStress_con_0_b.2249: 
	bne ra, t1, .cls_taskStress_con_0_b.2251
.cls_taskStress_con_0_b.2252: 
	lw s9, 16024(sp)
	blt s9, a6, .cls_taskStress_con_0_b.2251
	j .cls_taskStress_con_0_b.2255
.cls_taskStress_con_0_b.2248: 
	lw s9, 16012(sp)
	blt a3, s9, .cls_taskStress_con_0_b.2251
	j .cls_taskStress_con_0_b.2249
.cls_taskStress_con_0_b.2251: 
	lw s9, 16068(sp)
	bge s9, s2, .cls_taskStress_con_0_b.2254
.cls_taskStress_con_0_b.2255: 
	lw s10, 16076(sp)
	lw s9, 16072(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2257
.cls_taskStress_con_0_b.2258: 
	lw s9, 16092(sp)
	blt s8, s9, .cls_taskStress_con_0_b.2260
.cls_taskStress_con_0_b.2261: 
	lw s9, 16076(sp)
	blt s9, s0, .cls_taskStress_con_0_b.2260
.cls_taskStress_con_0_b.2264: 
	lw s9, 16028(sp)
	bne s9, s5, .cls_taskStress_con_0_b.2260
	j .cls_taskStress_con_0_b.2263
.cls_taskStress_con_0_b.2254: 
	bne t2, s6, .cls_taskStress_con_0_b.2257
	j .cls_taskStress_con_0_b.2255
.cls_taskStress_con_0_b.2257: 
	lw s9, 16016(sp)
	blt s9, s4, .cls_taskStress_con_0_b.2260
	j .cls_taskStress_con_0_b.2258
.cls_taskStress_con_0_b.2260: 
	beq t0, a5, .cls_taskStress_con_0_b.2262
.cls_taskStress_con_0_b.2263: 
	bge s2, t2, .cls_taskStress_con_0_b.2262
	j .cls_taskStress_con_0_b.2266
.cls_taskStress_con_0_b.2262: 
	blt s6, t3, .cls_taskStress_con_0_b.2265
.cls_taskStress_con_0_b.2266: 
	lw s9, 16072(sp)
	blt s0, s9, .cls_taskStress_con_0_b.2265
.cls_taskStress_con_0_b.2269: 
	lw s9, 16052(sp)
	bne a1, s9, .cls_taskStress_con_0_b.2265
	j .cls_taskStress_con_0_b.2268
.cls_taskStress_con_0_b.2265: 
	lw s9, 16092(sp)
	bne s9, s9, .cls_taskStress_con_0_b.2267
.cls_taskStress_con_0_b.2268: 
	lw s9, 16012(sp)
	bne s9, a2, .cls_taskStress_con_0_b.2267
.cls_taskStress_con_0_b.2272: 
	blt a2, s11, .cls_taskStress_con_0_b.2267
.cls_taskStress_con_0_b.2276: 
	lw s9, 0(sp)
	blt s8, s9, .cls_taskStress_con_0_b.2267
.cls_taskStress_con_0_b.2281: 
	lw s9, 16092(sp)
	blt t0, s9, .cls_taskStress_con_0_b.2267
.cls_taskStress_con_0_b.2287: 
	bge a2, a1, .cls_taskStress_con_0_b.2267
.cls_taskStress_con_0_b.2292: 
	lw s9, 16048(sp)
	bne s8, s9, .cls_taskStress_con_0_b.2267
.cls_taskStress_con_0_b.2295: 
	blt a5, s7, .cls_taskStress_con_0_b.2267
	j .cls_taskStress_con_0_b.2271
.cls_taskStress_con_0_b.2267: 
	bge a5, t0, .cls_taskStress_con_0_b.2270
.cls_taskStress_con_0_b.2271: 
	bge t4, a2, .cls_taskStress_con_0_b.2270
.cls_taskStress_con_0_b.2275: 
	lw s9, 16056(sp)
	lw s10, 16080(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2270
.cls_taskStress_con_0_b.2280: 
	bge t1, s1, .cls_taskStress_con_0_b.2270
.cls_taskStress_con_0_b.2286: 
	lw s9, 16088(sp)
	beq s9, t5, .cls_taskStress_con_0_b.2270
.cls_taskStress_con_0_b.2291: 
	blt a5, s8, .cls_taskStress_con_0_b.2270
	j .cls_taskStress_con_0_b.2274
.cls_taskStress_con_0_b.2270: 
	lw s9, 16076(sp)
	bge s9, s4, .cls_taskStress_con_0_b.2273
.cls_taskStress_con_0_b.2274: 
	bge s0, t1, .cls_taskStress_con_0_b.2273
.cls_taskStress_con_0_b.2279: 
	blt t6, s6, .cls_taskStress_con_0_b.2273
.cls_taskStress_con_0_b.2285: 
	lw s9, 16024(sp)
	bge s9, s0, .cls_taskStress_con_0_b.2273
	j .cls_taskStress_con_0_b.2278
.cls_taskStress_con_0_b.2273: 
	bge t2, a7, .cls_taskStress_con_0_b.2277
.cls_taskStress_con_0_b.2278: 
	lw s9, 16036(sp)
	bne s9, s7, .cls_taskStress_con_0_b.2277
.cls_taskStress_con_0_b.2284: 
	lw s9, 16012(sp)
	lw s10, 0(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2277
.cls_taskStress_con_0_b.2290: 
	lw s9, 16092(sp)
	lw s10, 16020(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2277
	j .cls_taskStress_con_0_b.2283
.cls_taskStress_con_0_b.2277: 
	lw s10, 16060(sp)
	lw s9, 16084(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2282
.cls_taskStress_con_0_b.2283: 
	lw s9, 16068(sp)
	bge s9, a3, .cls_taskStress_con_0_b.2282
	j .cls_taskStress_con_0_b.2289
.cls_taskStress_con_0_b.2282: 
	bge s5, s0, .cls_taskStress_con_0_b.2288
.cls_taskStress_con_0_b.2289: 
	lw s9, 16084(sp)
	blt t5, s9, .cls_taskStress_con_0_b.2293
.cls_taskStress_con_0_b.2294: 
	lw s9, 16060(sp)
	blt s9, t1, .cls_taskStress_con_0_b.2296
.cls_taskStress_con_0_b.2297: 
	bge t6, s11, .cls_taskStress_con_0_b.2296
.cls_taskStress_con_0_b.2300: 
	lw s10, 16036(sp)
	lw s9, 16088(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2296
	j .cls_taskStress_con_0_b.2299
.cls_taskStress_con_0_b.2288: 
	lw s9, 16040(sp)
	blt t4, s9, .cls_taskStress_con_0_b.2293
	j .cls_taskStress_con_0_b.2289
.cls_taskStress_con_0_b.2293: 
	lw s9, 16012(sp)
	blt s9, a4, .cls_taskStress_con_0_b.2296
	j .cls_taskStress_con_0_b.2294
.cls_taskStress_con_0_b.2296: 
	lw s9, 0(sp)
	bne s6, s9, .cls_taskStress_con_0_b.2298
.cls_taskStress_con_0_b.2299: 
	blt t0, s8, .cls_taskStress_con_0_b.2302
.cls_taskStress_con_0_b.2303: 
	blt a7, s1, .cls_taskStress_con_0_b.2302
	j .cls_taskStress_con_0_b.2305
.cls_taskStress_con_0_b.2298: 
	lw s9, 16048(sp)
	blt s9, t1, .cls_taskStress_con_0_b.2301
	j .cls_taskStress_con_0_b.2299
.cls_taskStress_con_0_b.2301: 
	blt s5, t0, .cls_taskStress_con_0_b.2302
	j .cls_taskStress_con_0_b.2299
.cls_taskStress_con_0_b.2302: 
	lw s9, 16048(sp)
	blt s9, a3, .cls_taskStress_con_0_b.2304
.cls_taskStress_con_0_b.2305: 
	lw s9, 16048(sp)
	lw s10, 16072(sp)
	bge s9, s10, .cls_taskStress_con_0_b.2307
.cls_taskStress_con_0_b.2308: 
	lw s10, 16028(sp)
	lw s9, 16080(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2309
.cls_taskStress_con_0_b.2310: 
	bge t6, s7, .cls_taskStress_con_0_b.2309
	j .cls_taskStress_con_0_b.2312
.cls_taskStress_con_0_b.2304: 
	lw s9, 16060(sp)
	blt s1, s9, .cls_taskStress_con_0_b.2306
	j .cls_taskStress_con_0_b.2305
.cls_taskStress_con_0_b.2306: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.2307
	j .cls_taskStress_con_0_b.2305
.cls_taskStress_con_0_b.2307: 
	beq t2, s2, .cls_taskStress_con_0_b.2309
	j .cls_taskStress_con_0_b.2308
.cls_taskStress_con_0_b.2309: 
	lw s9, 16076(sp)
	beq s9, t4, .cls_taskStress_con_0_b.2311
.cls_taskStress_con_0_b.2312: 
	bge t3, s8, .cls_taskStress_con_0_b.2313
.cls_taskStress_con_0_b.2314: 
	bge t2, a7, .cls_taskStress_con_0_b.2313
	j .cls_taskStress_con_0_b.2316
.cls_taskStress_con_0_b.2311: 
	lw s9, 16092(sp)
	bne s9, t3, .cls_taskStress_con_0_b.2313
	j .cls_taskStress_con_0_b.2312
.cls_taskStress_con_0_b.2313: 
	beq s4, t3, .cls_taskStress_con_0_b.2315
.cls_taskStress_con_0_b.2316: 
	bne a6, s0, .cls_taskStress_con_0_b.2318
.cls_taskStress_con_0_b.2319: 
	blt t6, s7, .cls_taskStress_con_0_b.2318
	j .cls_taskStress_con_0_b.2321
.cls_taskStress_con_0_b.2315: 
	lw s9, 16088(sp)
	blt s9, t0, .cls_taskStress_con_0_b.2317
	j .cls_taskStress_con_0_b.2316
.cls_taskStress_con_0_b.2317: 
	lw s9, 16044(sp)
	beq s9, a3, .cls_taskStress_con_0_b.2318
	j .cls_taskStress_con_0_b.2316
.cls_taskStress_con_0_b.2318: 
	lw s9, 16016(sp)
	lw s10, 16084(sp)
	beq s9, s10, .cls_taskStress_con_0_b.2320
.cls_taskStress_con_0_b.2321: 
	bge t6, t5, .cls_taskStress_con_0_b.2320
.cls_taskStress_con_0_b.2324: 
	lw s10, 16044(sp)
	lw s9, 16080(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2320
.cls_taskStress_con_0_b.2327: 
	lw s9, 16092(sp)
	bge s9, t4, .cls_taskStress_con_0_b.2320
	j .cls_taskStress_con_0_b.2323
.cls_taskStress_con_0_b.2320: 
	beq a5, s4, .cls_taskStress_con_0_b.2322
.cls_taskStress_con_0_b.2323: 
	blt ra, t1, .cls_taskStress_con_0_b.2322
	j .cls_taskStress_con_0_b.2326
.cls_taskStress_con_0_b.2322: 
	bne a0, a6, .cls_taskStress_con_0_b.2325
.cls_taskStress_con_0_b.2326: 
	lw s9, 16052(sp)
	bne s9, t6, .cls_taskStress_con_0_b.2325
	j .cls_taskStress_con_0_b.2329
.cls_taskStress_con_0_b.2325: 
	bge a6, s11, .cls_taskStress_con_0_b.2328
.cls_taskStress_con_0_b.2329: 
	lw s9, 16020(sp)
	bge s9, a1, .cls_taskStress_con_0_b.2331
.cls_taskStress_con_0_b.2332: 
	blt s2, a4, .cls_taskStress_con_0_b.2334
.cls_taskStress_con_0_b.2335: 
	blt t3, t2, .cls_taskStress_con_0_b.2334
	j .cls_taskStress_con_0_b.2337
.cls_taskStress_con_0_b.2328: 
	blt s8, a5, .cls_taskStress_con_0_b.2330
	j .cls_taskStress_con_0_b.2329
.cls_taskStress_con_0_b.2330: 
	bge s3, ra, .cls_taskStress_con_0_b.2333
	j .cls_taskStress_con_0_b.2329
.cls_taskStress_con_0_b.2331: 
	bne t1, s0, .cls_taskStress_con_0_b.2334
	j .cls_taskStress_con_0_b.2332
.cls_taskStress_con_0_b.2333: 
	blt s0, a2, .cls_taskStress_con_0_b.2331
	j .cls_taskStress_con_0_b.2329
.cls_taskStress_con_0_b.2334: 
	lw s9, 16076(sp)
	blt s9, a1, .cls_taskStress_con_0_b.2336
.cls_taskStress_con_0_b.2337: 
	lw s9, 0(sp)
	beq t2, s9, .cls_taskStress_con_0_b.2336
	j .cls_taskStress_con_0_b.2339
.cls_taskStress_con_0_b.2336: 
	beq t6, a2, .cls_taskStress_con_0_b.2338
.cls_taskStress_con_0_b.2339: 
	lw s9, 16072(sp)
	blt s9, s11, .cls_taskStress_con_0_b.2338
	j .cls_taskStress_con_0_b.2341
.cls_taskStress_con_0_b.2338: 
	lw s9, 16068(sp)
	blt s11, s9, .cls_taskStress_con_0_b.2340
.cls_taskStress_con_0_b.2341: 
	lw s9, 16032(sp)
	bne s9, s2, .cls_taskStress_con_0_b.2340
	j .cls_taskStress_con_0_b.2343
.cls_taskStress_con_0_b.2340: 
	bge t5, t1, .cls_taskStress_con_0_b.2342
.cls_taskStress_con_0_b.2343: 
	blt s6, a3, .cls_taskStress_con_0_b.2345
.cls_taskStress_con_0_b.2346: 
	lw s9, 16080(sp)
	bge t2, s9, .cls_taskStress_con_0_b.2348
.cls_taskStress_con_0_b.2349: 
	bne t2, a4, .cls_taskStress_con_0_b.2351
.cls_taskStress_con_0_b.2352: 
	lw s9, 16036(sp)
	bne s9, s4, .cls_taskStress_con_0_b.2351
	j .cls_taskStress_con_0_b.2355
.cls_taskStress_con_0_b.2342: 
	bne s11, s7, .cls_taskStress_con_0_b.2344
	j .cls_taskStress_con_0_b.2343
.cls_taskStress_con_0_b.2344: 
	lw s10, 16056(sp)
	lw s9, 0(sp)
	beq s9, s10, .cls_taskStress_con_0_b.2347
	j .cls_taskStress_con_0_b.2343
.cls_taskStress_con_0_b.2345: 
	lw s9, 16092(sp)
	bne s9, s7, .cls_taskStress_con_0_b.2348
	j .cls_taskStress_con_0_b.2346
.cls_taskStress_con_0_b.2347: 
	lw s9, 16072(sp)
	bge t2, s9, .cls_taskStress_con_0_b.2345
	j .cls_taskStress_con_0_b.2343
.cls_taskStress_con_0_b.2348: 
	bge a6, a6, .cls_taskStress_con_0_b.2350
	j .cls_taskStress_con_0_b.2349
.cls_taskStress_con_0_b.2350: 
	blt a0, t1, .cls_taskStress_con_0_b.2353
	j .cls_taskStress_con_0_b.2349
.cls_taskStress_con_0_b.2351: 
	bne s8, s4, .cls_taskStress_con_0_b.2354
.cls_taskStress_con_0_b.2355: 
	lw s9, 16084(sp)
	blt a3, s9, .cls_taskStress_con_0_b.2354
.cls_taskStress_con_0_b.2358: 
	lw s9, 16072(sp)
	bne s9, s8, .cls_taskStress_con_0_b.2354
	j .cls_taskStress_con_0_b.2357
.cls_taskStress_con_0_b.2353: 
	lw s9, 16040(sp)
	blt s9, t1, .cls_taskStress_con_0_b.2351
	j .cls_taskStress_con_0_b.2349
.cls_taskStress_con_0_b.2354: 
	lw s9, 16068(sp)
	bge s9, s6, .cls_taskStress_con_0_b.2356
.cls_taskStress_con_0_b.2357: 
	blt s4, s4, .cls_taskStress_con_0_b.2359
.cls_taskStress_con_0_b.2360: 
	lw s9, 16084(sp)
	blt a2, s9, .cls_taskStress_con_0_b.2361
.cls_taskStress_con_0_b.2362: 
	blt ra, s2, .cls_taskStress_con_0_b.2361
	j .cls_taskStress_con_0_b.2364
.cls_taskStress_con_0_b.2356: 
	lw s9, 16052(sp)
	beq t1, s9, .cls_taskStress_con_0_b.2359
	j .cls_taskStress_con_0_b.2357
.cls_taskStress_con_0_b.2359: 
	lw s9, 16016(sp)
	bne s9, a5, .cls_taskStress_con_0_b.2361
	j .cls_taskStress_con_0_b.2360
.cls_taskStress_con_0_b.2361: 
	lw s9, 16068(sp)
	blt s9, s7, .cls_taskStress_con_0_b.2363
.cls_taskStress_con_0_b.2364: 
	lw s9, 16064(sp)
	bge s9, s11, .cls_taskStress_con_0_b.2363
	j .cls_taskStress_con_0_b.2366
.cls_taskStress_con_0_b.2363: 
	lw s10, 16016(sp)
	lw s9, 16040(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2365
.cls_taskStress_con_0_b.2366: 
	beq t6, s8, .cls_taskStress_con_0_b.2367
.cls_taskStress_con_0_b.2368: 
	lw s9, 16008(sp)
	bne t0, s9, .cls_taskStress_con_0_b.2369
.cls_taskStress_con_0_b.2370: 
	bne t0, a7, .cls_taskStress_con_0_b.2369
.cls_taskStress_con_0_b.2373: 
	beq t1, t3, .cls_taskStress_con_0_b.2369
	j .cls_taskStress_con_0_b.2372
.cls_taskStress_con_0_b.2365: 
	lw s9, 16056(sp)
	bne s9, a3, .cls_taskStress_con_0_b.2367
	j .cls_taskStress_con_0_b.2366
.cls_taskStress_con_0_b.2367: 
	blt s11, a4, .cls_taskStress_con_0_b.2369
	j .cls_taskStress_con_0_b.2368
.cls_taskStress_con_0_b.2369: 
	lw s10, 16056(sp)
	lw s9, 4(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2371
.cls_taskStress_con_0_b.2372: 
	lw s9, 16040(sp)
	blt s9, a0, .cls_taskStress_con_0_b.2374
.cls_taskStress_con_0_b.2375: 
	lw s9, 16028(sp)
	bge a6, s9, .cls_taskStress_con_0_b.2377
.cls_taskStress_con_0_b.2378: 
	blt s0, s0, .cls_taskStress_con_0_b.2377
.cls_taskStress_con_0_b.2382: 
	lw s9, 16068(sp)
	bge s9, ra, .cls_taskStress_con_0_b.2377
	j .cls_taskStress_con_0_b.2381
.cls_taskStress_con_0_b.2371: 
	bge s1, a6, .cls_taskStress_con_0_b.2374
	j .cls_taskStress_con_0_b.2372
.cls_taskStress_con_0_b.2374: 
	bge s2, s7, .cls_taskStress_con_0_b.2376
	j .cls_taskStress_con_0_b.2375
.cls_taskStress_con_0_b.2376: 
	bne t2, s2, .cls_taskStress_con_0_b.2379
	j .cls_taskStress_con_0_b.2375
.cls_taskStress_con_0_b.2377: 
	lw s9, 16092(sp)
	blt s0, s9, .cls_taskStress_con_0_b.2380
.cls_taskStress_con_0_b.2381: 
	lw s9, 16056(sp)
	lw s10, 16084(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2384
.cls_taskStress_con_0_b.2385: 
	bge t5, t4, .cls_taskStress_con_0_b.2384
.cls_taskStress_con_0_b.2388: 
	bne ra, a1, .cls_taskStress_con_0_b.2384
.cls_taskStress_con_0_b.2391: 
	bge s5, s8, .cls_taskStress_con_0_b.2384
.cls_taskStress_con_0_b.2395: 
	bne a7, s11, .cls_taskStress_con_0_b.2384
.cls_taskStress_con_0_b.2399: 
	lw s9, 16060(sp)
	bge a2, s9, .cls_taskStress_con_0_b.2384
.cls_taskStress_con_0_b.2402: 
	lw s9, 0(sp)
	blt s9, t3, .cls_taskStress_con_0_b.2384
	j .cls_taskStress_con_0_b.2387
.cls_taskStress_con_0_b.2379: 
	lw s9, 16016(sp)
	lw s10, 16032(sp)
	blt s9, s10, .cls_taskStress_con_0_b.2377
	j .cls_taskStress_con_0_b.2375
.cls_taskStress_con_0_b.2380: 
	lw s9, 16008(sp)
	bne s9, a0, .cls_taskStress_con_0_b.2383
	j .cls_taskStress_con_0_b.2381
.cls_taskStress_con_0_b.2383: 
	blt a5, s4, .cls_taskStress_con_0_b.2384
	j .cls_taskStress_con_0_b.2381
.cls_taskStress_con_0_b.2384: 
	blt t6, s1, .cls_taskStress_con_0_b.2386
.cls_taskStress_con_0_b.2387: 
	blt t5, ra, .cls_taskStress_con_0_b.2386
	j .cls_taskStress_con_0_b.2390
.cls_taskStress_con_0_b.2386: 
	bge s5, a6, .cls_taskStress_con_0_b.2389
.cls_taskStress_con_0_b.2390: 
	bne s1, t4, .cls_taskStress_con_0_b.2389
.cls_taskStress_con_0_b.2394: 
	lw s9, 16008(sp)
	bge s8, s9, .cls_taskStress_con_0_b.2389
.cls_taskStress_con_0_b.2398: 
	bge a3, a3, .cls_taskStress_con_0_b.2389
	j .cls_taskStress_con_0_b.2393
.cls_taskStress_con_0_b.2389: 
	lw s9, 16048(sp)
	bne s9, t2, .cls_taskStress_con_0_b.2392
.cls_taskStress_con_0_b.2393: 
	bge t5, t6, .cls_taskStress_con_0_b.2392
	j .cls_taskStress_con_0_b.2397
.cls_taskStress_con_0_b.2392: 
	blt s5, s7, .cls_taskStress_con_0_b.2396
.cls_taskStress_con_0_b.2397: 
	lw s10, 16032(sp)
	lw s9, 4(sp)
	beq s10, s9, .cls_taskStress_con_0_b.2396
	j .cls_taskStress_con_0_b.2401
.cls_taskStress_con_0_b.2396: 
	bge t6, t2, .cls_taskStress_con_0_b.2400
.cls_taskStress_con_0_b.2401: 
	bge s5, a4, .cls_taskStress_con_0_b.2400
	j .cls_taskStress_con_0_b.2404
.cls_taskStress_con_0_b.2400: 
	lw s9, 16044(sp)
	blt s9, t4, .cls_taskStress_con_0_b.2403
.cls_taskStress_con_0_b.2404: 
	bge t2, t4, .cls_taskStress_con_0_b.2405
.cls_taskStress_con_0_b.2406: 
	bne t5, s0, .cls_taskStress_con_0_b.2407
.cls_taskStress_con_0_b.2408: 
	lw s9, 16064(sp)
	blt a5, s9, .cls_taskStress_con_0_b.2409
.cls_taskStress_con_0_b.2410: 
	bge a2, a4, .cls_taskStress_con_0_b.2409
.cls_taskStress_con_0_b.2413: 
	lw s10, 16064(sp)
	lw s9, 16080(sp)
	blt s10, s9, .cls_taskStress_con_0_b.2409
.cls_taskStress_con_0_b.2416: 
	lw s9, 16088(sp)
	blt s9, s3, .cls_taskStress_con_0_b.2409
.cls_taskStress_con_0_b.2419: 
	lw s9, 0(sp)
	bge t1, s9, .cls_taskStress_con_0_b.2409
.cls_taskStress_con_0_b.2420: 
	lw s9, 16088(sp)
	bge s9, s0, .cls_taskStress_con_0_b.2409
.cls_taskStress_con_0_b.2421: 
	lw s9, 16064(sp)
	blt s9, s3, .cls_taskStress_con_0_b.2409
.cls_taskStress_con_0_b.2422: 
	lw s9, 16040(sp)
	blt s9, t2, .cls_taskStress_con_0_b.2409
	j .cls_taskStress_con_0_b.2412
.cls_taskStress_con_0_b.2403: 
	blt a3, t5, .cls_taskStress_con_0_b.2405
	j .cls_taskStress_con_0_b.2404
.cls_taskStress_con_0_b.2405: 
	lw s9, 0(sp)
	blt s9, a7, .cls_taskStress_con_0_b.2407
	j .cls_taskStress_con_0_b.2406
.cls_taskStress_con_0_b.2407: 
	beq a1, t3, .cls_taskStress_con_0_b.2409
	j .cls_taskStress_con_0_b.2408
.cls_taskStress_con_0_b.2409: 
	beq t6, t0, .cls_taskStress_con_0_b.2411
.cls_taskStress_con_0_b.2412: 
	bge a0, a5, .cls_taskStress_con_0_b.2411
	j .cls_taskStress_con_0_b.2415
.cls_taskStress_con_0_b.2411: 
	lw s9, 16048(sp)
	lw s10, 16080(sp)
	bge s10, s9, .cls_taskStress_con_0_b.2414
.cls_taskStress_con_0_b.2415: 
	blt s1, s7, .cls_taskStress_con_0_b.2414
	j .cls_taskStress_con_0_b.2418
.cls_taskStress_con_0_b.2414: 
	lw s9, 16088(sp)
	bge s9, a2, .cls_taskStress_con_0_b.2417
.cls_taskStress_con_0_b.2418: 
	lw s9, 16004(sp)
	addi s9, s9, 1
	sw s9, 15940(sp)
	lw s9, 15940(sp)
	sw s9, 15996(sp)
	j .cls_taskStress_con_0_b.1816
.cls_taskStress_con_0_b.2417: 
	lw s9, 60(sp)
	lw s10, 16004(sp)
	sw s10, 0(s9)
	lw s9, 16004(sp)
	addi s9, s9, 1
	sw s9, 15928(sp)
	lw s9, 15928(sp)
	sw s9, 16004(sp)
	j .cls_taskStress_con_0_b.2118
	.size	cls_taskStress_con_0, .-cls_taskStress_con_0

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
	li a0, 0
	li t2, 65536
.cls_taskSSA_main_b.6: 
	blt a0, a1, .cls_taskSSA_main_b.7
.cls_taskSSA_main_b.8: 
	add t0, t0, t2
	addi a0, t0, -300
	addi sp, sp, 0
	ret
.cls_taskSSA_main_b.2: 
	addi t1, t2, 1
	bne t1, zero, .cls_taskSSA_main_b.5
.cls_taskSSA_main_b.4: 
	mv t1, t0
.cls_taskSSA_main_b.5: 
	addi t2, t2, 1
	mv t0, t1
	j .cls_taskSSA_main_b.1
.cls_taskSSA_main_b.7: 
	addi t1, a0, 1
	bne t1, zero, .cls_taskSSA_main_b.9
.cls_taskSSA_main_b.10: 
	addi a0, a0, 1
	j .cls_taskSSA_main_b.6
.cls_taskSSA_main_b.9: 
	mv t2, t1
	j .cls_taskSSA_main_b.10
	.size	cls_taskSSA_main, .-cls_taskSSA_main

	.globl	cls_taskNTT_KSM
	.p2align	1
	.type	cls_taskNTT_KSM,@function
cls_taskNTT_KSM:
.cls_taskNTT_KSM_b.0: 
	addi sp, sp, 0
	addi t1, a0, 4
	addi t0, a0, 4
	lw t2, 0(t0)
	lw a3, 0(t1)
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
	rem t1, a1, a3
	li t0, 0
.cls_taskNTT_KSM_b.7: 
	bne a1, zero, .cls_taskNTT_KSM_b.9
.cls_taskNTT_KSM_b.10: 
	mv a1, t0
	j .cls_taskNTT_KSM_b.1
.cls_taskNTT_KSM_b.4: 
	rem t0, a0, t2
	li a0, 0
	mv t1, a1
.cls_taskNTT_KSM_b.6: 
	bne t1, zero, .cls_taskNTT_KSM_b.8
	j .cls_taskNTT_KSM_b.5
.cls_taskNTT_KSM_b.8: 
	andi a4, t1, 1
	bne a4, zero, .cls_taskNTT_KSM_b.11
.cls_taskNTT_KSM_b.12: 
	srai t1, t1, 1
	slli t0, t0, 1
	rem t0, t0, t2
	j .cls_taskNTT_KSM_b.6
.cls_taskNTT_KSM_b.9: 
	andi a4, a1, 1
	bne a4, zero, .cls_taskNTT_KSM_b.13
.cls_taskNTT_KSM_b.14: 
	srai a1, a1, 1
	slli t1, t1, 1
	rem t1, t1, a3
	j .cls_taskNTT_KSM_b.7
.cls_taskNTT_KSM_b.11: 
	add a0, a0, t0
	rem a0, a0, t2
	j .cls_taskNTT_KSM_b.12
.cls_taskNTT_KSM_b.13: 
	add t0, t0, t1
	rem t0, t0, a3
	j .cls_taskNTT_KSM_b.14
	.size	cls_taskNTT_KSM, .-cls_taskNTT_KSM

	.globl	cls_taskNTT_main
	.p2align	1
	.type	cls_taskNTT_main,@function
cls_taskNTT_main:
.cls_taskNTT_main_b.0: 
	addi sp, sp, -96
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
	mv s9, a0
	mv t0, s9
	addi s0, t0, 16
	call g_getInt
	sw a0, 0(s0)
	mv t0, s9
	addi s0, t0, 24
	call g_getInt
	sw a0, 0(s0)
	mv t0, s9
	addi t0, t0, 8
	lw s2, 0(t0)
	mv t0, s9
	addi t0, t0, 16
	lw s1, 0(t0)
	li s0, 0
.cls_taskNTT_main_b.1: 
	bge s1, s0, .cls_taskNTT_main_b.2
.cls_taskNTT_main_b.3: 
	mv t0, s9
	addi t0, t0, 12
	lw s3, 0(t0)
	mv t0, s9
	addi t0, t0, 24
	lw s2, 0(t0)
	li s0, 0
.cls_taskNTT_main_b.4: 
	bge s2, s0, .cls_taskNTT_main_b.5
.cls_taskNTT_main_b.6: 
	mv t0, s9
	addi t1, t0, 20
	li t0, 1
	sw t0, 0(t1)
	mv t0, s9
	addi t1, t0, 20
	mv t0, s9
	addi t2, t0, 20
	mv t0, s9
	addi a0, t0, 20
	mv t0, s9
	addi a1, t0, 16
	mv t0, s9
	addi t0, t0, 24
.cls_taskNTT_main_b.7: 
	lw a3, 0(a1)
	lw a2, 0(t0)
	add a3, a3, a2
	lw a2, 0(a0)
	bge a3, a2, .cls_taskNTT_main_b.8
.cls_taskNTT_main_b.9: 
	mv t0, s9
	addi t0, t0, 20
	lw s7, 0(t0)
	mv t0, s9
	addi t0, t0, 8
	lw s3, 0(t0)
	srai a0, s7, 1
	li t0, 0
	li t1, 0
.cls_taskNTT_main_b.10: 
	blt t1, s7, .cls_taskNTT_main_b.11
.cls_taskNTT_main_b.12: 
	mv t0, s9
	addi a5, t0, 4
	mv t0, s9
	addi a4, t0, 4
	mv t0, s9
	addi a3, t0, 4
	mv t0, s9
	addi a2, t0, 4
	mv t0, s9
	addi a1, t0, 4
	mv t0, s9
	addi a0, t0, 4
	mv t0, s9
	addi t2, t0, 4
	mv t0, s9
	addi t1, t0, 4
	lw t0, 0(a3)
	sw t0, 92(sp)
	lw s11, 0(a2)
	lw s10, 0(a1)
	lw s6, 0(a0)
	lw s4, 0(a4)
	lw t0, 0(a5)
	addi s1, t0, -1
	lw t0, 0(t2)
	sw t0, 80(sp)
	lw t0, 0(t1)
	sw t0, 60(sp)
	li s2, 1
.cls_taskNTT_main_b.15: 
	blt s2, s7, .cls_taskNTT_main_b.17
.cls_taskNTT_main_b.18: 
	mv t0, s9
	addi t0, t0, 20
	lw s8, 0(t0)
	mv t0, s9
	addi t0, t0, 12
	lw s3, 0(t0)
	srai t2, s8, 1
	li a0, 0
	li t0, 0
.cls_taskNTT_main_b.22: 
	blt a0, s8, .cls_taskNTT_main_b.25
.cls_taskNTT_main_b.26: 
	mv t0, s9
	addi a3, t0, 4
	mv t0, s9
	addi a2, t0, 4
	mv t0, s9
	addi a1, t0, 4
	mv t0, s9
	addi a0, t0, 4
	mv t0, s9
	addi t2, t0, 4
	mv t0, s9
	addi t1, t0, 4
	lw s7, 0(a2)
	lw t0, 0(a1)
	sw t0, 68(sp)
	lw t0, 0(a0)
	sw t0, 76(sp)
	lw t0, 0(t2)
	sw t0, 88(sp)
	lw s2, 0(t1)
	lw t0, 0(a3)
	addi s10, t0, -1
	mv t0, s9
	addi t1, t0, 4
	mv t0, s9
	addi t0, t0, 4
	lw s11, 0(t0)
	lw s5, 0(t1)
	li s4, 1
.cls_taskNTT_main_b.32: 
	blt s4, s8, .cls_taskNTT_main_b.37
.cls_taskNTT_main_b.38: 
	mv t0, s9
	addi t0, t0, 8
	lw a1, 0(t0)
	mv t0, s9
	addi t0, t0, 8
	lw a2, 0(t0)
	mv t0, s9
	addi t0, t0, 12
	lw a3, 0(t0)
	mv t0, s9
	addi t0, t0, 4
	lw a4, 0(t0)
	mv t0, s9
	addi t0, t0, 20
	lw a5, 0(t0)
	li a0, 0
.cls_taskNTT_main_b.43: 
	bge a5, a0, .cls_taskNTT_main_b.48
.cls_taskNTT_main_b.49: 
	mv t0, s9
	addi t0, t0, 20
	lw s6, 0(t0)
	mv t0, s9
	addi t0, t0, 8
	lw s3, 0(t0)
	srai t1, s6, 1
	li t0, 0
	li a0, 0
.cls_taskNTT_main_b.55: 
	blt a0, s6, .cls_taskNTT_main_b.63
.cls_taskNTT_main_b.64: 
	mv t0, s9
	addi a5, t0, 4
	mv t0, s9
	addi a4, t0, 4
	mv t0, s9
	addi a3, t0, 4
	mv t0, s9
	addi a2, t0, 4
	mv t0, s9
	addi a1, t0, 4
	mv t0, s9
	addi a0, t0, 4
	mv t0, s9
	addi t2, t0, 4
	mv t0, s9
	addi t1, t0, 4
	lw t0, 0(a3)
	sw t0, 64(sp)
	lw t0, 0(a2)
	sw t0, 72(sp)
	lw t0, 0(a1)
	sw t0, 84(sp)
	lw s8, 0(a0)
	lw s5, 0(a4)
	lw t0, 0(a5)
	addi s11, t0, -1
	lw s10, 0(t2)
	lw s4, 0(t1)
	li s2, 1
.cls_taskNTT_main_b.73: 
	blt s2, s6, .cls_taskNTT_main_b.79
.cls_taskNTT_main_b.80: 
	li t1, 1
	mv t0, s6
.cls_taskNTT_main_b.87: 
	blt t1, t0, .cls_taskNTT_main_b.92
.cls_taskNTT_main_b.93: 
	mv t0, s9
	addi t0, t0, 20
	lw s1, 0(t0)
	mv t0, s9
	addi t0, t0, 4
	lw t0, 0(t0)
	addi s0, t0, -2
	mv t0, s9
	addi t1, t0, 4
	mv t0, s9
	addi t0, t0, 4
	lw s3, 0(t1)
	lw s4, 0(t0)
	li s2, 1
.cls_taskNTT_main_b.100: 
	bne s0, zero, .cls_taskNTT_main_b.106
.cls_taskNTT_main_b.107: 
	mv t0, s9
	addi t0, t0, 8
	lw a1, 0(t0)
	mv t0, s9
	addi t0, t0, 8
	lw a2, 0(t0)
	mv t0, s9
	addi t0, t0, 4
	lw a4, 0(t0)
	mv t0, s9
	addi t0, t0, 20
	lw a3, 0(t0)
	li a0, 0
.cls_taskNTT_main_b.113: 
	blt a0, a3, .cls_taskNTT_main_b.116
.cls_taskNTT_main_b.117: 
	mv t0, s9
	addi t0, t0, 8
	lw s1, 0(t0)
	mv t0, s9
	addi t1, t0, 24
	mv t0, s9
	addi t0, t0, 16
	lw t1, 0(t1)
	lw t0, 0(t0)
	add s2, t1, t0
	li s0, 0
.cls_taskNTT_main_b.120: 
	bge s2, s0, .cls_taskNTT_main_b.125
.cls_taskNTT_main_b.126: 
	mv a0, zero
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
	addi sp, sp, 96
	ret
.cls_taskNTT_main_b.2: 
	slli t0, s0, 2
	add s3, s2, t0
	call g_getInt
	sw a0, 0(s3)
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
	lw a2, 0(t2)
	slli a2, a2, 1
	sw a2, 0(t1)
	j .cls_taskNTT_main_b.7
.cls_taskNTT_main_b.11: 
	blt t0, t1, .cls_taskNTT_main_b.13
.cls_taskNTT_main_b.14: 
	mv t2, a0
.cls_taskNTT_main_b.16: 
	xor t0, t0, t2
	bge t0, t2, .cls_taskNTT_main_b.19
.cls_taskNTT_main_b.20: 
	srai t2, t2, 1
	j .cls_taskNTT_main_b.16
.cls_taskNTT_main_b.13: 
	slli t2, t1, 2
	add t2, s3, t2
	lw a2, 0(t2)
	slli t2, t1, 2
	add a1, s3, t2
	slli t2, t0, 2
	add t2, s3, t2
	lw t2, 0(t2)
	sw t2, 0(a1)
	slli t2, t0, 2
	add t2, s3, t2
	sw a2, 0(t2)
	j .cls_taskNTT_main_b.14
.cls_taskNTT_main_b.17: 
	slli t0, s2, 1
	div t0, s1, t0
	mv s0, t0
	li s8, 3
	li a1, 1
.cls_taskNTT_main_b.21: 
	bne s0, zero, .cls_taskNTT_main_b.23
.cls_taskNTT_main_b.24: 
	slli a3, s2, 1
	li a0, 0
.cls_taskNTT_main_b.29: 
	blt a0, s7, .cls_taskNTT_main_b.34
.cls_taskNTT_main_b.35: 
	slli t0, s2, 1
	mv s2, t0
	j .cls_taskNTT_main_b.15
.cls_taskNTT_main_b.19: 
	addi t1, t1, 1
	j .cls_taskNTT_main_b.10
.cls_taskNTT_main_b.23: 
	andi t0, s0, 1
	bne t0, zero, .cls_taskNTT_main_b.27
.cls_taskNTT_main_b.28: 
	mv s5, a1
	j .cls_taskNTT_main_b.33
.cls_taskNTT_main_b.25: 
	blt t0, a0, .cls_taskNTT_main_b.30
.cls_taskNTT_main_b.31: 
	mv t1, t2
.cls_taskNTT_main_b.36: 
	xor t0, t0, t1
	bge t0, t1, .cls_taskNTT_main_b.40
.cls_taskNTT_main_b.41: 
	srai t1, t1, 1
	j .cls_taskNTT_main_b.36
.cls_taskNTT_main_b.27: 
	mv a0, s9
	mv a2, s8
	lw a3, 60(sp)
	call cls_taskNTT_mulmod
	mv s5, a0
.cls_taskNTT_main_b.33: 
	srai s0, s0, 1
	mv a0, s9
	mv a1, s8
	mv a2, s8
	lw a3, 80(sp)
	call cls_taskNTT_mulmod
	mv s8, a0
	mv a1, s5
	j .cls_taskNTT_main_b.21
.cls_taskNTT_main_b.30: 
	slli t1, a0, 2
	add t1, s3, t1
	lw a2, 0(t1)
	slli t1, a0, 2
	add a1, s3, t1
	slli t1, t0, 2
	add t1, s3, t1
	lw t1, 0(t1)
	sw t1, 0(a1)
	slli t1, t0, 2
	add t1, s3, t1
	sw a2, 0(t1)
	j .cls_taskNTT_main_b.31
.cls_taskNTT_main_b.34: 
	add a5, a0, s2
	add a4, s2, a0
	li t2, 1
	li a2, 0
.cls_taskNTT_main_b.39: 
	blt a2, s2, .cls_taskNTT_main_b.44
.cls_taskNTT_main_b.45: 
	add a0, a0, a3
	j .cls_taskNTT_main_b.29
.cls_taskNTT_main_b.37: 
	slli t0, s4, 1
	div t0, s10, t0
	mv s0, t0
	li s1, 3
	li a1, 1
.cls_taskNTT_main_b.42: 
	bne s0, zero, .cls_taskNTT_main_b.46
.cls_taskNTT_main_b.47: 
	slli a4, s4, 1
	li a3, 0
.cls_taskNTT_main_b.53: 
	blt a3, s8, .cls_taskNTT_main_b.59
.cls_taskNTT_main_b.60: 
	slli t0, s4, 1
	mv s4, t0
	j .cls_taskNTT_main_b.32
.cls_taskNTT_main_b.40: 
	addi a0, a0, 1
	j .cls_taskNTT_main_b.22
.cls_taskNTT_main_b.44: 
	add t0, a5, a2
	slli t0, t0, 2
	add t0, s3, t0
	lw t0, 0(t0)
	rem t1, t2, s4
	li a6, 0
.cls_taskNTT_main_b.50: 
	bne t0, zero, .cls_taskNTT_main_b.56
.cls_taskNTT_main_b.57: 
	add t0, a4, a2
	slli t0, t0, 2
	add a7, s3, t0
	add t0, a0, a2
	slli t0, t0, 2
	add t0, s3, t0
	lw t0, 0(t0)
	sub t1, t0, a6
	lw t0, 92(sp)
	add t0, t1, t0
	rem t0, t0, s11
	sw t0, 0(a7)
	add t0, a0, a2
	slli t0, t0, 2
	add t1, s3, t0
	add t0, a0, a2
	slli t0, t0, 2
	add t0, s3, t0
	lw t0, 0(t0)
	add t0, t0, a6
	rem t0, t0, s10
	sw t0, 0(t1)
	rem t0, t2, s6
	li t2, 0
	mv t1, a1
.cls_taskNTT_main_b.67: 
	bne t1, zero, .cls_taskNTT_main_b.74
.cls_taskNTT_main_b.75: 
	addi a2, a2, 1
	j .cls_taskNTT_main_b.39
.cls_taskNTT_main_b.46: 
	andi t0, s0, 1
	bne t0, zero, .cls_taskNTT_main_b.51
.cls_taskNTT_main_b.52: 
	mv s6, a1
	j .cls_taskNTT_main_b.58
.cls_taskNTT_main_b.48: 
	slli t0, a0, 2
	add a7, a1, t0
	slli t0, a0, 2
	add t0, a2, t0
	lw t2, 0(t0)
	slli t0, a0, 2
	add t0, a3, t0
	lw t1, 0(t0)
	rem t0, t2, a4
	li t2, 0
.cls_taskNTT_main_b.54: 
	bne t1, zero, .cls_taskNTT_main_b.61
.cls_taskNTT_main_b.62: 
	sw t2, 0(a7)
	addi a0, a0, 1
	j .cls_taskNTT_main_b.43
.cls_taskNTT_main_b.51: 
	mv a0, s9
	mv a2, s1
	mv a3, s11
	call cls_taskNTT_mulmod
	mv s6, a0
.cls_taskNTT_main_b.58: 
	srai s0, s0, 1
	mv a0, s9
	mv a1, s1
	mv a2, s1
	mv a3, s5
	call cls_taskNTT_mulmod
	mv s1, a0
	mv a1, s6
	j .cls_taskNTT_main_b.42
.cls_taskNTT_main_b.56: 
	andi a7, t0, 1
	bne a7, zero, .cls_taskNTT_main_b.65
.cls_taskNTT_main_b.66: 
	srai t0, t0, 1
	slli t1, t1, 1
	rem t1, t1, s4
	j .cls_taskNTT_main_b.50
.cls_taskNTT_main_b.59: 
	add a5, a3, s4
	add a2, s4, a3
	li a0, 0
	li t2, 1
.cls_taskNTT_main_b.68: 
	blt a0, s4, .cls_taskNTT_main_b.76
.cls_taskNTT_main_b.77: 
	add a3, a3, a4
	j .cls_taskNTT_main_b.53
.cls_taskNTT_main_b.61: 
	andi a6, t1, 1
	bne a6, zero, .cls_taskNTT_main_b.69
.cls_taskNTT_main_b.70: 
	srai t1, t1, 1
	slli t0, t0, 1
	rem t0, t0, a4
	j .cls_taskNTT_main_b.54
.cls_taskNTT_main_b.63: 
	blt t0, a0, .cls_taskNTT_main_b.71
.cls_taskNTT_main_b.72: 
	mv t2, t1
.cls_taskNTT_main_b.78: 
	xor t0, t0, t2
	bge t0, t2, .cls_taskNTT_main_b.84
.cls_taskNTT_main_b.85: 
	srai t2, t2, 1
	j .cls_taskNTT_main_b.78
.cls_taskNTT_main_b.65: 
	add a6, a6, t1
	rem a6, a6, s4
	j .cls_taskNTT_main_b.66
.cls_taskNTT_main_b.69: 
	add t2, t2, t0
	rem t2, t2, a4
	j .cls_taskNTT_main_b.70
.cls_taskNTT_main_b.71: 
	slli t2, a0, 2
	add t2, s3, t2
	lw a2, 0(t2)
	slli t2, a0, 2
	add a1, s3, t2
	slli t2, t0, 2
	add t2, s3, t2
	lw t2, 0(t2)
	sw t2, 0(a1)
	slli t2, t0, 2
	add t2, s3, t2
	sw a2, 0(t2)
	j .cls_taskNTT_main_b.72
.cls_taskNTT_main_b.74: 
	andi a6, t1, 1
	bne a6, zero, .cls_taskNTT_main_b.81
.cls_taskNTT_main_b.82: 
	srai t1, t1, 1
	slli t0, t0, 1
	rem t0, t0, s6
	j .cls_taskNTT_main_b.67
.cls_taskNTT_main_b.76: 
	add t0, a5, a0
	slli t0, t0, 2
	add t0, s3, t0
	lw t0, 0(t0)
	rem t1, t2, s7
	li a6, 0
.cls_taskNTT_main_b.83: 
	bne t0, zero, .cls_taskNTT_main_b.88
.cls_taskNTT_main_b.89: 
	add t0, a2, a0
	slli t0, t0, 2
	add t0, s3, t0
	add t1, a3, a0
	slli t1, t1, 2
	add t1, s3, t1
	lw t1, 0(t1)
	sub a7, t1, a6
	lw t1, 68(sp)
	add a7, a7, t1
	lw t1, 76(sp)
	rem t1, a7, t1
	sw t1, 0(t0)
	add t0, a3, a0
	slli t0, t0, 2
	add a7, s3, t0
	add t0, a3, a0
	slli t0, t0, 2
	add t0, s3, t0
	lw t0, 0(t0)
	add t1, t0, a6
	lw t0, 88(sp)
	rem t0, t1, t0
	sw t0, 0(a7)
	rem t0, t2, s2
	mv t1, a1
	li t2, 0
.cls_taskNTT_main_b.96: 
	bne t1, zero, .cls_taskNTT_main_b.101
.cls_taskNTT_main_b.102: 
	addi a0, a0, 1
	j .cls_taskNTT_main_b.68
.cls_taskNTT_main_b.79: 
	slli t0, s2, 1
	div t0, s11, t0
	li s1, 3
	mv s0, t0
	li a1, 1
.cls_taskNTT_main_b.86: 
	bne s0, zero, .cls_taskNTT_main_b.90
.cls_taskNTT_main_b.91: 
	slli a4, s2, 1
	li t2, 0
.cls_taskNTT_main_b.99: 
	blt t2, s6, .cls_taskNTT_main_b.104
.cls_taskNTT_main_b.105: 
	slli t0, s2, 1
	mv s2, t0
	j .cls_taskNTT_main_b.73
.cls_taskNTT_main_b.81: 
	add t2, t2, t0
	rem t2, t2, s6
	j .cls_taskNTT_main_b.82
.cls_taskNTT_main_b.84: 
	addi a0, a0, 1
	j .cls_taskNTT_main_b.55
.cls_taskNTT_main_b.88: 
	andi a7, t0, 1
	bne a7, zero, .cls_taskNTT_main_b.94
.cls_taskNTT_main_b.95: 
	srai t0, t0, 1
	slli t1, t1, 1
	rem t1, t1, s7
	j .cls_taskNTT_main_b.83
.cls_taskNTT_main_b.90: 
	andi t0, s0, 1
	bne t0, zero, .cls_taskNTT_main_b.97
.cls_taskNTT_main_b.98: 
	mv s7, a1
	j .cls_taskNTT_main_b.103
.cls_taskNTT_main_b.92: 
	addi t0, t0, -1
	slli t2, t1, 2
	add t2, s3, t2
	lw a1, 0(t2)
	slli t2, t1, 2
	add a0, s3, t2
	slli t2, t0, 2
	add t2, s3, t2
	lw t2, 0(t2)
	sw t2, 0(a0)
	slli t2, t0, 2
	add t2, s3, t2
	sw a1, 0(t2)
	addi t1, t1, 1
	j .cls_taskNTT_main_b.87
.cls_taskNTT_main_b.94: 
	add a6, a6, t1
	rem a6, a6, s7
	j .cls_taskNTT_main_b.95
.cls_taskNTT_main_b.97: 
	mv a0, s9
	mv a2, s1
	mv a3, s4
	call cls_taskNTT_mulmod
	mv s7, a0
.cls_taskNTT_main_b.103: 
	srai s0, s0, 1
	mv a0, s9
	mv a1, s1
	mv a2, s1
	mv a3, s10
	call cls_taskNTT_mulmod
	mv s1, a0
	mv a1, s7
	j .cls_taskNTT_main_b.86
.cls_taskNTT_main_b.101: 
	andi a6, t1, 1
	bne a6, zero, .cls_taskNTT_main_b.108
.cls_taskNTT_main_b.109: 
	srai t1, t1, 1
	slli t0, t0, 1
	rem t0, t0, s2
	j .cls_taskNTT_main_b.96
.cls_taskNTT_main_b.104: 
	add a5, t2, s2
	add a6, s2, t2
	li t0, 1
	li t1, 0
.cls_taskNTT_main_b.110: 
	blt t1, s2, .cls_taskNTT_main_b.114
.cls_taskNTT_main_b.115: 
	add t2, t2, a4
	j .cls_taskNTT_main_b.99
.cls_taskNTT_main_b.106: 
	andi t0, s0, 1
	bne t0, zero, .cls_taskNTT_main_b.111
.cls_taskNTT_main_b.112: 
	srai s0, s0, 1
	mv a0, s9
	mv a1, s1
	mv a2, s1
	mv a3, s3
	call cls_taskNTT_mulmod
	mv s1, a0
	j .cls_taskNTT_main_b.100
.cls_taskNTT_main_b.108: 
	add t2, t2, t0
	rem t2, t2, s2
	j .cls_taskNTT_main_b.109
.cls_taskNTT_main_b.111: 
	mv a0, s9
	mv a1, s2
	mv a2, s1
	mv a3, s4
	call cls_taskNTT_mulmod
	mv s2, a0
	j .cls_taskNTT_main_b.112
.cls_taskNTT_main_b.114: 
	add a0, a5, t1
	slli a0, a0, 2
	add a0, s3, a0
	lw a2, 0(a0)
	rem a3, t0, s5
	li a0, 0
.cls_taskNTT_main_b.118: 
	bne a2, zero, .cls_taskNTT_main_b.121
.cls_taskNTT_main_b.122: 
	add a2, a6, t1
	slli a2, a2, 2
	add a2, s3, a2
	add a3, t2, t1
	slli a3, a3, 2
	add a3, s3, a3
	lw a3, 0(a3)
	sub a7, a3, a0
	lw a3, 64(sp)
	add a7, a7, a3
	lw a3, 72(sp)
	rem a3, a7, a3
	sw a3, 0(a2)
	add a2, t2, t1
	slli a2, a2, 2
	add a3, s3, a2
	add a2, t2, t1
	slli a2, a2, 2
	add a2, s3, a2
	lw a2, 0(a2)
	add a2, a2, a0
	lw a0, 84(sp)
	rem a0, a2, a0
	sw a0, 0(a3)
	rem a2, t0, s8
	mv a0, a1
	li t0, 0
.cls_taskNTT_main_b.129: 
	bne a0, zero, .cls_taskNTT_main_b.132
.cls_taskNTT_main_b.133: 
	addi t1, t1, 1
	j .cls_taskNTT_main_b.110
.cls_taskNTT_main_b.116: 
	slli t0, a0, 2
	add a6, a1, t0
	slli t0, a0, 2
	add t0, a2, t0
	lw t0, 0(t0)
	rem t1, t0, a4
	li t0, 0
	mv t2, s2
.cls_taskNTT_main_b.119: 
	bne t2, zero, .cls_taskNTT_main_b.123
.cls_taskNTT_main_b.124: 
	sw t0, 0(a6)
	addi a0, a0, 1
	j .cls_taskNTT_main_b.113
.cls_taskNTT_main_b.121: 
	andi a7, a2, 1
	bne a7, zero, .cls_taskNTT_main_b.127
.cls_taskNTT_main_b.128: 
	srai a2, a2, 1
	slli a3, a3, 1
	rem a3, a3, s5
	j .cls_taskNTT_main_b.118
.cls_taskNTT_main_b.123: 
	andi a5, t2, 1
	bne a5, zero, .cls_taskNTT_main_b.130
.cls_taskNTT_main_b.131: 
	srai t2, t2, 1
	slli t1, t1, 1
	rem t1, t1, a4
	j .cls_taskNTT_main_b.119
.cls_taskNTT_main_b.125: 
	slli t0, s0, 2
	add t0, s1, t0
	lw a0, 0(t0)
	call g_printlnInt
	addi s0, s0, 1
	j .cls_taskNTT_main_b.120
.cls_taskNTT_main_b.127: 
	add a0, a0, a3
	rem a0, a0, s5
	j .cls_taskNTT_main_b.128
.cls_taskNTT_main_b.130: 
	add t0, t0, t1
	rem t0, t0, a4
	j .cls_taskNTT_main_b.131
.cls_taskNTT_main_b.132: 
	andi a3, a0, 1
	bne a3, zero, .cls_taskNTT_main_b.134
.cls_taskNTT_main_b.135: 
	srai a0, a0, 1
	slli a2, a2, 1
	rem a2, a2, s8
	j .cls_taskNTT_main_b.129
.cls_taskNTT_main_b.134: 
	add t0, t0, a2
	rem t0, t0, s8
	j .cls_taskNTT_main_b.135
	.size	cls_taskNTT_main, .-cls_taskNTT_main

	.globl	cls_taskConst_con_0
	.p2align	1
	.type	cls_taskConst_con_0,@function
cls_taskConst_con_0:
.cls_taskConst_con_0_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_taskConst_con_0, .-cls_taskConst_con_0

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

	.type	.cls_taskStress_con_0.0,@object
	.section	.rodata
.cls_taskStress_con_0.0:
	.asciz	"wtf"
	.size	.cls_taskStress_con_0.0, 4

