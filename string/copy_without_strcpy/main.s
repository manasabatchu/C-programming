	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"string1 :%s\n"
.LC1:
	.string	"copy the string2 %s"
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
	movabsq	$7812730951476798824, %rax
	movq	%rax, -16(%rbp)
	movw	$111, -8(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movb	$0, -1(%rbp)
	jmp	.L2
.L3:
	movsbl	-1(%rbp), %ecx
	movsbl	-1(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %edx
	movslq	%ecx, %rax
	movb	%dl, -128(%rbp,%rax)
	addb	$1, -1(%rbp)
.L2:
	movsbl	-1(%rbp), %eax
	cltq
	movzbl	-16(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L3
	movsbl	-1(%rbp), %eax
	cltq
	movb	$0, -128(%rbp,%rax)
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
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
