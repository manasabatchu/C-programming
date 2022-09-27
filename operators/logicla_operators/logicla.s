	.file	"logicla.c"
	.section	.rodata
.LC4:
	.string	"%d\n%d\n%d\n%d\n%d"
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
	subq	$64, %rsp
	movl	$8, -4(%rbp)
	movl	$5, -8(%rbp)
	movl	.LC0(%rip), %eax
	movl	%eax, -12(%rbp)
	movl	.LC1(%rip), %eax
	movl	%eax, -16(%rbp)
	movb	$99, -17(%rbp)
	movb	$100, -18(%rbp)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	imull	-8(%rbp), %eax
	movsbl	-18(%rbp), %edx
	leal	(%rdx,%rdx), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -24(%rbp)
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movsbl	-17(%rbp), %edx
	movsbl	-18(%rbp), %ecx
	addl	%ecx, %ecx
	addl	%edx, %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	cvtsi2ss	%eax, %xmm0
	movss	-12(%rbp), %xmm1
	mulss	-16(%rbp), %xmm1
	divss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	addl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	cmpl	$99, %eax
	setg	%al
	movzbl	%al, %eax
	movl	%eax, -32(%rbp)
	movss	-12(%rbp), %xmm0
	addss	%xmm0, %xmm0
	xorps	%xmm1, %xmm1
	ucomiss	-16(%rbp), %xmm1
	jp	.L2
	xorps	%xmm1, %xmm1
	ucomiss	-16(%rbp), %xmm1
	jne	.L2
	movl	.LC3(%rip), %eax
	jmp	.L4
.L2:
	movl	.LC2(%rip), %eax
.L4:
	movl	%eax, -52(%rbp)
	movss	-52(%rbp), %xmm2
	addss	%xmm2, %xmm0
	cvttss2si	%xmm0, %eax
	movl	%eax, -36(%rbp)
	movss	-12(%rbp), %xmm0
	ucomiss	-16(%rbp), %xmm0
	jbe	.L5
	cmpl	$0, -4(%rbp)
	jg	.L7
.L5:
	cmpl	$4, -8(%rbp)
	jg	.L8
.L7:
	movl	$1, %eax
	jmp	.L9
.L8:
	movl	$0, %eax
.L9:
	movl	%eax, -40(%rbp)
	movsbl	-18(%rbp), %ecx
	movl	-40(%rbp), %edi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%edi, %r9d
	movl	%esi, %r8d
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
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
	.long	1000593162
	.align 4
.LC1:
	.long	1008981770
	.align 4
.LC2:
	.long	0
	.align 4
.LC3:
	.long	1065353216
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
