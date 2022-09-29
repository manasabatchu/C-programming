	.file	"interest.c"
	.section	.rodata
.LC0:
	.string	"enter the value:"
.LC1:
	.string	"%f%f%f%f"
.LC3:
	.string	"value of interset %f"
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
	movl	$.LC0, %edi
	call	puts
	leaq	-20(%rbp), %rsi
	leaq	-16(%rbp), %rcx
	leaq	-12(%rbp), %rdx
	leaq	-8(%rbp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movss	-8(%rbp), %xmm1
	movss	-12(%rbp), %xmm0
	mulss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -16(%rbp)
	movss	-16(%rbp), %xmm0
	movss	.LC2(%rip), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -4(%rbp)
	movss	-16(%rbp), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC3, %edi
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
.LC2:
	.long	1120403456
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
