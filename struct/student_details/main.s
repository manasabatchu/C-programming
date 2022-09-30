	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"enter %d person roll number,name,Gender,score"
.LC1:
	.string	"%d%s %c%f"
.LC2:
	.string	"%d student details : "
	.align 8
.LC3:
	.string	"roll number=%d\t name=%s\t Gender=%c\t score=%f\n"
.LC4:
	.string	"maximum score %f:"
.LC5:
	.string	"minimum score %f:"
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
	subq	$656, %rsp
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-656(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	$16, %rdx
	addq	%rdx, %rax
	leaq	12(%rax), %rdi
	leaq	-656(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	$16, %rdx
	addq	%rdx, %rax
	leaq	8(%rax), %rcx
	leaq	-656(%rbp), %rax
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$5, %rdx
	addq	%rdx, %rax
	leaq	4(%rax), %rdx
	leaq	-656(%rbp), %rax
	movl	-4(%rbp), %esi
	movslq	%esi, %rsi
	salq	$5, %rsi
	addq	%rsi, %rax
	movq	%rdi, %r8
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -4(%rbp)
.L2:
	cmpl	$4, -4(%rbp)
	jle	.L3
	movl	$0, -4(%rbp)
	jmp	.L4
.L9:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movss	12(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movzbl	8(%rax), %eax
	movsbl	%al, %edx
	leaq	-656(%rbp), %rax
	movl	-4(%rbp), %ecx
	movslq	%ecx, %rcx
	salq	$5, %rcx
	addq	%rcx, %rax
	leaq	4(%rax), %rsi
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$656, %rax
	movl	(%rax), %eax
	movl	%edx, %ecx
	movq	%rsi, %rdx
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	movl	-8(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movss	12(%rax), %xmm1
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movss	12(%rax), %xmm0
	ucomiss	%xmm1, %xmm0
	jbe	.L5
	movl	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
.L5:
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movss	12(%rax), %xmm0
	movl	-4(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movss	12(%rax), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	.L7
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
.L7:
	addl	$1, -4(%rbp)
.L4:
	cmpl	$4, -4(%rbp)
	jle	.L9
	movl	-8(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movss	12(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	movl	-12(%rbp), %eax
	cltq
	salq	$5, %rax
	addq	%rbp, %rax
	subq	$640, %rax
	movss	12(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC5, %edi
	movl	$1, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
