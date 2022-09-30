	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter the name, roll number, and marks of the student %d"
.LC1:
	.string	"%s %d %f"
.LC2:
	.string	"%c"
	.align 8
.LC3:
	.string	"Printing the Student details ..."
.LC4:
	.string	"%s %d %f\n"
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
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-64(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rcx
	leaq	-48(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	leaq	(%rax,%rdx), %rsi
	leaq	-32(%rbp), %rdi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdi, %rax
	movq	%rsi, %rdx
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	leaq	-33(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -4(%rbp)
.L2:
	cmpl	$2, -4(%rbp)
	jle	.L3
	movl	$.LC3, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	movss	-64(%rbp,%rax,4), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %ecx
	leaq	-32(%rbp), %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movl	%ecx, %edx
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -4(%rbp)
.L4:
	cmpl	$2, -4(%rbp)
	jle	.L5
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
