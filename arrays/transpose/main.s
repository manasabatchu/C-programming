	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"Enter rows and columns: "
.LC1:
	.string	"%d %d"
.LC2:
	.string	"\nEnter matrix elements:"
.LC3:
	.string	"Enter element m%d%d: "
.LC4:
	.string	"%d"
.LC5:
	.string	"\nEntered matrix: "
.LC6:
	.string	"%d  "
.LC7:
	.string	"\nTranspose of the matrix:"
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
	subq	$832, %rsp
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-824(%rbp), %rdx
	leaq	-820(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC2, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	leal	1(%rax), %edx
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	leaq	-416(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rsi
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	movq	%rax, %rsi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	addl	$1, -8(%rbp)
.L3:
	movl	-824(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L4
	addl	$1, -4(%rbp)
.L2:
	movl	-820(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L5
	movl	$.LC5, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L6
.L10:
	movl	$0, -8(%rbp)
	jmp	.L7
.L9:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	-824(%rbp), %eax
	subl	$1, %eax
	cmpl	-8(%rbp), %eax
	jne	.L8
	movl	$10, %edi
	call	putchar
.L8:
	addl	$1, -8(%rbp)
.L7:
	movl	-824(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L9
	addl	$1, -4(%rbp)
.L6:
	movl	-820(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L10
	movl	$0, -4(%rbp)
	jmp	.L11
.L14:
	movl	$0, -8(%rbp)
	jmp	.L12
.L13:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	-416(%rbp,%rax,4), %ecx
	movl	-4(%rbp), %eax
	movslq	%eax, %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movl	%ecx, -816(%rbp,%rax,4)
	addl	$1, -8(%rbp)
.L12:
	movl	-824(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L13
	addl	$1, -4(%rbp)
.L11:
	movl	-820(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L14
	movl	$.LC7, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L15
.L19:
	movl	$0, -8(%rbp)
	jmp	.L16
.L18:
	movl	-8(%rbp), %eax
	movslq	%eax, %rcx
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movl	-816(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	-820(%rbp), %eax
	subl	$1, %eax
	cmpl	-8(%rbp), %eax
	jne	.L17
	movl	$10, %edi
	call	putchar
.L17:
	addl	$1, -8(%rbp)
.L16:
	movl	-820(%rbp), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L18
	addl	$1, -4(%rbp)
.L15:
	movl	-824(%rbp), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L19
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
