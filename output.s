	.text
	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	null
	null
	slt t0, s0, t0
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t1, a0, 4
	lui t0, %hi(a)
	sw t1, %lo(a)(t0)
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	__init, .-__init

	.globl	fun_jud
	.p2align	1
	.type	fun_jud,@function
fun_jud:
.fun_jud_entry: 
	addi sp, sp, 0
	null
	null
	null
.fun_jud_for_cond: 
	lw a1, n
	slt a1, a1, a0
	blt t2, a1, .fun_jud_for_body
.fun_jud_for_end: 
	null
.fun_jud_rootReturn: 
	addi sp, sp, 0
	ret
.fun_jud_for_body: 
	null
	null
.fun_jud_for_cond: 
	addi a1, a0, -1
	blt t1, a1, .fun_jud_for_body
.fun_jud_for_end: 
.fun_jud_for_body: 
	slt a1, t2, a0
	slt a1, a1, t1
	lw a2, a
	slli a1, a1, 2
	add a3, a2, a1
	slt a1, t2, a0
	slt a1, a1, t1
	addi a1, a1, 1
	lw a2, a
	slli a1, a1, 2
	add a1, a2, a1
	lw a2, 0(a3)
	lw a1, 0(a1)
	slt a1, a1, a2
	beqz a1, .fun_jud_if_end
.fun_jud_if_then: 
	null
.fun_jud_if_end: 
.fun_jud_if_end: 
.fun_jud_if_then: 
	null
	j .fun_jud_rootReturn
.fun_jud_for_upd: 
	addi t1, t1, 1
	j .fun_jud_for_cond
.fun_jud_for_upd: 
	addi t2, t2, 1
	j .fun_jud_for_cond
	.size	fun_jud, .-fun_jud

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	call __init
	call g_getInt
	lui t0, %hi(n)
	sw a0, %lo(n)(t0)
	lui t0, %hi(i)
	sw zero, %lo(i)(t0)
.main_for_cond: 
	lw t1, i
	lw t0, n
	blt t1, t0, .main_for_body
.main_for_end: 
	lw t1, n
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
.main_for_cond: 
	lw t0, i
	blt zero, t0, .main_for_body
.main_for_end: 
	null
.main_rootReturn: 
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
.main_for_body: 
	lw t1, a
	lw t0, i
	slli t0, t0, 2
	add s0, t1, t0
	call g_getInt
	sw a0, 0(s0)
.main_for_upd: 
	lw t0, i
	addi t1, t0, 1
	lui t0, %hi(i)
	sw t1, %lo(i)(t0)
	j .main_for_cond
.main_for_body: 
	lw a0, i
	call fun_jud
	blt zero, a0, .main_if_then
.main_if_end: 
.main_if_then: 
	lw a0, i
	call g_toString
	call g_print
	null
	j .main_rootReturn
.main_for_upd: 
	lw t1, i
	null
	slt t1, t1, t0
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

	.type	a,@object
	.section	.bss
	.globl	a
	.p2align	2
a:
.La$local:
	.word	0
	.size	a, 4

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

