	.text
	.globl	fun_swap
	.p2align	1
	.type	fun_swap,@function
fun_swap:
.fun_swap_b.0: 
	addi sp, sp, 0
	lw t1, a
	slli t0, a0, 2
	add t0, t1, t0
	lw a2, 0(t0)
	lw t1, a
	slli t0, a0, 2
	add t2, t1, t0
	lw t1, a
	slli t0, a1, 2
	add t0, t1, t0
	lw t0, 0(t0)
	sw t0, 0(t2)
	lw t1, a
	slli t0, a1, 2
	add t0, t1, t0
	sw a2, 0(t0)
	addi sp, sp, 0
	ret
	.size	fun_swap, .-fun_swap

	.globl	fun_show
	.p2align	1
	.type	fun_show,@function
fun_show:
.fun_show_b.0: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	li s0, 0
.fun_show_b.1: 
	lw t0, now
	blt s0, t0, .fun_show_b.2
.fun_show_b.3: 
	la a0, .fun_show.1
	call g_println
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
.fun_show_b.2: 
	lw t1, a
	slli t0, s0, 2
	add t0, t1, t0
	lw a0, 0(t0)
	call g_toString
	la a1, .fun_show.0
	call g_stringadd
	call g_print
.fun_show_b.4: 
	addi t0, s0, 1
	mv s0, t0
	j .fun_show_b.1
	.size	fun_show, .-fun_show

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_b.0: 
	addi sp, sp, 0
	li t1, 48271
	lui t0, %hi(A)
	sw t1, %lo(A)(t0)
	li t1, 2147483647
	lui t0, %hi(M)
	sw t1, %lo(M)(t0)
	li t1, 1
	lui t0, %hi(seed)
	sw t1, %lo(seed)(t0)
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	fun_move
	.p2align	1
	.type	fun_move,@function
fun_move:
.fun_move_b.0: 
	addi sp, sp, 0
	li t0, 0
.fun_move_b.1: 
	lw t1, now
	blt t0, t1, .fun_move_b.2
.fun_move_b.3: 
	lw t1, a
	lw t0, now
	slli t0, t0, 2
	add t1, t1, t0
	lw t0, now
	sw t0, 0(t1)
	lw t0, now
	addi t1, t0, 1
	lui t0, %hi(now)
	sw t1, %lo(now)(t0)
	addi sp, sp, 0
	ret
.fun_move_b.2: 
	lw t2, a
	slli t1, t0, 2
	add t2, t2, t1
	lw t1, 0(t2)
	addi t1, t1, 1
	sw t1, 0(t2)
	addi t0, t0, 1
	j .fun_move_b.1
	.size	fun_move, .-fun_move

	.globl	fun_win
	.p2align	1
	.type	fun_win,@function
fun_win:
.fun_win_b.0: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	li s0, 100
	li t0, 4
	mul t0, s0, t0
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi a0, a0, 4
	lw t1, now
	lw t0, h
	bne t1, t0, .fun_win_b.1
.fun_win_b.2: 
	li t0, 0
.fun_win_b.4: 
	lw t1, now
	blt t0, t1, .fun_win_b.5
.fun_win_b.6: 
	li t1, 65536
	li t2, 0
.fun_win_b.8: 
	lw a1, now
	addi a1, a1, -1
	blt t2, a1, .fun_win_b.9
.fun_win_b.10: 
	li t2, 0
.fun_win_b.12: 
	lw a1, now
	blt t2, a1, .fun_win_b.15
.fun_win_b.16: 
	li a0, 1
	j .fun_win_b.3
.fun_win_b.1: 
	li t1, 65536
	li t0, 65536
	li t2, 65536
	mv a0, zero
.fun_win_b.3: 
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
.fun_win_b.5: 
	slli t1, t0, 2
	add a1, a0, t1
	lw t2, a
	slli t1, t0, 2
	add t1, t2, t1
	lw t1, 0(t1)
	sw t1, 0(a1)
.fun_win_b.7: 
	addi t0, t0, 1
	j .fun_win_b.4
