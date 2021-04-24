	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, 0
	li t1, 0
	li t0, 0
.main_b.1: 
	li t2, 200
	blt t1, t2, .main_b.2
.main_b.3: 
	addi a0, t0, -100
	addi sp, sp, 0
	ret
.main_b.2: 
	addi t1, t1, 1
	addi t0, t0, 1
.main_b.4: 
	addi t1, t1, 1
	j .main_b.1
	.size	main, .-main

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
.fun_test_b.4: 
	addi t0, t0, 1
	j .fun_test_b.1
	.size	fun_test, .-fun_test

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

