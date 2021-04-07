	.text
	.globl	fun_abs
	.p2align	1
	.type	fun_abs,@function
fun_abs:
.fun_abs_entry: 
	addi sp, sp, 0
	blt zero, a0, .fun_abs_rootReturn
.fun_abs_if_end: 
	addi t0, a0, 1
	sw t0, 0(a0)
.fun_abs_rootReturn: 
	addi sp, sp, 0
	ret
	.size	fun_abs, .-fun_abs

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
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	call __init
	lui t0, %hi(i)
	sw zero, %lo(i)(t0)
.main_for_cond: 
	lw t1, i
	li t0 , 5
	blt t1, t0, .main_for_body
.main_for_end: 
	lw t0, r
	li s0 , 2
	slt a0, s0, t0
	call fun_abs
	mv s1, a0
	lw t0, c
	slt a0, s0, t0
	call fun_abs
	slt a0, s1, a0
	call g_printInt
	mv a0, zero
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.main_for_body: 
	lui t0, %hi(j)
	sw zero, %lo(j)(t0)
.main_for_cond: 
	lw t1, j
	li t0 , 5
	blt t1, t0, .main_for_body
.main_for_end: 
.main_for_body: 
	call g_getInt
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	lw t0, n
	xori t0, t0, 1
	seqz t0, t0
	beqz t0, .main_addphi_mid
.main_if_then: 
	lw t1, i
	lui t0, %hi(r)
	sw t1, %lo(r)(t0)
	lw t1, j
	lui t0, %hi(c)
	sw t1, %lo(c)(t0)
.main_if_end: 
.main_addphi_mid: 
.main_for_upd: 
	lw t0, i
	addi t1, t0, 1
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_for_cond
.main_for_upd: 
	lw t0, j
	addi t1, t0, 1
	lui t0, %hi(j)
	sw t1, %lo(j)(t0)
	j .main_for_cond
	.size	main, .-main

	.type	r,@object
	.section	.bss
	.globl	r
	.p2align	2
r:
.Lr$local:
	.word	0
	.size	r, 4

	.type	j,@object
	.section	.bss
	.globl	j
	.p2align	2
j:
.Lj$local:
	.word	0
	.size	j, 4

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

	.type	c,@object
	.section	.bss
	.globl	c
	.p2align	2
c:
.Lc$local:
	.word	0
	.size	c, 4

	.type	i,@object
	.section	.bss
	.globl	i
	.p2align	2
i:
.Li$local:
	.word	0
	.size	i, 4

