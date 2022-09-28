	.file	"main.c"
	.section	.rodata
	.align 8
.LC1:
	.string	"Enter the 9 elements of matrix: "
.LC2:
	.string	"%d"
.LC3:
	.string	"\nThe matrix is"
.LC4:
	.string	"%d\t"
.LC5:
	.string	"\nInverse of matrix is: \n"
.LC6:
	.string	"%.2f\t"
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
	subq	$48, %rsp
	movl	.LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	leaq	-48(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -8(%rbp)
.L3:
	cmpl	$2, -8(%rbp)
	jle	.L4
	addl	$1, -4(%rbp)
.L2:
	cmpl	$2, -4(%rbp)
	jle	.L5
	movl	$.LC3, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L6
.L9:
	movl	$10, %edi
	call	putchar
	movl	$0, -8(%rbp)
	jmp	.L7
.L8:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -8(%rbp)
.L7:
	cmpl	$2, -8(%rbp)
	jle	.L8
	addl	$1, -4(%rbp)
.L6:
	cmpl	$2, -4(%rbp)
	jle	.L9
	movl	$0, -4(%rbp)
	jmp	.L10
.L11:
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %esi
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	addq	$3, %rax
	movl	-48(%rbp,%rax,4), %edi
	movl	-4(%rbp), %eax
	leal	2(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	addq	$6, %rax
	movl	-48(%rbp,%rax,4), %eax
	imull	%eax, %edi
	movl	-4(%rbp), %eax
	leal	2(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	addq	$3, %rax
	movl	-48(%rbp,%rax,4), %r8d
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movl	$1431655766, %edx
	movl	%ecx, %eax
	imull	%edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movslq	%edx, %rax
	addq	$6, %rax
	movl	-48(%rbp,%rax,4), %eax
	imull	%r8d, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	imull	%esi, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-12(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	addl	$1, -4(%rbp)
.L10:
	cmpl	$2, -4(%rbp)
	jle	.L11
	movl	$.LC5, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L12
.L15:
	movl	$0, -8(%rbp)
	jmp	.L13
.L14:
	movl	-4(%rbp), %eax
	leal	1(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	-8(%rbp), %eax
	leal	1(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, %edx
	movslq	%edx, %rsi
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-48(%rbp,%rax,4), %edi
	movl	-4(%rbp), %eax
	leal	2(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	-8(%rbp), %eax
	leal	2(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, %edx
	movslq	%edx, %rsi
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-48(%rbp,%rax,4), %eax
	imull	%eax, %edi
	movl	-4(%rbp), %eax
	leal	1(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	subl	%eax, %esi
	movl	%esi, %ecx
	movl	-8(%rbp), %eax
	leal	2(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, %edx
	movslq	%edx, %rsi
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-48(%rbp,%rax,4), %r8d
	movl	-4(%rbp), %eax
	leal	2(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	addl	%eax, %eax
	addl	%ecx, %eax
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	-8(%rbp), %eax
	leal	1(%rax), %esi
	movl	$1431655766, %edx
	movl	%esi, %eax
	imull	%edx
	movl	%esi, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	subl	%eax, %esi
	movl	%esi, %edx
	movslq	%edx, %rsi
	movslq	%ecx, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rsi, %rax
	movl	-48(%rbp,%rax,4), %eax
	imull	%r8d, %eax
	subl	%eax, %edi
	movl	%edi, %eax
	cvtsi2ss	%eax, %xmm0
	divss	-12(%rbp), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -8(%rbp)
.L13:
	cmpl	$2, -8(%rbp)
	jle	.L14
	movl	$10, %edi
	call	putchar
	addl	$1, -4(%rbp)
.L12:
	cmpl	$2, -4(%rbp)
	jle	.L15
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	0
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
