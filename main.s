	.file	"main.c"
	.text
	.globl	MY_FLOAT
	.data
	.align 4
	.type	MY_FLOAT, @object
	.size	MY_FLOAT, 4
MY_FLOAT:
	.long	1118945935
	.section	.rodata
	.align 8
.LC0:
	.string	"%s() :           The true value: %08x,          MY_FLOAT=%f\n"
	.align 8
.LC1:
	.string	"%s() : The true value as double: %016lx, MY_DOUBLE=%f\n"
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
	movq	MY_FLOAT@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	%eax, -4(%rbp)
	movq	MY_FLOAT@GOTPCREL(%rip), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	MY_FLOAT@GOTPCREL(%rip), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movl	-4(%rbp), %edx
	movl	%edx, %ecx
	leaq	__func__.2369(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movsd	-24(%rbp), %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rcx
	leaq	__func__.2369(%rip), %rdx
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movq	MY_FLOAT@GOTPCREL(%rip), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$1, %eax
	call	mister_float_knr@PLT
	movq	MY_FLOAT@GOTPCREL(%rip), %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	$1, %eax
	call	mister_float_new@PLT
	movq	MY_FLOAT@GOTPCREL(%rip), %rax
	movss	(%rax), %xmm0
	call	mister_float_new_decl@PLT
	movq	MY_FLOAT@GOTPCREL(%rip), %rax
	movss	(%rax), %xmm0
	call	mister_float_mix@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.type	__func__.2369, @object
	.size	__func__.2369, 5
__func__.2369:
	.string	"main"
	.ident	"GCC: (GNU) 8.3.1 20191121 (Red Hat 8.3.1-5)"
	.section	.note.GNU-stack,"",@progbits
