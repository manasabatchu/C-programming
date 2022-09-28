	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"%d\n"
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
	movl	$1, -48(%rbp)
	movl	$3, -44(%rbp)
	movl	$6, -40(%rbp)
	movl	$8, -36(%rbp)
	movl	$7, -32(%rbp)
	movl	$3, -28(%rbp)
	movl	$2, -24(%rbp)
	movl	$1, -20(%rbp)
	movl	$8, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L6:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
	jmp	.L3
.L5:
	movl	-4(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %edx
	movl	-8(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jne	.L4
	movl	-8(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.L4:
	addl	$1, -8(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L5
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jle	.L6
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
