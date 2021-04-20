	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -16
	sw s0, 4(sp)
	sw s1, 8(sp)
	sw s2, 12(sp)
	sw ra, 0(sp)
	li s1, 100
	lui t0, %hi(init_anger)
	sw s1, %lo(init_anger)(t0)
	li t1, 10
	lui t0, %hi(work_anger)
	sw t1, %lo(work_anger)(t0)
	li s2, 8
	mv a0, s2
	call malloc
	mv s0, a0
	mv t0, s0
	la t1, .main.3
	sw t1, 0(t0)
	mv t0, s0
	addi t0, t0, 4
	sw zero, 0(t0)
	mv a0, s2
	call malloc
	mv s2, a0
	mv t0, s2
	la t1, .main.4
	sw t1, 0(t0)
	mv t0, s2
	addi t1, t0, 4
	lui t0, %hi(init_anger)
	lw t0, %lo(init_anger)(t0)
	sw t0, 0(t1)
	la a0, .main.5
	mv t0, s0
	addi t0, t0, 4
	lw t0, 0(t0)
	bge s1, t0, .main_b.1
.main_b.2: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s0
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.2
	call g_stringadd
	call g_println
	j .main_b.3
.main_b.1: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s0
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.1
	call g_stringadd
	call g_println
.main_b.3: 
	mv t0, s0
	addi t2, t0, 4
	mv t0, s0
	addi t0, t0, 4
	lw t1, 0(t0)
	lui t0, %hi(work_anger)
	lw t0, %lo(work_anger)(t0)
	add t0, t1, t0
	sw t0, 0(t2)
	la a0, .main.6
	mv t0, s2
	addi t0, t0, 4
	lw t1, 0(t0)
	li t0, 100
	bge t0, t1, .main_b.4
.main_b.5: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s2
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.2
	call g_stringadd
	call g_println
	j .main_b.6
.main_b.4: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s2
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.1
	call g_stringadd
	call g_println
.main_b.6: 
	mv t0, s2
	addi t2, t0, 4
	mv t0, s2
	addi t0, t0, 4
	lw t1, 0(t0)
	lui t0, %hi(work_anger)
	lw t0, %lo(work_anger)(t0)
	add t0, t1, t0
	sw t0, 0(t2)
	la a0, .main.6
	mv t0, s2
	addi t0, t0, 4
	lw t1, 0(t0)
	li t0, 100
	bge t0, t1, .main_b.7
.main_b.8: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s2
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.2
	call g_stringadd
	call g_println
	j .main_b.9
.main_b.7: 
	la a1, .fun_work.0
	call g_stringadd
	mv t0, s2
	lw a1, 0(t0)
	call g_stringadd
	la a1, .fun_work.1
	call g_stringadd
	call g_println
.main_b.9: 
	mv t0, s2
	addi t2, t0, 4
	mv t0, s2
	addi t0, t0, 4
	lw t1, 0(t0)
	lui t0, %hi(work_anger)
	lw t0, %lo(work_anger)(t0)
	add t0, t1, t0
	sw t0, 0(t2)
	mv a0, zero
	lw s0, 4(sp)
	lw s1, 8(sp)
	lw s2, 12(sp)
	lw ra, 0(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.type	init_anger,@object
	.section	.bss
	.globl	init_anger
	.p2align	2
init_anger:
.Linit_anger$local:
	.word	0
	.size	init_anger, 4

	.type	work_anger,@object
	.section	.bss
	.globl	work_anger
	.p2align	2
work_anger:
.Lwork_anger$local:
	.word	0
	.size	work_anger, 4

	.type	.main.5,@object
	.section	.rodata
.main.5:
	.asciz	"MR"
	.size	.main.5, 3

	.type	.fun_work.1,@object
	.section	.rodata
.fun_work.1:
	.asciz	" enjoys this work. XD"
	.size	.fun_work.1, 22

	.type	.main.3,@object
	.section	.rodata
.main.3:
	.asciz	"the leading TA"
	.size	.main.3, 15

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

