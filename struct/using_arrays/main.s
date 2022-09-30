	.file	"main.c"
	.comm	emp,560,32
	.section	.rodata
.LC0:
	.string	"Record%d"
.LC1:
	.string	"\nenterempolyeeid:"
.LC2:
	.string	"%d"
.LC3:
	.string	"\nenterempolyeename:"
.LC4:
	.string	"%s"
.LC5:
	.string	"\nenteremployeesalary:"
.LC6:
	.string	"%f"
.LC7:
	.string	"\nempidis:%d\n"
.LC8:
	.string	"empnameis:%s\n"
.LC9:
	.string	"empsalary:%f\n"
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
	subq	$576, %rsp
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-576(%rbp), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	leaq	-576(%rbp), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	leaq	-576(%rbp), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	16(%rdx), %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -4(%rbp)
.L2:
	cmpl	$1, -4(%rbp)
	jle	.L3
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	0(%rbp,%rdx), %rax
	subq	$576, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	leaq	-576(%rbp), %rcx
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	(%rcx,%rdx), %rax
	addq	$4, %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	cltq
	salq	$2, %rax
	leaq	0(,%rax,8), %rdx
	subq	%rax, %rdx
	leaq	0(%rbp,%rdx), %rax
	subq	$560, %rax
	movss	8(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC9, %edi
	movl	$1, %eax
	call	printf
	addl	$1, -4(%rbp)
.L4:
	cmpl	$1, -4(%rbp)
	jle	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
