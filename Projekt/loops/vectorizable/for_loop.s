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
	movdqa	_c(%rip), %xmm0
	paddd	_b(%rip), %xmm0
	movdqa	%xmm0, _a(%rip)
	movdqa	_c+16(%rip), %xmm0
	paddd	_b+16(%rip), %xmm0
	movdqa	%xmm0, _a+16(%rip)
	movdqa	_c+32(%rip), %xmm0
	paddd	_b+32(%rip), %xmm0
	movdqa	%xmm0, _a+32(%rip)
	movdqa	_c+48(%rip), %xmm0
	paddd	_b+48(%rip), %xmm0
	movdqa	%xmm0, _a+48(%rip)
	movdqa	_c+64(%rip), %xmm0
	paddd	_b+64(%rip), %xmm0
	movdqa	%xmm0, _a+64(%rip)
	movdqa	_c+80(%rip), %xmm0
	paddd	_b+80(%rip), %xmm0
	movdqa	%xmm0, _a+80(%rip)
	movdqa	_c+96(%rip), %xmm0
	paddd	_b+96(%rip), %xmm0
	movdqa	%xmm0, _a+96(%rip)
	movdqa	_c+112(%rip), %xmm0
	paddd	_b+112(%rip), %xmm0
	movdqa	%xmm0, _a+112(%rip)
	movdqa	_c+128(%rip), %xmm0
	paddd	_b+128(%rip), %xmm0
	movdqa	%xmm0, _a+128(%rip)
	movdqa	_c+144(%rip), %xmm0
	paddd	_b+144(%rip), %xmm0
	movdqa	%xmm0, _a+144(%rip)
	movdqa	_c+160(%rip), %xmm0
	paddd	_b+160(%rip), %xmm0
	movdqa	%xmm0, _a+160(%rip)
	movdqa	_c+176(%rip), %xmm0
	paddd	_b+176(%rip), %xmm0
	movdqa	%xmm0, _a+176(%rip)
	movdqa	_c+192(%rip), %xmm0
	paddd	_b+192(%rip), %xmm0
	movdqa	%xmm0, _a+192(%rip)
	movdqa	_c+208(%rip), %xmm0
	paddd	_b+208(%rip), %xmm0
	movdqa	%xmm0, _a+208(%rip)
	movdqa	_c+224(%rip), %xmm0
	paddd	_b+224(%rip), %xmm0
	movdqa	%xmm0, _a+224(%rip)
	movdqa	_c+240(%rip), %xmm0
	paddd	_b+240(%rip), %xmm0
	movdqa	%xmm0, _a+240(%rip)
	movdqa	_c+256(%rip), %xmm0
	paddd	_b+256(%rip), %xmm0
	movdqa	%xmm0, _a+256(%rip)
	movdqa	_c+272(%rip), %xmm0
	paddd	_b+272(%rip), %xmm0
	movdqa	%xmm0, _a+272(%rip)
	movdqa	_c+288(%rip), %xmm0
	paddd	_b+288(%rip), %xmm0
	movdqa	%xmm0, _a+288(%rip)
	movdqa	_c+304(%rip), %xmm0
	paddd	_b+304(%rip), %xmm0
	movdqa	%xmm0, _a+304(%rip)
	movdqa	_c+320(%rip), %xmm0
	paddd	_b+320(%rip), %xmm0
	movdqa	%xmm0, _a+320(%rip)
	movdqa	_c+336(%rip), %xmm0
	paddd	_b+336(%rip), %xmm0
	movdqa	%xmm0, _a+336(%rip)
	movdqa	_c+352(%rip), %xmm0
	paddd	_b+352(%rip), %xmm0
	movdqa	%xmm0, _a+352(%rip)
	movdqa	_c+368(%rip), %xmm0
	paddd	_b+368(%rip), %xmm0
	movdqa	%xmm0, _a+368(%rip)
	movdqa	_c+384(%rip), %xmm0
	paddd	_b+384(%rip), %xmm0
	movdqa	%xmm0, _a+384(%rip)
	movdqa	_c+400(%rip), %xmm0
	paddd	_b+400(%rip), %xmm0
	movdqa	%xmm0, _a+400(%rip)
	movdqa	_c+416(%rip), %xmm0
	paddd	_b+416(%rip), %xmm0
	movdqa	%xmm0, _a+416(%rip)
	movdqa	_c+432(%rip), %xmm0
	paddd	_b+432(%rip), %xmm0
	movdqa	%xmm0, _a+432(%rip)
	movdqa	_c+448(%rip), %xmm0
	paddd	_b+448(%rip), %xmm0
	movdqa	%xmm0, _a+448(%rip)
	movdqa	_c+464(%rip), %xmm0
	paddd	_b+464(%rip), %xmm0
	movdqa	%xmm0, _a+464(%rip)
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
