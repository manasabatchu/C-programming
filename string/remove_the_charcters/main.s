	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"enter the strings:"
.LC1:
	.string	"%s"
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
	subq	$112, %rsp
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-112(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$0, -4(%rbp)
	jmp	.L2
.L6:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$96, %al
	jle	.L3
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$122, %al
	jle	.L4
.L3:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$64, %al
	jle	.L5
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	cmpb	$90, %al
	jg	.L5
.L4:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
.L5:
	addl	$1, -4(%rbp)
.L2:
	movl	-4(%rbp), %eax
	cltq
	movzbl	-112(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L6
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
