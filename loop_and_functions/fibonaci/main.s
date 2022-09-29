	.file	"main.c"
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
	movl	$0, %eax
	call	febi_prime
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
.LC0:
	.string	"febinosi prime number %d\n"
	.text
	.globl	febi_prime
	.type	febi_prime, @function
febi_prime:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -20(%rbp)
	movl	$10, -24(%rbp)
	movl	$100, -28(%rbp)
	jmp	.L4
.L9:
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	addl	%edx, %eax
	movl	%eax, -20(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	$1, -16(%rbp)
	jmp	.L5
.L7:
	movl	-20(%rbp), %eax
	cltd
	idivl	-16(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L6
	addl	$1, -12(%rbp)
.L6:
	addl	$1, -16(%rbp)
.L5:
	movl	-16(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	.L7
	cmpl	$2, -12(%rbp)
	jne	.L8
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L8
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jg	.L8
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
.L8:
	movl	$0, -12(%rbp)
.L4:
	movl	-20(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	.L9
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	febi_prime, .-febi_prime
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