.fun_win_b.9: 
	addi t0, t2, 1
.fun_win_b.11: 
	lw a1, now
	blt t0, a1, .fun_win_b.13
.fun_win_b.14: 
	addi t2, t2, 1
	j .fun_win_b.8
.fun_win_b.13: 
	slli a1, t2, 2
	add a2, a0, a1
	slli a1, t0, 2
	add a1, a0, a1
	lw a2, 0(a2)
	lw a1, 0(a1)
	blt a1, a2, .fun_win_b.17
.fun_win_b.18: 
	addi t0, t0, 1
	j .fun_win_b.11
.fun_win_b.15: 
	slli a1, t2, 2
	add a1, a0, a1
	addi a2, t2, 1
	lw a1, 0(a1)
	bne a1, a2, .fun_win_b.19
.fun_win_b.20: 
	addi t2, t2, 1
	j .fun_win_b.12
.fun_win_b.17: 
	slli t1, t2, 2
	add t1, a0, t1
	lw t1, 0(t1)
	slli a1, t2, 2
	add a2, a0, a1
	slli a1, t0, 2
	add a1, a0, a1
	lw a1, 0(a1)
	sw a1, 0(a2)
	slli a1, t0, 2
	add a1, a0, a1
	sw t1, 0(a1)
	j .fun_win_b.18
.fun_win_b.19: 
	mv a0, zero
	j .fun_win_b.3
	.size	fun_win, .-fun_win

	.globl	fun_pd
	.p2align	1
	.type	fun_pd,@function
fun_pd:
.fun_pd_b.0: 
	addi sp, sp, 0
	lw t0, h
	bge a0, t0, .fun_pd_b.1
.fun_pd_b.2: 
	mv a0, zero
.fun_pd_b.5: 
	addi sp, sp, 0
	ret
.fun_pd_b.1: 
	lw t0, h
	addi t1, t0, 1
	lw t0, h
	mul t0, t0, t1
	li t1, 2
	div t0, t0, t1
	beq a0, t0, .fun_pd_b.3
.fun_pd_b.4: 
	lw t0, h
	addi t1, t0, 1
	lui t0, %hi(h)
	sw t1, %lo(h)(t0)
.fun_pd_b.3: 
	li a0, 1
	j .fun_pd_b.5
	.size	fun_pd, .-fun_pd

	.globl	fun_random
	.p2align	1
	.type	fun_random,@function
fun_random:
.fun_random_b.0: 
	addi sp, sp, 0
	lw t1, seed
	lw t0, Q
	rem t1, t1, t0
	lw t0, A
	mul t2, t0, t1
	lw t1, seed
	lw t0, Q
	div t1, t1, t0
	lw t0, R
	mul t0, t0, t1
	sub t1, t2, t0
	bge t1, zero, .fun_random_b.1
.fun_random_b.2: 
	lw t0, M
	add t1, t1, t0
	lui t0, %hi(seed)
	sw t1, %lo(seed)(t0)
	j .fun_random_b.3
.fun_random_b.1: 
	lui t0, %hi(seed)
	sw t1, %lo(seed)(t0)
.fun_random_b.3: 
	lw a0, seed
	addi sp, sp, 0
	ret
	.size	fun_random, .-fun_random

	.globl	fun_initialize
	.p2align	1
	.type	fun_initialize,@function
