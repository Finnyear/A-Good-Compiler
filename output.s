	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	mv a0, zero
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	lui t0, %hi(b)
	sw zero, %lo(b)(t0)
	lw t0, b
	lw t1, 0(t0)
	lui t0, %hi(c)
	sw t1, %lo(c)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_A_fun
	.p2align	1
	.type	cls_A_fun,@function
cls_A_fun:
.cls_A_fun_entry: 
	addi sp, sp, 0
	lw t0, c
	sw t0, 0(a0)
	addi sp, sp, 0
	ret
	.size	cls_A_fun, .-cls_A_fun

	.globl	cls_A_con_0
	.p2align	1
	.type	cls_A_con_0,@function
cls_A_con_0:
.cls_A_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_con_0, .-cls_A_con_0

	.type	c,@object
	.section	.bss
	.globl	c
	.p2align	2
c:
.Lc$local:
	.word	0
	.size	c, 4

	.type	b,@object
	.section	.bss
	.globl	b
	.p2align	2
b:
.Lb$local:
	.word	0
	.size	b, 4

