	.file	"main.c"
	.comm	emp1,16,16
	.section	.rodata
.LC1:
	.string	"Empidis:%d\n"
.LC2:
	.string	"EmpNameis:%s\n"
.LC3:
	.string	"Empsalaryis:%f\n"
.LC4:
	.string	"Genderis:%c\n"
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
	movl	$1, emp1(%rip)
	movl	$1769365842, emp1+4(%rip)
	movb	$0, emp1+8(%rip)
	movl	.LC0(%rip), %eax
	movl	%eax, emp1+8(%rip)
	movb	$77, emp1+12(%rip)
	movl	emp1(%rip), %eax
	movl	%eax, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$emp1+4, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movss	emp1+8(%rip), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC3, %edi
	movl	$1, %eax
	call	printf
	movzbl	emp1+12(%rip), %eax
	movsbl	%al, %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1187325184
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
