	.text
	.file	"builtin.c"
	.globl	g_print                 # -- Begin function g_print
	.p2align	2
	.type	g_print,@function
g_print:                                # @g_print
# %bb.0:
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	tail	printf
.Lfunc_end0:
	.size	g_print, .Lfunc_end0-g_print
                                        # -- End function
	.globl	g_println               # -- Begin function g_println
	.p2align	2
	.type	g_println,@function
g_println:                              # @g_println
# %bb.0:
	tail	puts
.Lfunc_end1:
	.size	g_println, .Lfunc_end1-g_println
                                        # -- End function
	.globl	g_printInt              # -- Begin function g_printInt
	.p2align	2
	.type	g_printInt,@function
g_printInt:                             # @g_printInt
# %bb.0:
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	tail	printf
.Lfunc_end2:
	.size	g_printInt, .Lfunc_end2-g_printInt
                                        # -- End function
	.globl	g_printlnInt            # -- Begin function g_printlnInt
	.p2align	2
	.type	g_printlnInt,@function
g_printlnInt:                           # @g_printlnInt
# %bb.0:
	lui	a1, %hi(.L.str.3)
	addi	a1, a1, %lo(.L.str.3)
	mv	a2, a0
	mv	a0, a1
	mv	a1, a2
	tail	printf
.Lfunc_end3:
	.size	g_printlnInt, .Lfunc_end3-g_printlnInt
                                        # -- End function
	.globl	g_getString             # -- Begin function g_getString
	.p2align	2
	.type	g_getString,@function
g_getString:                            # @g_getString
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	addi	a0, zero, 128
	call	malloc
	mv	s0, a0
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	mv	a1, s0
	call	scanf
	mv	a0, s0
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end4:
	.size	g_getString, .Lfunc_end4-g_getString
                                        # -- End function
	.globl	g_getInt                # -- Begin function g_getInt
	.p2align	2
	.type	g_getInt,@function
g_getInt:                               # @g_getInt
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	addi	a1, sp, 8
	call	scanf
	lw	a0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end5:
	.size	g_getInt, .Lfunc_end5-g_getInt
                                        # -- End function
	.globl	g_toString              # -- Begin function g_toString
	.p2align	2
	.type	g_toString,@function
g_toString:                             # @g_toString
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	mv	s0, a0
	addi	a0, zero, 12
	call	malloc
	mv	s1, a0
	lui	a0, %hi(.L.str.2)
	addi	a1, a0, %lo(.L.str.2)
	mv	a0, s1
	mv	a2, s0
	call	sprintf
	mv	a0, s1
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end6:
	.size	g_toString, .Lfunc_end6-g_toString
                                        # -- End function
	.globl	l_string_ord            # -- Begin function l_string_ord
	.p2align	2
	.type	l_string_ord,@function
l_string_ord:                           # @l_string_ord
# %bb.0:
	add	a0, a0, a1
	lbu	a0, 0(a0)
	ret
.Lfunc_end7:
	.size	l_string_ord, .Lfunc_end7-l_string_ord
                                        # -- End function
	.globl	l_string_substring      # -- Begin function l_string_substring
	.p2align	2
	.type	l_string_substring,@function
l_string_substring:                     # @l_string_substring
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	sw	s1, 4(sp)
	sw	s2, 0(sp)
	mv	s0, a1
	mv	s2, a0
	sub	s1, a2, a1
	addi	a0, s1, 1
	call	malloc
	add	a1, s2, s0
	mv	a2, s1
	lw	s2, 0(sp)
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	tail	memcpy
.Lfunc_end8:
	.size	l_string_substring, .Lfunc_end8-l_string_substring
                                        # -- End function
	.globl	l_string_parseInt       # -- Begin function l_string_parseInt
	.p2align	2
	.type	l_string_parseInt,@function
l_string_parseInt:                      # @l_string_parseInt
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	lui	a1, %hi(.L.str.2)
	addi	a1, a1, %lo(.L.str.2)
	addi	a2, sp, 8
	call	sscanf
	lw	a0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end9:
	.size	l_string_parseInt, .Lfunc_end9-l_string_parseInt
                                        # -- End function
	.globl	l_string_length         # -- Begin function l_string_length
	.p2align	2
	.type	l_string_length,@function
l_string_length:                        # @l_string_length
# %bb.0:
	tail	strlen
.Lfunc_end10:
	.size	l_string_length, .Lfunc_end10-l_string_length
                                        # -- End function
	.globl	g_stringadd             # -- Begin function g_stringadd
	.p2align	2
	.type	g_stringadd,@function
g_stringadd:                            # @g_stringadd
# %bb.0:
	addi	sp, sp, -32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	sw	s1, 20(sp)
	sw	s2, 16(sp)
	sw	s3, 12(sp)
	mv	s2, a1
	mv	s3, a0
	call	strlen
	mv	s0, a0
	mv	a0, s2
	call	strlen
	add	a0, s0, a0
	addi	a0, a0, 1
	call	malloc
	mv	s1, a0
	mv	a1, s3
	mv	a2, s0
	call	memcpy
	mv	a0, s1
	mv	a1, s2
	lw	s3, 12(sp)
	lw	s2, 16(sp)
	lw	s1, 20(sp)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	tail	strcat
.Lfunc_end11:
	.size	g_stringadd, .Lfunc_end11-g_stringadd
                                        # -- End function
	.globl	g_stringeq              # -- Begin function g_stringeq
	.p2align	2
	.type	g_stringeq,@function
g_stringeq:                             # @g_stringeq
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	call	strcmp
	seqz	a0, a0
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end12:
	.size	g_stringeq, .Lfunc_end12-g_stringeq
                                        # -- End function
	.globl	g_stringne              # -- Begin function g_stringne
	.p2align	2
	.type	g_stringne,@function
g_stringne:                             # @g_stringne
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	call	strcmp
	snez	a0, a0
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end13:
	.size	g_stringne, .Lfunc_end13-g_stringne
                                        # -- End function
	.globl	g_stringlt              # -- Begin function g_stringlt
	.p2align	2
	.type	g_stringlt,@function
g_stringlt:                             # @g_stringlt
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	call	strcmp
	srli	a0, a0, 31
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end14:
	.size	g_stringlt, .Lfunc_end14-g_stringlt
                                        # -- End function
	.globl	g_stringle              # -- Begin function g_stringle
	.p2align	2
	.type	g_stringle,@function
g_stringle:                             # @g_stringle
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	call	strcmp
	slti	a0, a0, 1
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end15:
	.size	g_stringle, .Lfunc_end15-g_stringle
                                        # -- End function
	.globl	g_stringgt              # -- Begin function g_stringgt
	.p2align	2
	.type	g_stringgt,@function
g_stringgt:                             # @g_stringgt
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	call	strcmp
	sgtz	a0, a0
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end16:
	.size	g_stringgt, .Lfunc_end16-g_stringgt
                                        # -- End function
	.globl	g_stringge              # -- Begin function g_stringge
	.p2align	2
	.type	g_stringge,@function
g_stringge:                             # @g_stringge
# %bb.0:
	addi	sp, sp, -16
	sw	ra, 12(sp)
	call	strcmp
	not	a0, a0
	srli	a0, a0, 31
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end17:
	.size	g_stringge, .Lfunc_end17-g_stringge
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
