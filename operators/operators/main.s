	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"enter the operators + or - or * or/ "
.LC1:
	.string	"%c"
.LC2:
	.string	" %d + %d = %d "
.LC3:
	.string	" %d - %d = %d "
.LC4:
	.string	" %d * %d = %d "
.LC5:
	.string	" %d / %d = %d "
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
	movl	$3, -4(%rbp)
	movl	$9, -8(%rbp)
	movl	$.LC0, %edi
	call	puts
	leaq	-9(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movzbl	-9(%rbp), %eax
	movsbl	%al, %eax
	cmpl	$43, %eax
	je	.L3
	cmpl	$43, %eax
	jg	.L4
	cmpl	$42, %eax
	je	.L5
	jmp	.L2
.L4:
	cmpl	$45, %eax
	je	.L6
	cmpl	$47, %eax
	je	.L7
	jmp	.L2
.L3:
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	leal	(%rdx,%rax), %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L2
.L6:
	movl	-8(%rbp), %eax
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L2
.L5:
	movl	-4(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	jmp	.L2
.L7:
	movl	-4(%rbp), %eax
	cltd
	idivl	-8(%rbp)
	movl	%eax, %ecx
	movl	-8(%rbp), %edx
	movl	-4(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	nop
.L2:
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
