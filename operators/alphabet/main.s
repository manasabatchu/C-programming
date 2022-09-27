	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"enter any charcter"
.LC1:
	.string	"%c"
	.align 8
.LC2:
	.string	"'%c'is alphabe=%d is ascii value."
	.align 8
.LC3:
	.string	"'%c' is numeric=%d is ascii value."
	.align 8
.LC4:
	.string	"'%c'is special symbols=%d is ascii value."
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
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-1(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movzbl	-1(%rbp), %eax
	cmpb	$96, %al
	jle	.L2
	movzbl	-1(%rbp), %eax
	cmpb	$122, %al
	jle	.L3
.L2:
	movzbl	-1(%rbp), %eax
	cmpb	$64, %al
	jle	.L4
	movzbl	-1(%rbp), %eax
	cmpb	$90, %al
	jg	.L4
.L3:
	movzbl	-1(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-1(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	jmp	.L7
.L4:
	movzbl	-1(%rbp), %eax
	cmpb	$47, %al
	jle	.L6
	movzbl	-1(%rbp), %eax
	cmpb	$57, %al
	jg	.L6
	movzbl	-1(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-1(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	jmp	.L7
.L6:
	movzbl	-1(%rbp), %eax
	movsbl	%al, %edx
	movzbl	-1(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
.L7:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
