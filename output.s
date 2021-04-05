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
	sw s0, 12(sp)
	sw ra, 8(sp)
	call __init
	lw a0, s
	call l_string_length
	lui t0, %hi(l)
	sw a0, %lo(l)(t0)
	lw a0, s
	mv a1, zero
	null
	call l_string_substring
	mv s0, a0
	lw t0, l
	addi a0, t0, -2
	call g_toString
	mv a1, a0
	mv a0, s0
	call g_stringadd
	mv s0, a0
	lw a0, s
	lw t0, l
	addi a1, t0, -1
	lw a2, l
	call l_string_substring
	mv a1, a0
	mv a0, s0
	call g_stringadd
	call g_println
	lw a0, s
	call g_println
	mv a0, zero
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	main, .-main

	.type	s,@object
	.section	.bss
	.globl	s
	.p2align	2
s:
.Ls$local:
	.word	0
	.size	s, 4

	.type	l,@object
	.section	.bss
	.globl	l
	.p2align	2
l:
.Ll$local:
	.word	0
	.size	l, 4

