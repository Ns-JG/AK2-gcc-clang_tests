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
	movq	_pin(%rip), %rax
	movq	_pout(%rip), %rcx
	movl	(%rax), %edx
	movl	%edx, (%rcx)
	movl	4(%rax), %edx
	movl	%edx, 4(%rcx)
	movl	8(%rax), %edx
	movl	%edx, 8(%rcx)
	movl	12(%rax), %edx
	movl	%edx, 12(%rcx)
	movl	16(%rax), %edx
	movl	%edx, 16(%rcx)
	movl	20(%rax), %edx
	movl	%edx, 20(%rcx)
	movl	24(%rax), %edx
	movl	%edx, 24(%rcx)
	movl	28(%rax), %edx
	movl	%edx, 28(%rcx)
	movl	32(%rax), %edx
	movl	%edx, 32(%rcx)
	movl	36(%rax), %edx
	movl	%edx, 36(%rcx)
	movl	40(%rax), %edx
	movl	%edx, 40(%rcx)
	movl	44(%rax), %edx
	movl	%edx, 44(%rcx)
	movl	48(%rax), %edx
	movl	%edx, 48(%rcx)
	movl	52(%rax), %edx
	movl	%edx, 52(%rcx)
	movl	56(%rax), %edx
	movl	%edx, 56(%rcx)
	movl	60(%rax), %edx
	movl	%edx, 60(%rcx)
	movl	64(%rax), %edx
	movl	%edx, 64(%rcx)
	movl	68(%rax), %edx
	movl	%edx, 68(%rcx)
	movl	72(%rax), %edx
	movl	%edx, 72(%rcx)
	movl	76(%rax), %edx
	addq	$80, %rax
	movl	%edx, 76(%rcx)
	addq	$80, %rcx
	movq	%rax, _pin(%rip)
	movq	%rcx, _pout(%rip)
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
	.globl	_in                             ## @in
.zerofill __DATA,__common,_in,400,4
	.globl	_out                            ## @out
.zerofill __DATA,__common,_out,480,4
	.section	__DATA,__data
	.globl	_pin                            ## @pin
	.p2align	3
_pin:
	.quad	_in

	.globl	_pout                           ## @pout
	.p2align	3
_pout:
	.quad	_out

.subsections_via_symbols
