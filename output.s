	.text
	.globl	main
	.p2align	1
	.type	main,@function
main:
.main_entry: 
	addi sp, sp, 0
	mv 0%, s0
	mv 1%, s1
	mv 2%, s2
	mv 3%, s3
	mv 4%, s4
	mv 5%, s5
	mv 6%, s6
	mv 7%, s7
	mv 8%, s8
	mv 9%, s9
	mv 10%, s10
	mv 11%, s11
	mv 12%, ra
	call __init
	mv a0, zero
	mv s0, 0%
	mv s1, 1%
	mv s2, 2%
	mv s3, 3%
	mv s4, 4%
	mv s5, 5%
	mv s6, 6%
	mv s7, 7%
	mv s8, 8%
	mv s9, 9%
	mv s10, 10%
	mv s11, 11%
	mv ra, 12%
	addi sp, sp, 0
	ret
	.size	main, .-main

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	mv 0%, s0
	mv 1%, s1
	mv 2%, s2
	mv 3%, s3
	mv 4%, s4
	mv 5%, s5
	mv 6%, s6
	mv 7%, s7
	mv 8%, s8
	mv 9%, s9
	mv 10%, s10
	mv 11%, s11
	mv 12%, ra
	mv s0, 0%
	mv s1, 1%
	mv s2, 2%
	mv s3, 3%
	mv s4, 4%
	mv s5, 5%
	mv s6, 6%
	mv s7, 7%
	mv s8, 8%
	mv s9, 9%
	mv s10, 10%
	mv s11, 11%
	mv ra, 12%
	addi sp, sp, 0
	ret
	.size	__init, .-__init
