	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"Enter number of elements: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"Sorry! unable to allocate memory"
.LC3:
	.string	"Enter elements of array: "
.LC4:
	.string	"Sum=%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	$0, -8(%rbp)
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-20(%rbp), %eax
	cltq
	salq	$2, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.L2
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %edi
	call	exit
.L2:
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-16(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L3:
	movl	-20(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L4
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
