	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"enter n value"
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"enter the %d elements into array"
.LC3:
	.string	"element and Frequency"
.LC4:
	.string	"%d "
.LC5:
	.string	"and"
.LC6:
	.string	"%d\n"
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-96(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-96(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -52(%rbp)
	jmp	.L2
.L3:
	leaq	-496(%rbp), %rax
	movl	-52(%rbp), %edx
	movslq	%edx, %rdx
	salq	$2, %rdx
	addq	%rdx, %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -52(%rbp)
.L2:
	movl	-96(%rbp), %eax
	cmpl	%eax, -52(%rbp)
	jl	.L3
	movl	$100, -72(%rbp)
	movl	-72(%rbp), %eax
	movq	%rsp, %rdx
	movq	%rdx, %rbx
	movslq	%eax, %rdx
	subq	$1, %rdx
	movq	%rdx, -80(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r14
	movl	$0, %r15d
	movslq	%eax, %rdx
	movq	%rdx, %r12
	movl	$0, %r13d
	cltq
	salq	$2, %rax
	leaq	3(%rax), %rdx
	movl	$16, %eax
	subq	$1, %rax
	addq	%rdx, %rax
	movl	$16, %ecx
	movl	$0, %edx
	divq	%rcx
	imulq	$16, %rax, %rax
	subq	%rax, %rsp
	movq	%rsp, %rax
	addq	$3, %rax
	shrq	$2, %rax
	salq	$2, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -56(%rbp)
	jmp	.L4
.L9:
	movl	$1, -60(%rbp)
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	.L5
.L7:
	movl	-56(%rbp), %eax
	cltq
	movl	-496(%rbp,%rax,4), %edx
	movl	-64(%rbp), %eax
	cltq
	movl	-496(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	jne	.L6
	addl	$1, -60(%rbp)
	movq	-88(%rbp), %rax
	movl	-64(%rbp), %edx
	movslq	%edx, %rdx
	movl	-92(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
.L6:
	addl	$1, -64(%rbp)
.L5:
	movl	-64(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L7
	movq	-88(%rbp), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	-92(%rbp), %eax
	je	.L8
	movq	-88(%rbp), %rax
	movl	-56(%rbp), %edx
	movslq	%edx, %rdx
	movl	-60(%rbp), %ecx
	movl	%ecx, (%rax,%rdx,4)
.L8:
	addl	$1, -56(%rbp)
.L4:
	movl	-56(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L9
	movl	$.LC3, %edi
	call	puts
	movl	$0, -68(%rbp)
	jmp	.L10
.L12:
	movq	-88(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	cmpl	-92(%rbp), %eax
	je	.L11
	movl	-68(%rbp), %eax
	cltq
	movl	-496(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movq	-88(%rbp), %rax
	movl	-68(%rbp), %edx
	movslq	%edx, %rdx
	movl	(%rax,%rdx,4), %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
.L11:
	addl	$1, -68(%rbp)
.L10:
	movl	-68(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jl	.L12
	movl	$0, %eax
	movq	%rbx, %rsp
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
