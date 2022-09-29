	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"Sum of elemnets %d\n"
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
	movl	$1, -32(%rbp)
	movl	$7, -28(%rbp)
	movl	$9, -24(%rbp)
	movl	$8, -20(%rbp)
	movl	$2, -48(%rbp)
	movl	$4, -44(%rbp)
	movl	$3, -40(%rbp)
	movl	$5, -36(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	movl	-32(%rbp,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rcx
	addq	%rcx, %rax
	movl	-48(%rbp,%rax,4), %eax
	addl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -8(%rbp)
.L3:
	cmpl	$1, -8(%rbp)
	jle	.L4
	addl	$1, -4(%rbp)
.L2:
	cmpl	$1, -4(%rbp)
	jle	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
