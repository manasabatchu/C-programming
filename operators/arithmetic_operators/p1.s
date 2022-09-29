	.file	"p1.c"
	.section	.rodata
.LC0:
	.string	"enter the two numbers:"
.LC1:
	.string	"%d%d"
.LC2:
	.string	"the sum of two numbers:%d\n"
.LC3:
	.string	"the sub of two numbers:%d\n"
.LC4:
	.string	"the mul of two numbers:%d\n"
.LC5:
	.string	"the mod of two numbers:%d\n"
.LC6:
	.string	"the div of two numbers:%f\n"
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
	leaq	-28(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	-24(%rbp), %eax
	movl	-28(%rbp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	-24(%rbp), %eax
	cvtsi2ss	%eax, %xmm0
	movl	-28(%rbp), %eax
	cvtsi2ss	%eax, %xmm1
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC6, %edi
	movl	$1, %eax
	call	printf
	movl	$10, %edi
	call	putchar
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
