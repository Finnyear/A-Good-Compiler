	.text
	.globl	fun_test
	.p2align	1
	.type	fun_test,@function
fun_test:
.fun_test_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	mv t2, a0
	mv a0, a1
	mv a1, a2
	mv t0, a5
	mv a5, a6
	mv a6, a7
	lw a7, 16(sp)
	lw t1, 20(sp)
	beq t2, a0, .fun_test_b.1
.fun_test_b.2: 
	add t0, t2, a0
	add a0, t0, t2
.fun_test_b.5: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.fun_test_b.1: 
	bne a0, a1, .fun_test_b.3
.fun_test_b.4: 
	bne a1, a3, .fun_test_b.3
.fun_test_b.6: 
	addi t0, t0, -1
	addi a5, a5, -2
	mv a2, a3
	mv a3, a4
	mv a4, t0
	sw t1, 0(sp)
	sw t2, 4(sp)
	call fun_test
	addi a0, a0, 2
	j .fun_test_b.5
.fun_test_b.3: 
	mv a2, a3
	mv a3, a4
	mv a4, t0
	sw t1, 0(sp)
	sw t2, 4(sp)
	call fun_test
	addi a0, a0, 1
	j .fun_test_b.5
	.size	fun_test, .-fun_test

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
	li t0, 65536
	li t1, 19260817
	li t0, 65536
	li t0, 65536
	li t0, 65536
	li t0, 65536
	li t0, 65536
	li s0, 0
	li t0, 65536
.main_b.1: 
	slli t0, t1, 13
	xor t1, t1, t0
	li t0, 1
	slli t0, t0, 31
	bge t1, zero, .main_b.2
.main_b.3: 
	li t2, 31
	addi a0, t2, -17
	li t2, 1
	sll t2, t2, a0
	xor t0, t1, t0
	srai t0, t0, 17
	or t0, t2, t0
	j .main_b.4
.main_b.2: 
	srai t0, t1, 17
.main_b.4: 
	xor t1, t1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	li t0, 1073741823
	and s7, t1, t0
	slli t0, s7, 13
	xor a0, s7, t0
	li t0, 1
	slli t2, t0, 31
	bge a0, zero, .main_b.5
.main_b.6: 
	li t0, 31
	addi t1, t0, -17
	li t0, 1
	sll t1, t0, t1
	xor t0, a0, t2
	srai t0, t0, 17
	or t0, t1, t0
	j .main_b.7
.main_b.5: 
	srai t0, a0, 17
.main_b.7: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	li t0, 1073741823
	and s1, t1, t0
	andi t1, s7, 255
	andi t0, s1, 255
	bne t1, t0, .main_b.8
.main_b.9: 
	addi a0, s0, -19
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
.main_b.8: 
	slli t0, s1, 13
	xor t1, s1, t0
	li t0, 1
	slli t0, t0, 31
	bge t1, zero, .main_b.10
.main_b.11: 
	li t2, 31
	addi a0, t2, -17
	li t2, 1
	sll t2, t2, a0
	xor t0, t1, t0
	srai t0, t0, 17
	or t0, t2, t0
	j .main_b.12
.main_b.10: 
	srai t0, t1, 17
.main_b.12: 
	xor t1, t1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	li t0, 1073741823
	and s2, t1, t0
	slli t0, s2, 13
	xor t1, s2, t0
	li t0, 1
	slli t0, t0, 31
	bge t1, zero, .main_b.13
.main_b.14: 
	li t2, 31
	addi a0, t2, -17
	li t2, 1
	sll t2, t2, a0
	xor t0, t1, t0
	srai t0, t0, 17
	or t0, t2, t0
	j .main_b.15
.main_b.13: 
	srai t0, t1, 17
.main_b.15: 
	xor t1, t1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	li t0, 1073741823
	and s5, t1, t0
	slli t0, s5, 13
	xor t1, s5, t0
	li t0, 1
	slli t0, t0, 31
	bge t1, zero, .main_b.16
.main_b.17: 
	li t2, 31
	addi a0, t2, -17
	li t2, 1
	sll t2, t2, a0
	xor t0, t1, t0
	srai t0, t0, 17
	or t0, t2, t0
	j .main_b.18
.main_b.16: 
	srai t0, t1, 17
.main_b.18: 
	xor t1, t1, t0
	slli t0, t1, 5
	xor t1, t1, t0
	li t0, 1073741823
	and s3, t1, t0
	slli t0, s3, 13
	xor a0, s3, t0
	li t0, 1
	slli t2, t0, 31
	bge a0, zero, .main_b.19
.main_b.20: 
	li t0, 31
	addi t1, t0, -17
	li t0, 1
	sll t1, t0, t1
	xor t0, a0, t2
	srai t0, t0, 17
	or t0, t1, t0
	j .main_b.21
.main_b.19: 
	srai t0, a0, 17
.main_b.21: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	li t0, 1073741823
	and s6, t1, t0
	slli t0, s6, 13
	xor a0, s6, t0
	li t0, 1
	slli t2, t0, 31
	bge a0, zero, .main_b.22
.main_b.23: 
	li t0, 31
	addi t1, t0, -17
	li t0, 1
	sll t1, t0, t1
	xor t0, a0, t2
	srai t0, t0, 17
	or t0, t1, t0
	j .main_b.24
.main_b.22: 
	srai t0, a0, 17
.main_b.24: 
	xor t1, a0, t0
	slli t0, t1, 5
	xor t1, t1, t0
	li t0, 1073741823
	and s4, t1, t0
	andi a0, s2, 3
	srai a1, s2, 28
	andi a2, s5, 1
	srai a3, s5, 29
	srai a4, s3, 25
	andi a5, s3, 31
	srai a6, s6, 15
	li t1, 32767
	and a7, s6, t1
	srai t0, s4, 15
	and t1, s4, t1
	sw t0, 0(sp)
	sw t1, 4(sp)
	call fun_test
	xor t2, s0, a0
.main_b.25: 
	mv t0, s2
	mv t1, s4
	mv t0, s3
	mv t0, s4
	mv t0, s7
	mv t0, s6
	mv t0, s5
	mv s0, t2
	mv t0, s1
	j .main_b.1
	.size	main, .-main

