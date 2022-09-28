	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"The substring %s\n present in the mainstring %s\n"
	.align 8
.LC1:
	.string	"The substring %s\n not present in the mainstring %s\n"
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
	movabsq	$7214873751231291757, %rax
	movq	%rax, -16(%rbp)
	movl	$1885957225, -8(%rbp)
	movb	$0, -4(%rbp)
	movl	$1768712548, -32(%rbp)
	movw	$112, -28(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strstr
	movb	%al, -1(%rbp)
	movsbq	-1(%rbp), %rax
	testq	%rax, %rax
	je	.L2
	leaq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	jmp	.L3
.L2:
	leaq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
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
