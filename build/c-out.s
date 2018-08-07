	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_fibonacci
	.p2align	4, 0x90
_fibonacci:                             ## @fibonacci
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -8(%rbp)
	cmpl	$0, -8(%rbp)
	jge	LBB0_2
## BB#1:
	movl	$-1, -4(%rbp)
	jmp	LBB0_7
LBB0_2:
	cmpl	$0, -8(%rbp)
	jne	LBB0_4
## BB#3:
	movl	$0, -4(%rbp)
	jmp	LBB0_7
LBB0_4:
	cmpl	$1, -8(%rbp)
	jne	LBB0_6
## BB#5:
	movl	$1, -4(%rbp)
	jmp	LBB0_7
LBB0_6:
	movl	-8(%rbp), %eax
	subl	$1, %eax
	movl	%eax, %edi
	callq	_fibonacci
	movl	-8(%rbp), %edi
	subl	$2, %edi
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	callq	_fibonacci
	movl	-12(%rbp), %edi         ## 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -4(%rbp)
LBB0_7:
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	movl	$100, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	_fibonacci
	leaq	L_.str(%rip), %rdi
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %esi
	movb	$0, %al
	callq	_printf
	xorl	%esi, %esi
	movl	%eax, -16(%rbp)         ## 4-byte Spill
	movl	%esi, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"


.subsections_via_symbols
