	.text
	.globl	cls_A_copy
	.p2align	1
	.type	cls_A_copy,@function
cls_A_copy:
.cls_A_copy_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_copy, .-cls_A_copy

	.globl	cls_A_set
	.p2align	1
	.type	cls_A_set,@function
cls_A_set:
.cls_A_set_entry: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	mv s0, a0
	mv s2, a1
	mv s1, a2
	mv t0, s0
	lw a1, 0(t0)
	mv t0, s0
	addi t0, t0, 4
	lw a2, 0(t0)
	mv a0, s0
	call cls_A_set
	mv t0, s0
	lw a1, 0(t0)
	mv t0, s0
	lw a2, 0(t0)
	call cls_A_set
	mv a1, s2
	mv a2, s1
	call cls_A_set
	call cls_A_getThis
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
	.size	cls_A_set, .-cls_A_set

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	call __init
	lw a0, object
	null
	null
	call cls_A_func1
	lw a0, object
	mv a1, zero
	null
	mv a2, s0
	call cls_A_set
	mv a1, s0
	mv a2, zero
	call cls_A_set
	lw s0, object
	lw a0, object
	call cls_A_getThis
	mv a1, a0
	mv a0, s0
	call cls_A_copy
	mv s0, a0
	lw a0, object
	call cls_A_getThis
	call cls_A_getThis
	mv a1, a0
	mv a0, s0
	call cls_A_copy
	mv a0, zero
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	cls_A_getThis
	.p2align	1
	.type	cls_A_getThis,@function
cls_A_getThis:
.cls_A_getThis_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	mv s0, a0
	mv a0, s0
	call cls_A_getThis
	call cls_A_getThis
	call cls_A_getThis
	call cls_A_getThis
	mv a1, s0
	call cls_A_copy
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	cls_A_getThis, .-cls_A_getThis

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_A_func2
	.p2align	1
	.type	cls_A_func2,@function
cls_A_func2:
.cls_A_func2_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	mv t0, a0
	lw t1, 0(t0)
	lw t0, 0(a0)
	slt a1, t1, t0
	addi t0, a0, 4
	lw t1, 0(t0)
	lw t0, 0(a0)
	slt a2, t1, t0
	call cls_A_func1
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	cls_A_func2, .-cls_A_func2

	.globl	cls_A_func1
	.p2align	1
	.type	cls_A_func1,@function
cls_A_func1:
.cls_A_func1_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	lw t0, 0(a0)
	slt a1, t0, a1
	lw t0, 0(a0)
	slt a2, t0, a2
	call cls_A_func2
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	cls_A_func1, .-cls_A_func1

	.globl	cls_A_con_0
	.p2align	1
	.type	cls_A_con_0,@function
cls_A_con_0:
.cls_A_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_con_0, .-cls_A_con_0

	.type	object,@object
	.section	.bss
	.globl	object
	.p2align	2
object:
.Lobject$local:
	.word	0
	.size	object, 4

