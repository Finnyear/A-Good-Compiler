	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	la a0, .main.0
	call g_print
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	fun_haha
	.p2align	1
	.type	fun_haha,@function
fun_haha:
.fun_haha_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	fun_haha, .-fun_haha

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.type	.main.0,@object
	.section	.rodata
.main.0:
	.asciz	"\"hehe\n\""
	.size	.main.0, 8

