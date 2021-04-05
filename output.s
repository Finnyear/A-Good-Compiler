	.text
	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw ra, 12(sp)
	call __init
	call g_getInt
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	call g_getInt
	lui t0, %hi(p)
	sw a0, %lo(p)(t0)
	call g_getInt
	lui t0, %hi(k)
	sw a0, %lo(k)(t0)
	lw t1, p
	lw t0, k
	slt t1, t1, t0
	null
	slt t0, t0, t1
	beqz t0, .main_addphi_mid
.main_if_then: 
	la a0, .main.0
	call g_print
.main_if_end: 
	lw t1, p
	lw t0, k
	slt t1, t1, t0
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
.main_for_cond: 
	lw t1, p
	lw t0, k
	slt t1, t1, t0
	lw t0, i
	bge t1, t0, .main_for_body
.main_for_end: 
	lw t1, p
	lw t0, k
	slt t1, t1, t0
	lw t0, n
	slt t0, t1, t0
	beqz t0, .main_addphi_mid
.main_if_then: 
	la a0, .main.4
	call g_print
.main_if_end: 
	lw ra, 12(sp)
	addi sp, sp, 16
	ret
.main_addphi_mid: 
.main_for_body: 
	lw t0, i
	slti t0, t0, 1
	xori t0, t0, 1
	beqz t0, .main_addphi_mid
.main_land_cond: 
	lw t1, i
	lw t0, n
	slt t0, t0, t1
	xori t0, t0, 1
	beqz t0, .main_addphi_mid
.main_if_then: 
	lw t1, i
	lw t0, p
	beq t1, t0, .main_if_then
.main_else_then: 
	lw a0, i
	call g_printInt
	la a0, .main.3
	call g_print
	j .main_if_end
.main_addphi_mid: 
.main_addphi_mid: 
.main_addphi_mid: 
.main_if_end: 
.main_if_then: 
	la a0, .main.1
	call g_print
	lw a0, i
	call g_toString
	call g_print
	la a0, .main.2
	call g_print
.main_if_end: 
.main_for_upd: 
	lw t0, i
	addi t1, t0, 1
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_for_cond
	.size	main, .-main

	.type	i,@object
	.section	.bss
	.globl	i
	.p2align	2
i:
.Li$local:
	.word	0
	.size	i, 4

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

	.type	k,@object
	.section	.bss
	.globl	k
	.p2align	2
k:
.Lk$local:
	.word	0
	.size	k, 4

	.type	p,@object
	.section	.bss
	.globl	p
	.p2align	2
p:
.Lp$local:
	.word	0
	.size	p, 4

	.type	.main.4,@object
	.section	.rodata
.main.4:
	.asciz	"\">> \""
	.size	.main.4, 6

	.type	.main.0,@object
	.section	.rodata
.main.0:
	.asciz	"\"<< \""
	.size	.main.0, 6

	.type	.main.2,@object
	.section	.rodata
.main.2:
	.asciz	"\") \""
	.size	.main.2, 5

	.type	.main.1,@object
	.section	.rodata
.main.1:
	.asciz	"\"(\""
	.size	.main.1, 4

	.type	.main.3,@object
	.section	.rodata
.main.3:
	.asciz	"\" \""
	.size	.main.3, 4

