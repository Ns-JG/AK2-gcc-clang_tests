	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	__Z9function1v                  ## -- Begin function _Z9function1v
	.p2align	4, 0x90
__Z9function1v:                         ## @_Z9function1v
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$5, %eax
	leaq	_a(%rip), %rcx
	leaq	_b(%rip), %rdx
	leaq	_c(%rip), %rsi
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movdqu	-16(%rcx,%rax,4), %xmm0
	movdqu	(%rcx,%rax,4), %xmm1
	movdqu	-16(%rdx,%rax,4), %xmm2
	movdqu	(%rdx,%rax,4), %xmm3
	pmulld	%xmm0, %xmm2
	pmulld	%xmm1, %xmm3
	paddd	%xmm0, %xmm2
	paddd	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rsi,%rax,4)
	movdqu	%xmm3, (%rsi,%rax,4)
	addq	$8, %rax
	cmpq	$301, %rax                      ## imm = 0x12D
	jne	LBB0_1
## %bb.2:
	movl	_a+1188(%rip), %eax
	movl	_b+1188(%rip), %ecx
	imull	%eax, %ecx
	addl	%eax, %ecx
	movl	%ecx, _c+1188(%rip)
	movl	_a+1192(%rip), %eax
	movl	_b+1192(%rip), %ecx
	imull	%eax, %ecx
	addl	%eax, %ecx
	movl	%ecx, _c+1192(%rip)
	movl	_a+1196(%rip), %eax
	movl	_b+1196(%rip), %ecx
	imull	%eax, %ecx
	addl	%eax, %ecx
	movl	%ecx, _c+1196(%rip)
	movl	_a+1200(%rip), %eax
	movl	_b+1200(%rip), %ecx
	imull	%eax, %ecx
	addl	%eax, %ecx
	movl	%ecx, _c+1200(%rip)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_a                              ## @a
.zerofill __DATA,__common,_a,1200,4
	.globl	_b                              ## @b
.zerofill __DATA,__common,_b,1200,4
	.globl	_c                              ## @c
.zerofill __DATA,__common,_c,1200,4
.subsections_via_symbols
