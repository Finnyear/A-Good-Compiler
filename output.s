	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	call __init
	li s1, 8
	mv a0, s1
	call malloc
	mv s0, a0
	mv t0, s0
	la t1, .main.3
	sw t1, 0(t0)
	mv t0, s0
	addi t0, t0, 4
	sw zero, 0(t0)
	mv a0, s1
	call malloc
	mv s1, a0
	mv t0, s1
	la t1, .main.4
	sw t1, 0(t0)
	mv t0, s1
	addi t1, t0, 4
	lw t0, init_anger
	sw t0, 0(t1)
	la a0, .main.5
	mv a1, s0
	call fun_work
	la a0, .main.6
	mv a1, s1
	call fun_work
	la a0, .main.6
	mv a1, s1
	call fun_work
	mv a0, zero
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.globl	cls_TA_con_0
	.p2align	1
	.type	cls_TA_con_0,@function
cls_TA_con_0:
.cls_TA_con_0_b.0: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_TA_con_0, .-cls_TA_con_0

	.globl	fun_work
	.p2align	1
	.type	fun_work,@function
fun_work:
.fun_work_b.0: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	mv s0, a1
	mv t0, s0
	addi t0, t0, 4
	lw t1, 0(t0)
	li t0, 100
	bge t0, t1, .fun_work_b.1
.fun_work_b.2: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s0
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.2
	call g_stringadd
	call g_println
	j .fun_work_b.3
.fun_work_b.1: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s0
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.1
	call g_stringadd
	call g_println
.fun_work_b.3: 
	mv t0, s0
	addi t2, t0, 4
	mv t0, s0
	addi t0, t0, 4
	lw t1, 0(t0)
	lw t0, work_anger
	add t0, t1, t0
	sw t0, 0(t2)
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	fun_work, .-fun_work

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	li t1, 100
	lui t0, %hi(init_anger)
	sw t1, %lo(init_anger)(t0)
	li t1, 10
	lui t0, %hi(work_anger)
	sw t1, %lo(work_anger)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.type	work_anger,@object
	.section	.bss
	.globl	work_anger
	.p2align	2
work_anger:
.Lwork_anger$local:
	.word	0
	.size	work_anger, 4

	.type	init_anger,@object
	.section	.bss
	.globl	init_anger
	.p2align	2
init_anger:
.Linit_anger$local:
	.word	0
	.size	init_anger, 4

	.type	.fun_work.0,@object
	.section	.rodata
.fun_work.0:
	.asciz	", "
	.size	.fun_work.0, 3

	.type	.main.6,@object
	.section	.rodata
.main.6:
	.asciz	"Mars"
	.size	.main.6, 5

	.type	.main.4,@object
	.section	.rodata
.main.4:
	.asciz	"the striking TA"
	.size	.main.4, 16

	.type	.fun_work.2,@object
	.section	.rodata
.fun_work.2:
	.asciz	" wants to give up!!!!!"
	.size	.fun_work.2, 23

	.type	.fun_work.1,@object
	.section	.rodata
.fun_work.1:
	.asciz	" enjoys this work. XD"
	.size	.fun_work.1, 22

	.type	.main.5,@object
	.section	.rodata
.main.5:
	.asciz	"MR"
	.size	.main.5, 3

	.type	.main.3,@object
	.section	.rodata
.main.3:
	.asciz	"the leading TA"
	.size	.main.3, 15

