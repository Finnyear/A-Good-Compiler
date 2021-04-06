	.text
	.globl	cls_A_con_0
	.p2align	1
	.type	cls_A_con_0,@function
cls_A_con_0:
.cls_A_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_A_con_0, .-cls_A_con_0

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	call __init
	la a1, .main.1
	lw a0, a
	call g_stringadd
	lw a1, a
	call g_stringadd
	call g_println
	null
	slli t0, t0, 1
	addi a0, t0, 4
	call malloc
	null
	sw t0, 0(a0)
	addi t0, a0, 4
	null
	beqz t1, .main_addphi_mid
.main_if_then: 
	addi t1, t0, 4
	lw t1, 0(t1)
	addi t1, t1, 4
	lw s1, 0(t1)
	addi t0, t0, 4
	lw s0, 0(t0)
	null
	slli t0, t0, 1
	addi a0, t0, 4
	call malloc
	null
	sw t0, 0(a0)
	addi t1, a0, 4
	addi t0, t1, 4
	lw t0, 0(t0)
	addi t0, t0, 4
	lw t0, 0(t0)
	lb t0, 0(t0)
	beqz t0, .main_addphi_mid
.main_if_then: 
.main_addphi_mid: 
	mv t0, zero
	mv t0, zero
	mv t1, zero
.main_if_end: 
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.main_addphi_mid: 
.main_if_end: 
	mv t0, s1
	mv t0, s0
	j .main_if_end
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	la t1, .__init.0
	lui t0, %hi(a)
	sw t1, %lo(a)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.type	a,@object
	.section	.bss
	.globl	a
	.p2align	2
a:
.La$local:
	.word	0
	.size	a, 4

	.type	.__init.0,@object
	.section	.rodata
.__init.0:
	.asciz	"\"\n\n\n\"\\\"\""
	.size	.__init.0, 9

	.type	.main.1,@object
	.section	.rodata
.main.1:
	.asciz	"\" \""
	.size	.main.1, 4

