	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Greatest of the numbers is %d\n"
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
	movl	$21, -32(%rbp)
	movl	$999, -28(%rbp)
	movl	$998, -24(%rbp)
	movl	$1000, -20(%rbp)
	movl	$10101, -16(%rbp)
	movl	$0, -4(%rbp)
	movl	$0, -8(%rbp)
	jmp	.L2
.L4:
	movl	-8(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	cmpl	-4(%rbp), %eax
	jl	.L3
	movl	-8(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, -4(%rbp)
.L3:
	addl	$1, -8(%rbp)
.L2:
	cmpl	$4, -8(%rbp)
	jle	.L4
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
