	.text
	.globl	fun_unsigned_shr
	.p2align	1
	.type	fun_unsigned_shr,@function
fun_unsigned_shr:
.fun_unsigned_shr_b.0: 
	addi sp, sp, 0
	li t0, 1
	slli t2, t0, 31
	bge a0, zero, .fun_unsigned_shr_b.1
.fun_unsigned_shr_b.2: 
	li t0, 31
	sub t1, t0, a1
	li t0, 1
	sll t1, t0, t1
	xor t0, a0, t2
	sra t0, t0, a1
	or a0, t1, t0
	j .fun_unsigned_shr_b.3
.fun_unsigned_shr_b.1: 
	sra a0, a0, a1
.fun_unsigned_shr_b.3: 
	addi sp, sp, 0
	ret
	.size	fun_unsigned_shr, .-fun_unsigned_shr

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -48
	sw s0, 16(sp)
	sw s1, 20(sp)
	sw s2, 24(sp)
	sw s3, 28(sp)
	sw s4, 32(sp)
	sw s5, 36(sp)
	sw s6, 40(sp)
	sw s7, 44(sp)
	sw ra, 12(sp)
	call __init
	li t0, 65536
	li a0, 19260817
	li t0, 65536
	li t0, 65536
	li t0, 65536
	li t0, 65536
	li t0, 65536
	li s1, 0
	li t0, 65536
.main_b.1: 
	call fun_rng
	mv s6, a0
	mv a0, s6
	call fun_rng
	mv s7, a0
	andi t1, s6, 255
	andi t0, s7, 255
	bne t1, t0, .main_b.2
.main_b.3: 
	addi a0, s1, -19
	lw s0, 16(sp)
	lw s1, 20(sp)
	lw s2, 24(sp)
	lw s3, 28(sp)
	lw s4, 32(sp)
	lw s5, 36(sp)
	lw s6, 40(sp)
	lw s7, 44(sp)
	lw ra, 12(sp)
	addi sp, sp, 48
	ret
.main_b.2: 
	mv a0, s7
	call fun_rng
	mv s5, a0
	mv a0, s5
	call fun_rng
	mv s4, a0
	mv a0, s4
	call fun_rng
	mv s3, a0
	mv a0, s3
	call fun_rng
	mv s0, a0
	mv a0, s0
	call fun_rng
	mv s2, a0
	andi a0, s5, 3
	srai a1, s5, 28
	andi a2, s4, 1
	srai a3, s4, 29
	srai a4, s3, 25
	andi a5, s3, 31
	srai a6, s0, 15
	li t0, 32767
	and a7, s0, t0
	srai t1, s2, 15
	and t0, s2, t0
	sw t1, 0(sp)
	sw t0, 4(sp)
	call fun_test
	xor t1, s1, a0
.main_b.4: 
	mv t0, s5
	mv a0, s2
	mv t0, s3
	mv t0, s2
	mv t0, s6
	mv t0, s0
	mv t0, s4
	mv s1, t1
	mv t0, s7
	j .main_b.1
	.size	main, .-main

	.globl	fun_test
	.p2align	1
	.type	fun_test,@function
fun_test:
.fun_test_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	mv t0, a0
	mv a0, a1
	mv a1, a2
	mv a2, a3
	mv a3, a4
	mv a4, a5
	mv a5, a6
	mv a6, a7
	lw a7, 16(sp)
	lw t1, 20(sp)
	beq t0, a0, .fun_test_b.1
.fun_test_b.2: 
	add t1, t0, a0
	add a0, t1, t0
.fun_test_b.5: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.fun_test_b.1: 
	bne a0, a1, .fun_test_b.3
.fun_test_b.4: 
	bne a1, a2, .fun_test_b.3
.fun_test_b.6: 
	addi a4, a4, -1
	addi a5, a5, -2
	sw t1, 0(sp)
	sw t0, 4(sp)
	call fun_test
	addi a0, a0, 2
	j .fun_test_b.5
.fun_test_b.3: 
	sw t1, 0(sp)
	sw t0, 4(sp)
	call fun_test
	addi a0, a0, 1
	j .fun_test_b.5
	.size	fun_test, .-fun_test

	.globl	fun_unsigned_shl
	.p2align	1
	.type	fun_unsigned_shl,@function
fun_unsigned_shl:
.fun_unsigned_shl_b.0: 
	addi sp, sp, 0
	sll a0, a0, a1
	addi sp, sp, 0
	ret
	.size	fun_unsigned_shl, .-fun_unsigned_shl

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	fun_rng
	.p2align	1
	.type	fun_rng,@function
fun_rng:
.fun_rng_b.0: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	mv s0, a0
	mv a0, s0
	li a1, 13
	call fun_unsigned_shl
	xor s0, s0, a0
	mv a0, s0
	li a1, 17
	call fun_unsigned_shr
	xor s0, s0, a0
	mv a0, s0
	li a1, 5
	call fun_unsigned_shl
	xor t1, s0, a0
	li t0, 1073741823
	and a0, t1, t0
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	fun_rng, .-fun_rng

