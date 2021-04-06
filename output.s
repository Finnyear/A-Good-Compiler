	.text
	.globl	cls_Cat_greet
	.p2align	1
	.type	cls_Cat_greet,@function
cls_Cat_greet:
.cls_Cat_greet_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	la a0, .cls_Cat_greet.0
	call g_println
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	cls_Cat_greet, .-cls_Cat_greet

	.globl	cls_Lamb_greet
	.p2align	1
	.type	cls_Lamb_greet,@function
cls_Lamb_greet:
.cls_Lamb_greet_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	la a0, .cls_Lamb_greet.1
	call g_println
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
	.size	cls_Lamb_greet, .-cls_Lamb_greet

	.globl	cls_Animals_con_0
	.p2align	1
	.type	cls_Animals_con_0,@function
cls_Animals_con_0:
.cls_Animals_con_0_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	mv s0, a0
	mv a0, zero
	call malloc
	sw a0, 0(s0)
	mv t0, s0
	addi s0, t0, 4
	mv a0, zero
	call malloc
	sw a0, 0(s0)
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	cls_Animals_con_0, .-cls_Animals_con_0

	.globl	cls_Animals_greet
	.p2align	1
	.type	cls_Animals_greet,@function
cls_Animals_greet:
.cls_Animals_greet_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	mv s0, a0
	mv t0, s0
	lw a0, 0(t0)
	call cls_Cat_greet
	mv t0, s0
	addi t0, t0, 4
	lw a0, 0(t0)
	call cls_Lamb_greet
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	cls_Animals_greet, .-cls_Animals_greet

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	call __init
	mv a0, zero
	call malloc
	mv s0, a0
	mv a0, zero
	call malloc
	mv s2, a0
	null
	call malloc
	mv s1, a0
	mv a0, s1
	call cls_Animals_con_0
	mv t0, s1
	sw s0, 0(t0)
	mv t0, s1
	sw s2, 0(t0)
	mv a0, s1
	call cls_Animals_greet
	mv a0, zero
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	cls_Lamb_con_0
	.p2align	1
	.type	cls_Lamb_con_0,@function
cls_Lamb_con_0:
.cls_Lamb_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_Lamb_con_0, .-cls_Lamb_con_0

	.globl	cls_Cat_con_0
	.p2align	1
	.type	cls_Cat_con_0,@function
cls_Cat_con_0:
.cls_Cat_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_Cat_con_0, .-cls_Cat_con_0

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.type	.cls_Lamb_greet.1,@object
	.section	.rodata
.cls_Lamb_greet.1:
	.asciz	"\"MIEMIEMIE\""
	.size	.cls_Lamb_greet.1, 12

	.type	.cls_Cat_greet.0,@object
	.section	.rodata
.cls_Cat_greet.0:
	.asciz	"\"MIAOMIAOMIAO\""
	.size	.cls_Cat_greet.0, 15

