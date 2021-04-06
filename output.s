	.text
	.globl	cls_Fibonacci_set_problem
	.p2align	1
	.type	cls_Fibonacci_set_problem,@function
cls_Fibonacci_set_problem:
.cls_Fibonacci_set_problem_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	mv s1, a0
	mv s0, a1
	mv a0, s1
	call cls_Fibonacci_reset
	mv t0, s1
	sw s0, 0(t0)
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
	.size	cls_Fibonacci_set_problem, .-cls_Fibonacci_set_problem

	.globl	cls_Fibonacci_reset
	.p2align	1
	.type	cls_Fibonacci_reset,@function
cls_Fibonacci_reset:
.cls_Fibonacci_reset_entry: 
	addi sp, sp, 0
	sw zero, 0(a0)
	addi t0, a0, 4
	sw zero, 0(t0)
	addi sp, sp, 0
	ret
	.size	cls_Fibonacci_reset, .-cls_Fibonacci_reset

	.globl	__init
	.p2align	1
	.type	__init,@function
__init:
.__init_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	__init, .-__init

	.globl	cls_Fibonacci_calc
	.p2align	1
	.type	cls_Fibonacci_calc,@function
cls_Fibonacci_calc:
.cls_Fibonacci_calc_entry: 
	addi sp, sp, -16
	sw s0, 12(sp)
	sw ra, 8(sp)
	mv s0, a1
	beq s0, zero, .cls_Fibonacci_calc_if_then
.cls_Fibonacci_calc_else_then: 
	addi a1, s0, -1
	call cls_Fibonacci_calc
	slt t0, s0, a0
	j .cls_Fibonacci_calc_rootReturn
.cls_Fibonacci_calc_if_then: 
	null
.cls_Fibonacci_calc_rootReturn: 
	lw s0, 12(sp)
	lw ra, 8(sp)
	addi sp, sp, 16
	ret
	.size	cls_Fibonacci_calc, .-cls_Fibonacci_calc

	.globl	cls_Fibonacci_con_0
	.p2align	1
	.type	cls_Fibonacci_con_0,@function
cls_Fibonacci_con_0:
.cls_Fibonacci_con_0_entry: 
	addi sp, sp, 0
	addi sp, sp, 0
	ret
	.size	cls_Fibonacci_con_0, .-cls_Fibonacci_con_0

	.globl	cls_Fibonacci_get_result
	.p2align	1
	.type	cls_Fibonacci_get_result,@function
cls_Fibonacci_get_result:
.cls_Fibonacci_get_result_entry: 
	addi sp, sp, -16
	sw s0, 8(sp)
	sw s1, 12(sp)
	sw ra, 4(sp)
	mv s1, a0
	mv t0, s1
	addi s0, t0, 4
	mv t0, s1
	lw a1, 0(t0)
	mv a0, s1
	call cls_Fibonacci_calc
	sw a0, 0(s0)
	mv t0, s1
	addi a0, t0, 4
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
	.size	cls_Fibonacci_get_result, .-cls_Fibonacci_get_result

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
	null
	call malloc
	mv s0, a0
	null
.main_for_cond: 
	null
	blt s1, t0, .main_for_body
.main_for_end: 
	lw s0, 8(sp)
	lw s1, 12(sp)
	lw ra, 4(sp)
	addi sp, sp, 16
	ret
.main_for_body: 
	lw t0, 0(sp)
	lw a1, 0(t0)
	mv a0, s0
	call cls_Fibonacci_set_problem
	mv a0, s0
	call cls_Fibonacci_get_result
	call g_toString
	call g_println
.main_for_upd: 
	addi t0, s1, 1
	mv s1, t0
	j .main_for_cond
	.size	main, .-main

