	.file	"main.c"
	.comm	emp1,5400,32
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter name, id,salary of employee"
.LC1:
	.string	"%s %d %f"
.LC2:
	.string	"\nEmployee Detailes"
.LC3:
	.string	"Name:%s\n id:%d\n salary:%f\n"
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
	addq	$-128, %rsp
	movl	$.LC0, %edi
	call	puts
	leaq	-128(%rbp), %rax
	leaq	104(%rax), %rcx
	leaq	-128(%rbp), %rax
	leaq	100(%rax), %rdx
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	leaq	-128(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$.LC2, %edi
	call	puts
	movq	-8(%rbp), %rax
	movss	104(%rax), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movq	-8(%rbp), %rax
	movl	100(%rax), %edx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
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
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
