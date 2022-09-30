	.file	"main.c"
	.comm	e1,60,32
	.comm	e2,60,32
	.section	.rodata
.LC2:
	.string	"employee 1 id : %d\n"
.LC3:
	.string	"employee 1 name : %s\n"
.LC4:
	.string	"employee 1 salary : %f\n"
.LC5:
	.string	"employee 2 id : %d\n"
.LC6:
	.string	"employee 2 name : %s\n"
.LC7:
	.string	"employee 2 salary : %f\n"
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
	movl	.LC0(%rip), %eax
	movl	%eax, e1+56(%rip)
	movl	$102, e2(%rip)
	movabsq	$8017005966667899210, %rax
	movq	%rax, e2+4(%rip)
	movw	$25710, e2+12(%rip)
	movb	$0, e2+14(%rip)
	movl	.LC1(%rip), %eax
	movl	%eax, e2+56(%rip)
	movl	e1(%rip), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$e1+4, %esi
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movss	e1+56(%rip), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC4, %edi
	movl	$1, %eax
	call	printf
	movl	e2(%rip), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$e2+4, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movss	e2+56(%rip), %xmm0
	unpcklps	%xmm0, %xmm0
	cvtps2pd	%xmm0, %xmm0
	movl	$.LC7, %edi
	movl	$1, %eax
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
	.long	1197129728
	.align 4
.LC1:
	.long	1207310336
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
