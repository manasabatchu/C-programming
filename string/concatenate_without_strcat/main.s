	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Concatenation of two strings %s%s\n"
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
	movl	$1819043176, -16(%rbp)
	movw	$111, -12(%rbp)
	movl	$1819438967, -32(%rbp)
	movw	$100, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	addl	$1, -8(%rbp)
	addl	$1, -4(%rbp)
.L3:
	movl	-8(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L4
	movl	-8(%rbp), %eax
	cltq
	movzbl	-32(%rbp,%rax), %edx
	movl	-4(%rbp), %eax
	cltq
	movb	%dl, -16(%rbp,%rax)
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L5
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
