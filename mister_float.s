	.file	"mister_float.c"
	.text
	.section	.rodata
.LC0:
	.string	"%22s(): "
.LC4:
	.string	"\033[32m"
.LC5:
	.string	"\033[31m"
.LC6:
	.string	"0x%016lx : f=%f\033[0m\n"
	.text
	.globl	mister_float_knr
	.type	mister_float_knr, @function
mister_float_knr:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	__func__.3415(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L7
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	jmp	.L4
.L7:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.L4:
	movss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	mister_float_knr, .-mister_float_knr
	.globl	mister_float_mix
	.type	mister_float_mix, @function
mister_float_mix:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	__func__.3420(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L14
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	jmp	.L11
.L14:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.L11:
	movss	-24(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	mister_float_mix, .-mister_float_mix
	.globl	mister_float_new
	.type	mister_float_new, @function
mister_float_new:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	leaq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	__func__.3425(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L21
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	jmp	.L18
.L21:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.L18:
	movss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	mister_float_new, .-mister_float_new
	.globl	mister_float_new_decl
	.type	mister_float_new_decl, @function
mister_float_new_decl:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movss	%xmm0, -20(%rbp)
	leaq	-20(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	leaq	__func__.3430(%rip), %rdx
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	.LC1(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movq	.LC2(%rip), %xmm1
	andpd	%xmm0, %xmm1
	movsd	.LC3(%rip), %xmm0
	comisd	%xmm1, %xmm0
	jbe	.L28
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC4(%rip), %rdi
	call	fwrite@PLT
	jmp	.L25
.L28:
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rcx
	movl	$5, %edx
	movl	$1, %esi
	leaq	.LC5(%rip), %rdi
	call	fwrite@PLT
.L25:
	movss	-20(%rbp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movq	stderr@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
	movl	$1, %eax
	call	fprintf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	mister_float_new_decl, .-mister_float_new_decl
	.section	.rodata
	.align 16
	.type	__func__.3415, @object
	.size	__func__.3415, 17
__func__.3415:
	.string	"mister_float_knr"
	.align 16
	.type	__func__.3420, @object
	.size	__func__.3420, 17
__func__.3420:
	.string	"mister_float_mix"
	.align 16
	.type	__func__.3425, @object
	.size	__func__.3425, 17
__func__.3425:
	.string	"mister_float_new"
	.align 16
	.type	__func__.3430, @object
	.size	__func__.3430, 22
__func__.3430:
	.string	"mister_float_new_decl"
	.align 8
.LC1:
	.long	3951369912
	.long	1079392337
	.align 16
.LC2:
	.long	4294967295
	.long	2147483647
	.long	0
	.long	0
	.align 8
.LC3:
	.long	1202590843
	.long	1065646817
	.ident	"GCC: (GNU) 8.3.1 20191121 (Red Hat 8.3.1-5)"
	.section	.note.GNU-stack,"",@progbits
