	.text
	.globl	fun_add16
	.p2align	1
	.type	fun_add16,@function
fun_add16:
.fun_add16_b.0: 
	addi sp, sp, 0
	addi a0, a0, 16
	addi sp, sp, 0
	ret
	.size	fun_add16, .-fun_add16

	.globl	fun_add32
	.p2align	1
	.type	fun_add32,@function
fun_add32:
.fun_add32_b.0: 
	addi sp, sp, 0
	addi a0, a0, 32
	addi sp, sp, 0
	ret
	.size	fun_add32, .-fun_add32

	.globl	fun_wpppp
	.p2align	1
	.type	fun_wpppp,@function
fun_wpppp:
.fun_wpppp_b.0: 
	addi sp, sp, 0
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi a0, t0, 1
	lui t0, %hi(w)
	sw a0, %lo(w)(t0)
	addi sp, sp, 0
	ret
	.size	fun_wpppp, .-fun_wpppp

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	lui t0, %hi(w)
	sw zero, %lo(w)(t0)
	li t1, 1
	lui t0, %hi(N)
	sw t1, %lo(N)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	fun_add8
	.p2align	1
	.type	fun_add8,@function
fun_add8:
.fun_add8_b.0: 
	addi sp, sp, 0
	addi a0, a0, 8
	addi sp, sp, 0
	ret
	.size	fun_add8, .-fun_add8

	.globl	fun_add64
	.p2align	1
	.type	fun_add64,@function
fun_add64:
.fun_add64_b.0: 
	addi sp, sp, 0
	addi a0, a0, 64
	addi sp, sp, 0
	ret
	.size	fun_add64, .-fun_add64

	.globl	fun_add2048
	.p2align	1
	.type	fun_add2048,@function
fun_add2048:
.fun_add2048_b.0: 
	addi sp, sp, 0
	li t0, 2048
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add2048, .-fun_add2048

	.globl	fun_wP
	.p2align	1
	.type	fun_wP,@function
fun_wP:
.fun_wP_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	li t1, 65536
	li t0, 3
	li t2, 65536
	li a0, 65536
.fun_wP_b.1: 
	srai t1, t0, 1
	li a0, 2
.fun_wP_b.2: 
	blt a0, t1, .fun_wP_b.3
.fun_wP_b.4: 
	li t2, 1
.fun_wP_b.7: 
	blt zero, t0, .fun_wP_b.8
.fun_wP_b.9: 
	lui a1, %hi(N)
	lw a1, %lo(N)(a1)
	add a2, a1, t2
	lui a1, %hi(N)
	sw a2, %lo(N)(a1)
	add t0, t0, t2
.fun_wP_b.11: 
	addi t0, t0, 1
	j .fun_wP_b.1
.fun_wP_b.3: 
	rem t2, t0, a0
	beq t2, zero, .fun_wP_b.5
.fun_wP_b.6: 
	addi a0, a0, 1
	j .fun_wP_b.2
.fun_wP_b.5: 
	addi t0, t0, 1
	li t2, 0
	j .fun_wP_b.7
.fun_wP_b.8: 
	add a2, t0, t2
	li a1, 9
	rem a1, a2, a1
	beq a1, zero, .fun_wP_b.10
	j .fun_wP_b.9
.fun_wP_b.10: 
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(N)
	lw t0, %lo(N)(t0)
	add t1, t0, t1
	li t0, 2
	rem t0, t1, t0
	beq t0, zero, .fun_wP_b.12
.fun_wP_b.13: 
	call fun_block
	call fun_block
	call fun_block
	call fun_block
	call fun_wpppp
	call fun_wpppp
	call fun_bblock
	call fun_bblock
	j .fun_wP_b.14
.fun_wP_b.12: 
	lui t0, %hi(N)
	lw t0, %lo(N)(t0)
	li t1, 524288
	add t0, t0, t1
	sub t0, t0, t1
	addi a0, t0, -4
.fun_wP_b.14: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	fun_wP, .-fun_wP

	.globl	fun_add8192
	.p2align	1
	.type	fun_add8192,@function
