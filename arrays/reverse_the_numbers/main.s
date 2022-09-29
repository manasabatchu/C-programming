	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Original elements in the array %d\n"
	.align 8
.LC1:
	.string	"Rverse the elements in the array"
.LC2:
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
	subq	$32, %rsp
	movl	$21, -32(%rbp)
	movl	$78, -28(%rbp)
	movl	$43, -24(%rbp)
	movl	$90, -20(%rbp)
	movl	$77, -16(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L2:
	cmpl	$4, -4(%rbp)
	jle	.L3
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$4, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	movl	-32(%rbp,%rax,4), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	subl	$1, -4(%rbp)
.L4:
	cmpl	$0, -4(%rbp)
	jns	.L5
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
