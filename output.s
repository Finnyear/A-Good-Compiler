	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
.main_b.1: 
	li a0, 1
.main_b.2: 
	call g_toString
	call g_println
.main_b.3: 
	li a0, 3087
	li a1, 1029
	call fun_gcd
.main_b.4: 
	call g_toString
	call g_println
.main_b.5: 
	li a0, 1539
	li a1, 1368
	call fun_gcd
.main_b.6: 
	call g_toString
	call g_println
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	fun_gcd
	.p2align	1
	.type	fun_gcd,@function
fun_gcd:
.fun_gcd_b.0: 
	addi sp, sp, -16
	sw ra, 12(sp)
	rem t0, a0, a1
	beq t0, zero, .fun_gcd_b.1
.fun_gcd_b.2: 
	rem a0, a0, a1
	rem t0, a1, a0
	beq t0, zero, .fun_gcd_b.3
.fun_gcd_b.4: 
	rem a1, a1, a0
	call fun_gcd
	j .fun_gcd_b.3
.fun_gcd_b.1: 
	mv a0, a1
.fun_gcd_b.3: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	fun_gcd, .-fun_gcd

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