fun_initialize:
.fun_initialize_b.0: 
	addi sp, sp, 0
	lui t0, %hi(seed)
	sw a0, %lo(seed)(t0)
	addi sp, sp, 0
	ret
	.size	fun_initialize, .-fun_initialize

	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_b.0: 
	addi sp, sp, -32
	sw s0, 16(sp)
	sw s1, 20(sp)
	sw s2, 24(sp)
	sw s3, 28(sp)
	sw ra, 12(sp)
	call __init
	li t1, 3
	li t0, 7
	mul t1, t1, t0
	li t0, 10
	mul t1, t1, t0
	lui t0, %hi(n)
	sw t1, %lo(n)(t0)
	lui t0, %hi(h)
	sw zero, %lo(h)(t0)
	li s0, 100
	li t0, 4
	mul t0, s0, t0
	addi a0, t0, 4
	call malloc
	sw s0, 0(a0)
	addi t1, a0, 4
	lui t0, %hi(a)
	sw t1, %lo(a)(t0)
	lw t1, M
	lw t0, A
	div t1, t1, t0
	lui t0, %hi(Q)
	sw t1, %lo(Q)(t0)
	lw t1, M
	lw t0, A
	rem t1, t1, t0
	lui t0, %hi(R)
	sw t1, %lo(R)(t0)
	lw a0, n
	call fun_pd
	beqz a0, .main_b.2
.main_b.1: 
	la a0, .main.3
	call g_println
	li a0, 3654898
	call fun_initialize
	call fun_random
	li t0, 10
	rem t0, a0, t0
	addi t1, t0, 1
	lui t0, %hi(now)
	sw t1, %lo(now)(t0)
	lw a0, now
	call g_toString
	call g_println
	li s2, 0
	li s3, 0
.main_b.3: 
	lw t0, now
	addi t0, t0, -1
	blt s3, t0, .main_b.5
.main_b.6: 
	lw t0, now
	addi t0, t0, -1
	lw t1, a
	slli t0, t0, 2
	add t1, t1, t0
	lw t0, n
	sub t0, t0, s2
	sw t0, 0(t1)
	call fun_show
	call fun_merge
	li s0, 0
.main_b.8: 
	call fun_win
	beqz a0, .main_b.12
.main_b.11: 
	la s1, .main.6
	mv a0, s0
	call g_toString
	mv a1, a0
	mv a0, s1
	call g_stringadd
	la a1, .main.7
	call g_stringadd
	call g_println
	mv t0, s3
	mv t0, s0
	mv t0, s2
	li a0, 0
	j .main_b.4
.main_b.2: 
	la a0, .main.2
	call g_println
	li t0, 0
	li t0, 0
	li t0, 0
	li a0, 1
.main_b.4: 
	lw s0, 16(sp)
	lw s1, 20(sp)
	lw s2, 24(sp)
	lw s3, 28(sp)
	lw ra, 12(sp)
	addi sp, sp, 32
	ret
.main_b.5: 
	lw t1, a
	slli t0, s3, 2
	add s0, t1, t0
	call fun_random
	li t0, 10
	rem t0, a0, t0
	addi t0, t0, 1
	sw t0, 0(s0)
.main_b.7: 
	lw t1, a
	slli t0, s3, 2
	add t0, t1, t0
	lw t0, 0(t0)
	add t1, t0, s2
	lw t0, n
	blt t0, t1, .main_b.9
.main_b.10: 
	lw t1, a
	slli t0, s3, 2
	add t0, t1, t0
	lw t0, 0(t0)
	add t1, s2, t0
.main_b.13: 
	addi t0, s3, 1
	mv s2, t1
	mv s3, t0
	j .main_b.3
.main_b.9: 
	lw t1, a
	slli t0, s3, 2
	add s0, t1, t0
	call fun_random
	li t0, 10
	rem t0, a0, t0
	addi t0, t0, 1
	sw t0, 0(s0)
	j .main_b.7
.main_b.12: 
	la s1, .main.4
	addi s0, s0, 1
	mv a0, s0
	call g_toString
	mv a1, a0
	mv a0, s1
	call g_stringadd
	la a1, .main.5
	call g_stringadd
	call g_println
	call fun_move
	call fun_merge
	call fun_show
	j .main_b.8
	.size	main, .-main

	.globl	fun_merge
	.p2align	1
	.type	fun_merge,@function
fun_merge:
.fun_merge_b.0: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	li s1, 0
	li t0, 65536
.fun_merge_b.1: 
	lw t1, now
	blt s1, t1, .fun_merge_b.2
.fun_merge_b.3: 
	li t0, 0
.fun_merge_b.6: 
	lw t1, now
	blt t0, t1, .fun_merge_b.8
