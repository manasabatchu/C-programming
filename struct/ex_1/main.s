	.file	"main.c"
	.comm	e1,56,32
	.section	.rodata
.LC0:
	.string	"employee 1 id : %d\n"
.LC1:
	.string	"employee 1 name : %s\n"
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
	movl	$101, e1(%rip)
	movabsq	$7010451432938565459, %rax
	movq	%rax, e1+4(%rip)
	movl	$1635218281, e1+12(%rip)
	movw	$108, e1+16(%rip)
	movl	e1(%rip), %eax
	movl	%eax, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$e1+4, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