fun_add8192:
.fun_add8192_b.0: 
	addi sp, sp, 0
	li t0, 8192
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add8192, .-fun_add8192

	.globl	fun_add2
	.p2align	1
	.type	fun_add2,@function
fun_add2:
.fun_add2_b.0: 
	addi sp, sp, 0
	addi a0, a0, 2
	addi sp, sp, 0
	ret
	.size	fun_add2, .-fun_add2

	.globl	fun_wpp
	.p2align	1
	.type	fun_wpp,@function
fun_wpp:
.fun_wpp_b.0: 
	addi sp, sp, 0
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi a0, t0, 1
	lui t0, %hi(w)
	sw a0, %lo(w)(t0)
	addi sp, sp, 0
	ret
	.size	fun_wpp, .-fun_wpp

	.globl	fun_add65536
	.p2align	1
	.type	fun_add65536,@function
fun_add65536:
.fun_add65536_b.0: 
	addi sp, sp, 0
	li t0, 65536
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add65536, .-fun_add65536

	.globl	fun_add512
	.p2align	1
	.type	fun_add512,@function
fun_add512:
.fun_add512_b.0: 
	addi sp, sp, 0
	addi a0, a0, 512
	addi sp, sp, 0
	ret
	.size	fun_add512, .-fun_add512

	.globl	fun_add1024
	.p2align	1
	.type	fun_add1024,@function
fun_add1024:
.fun_add1024_b.0: 
	addi sp, sp, 0
	addi a0, a0, 1024
	addi sp, sp, 0
	ret
	.size	fun_add1024, .-fun_add1024

	.globl	fun_add256
	.p2align	1
	.type	fun_add256,@function
fun_add256:
.fun_add256_b.0: 
	addi sp, sp, 0
	addi a0, a0, 256
	addi sp, sp, 0
	ret
	.size	fun_add256, .-fun_add256

	.globl	fun_add1
	.p2align	1
	.type	fun_add1,@function
fun_add1:
.fun_add1_b.0: 
	addi sp, sp, 0
	addi a0, a0, 1
	addi sp, sp, 0
	ret
	.size	fun_add1, .-fun_add1

	.globl	fun_bblock
	.p2align	1
	.type	fun_bblock,@function
fun_bblock:
.fun_bblock_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call fun_wpppp
	call fun_wpppp
	call fun_wpppp
	call fun_wpppp
	call fun_bblock
	call fun_wpppp
	call fun_wpppp
	call fun_bblock
	call fun_bblock
	call fun_wpppp
	call fun_wpppp
	call fun_bblock
	call fun_bblock
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	fun_bblock, .-fun_bblock

	.globl	fun_add4096
	.p2align	1
	.type	fun_add4096,@function
fun_add4096:
.fun_add4096_b.0: 
	addi sp, sp, 0
	li t0, 4096
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add4096, .-fun_add4096

	.globl	fun_add262144
	.p2align	1
	.type	fun_add262144,@function
fun_add262144:
.fun_add262144_b.0: 
	addi sp, sp, 0
	li t0, 262144
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add262144, .-fun_add262144

	.globl	fun_add16384
	.p2align	1
	.type	fun_add16384,@function
fun_add16384:
.fun_add16384_b.0: 
	addi sp, sp, 0
	li t0, 16384
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add16384, .-fun_add16384

	.globl	fun_wppp
	.p2align	1
	.type	fun_wppp,@function
fun_wppp:
.fun_wppp_b.0: 
	addi sp, sp, 0
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi a0, t0, 1
	lui t0, %hi(w)
	sw a0, %lo(w)(t0)
	addi sp, sp, 0
	ret
	.size	fun_wppp, .-fun_wppp

	.globl	fun_block
	.p2align	1
	.type	fun_block,@function
fun_block:
.fun_block_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call fun_block
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	fun_block, .-fun_block

	.globl	fun_add128
	.p2align	1
	.type	fun_add128,@function
fun_add128:
.fun_add128_b.0: 
	addi sp, sp, 0
	addi a0, a0, 128
	addi sp, sp, 0
	ret
	.size	fun_add128, .-fun_add128

	.globl	fun_add524288
	.p2align	1
	.type	fun_add524288,@function
