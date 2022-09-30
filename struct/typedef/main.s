	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter first two complex numbers(saperate real part and imaginary part with 'Space'):"
.LC1:
	.string	"%d%d"
	.align 8
.LC2:
	.string	"Enter second two complex numbers(saperate real part and imaginary part with 'Space'):"
	.align 8
.LC3:
	.string	"\nAddition is=%d+%di\n Subtraction is =%d"
.LC4:
	.string	"+%di\n"
.LC5:
	.string	"%di\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	leaq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-16(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-12(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%eax, %edx
	movl	-16(%rbp), %esi
	movl	-32(%rbp), %eax
	addl	%esi, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %edx
	movl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	testl	%eax, %eax
	jle	.L2
	movl	-12(%rbp), %edx
	movl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	jmp	.L3
.L2:
	movl	-12(%rbp), %edx
	movl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
.L3:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
