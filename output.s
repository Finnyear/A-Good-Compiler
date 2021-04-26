	.text
	.globl	fun_test
	.p2align	1
	.type	fun_test,@function
fun_test:
.fun_test_b.0: 
	addi sp, sp, 0
	li a0, 0
	li t0, 0
.fun_test_b.1: 
	li t1, 200
	blt t0, t1, .fun_test_b.2
.fun_test_b.3: 
	addi sp, sp, 0
	ret
.fun_test_b.2: 
	addi t0, t0, 1
	addi a0, a0, 1
	addi t0, t0, 1
	j .fun_test_b.1
	.size	fun_test, .-fun_test

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, 0
	li t1, 80
	lui t0, %hi(N)
	sw t1, %lo(N)(t0)
	li t2, 0
	li t0, 0
.main_b.1: 
	li t1, 200
	blt t0, t1, .main_b.2
.main_b.3: 
	li t0, 1
	li t1, 0
.main_b.4: 
	li a0, 100
	bge a0, t0, .main_b.5
.main_b.6: 
	li a0, 1
	bge t0, a0, .main_b.7
.main_b.8: 
	addi t0, t0, 1
	li a0, 1
.main_b.9: 
	li a1, 10
	bge a1, t0, .main_b.10
.main_b.11: 
	li t0, 10100
	beq t1, t0, .main_b.12
.main_b.13: 
	addi t2, t2, 1919
	li t1, 0
.main_b.15: 
	lui t0, %hi(N)
	lw t0, %lo(N)(t0)
	blt t1, t0, .main_b.17
.main_b.18: 
	li t0, 0
.main_b.21: 
	lui t1, %hi(N)
	lw t1, %lo(N)(t1)
	blt t0, t1, .main_b.25
.main_b.26: 
	li t0, 114514
	add t1, t2, t0
	li t0, 50997
	sub a0, t1, t0
	addi sp, sp, 0
	ret
.main_b.2: 
	addi t0, t0, 1
	addi t2, t2, 1
	addi t0, t0, 1
	j .main_b.1
.main_b.5: 
	add t1, t1, t0
	addi t0, t0, 1
	j .main_b.4
.main_b.7: 
	add t1, t1, t0
	addi t0, t0, -1
	j .main_b.6
.main_b.10: 
	mul a0, a0, t0
	addi t0, t0, 1
	j .main_b.9
.main_b.12: 
	li t0, 10100
	beq t1, t0, .main_b.14
	j .main_b.13
.main_b.14: 
	li t0, 10100
	beq t1, t0, .main_b.16
	j .main_b.13
.main_b.16: 
	li t0, 10100
	beq t1, t0, .main_b.19
	j .main_b.13
.main_b.17: 
	li t0, 0
.main_b.20: 
	lui a0, %hi(N)
	lw a0, %lo(N)(a0)
	blt t0, a0, .main_b.23
.main_b.24: 
	addi t1, t1, 1
	j .main_b.15
.main_b.19: 
	li t0, 10100
	beq t1, t0, .main_b.22
	j .main_b.13
.main_b.22: 
	li t0, 10100
	beq t1, t0, .main_b.27
	j .main_b.13
.main_b.23: 
	addi t0, t0, 1
	j .main_b.20
.main_b.25: 
	addi t0, t0, 1
	j .main_b.21
.main_b.27: 
	li t0, 10100
	beq t1, t0, .main_b.28
	j .main_b.13
.main_b.28: 
	li t0, 10100
	beq t1, t0, .main_b.29
	j .main_b.13
.main_b.29: 
	li t0, 10100
	beq t1, t0, .main_b.30
	j .main_b.13
.main_b.30: 
	li t0, 10100
	beq t1, t0, .main_b.31
	j .main_b.13
.main_b.31: 
	li t0, 10100
	beq t1, t0, .main_b.32
	j .main_b.13
.main_b.32: 
	li t0, 10100
	beq t1, t0, .main_b.33
	j .main_b.13
.main_b.33: 
	li t0, 10100
	beq t1, t0, .main_b.34
	j .main_b.13