fun_add524288:
.fun_add524288_b.0: 
	addi sp, sp, 0
	li t0, 524288
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add524288, .-fun_add524288

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	lui t0, %hi(w)
	sw zero, %lo(w)(t0)
	li t1, 1
	lui t0, %hi(N)
	sw t1, %lo(N)(t0)
	call fun_sanity_check
	addi a0, a0, -3
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	fun_add131072
	.p2align	1
	.type	fun_add131072,@function
fun_add131072:
.fun_add131072_b.0: 
	addi sp, sp, 0
	li t0, 131072
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add131072, .-fun_add131072

	.globl	fun_add4
	.p2align	1
	.type	fun_add4,@function
fun_add4:
.fun_add4_b.0: 
	addi sp, sp, 0
	addi a0, a0, 4
	addi sp, sp, 0
	ret
	.size	fun_add4, .-fun_add4

	.globl	fun_sanity_check
	.p2align	1
	.type	fun_sanity_check,@function
fun_sanity_check:
.fun_sanity_check_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	li t1, 65536
	li t2, 3
	li a0, 65536
	li t0, 65536
.fun_sanity_check_b.1: 
	srai t1, t2, 1
	li t0, 2
.fun_sanity_check_b.2: 
	blt t0, t1, .fun_sanity_check_b.3
.fun_sanity_check_b.4: 
	li a0, 1
.fun_sanity_check_b.7: 
	blt zero, t2, .fun_sanity_check_b.8
.fun_sanity_check_b.9: 
	lui a1, %hi(N)
	lw a1, %lo(N)(a1)
	add a2, a1, a0
	lui a1, %hi(N)
	sw a2, %lo(N)(a1)
	add t2, t2, a0
.fun_sanity_check_b.11: 
	addi t2, t2, 1
	j .fun_sanity_check_b.1
.fun_sanity_check_b.3: 
	rem a0, t2, t0
	beq a0, zero, .fun_sanity_check_b.5
.fun_sanity_check_b.6: 
	addi t0, t0, 1
	j .fun_sanity_check_b.2
.fun_sanity_check_b.5: 
	addi t2, t2, 1
	li a0, 0
	j .fun_sanity_check_b.7
.fun_sanity_check_b.8: 
	add a2, t2, a0
	li a1, 9
	rem a1, a2, a1
	beq a1, zero, .fun_sanity_check_b.10
	j .fun_sanity_check_b.9
.fun_sanity_check_b.10: 
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(w)
	lw t0, %lo(w)(t0)
	addi t1, t0, 1
	lui t0, %hi(w)
	sw t1, %lo(w)(t0)
	lui t0, %hi(N)
	lw t0, %lo(N)(t0)
	add t1, t0, t1
	li t0, 2
	rem t0, t1, t0
	beq t0, zero, .fun_sanity_check_b.12
.fun_sanity_check_b.13: 
	call fun_block
	call fun_block
	call fun_block
	call fun_block
	call fun_wpppp
	call fun_wpppp
	call fun_bblock
	call fun_wpppp
	call fun_wpppp
	call fun_bblock
	call fun_bblock
	j .fun_sanity_check_b.14
.fun_sanity_check_b.12: 
	lui t0, %hi(N)
	lw t0, %lo(N)(t0)
	li t1, 524288
	add t0, t0, t1
	sub t0, t0, t1
	addi a0, t0, -4
.fun_sanity_check_b.14: 
	addi a0, a0, 1
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	fun_sanity_check, .-fun_sanity_check

	.globl	fun_add32768
	.p2align	1
	.type	fun_add32768,@function
fun_add32768:
.fun_add32768_b.0: 
	addi sp, sp, 0
	li t0, 32768
	add a0, a0, t0
	addi sp, sp, 0
	ret
	.size	fun_add32768, .-fun_add32768

	.type	w,@object
	.section	.bss
	.globl	w
	.p2align	2
w:
.Lw$local:
	.word	0
	.size	w, 4

	.type	N,@object
	.section	.bss
	.globl	N
	.p2align	2
N:
.LN$local:
	.word	0
	.size	N, 4

