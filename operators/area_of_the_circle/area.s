	.file	"area.c"
	.section	.rodata
.LC1:
	.string	"enter the value of radius"
.LC2:
	.string	"%f"
.LC3:
	.string	"area of the circle %f\n"
.LC4:
	.string	"parimeter of the circle %f\n"
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
	movl	.LC0(%rip), %eax
	movl	%eax, -4(%rbp)
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movss	-16(%rbp), %xmm0
	mulss	-4(%rbp), %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -8(%rbp)
	movss	-8(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	movss	-4(%rbp), %xmm0
	addss	%xmm0, %xmm0
	movss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	%xmm0, -12(%rbp)
	movss	-12(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
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
	.long	1078523331
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