.main_b.34: 
	li t0, 10100
	beq t1, t0, .main_b.35
	j .main_b.13
.main_b.35: 
	li t0, 10100
	beq t1, t0, .main_b.36
	j .main_b.13
.main_b.36: 
	li t0, 10100
	beq t1, t0, .main_b.37
	j .main_b.13
.main_b.37: 
	li t0, 10100
	beq t1, t0, .main_b.38
	j .main_b.13
.main_b.38: 
	li t0, 10100
	beq t1, t0, .main_b.39
	j .main_b.13
.main_b.39: 
	li t0, 10100
	beq t1, t0, .main_b.40
	j .main_b.13
.main_b.40: 
	li t0, 10100
	beq t1, t0, .main_b.41
	j .main_b.13
.main_b.41: 
	li t0, 10100
	beq t1, t0, .main_b.42
	j .main_b.13
.main_b.42: 
	li t0, 10100
	beq t1, t0, .main_b.43
	j .main_b.13
.main_b.43: 
	li t0, 10100
	beq t1, t0, .main_b.44
	j .main_b.13
.main_b.44: 
	li t0, 10100
	beq t1, t0, .main_b.45
	j .main_b.13
.main_b.45: 
	li t0, 10100
	beq t1, t0, .main_b.46
	j .main_b.13
.main_b.46: 
	li t0, 10100
	beq t1, t0, .main_b.47
	j .main_b.13
.main_b.47: 
	li t0, 10100
	beq t1, t0, .main_b.48
	j .main_b.13
.main_b.48: 
	li t0, 10100
	beq t1, t0, .main_b.49
	j .main_b.13
.main_b.49: 
	li t0, 10100
	beq t1, t0, .main_b.50
	j .main_b.13
.main_b.50: 
	li t0, 10100
	beq t1, t0, .main_b.51
	j .main_b.13
.main_b.51: 
	li t0, 10100
	beq t1, t0, .main_b.52
	j .main_b.13
.main_b.52: 
	li t0, 10100
	beq t1, t0, .main_b.53
	j .main_b.13
.main_b.53: 
	li t0, 3628800
	beq a0, t0, .main_b.54
	j .main_b.13
.main_b.54: 
	li t0, 10100
	beq t1, t0, .main_b.55
	j .main_b.13
.main_b.55: 
	li t0, 3628800
	beq a0, t0, .main_b.13
	j .main_b.13
	.size	main, .-main

	.globl	fun_naivedce
	.p2align	1
	.type	fun_naivedce,@function
fun_naivedce:
.fun_naivedce_b.0: 
	addi sp, sp, 0
	li t0, 0
	li t1, 1
.fun_naivedce_b.1: 
	li t2, 100
	bge t2, t1, .fun_naivedce_b.2
.fun_naivedce_b.3: 
	li t2, 1
	bge t1, t2, .fun_naivedce_b.4
.fun_naivedce_b.5: 
	addi t1, t1, 1
	li t2, 1
.fun_naivedce_b.6: 
	li a0, 10
	bge a0, t1, .fun_naivedce_b.7
.fun_naivedce_b.8: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.9
.fun_naivedce_b.10: 
	li a0, 1919
	addi sp, sp, 0
	ret
.fun_naivedce_b.2: 
	add t0, t0, t1
	addi t1, t1, 1
	j .fun_naivedce_b.1
.fun_naivedce_b.4: 
	add t0, t0, t1
	addi t1, t1, -1
	j .fun_naivedce_b.3
.fun_naivedce_b.7: 
	mul t2, t2, t1
	addi t1, t1, 1
	j .fun_naivedce_b.6
.fun_naivedce_b.9: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.11
	j .fun_naivedce_b.10
.fun_naivedce_b.11: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.12
	j .fun_naivedce_b.10
.fun_naivedce_b.12: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.13
	j .fun_naivedce_b.10
.fun_naivedce_b.13: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.14
	j .fun_naivedce_b.10
.fun_naivedce_b.14: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.15
	j .fun_naivedce_b.10
.fun_naivedce_b.15: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.16
	j .fun_naivedce_b.10