.fun_merge_b.9: 
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.fun_merge_b.2: 
	lw t2, a
	slli t1, s1, 2
	add t1, t2, t1
	lw t1, 0(t1)
	beq t1, zero, .fun_merge_b.4
.fun_merge_b.5: 
	addi t1, s1, 1
	mv s1, t1
	j .fun_merge_b.1
.fun_merge_b.4: 
	addi t0, s1, 1
	mv s0, t0
.fun_merge_b.7: 
	lw t0, now
	blt s0, t0, .fun_merge_b.10
.fun_merge_b.11: 
	mv t0, s0
	j .fun_merge_b.5
.fun_merge_b.8: 
	lw t2, a
	slli t1, t0, 2
	add t1, t2, t1
	lw t1, 0(t1)
	beq t1, zero, .fun_merge_b.12
.fun_merge_b.13: 
	addi t0, t0, 1
	j .fun_merge_b.6
.fun_merge_b.10: 
	lw t1, a
	slli t0, s0, 2
	add t0, t1, t0
	lw t0, 0(t0)
	bne t0, zero, .fun_merge_b.14
.fun_merge_b.15: 
	addi t0, s0, 1
	mv s0, t0
	j .fun_merge_b.7
.fun_merge_b.12: 
	lui t1, %hi(now)
	sw t0, %lo(now)(t1)
	j .fun_merge_b.9
.fun_merge_b.14: 
	mv a0, s1
	mv a1, s0
	call fun_swap
	j .fun_merge_b.11
	.size	fun_merge, .-fun_merge

	.type	R,@object
	.section	.bss
	.globl	R
	.p2align	2
R:
.LR$local:
	.word	0
	.size	R, 4

	.type	n,@object
	.section	.bss
	.globl	n
	.p2align	2
n:
.Ln$local:
	.word	0
	.size	n, 4

	.type	now,@object
	.section	.bss
	.globl	now
	.p2align	2
now:
.Lnow$local:
	.word	0
	.size	now, 4

	.type	seed,@object
	.section	.bss
	.globl	seed
	.p2align	2
seed:
.Lseed$local:
	.word	0
	.size	seed, 4

	.type	A,@object
	.section	.bss
	.globl	A
	.p2align	2
A:
.LA$local:
	.word	0
	.size	A, 4

	.type	h,@object
	.section	.bss
	.globl	h
	.p2align	2
h:
.Lh$local:
	.word	0
	.size	h, 4

	.type	M,@object
	.section	.bss
	.globl	M
	.p2align	2
M:
.LM$local:
	.word	0
	.size	M, 4

	.type	a,@object
	.section	.bss
	.globl	a
	.p2align	2
a:
.La$local:
	.word	0
	.size	a, 4

	.type	Q,@object
	.section	.bss
	.globl	Q
	.p2align	2
Q:
.LQ$local:
	.word	0
	.size	Q, 4

	.type	.main.4,@object
	.section	.rodata
.main.4:
	.asciz	"step "
	.size	.main.4, 6

	.type	.fun_show.1,@object
	.section	.rodata
.fun_show.1:
	.asciz	""
	.size	.fun_show.1, 1

	.type	.main.5,@object
	.section	.rodata
.main.5:
	.asciz	":"
	.size	.main.5, 2

	.type	.main.3,@object
	.section	.rodata
.main.3:
	.asciz	"Let's start!"
	.size	.main.3, 13

	.type	.main.2,@object
	.section	.rodata
.main.2:
	.asciz	"Sorry, the number n must be a number s.t. there exists i satisfying n=1+2+...+i"
	.size	.main.2, 80

	.type	.main.6,@object
	.section	.rodata
.main.6:
	.asciz	"Total: "
	.size	.main.6, 8

	.type	.main.7,@object
	.section	.rodata
.main.7:
	.asciz	" step(s)"
	.size	.main.7, 9

	.type	.fun_show.0,@object
	.section	.rodata
.fun_show.0:
	.asciz	" "
	.size	.fun_show.0, 2

