	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"enter the value"
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"given number is perfect number %d"
	.align 8
.LC3:
	.string	"given number is not perfect number %d"
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
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$1, -8(%rbp)
	jmp	.L2
.L4:
	movl	-16(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%edx, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.L3
	movl	-8(%rbp), %eax
	addl	%eax, -4(%rbp)
.L3:
	addl	$1, -8(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L4
	movl	-16(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jne	.L5
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L6
.L5:
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
.L6:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