.fun_naivedce_b.16: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.17
	j .fun_naivedce_b.10
.fun_naivedce_b.17: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.18
	j .fun_naivedce_b.10
.fun_naivedce_b.18: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.19
	j .fun_naivedce_b.10
.fun_naivedce_b.19: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.20
	j .fun_naivedce_b.10
.fun_naivedce_b.20: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.21
	j .fun_naivedce_b.10
.fun_naivedce_b.21: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.22
	j .fun_naivedce_b.10
.fun_naivedce_b.22: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.23
	j .fun_naivedce_b.10
.fun_naivedce_b.23: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.24
	j .fun_naivedce_b.10
.fun_naivedce_b.24: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.25
	j .fun_naivedce_b.10
.fun_naivedce_b.25: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.26
	j .fun_naivedce_b.10
.fun_naivedce_b.26: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.27
	j .fun_naivedce_b.10
.fun_naivedce_b.27: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.28
	j .fun_naivedce_b.10
.fun_naivedce_b.28: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.29
	j .fun_naivedce_b.10
.fun_naivedce_b.29: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.30
	j .fun_naivedce_b.10
.fun_naivedce_b.30: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.31
	j .fun_naivedce_b.10
.fun_naivedce_b.31: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.32
	j .fun_naivedce_b.10
.fun_naivedce_b.32: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.33
	j .fun_naivedce_b.10
.fun_naivedce_b.33: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.34
	j .fun_naivedce_b.10
.fun_naivedce_b.34: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.35
	j .fun_naivedce_b.10
.fun_naivedce_b.35: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.36
	j .fun_naivedce_b.10
.fun_naivedce_b.36: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.37
	j .fun_naivedce_b.10
.fun_naivedce_b.37: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.38
	j .fun_naivedce_b.10
.fun_naivedce_b.38: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.39
	j .fun_naivedce_b.10
.fun_naivedce_b.39: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.40
	j .fun_naivedce_b.10
.fun_naivedce_b.40: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.41
	j .fun_naivedce_b.10
.fun_naivedce_b.41: 
	li t1, 3628800
	beq t2, t1, .fun_naivedce_b.42
	j .fun_naivedce_b.10
.fun_naivedce_b.42: 
	li t1, 10100
	beq t0, t1, .fun_naivedce_b.43
	j .fun_naivedce_b.10
.fun_naivedce_b.43: 
	li t0, 3628800
	beq t2, t0, .fun_naivedce_b.10
	j .fun_naivedce_b.10
	.size	fun_naivedce, .-fun_naivedce

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	li t1, 80
	lui t0, %hi(N)
	sw t1, %lo(N)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	fun_dceconst
	.p2align	1
	.type	fun_dceconst,@function
fun_dceconst:
.fun_dceconst_b.0: 
	addi sp, sp, 0
	li t1, 0
.fun_dceconst_b.1: 
	lui t0, %hi(N)
	lw t0, %lo(N)(t0)
	blt t1, t0, .fun_dceconst_b.2
.fun_dceconst_b.3: 
	li t0, 0
.fun_dceconst_b.5: 
	lui t1, %hi(N)
	lw t1, %lo(N)(t1)
	blt t0, t1, .fun_dceconst_b.8
.fun_dceconst_b.9: 
	li a0, 114514
	addi sp, sp, 0
	ret
.fun_dceconst_b.2: 
	li t0, 0
.fun_dceconst_b.4: 
	lui t2, %hi(N)
	lw t2, %lo(N)(t2)
	blt t0, t2, .fun_dceconst_b.6
.fun_dceconst_b.7: 
	addi t1, t1, 1
	j .fun_dceconst_b.1
.fun_dceconst_b.6: 
	addi t0, t0, 1
	j .fun_dceconst_b.4
.fun_dceconst_b.8: 
	addi t0, t0, 1
	j .fun_dceconst_b.5
	.size	fun_dceconst, .-fun_dceconst

	.type	N,@object
	.section	.bss
	.globl	N
	.p2align	2
N:
.LN$local:
	.word	0
	.size	N, 4

