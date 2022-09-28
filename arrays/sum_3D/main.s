	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"Sum of 3D elemets %d\n"
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
	subq	$80, %rsp
	movl	$0, -16(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movq	$0, -32(%rbp)
	movq	$0, -24(%rbp)
	movl	$1, -48(%rbp)
	movl	$2, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$4, -36(%rbp)
	movl	$5, -32(%rbp)
	movl	$6, -28(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movl	$6, -80(%rbp)
	movl	$5, -76(%rbp)
	movl	$4, -72(%rbp)
	movl	$3, -68(%rbp)
	movl	$2, -64(%rbp)
	movl	$1, -60(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L7:
	movl	$0, -8(%rbp)
	jmp	.L3
.L6:
	movl	$0, -12(%rbp)
	jmp	.L4
.L5:
	movl	-12(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rcx
	movl	-8(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rcx, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movl	-48(%rbp,%rax,4), %edx
	movl	-12(%rbp), %eax
	cltq
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rsi
	movl	-8(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rsi, %rsi
	addq	%rsi, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movl	-80(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -12(%rbp)
.L4:
	cmpl	$1, -12(%rbp)
	jle	.L5
	addl	$1, -8(%rbp)
.L3:
	cmpl	$1, -8(%rbp)
	jle	.L6
	addl	$1, -4(%rbp)
.L2:
	cmpl	$1, -4(%rbp)
	jle	.L7
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
