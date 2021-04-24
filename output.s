	.text
	.globl	fun_rng
	.p2align	1
	.type	fun_rng,@function
fun_rng:
.fun_rng_b.0: 
	addi sp, sp, 0
	lui t0, %hi(rng_seed)
	lw t1, %lo(rng_seed)(t0)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .fun_rng_b.1
.fun_rng_b.2: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .fun_rng_b.3
.fun_rng_b.1: 
	srai t0, t2, 17
.fun_rng_b.3: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	lui t0, %hi(rng_seed)
	sw t1, %lo(rng_seed)(t0)
	li t0, 1073741823
	and a0, t1, t0
	addi sp, sp, 0
	ret
	.size	fun_rng, .-fun_rng

	.globl	fun_unsigned_shr
	.p2align	1
	.type	fun_unsigned_shr,@function
fun_unsigned_shr:
.fun_unsigned_shr_b.0: 
	addi sp, sp, 0
	bge a0, zero, .fun_unsigned_shr_b.1
.fun_unsigned_shr_b.2: 
	li t0, 31
	sub t1, t0, a1
	li t0, 1
	sll t1, t0, t1
	li t0, -2147483648
	xor t0, a0, t0
	sra t0, t0, a1
	or a0, t1, t0
	j .fun_unsigned_shr_b.3
.fun_unsigned_shr_b.1: 
	sra a0, a0, a1
.fun_unsigned_shr_b.3: 
	addi sp, sp, 0
	ret
	.size	fun_unsigned_shr, .-fun_unsigned_shr

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
	li t1, 19260817
	lui t0, %hi(rng_seed)
	sw t1, %lo(rng_seed)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, 0
	li t1, 19260817
	lui t0, %hi(rng_seed)
	sw t1, %lo(rng_seed)(t0)
.main_b.1: 
	lui t0, %hi(rng_seed)
	lw t1, %lo(rng_seed)(t0)
	li t0, 100
	rem t0, t1, t0
	bne t0, zero, .main_b.2
.main_b.3: 
	lui t0, %hi(rng_seed)
	lw t1, %lo(rng_seed)(t0)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.4
.main_b.5: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.6
.main_b.2: 
	lui t0, %hi(rng_seed)
	lw t0, %lo(rng_seed)(t0)
	addi t1, t0, -1
	lui t0, %hi(rng_seed)
	sw t1, %lo(rng_seed)(t0)
	j .main_b.1
.main_b.4: 
	srai t0, t2, 17
.main_b.6: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	lui t0, %hi(rng_seed)
	sw t1, %lo(rng_seed)(t0)
	li t0, 1073741823
	and t0, t1, t0
	lui t0, %hi(rng_seed)
	lw t1, %lo(rng_seed)(t0)
	slli t0, t1, 13
	xor t2, t1, t0
	bge t2, zero, .main_b.7
.main_b.8: 
	li t0, -2147483648
	xor t0, t2, t0
	srai t1, t0, 17
	li t0, 16384
	or t0, t0, t1
	j .main_b.9
.main_b.7: 
	srai t0, t2, 17
.main_b.9: 
	xor t1, t2, t0
	slli t0, t1, 5
	xor t1, t1, t0
	lui t0, %hi(rng_seed)
	sw t1, %lo(rng_seed)(t0)
	li t0, 1073741823
	and t0, t1, t0
	andi t1, t0, 127
	li t0, 100000
	add t1, t1, t0
	li t0, 0
.main_b.10: 
	blt t0, t1, .main_b.11
.main_b.12: 
	mv a0, zero
	addi sp, sp, 0
	ret
.main_b.11: 
	addi t0, t0, 1
	j .main_b.10
	.size	main, .-main

	.type	rng_seed,@object
	.section	.bss
	.globl	rng_seed
	.p2align	2
rng_seed:
.Lrng_seed$local:
	.word	0
	.size	rng_seed, 4

