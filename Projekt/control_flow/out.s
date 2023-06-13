	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func1
LCPI0_0:
	.quad	0x4024000000000000              ## double 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func1
	.p2align	4, 0x90
_func1:                                 ## @func1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	800(%rdi), %rax
	cmpq	%rsi, %rax
	jbe	LBB0_8
## %bb.1:
	leaq	800(%rsi), %rax
	cmpq	%rdi, %rax
	jbe	LBB0_8
## %bb.2:
	movl	$1, %eax
	vmovsd	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	jmp	LBB0_3
	.p2align	4, 0x90
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	addq	$2, %rax
	cmpq	$101, %rax
	je	LBB0_9
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	vmovsd	-8(%rdi,%rax,8), %xmm1          ## xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	ja	LBB0_4
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	vmovsd	(%rdi,%rax,8), %xmm1            ## xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	LBB0_7
	jmp	LBB0_6
	.p2align	4, 0x90
LBB0_4:                                 ##   in Loop: Header=BB0_3 Depth=1
	vmovsd	%xmm1, -8(%rsi,%rax,8)
	vmovsd	(%rdi,%rax,8), %xmm1            ## xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	jbe	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	vmovsd	%xmm1, (%rsi,%rax,8)
	jmp	LBB0_7
LBB0_8:
	vmovupd	(%rdi), %ymm1
	vbroadcastsd	LCPI0_0(%rip), %ymm0    ## ymm0 = [1.0E+1,1.0E+1,1.0E+1,1.0E+1]
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, (%rsi)
	vmovupd	32(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 32(%rsi)
	vmovupd	64(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 64(%rsi)
	vmovupd	96(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 96(%rsi)
	vmovupd	128(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 128(%rsi)
	vmovupd	160(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 160(%rsi)
	vmovupd	192(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 192(%rsi)
	vmovupd	224(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 224(%rsi)
	vmovupd	256(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 256(%rsi)
	vmovupd	288(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 288(%rsi)
	vmovupd	320(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 320(%rsi)
	vmovupd	352(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 352(%rsi)
	vmovupd	384(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 384(%rsi)
	vmovupd	416(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 416(%rsi)
	vmovupd	448(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 448(%rsi)
	vmovupd	480(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 480(%rsi)
	vmovupd	512(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 512(%rsi)
	vmovupd	544(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 544(%rsi)
	vmovupd	576(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 576(%rsi)
	vmovupd	608(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 608(%rsi)
	vmovupd	640(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 640(%rsi)
	vmovupd	672(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 672(%rsi)
	vmovupd	704(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 704(%rsi)
	vmovupd	736(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm2
	vmaskmovpd	%ymm1, %ymm2, 736(%rsi)
	vmovupd	768(%rdi), %ymm1
	vcmpltpd	%ymm1, %ymm0, %ymm0
	vmaskmovpd	%ymm1, %ymm0, 768(%rsi)
LBB0_9:
	xorl	%eax, %eax
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func2                          ## -- Begin function func2
	.p2align	4, 0x90
_func2:                                 ## @func2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovsd	(%rdi), %xmm1                   ## xmm1 = mem[0],zero
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	vucomisd	%xmm0, %xmm1
	jne	LBB1_2
	jnp	LBB1_1
LBB1_2:                                 ##   in Loop: Header=BB1_1 Depth=1
	vmovsd	%xmm1, (%rsi)
	vmovsd	(%rdi), %xmm1                   ## xmm1 = mem[0],zero
	jmp	LBB1_1
	.cfi_endproc
                                        ## -- End function
	.globl	_dummy_func                     ## -- Begin function dummy_func
	.p2align	4, 0x90
_dummy_func:                            ## @dummy_func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$123, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func3                          ## -- Begin function func3
	.p2align	4, 0x90
_func3:                                 ## @func3
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$-2, %rax
	movabsq	$4638355772470722560, %rcx      ## imm = 0x405EC00000000000
	jmp	LBB3_1
	.p2align	4, 0x90
LBB3_5:                                 ##   in Loop: Header=BB3_1 Depth=1
	addq	$4, %rax
	cmpq	$98, %rax
	jae	LBB3_6
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	vmovsd	16(%rdi,%rax,8), %xmm0          ## xmm0 = mem[0],zero
	vucomisd	16(%rsi,%rax,8), %xmm0
	jne	LBB3_3
	jp	LBB3_3
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	movq	%rcx, 16(%rsi,%rax,8)
LBB3_3:                                 ##   in Loop: Header=BB3_1 Depth=1
	vmovsd	32(%rdi,%rax,8), %xmm0          ## xmm0 = mem[0],zero
	vucomisd	32(%rsi,%rax,8), %xmm0
	jne	LBB3_5
	jp	LBB3_5
## %bb.4:                               ##   in Loop: Header=BB3_1 Depth=1
	movq	%rcx, 32(%rsi,%rax,8)
	jmp	LBB3_5
LBB3_6:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_dummy_func2                    ## -- Begin function dummy_func2
	.p2align	4, 0x90
_dummy_func2:                           ## @dummy_func2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_out@GOTPCREL(%rip), %rdi
	addq	$8, %rdi
	movl	$800, %esi                      ## imm = 0x320
	callq	___bzero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func4
LCPI5_0:
	.quad	0x4014000000000000              ## double 5
LCPI5_1:
	.quad	0x4024000000000000              ## double 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func4
	.p2align	4, 0x90
_func4:                                 ## @func4
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r12
	movq	%rdi, %r14
	movq	_out@GOTPCREL(%rip), %r15
	addq	$8, %r15
	movl	$800, %esi                      ## imm = 0x320
	movq	%r15, %rdi
	callq	___bzero
	movl	$1, %ebx
	jmp	LBB5_1
	.p2align	4, 0x90
LBB5_6:                                 ##   in Loop: Header=BB5_1 Depth=1
	vaddsd	LCPI5_1(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, (%r12,%rbx,8)
	addq	$2, %rbx
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	vmovsd	-8(%r14,%rbx,8), %xmm0          ## xmm0 = mem[0],zero
	vmulsd	LCPI5_0(%rip), %xmm0, %xmm1
	vucomisd	-8(%r12,%rbx,8), %xmm1
	jne	LBB5_3
	jp	LBB5_3
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	$800, %esi                      ## imm = 0x320
	movq	%r15, %rdi
	callq	___bzero
	vmovsd	-8(%r14,%rbx,8), %xmm0          ## xmm0 = mem[0],zero
LBB5_3:                                 ##   in Loop: Header=BB5_1 Depth=1
	vaddsd	LCPI5_1(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -8(%r12,%rbx,8)
	cmpq	$101, %rbx
	je	LBB5_7
## %bb.4:                               ##   in Loop: Header=BB5_1 Depth=1
	vmovsd	(%r14,%rbx,8), %xmm0            ## xmm0 = mem[0],zero
	vmulsd	LCPI5_0(%rip), %xmm0, %xmm1
	vucomisd	(%r12,%rbx,8), %xmm1
	jne	LBB5_6
	jp	LBB5_6
## %bb.5:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	$800, %esi                      ## imm = 0x320
	movq	%r15, %rdi
	callq	___bzero
	vmovsd	(%r14,%rbx,8), %xmm0            ## xmm0 = mem[0],zero
	jmp	LBB5_6
LBB5_7:
	xorl	%eax, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func5
LCPI6_0:
	.quad	0x4024000000000000              ## double 10
LCPI6_1:
	.quad	0x4014000000000000              ## double 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func5
	.p2align	4, 0x90
_func5:                                 ## @func5
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_zmienna@GOTPCREL(%rip), %rax
	cmpl	$57, (%rax)
	je	LBB6_4
## %bb.1:
	xorl	%ecx, %ecx
	vmovsd	LCPI6_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	vmovsd	LCPI6_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	vmulsd	(%rsi,%rcx,8), %xmm0, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm2
	vmovsd	%xmm2, (%rdi,%rcx,8)
	cmpq	$97, %rcx
	ja	LBB6_4
## %bb.3:                               ##   in Loop: Header=BB6_2 Depth=1
	addq	$2, %rcx
	cmpl	$57, (%rax)
	jne	LBB6_2
LBB6_4:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func6
LCPI7_0:
	.quad	0x4024000000000000              ## double 10
LCPI7_1:
	.quad	0x4014000000000000              ## double 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func6
	.p2align	4, 0x90
_func6:                                 ## @func6
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_zmienna@GOTPCREL(%rip), %rax
	cmpl	$57, (%rax)
	je	LBB7_4
## %bb.1:
	xorl	%ecx, %ecx
	vmovsd	LCPI7_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	vmovsd	LCPI7_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB7_2:                                 ## =>This Inner Loop Header: Depth=1
	vmulsd	(%rsi,%rcx,8), %xmm0, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm2
	vmovsd	%xmm2, (%rdi,%rcx,8)
	cmpq	$97, %rcx
	ja	LBB7_4
## %bb.3:                               ##   in Loop: Header=BB7_2 Depth=1
	addq	$2, %rcx
	cmpl	$57, (%rax)
	jne	LBB7_2
LBB7_4:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func7
LCPI8_0:
	.quad	0x4024000000000000              ## double 10
LCPI8_1:
	.quad	0x4014000000000000              ## double 5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func7
	.p2align	4, 0x90
_func7:                                 ## @func7
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_zmienna@GOTPCREL(%rip), %rax
	testb	$1, (%rax)
	jne	LBB8_3
## %bb.1:
	movq	$-2, %rax
	vmovsd	LCPI8_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	vmovsd	LCPI8_1(%rip), %xmm1            ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB8_2:                                 ## =>This Inner Loop Header: Depth=1
	vmulsd	16(%rsi,%rax,8), %xmm0, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm2
	vmovsd	%xmm2, 16(%rdi,%rax,8)
	vmulsd	32(%rsi,%rax,8), %xmm0, %xmm2
	vaddsd	%xmm1, %xmm2, %xmm2
	vmovsd	%xmm2, 32(%rdi,%rax,8)
	addq	$4, %rax
	cmpq	$98, %rax
	jb	LBB8_2
LBB8_3:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function pom_func
LCPI9_0:
	.quad	0x4024000000000000              ## double 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_pom_func
	.p2align	4, 0x90
_pom_func:                              ## @pom_func
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovsd	LCPI9_0(%rip), %xmm2            ## xmm2 = mem[0],zero
	vmulsd	%xmm2, %xmm0, %xmm3
	vaddsd	%xmm1, %xmm3, %xmm3
	vmulsd	%xmm2, %xmm1, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm2
	vcmpltsd	%xmm0, %xmm1, %xmm0
	vblendvpd	%xmm0, %xmm3, %xmm2, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func8
LCPI10_0:
	.quad	0x4059000000000000              ## double 100
LCPI10_1:
	.quad	0x4024000000000000              ## double 10
LCPI10_2:
	.quad	0x408f400000000000              ## double 1000
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func8
	.p2align	4, 0x90
_func8:                                 ## @func8
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	8(%rsi), %rax
	leaq	808(%rdi), %rcx
	cmpq	%rcx, %rax
	jae	LBB10_5
## %bb.1:
	leaq	808(%rsi), %rax
	leaq	8(%rdi), %rcx
	cmpq	%rax, %rcx
	jae	LBB10_5
## %bb.2:
	movl	$100, %eax
	vmovsd	LCPI10_1(%rip), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	LCPI10_0(%rip), %xmm1           ## xmm1 = mem[0],zero
	vmovsd	LCPI10_2(%rip), %xmm2           ## xmm2 = mem[0],zero
	.p2align	4, 0x90
LBB10_3:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	(%rdi,%rax,8), %xmm3            ## xmm3 = mem[0],zero
	vmulsd	%xmm0, %xmm3, %xmm4
	vaddsd	%xmm1, %xmm4, %xmm4
	vaddsd	%xmm2, %xmm3, %xmm5
	vcmpltsd	%xmm3, %xmm1, %xmm3
	vblendvpd	%xmm3, %xmm4, %xmm5, %xmm3
	vmovlpd	%xmm3, (%rsi,%rax,8)
	vmovsd	-8(%rdi,%rax,8), %xmm3          ## xmm3 = mem[0],zero
	vmulsd	%xmm0, %xmm3, %xmm4
	vaddsd	%xmm1, %xmm4, %xmm4
	vaddsd	%xmm2, %xmm3, %xmm5
	vcmpltsd	%xmm3, %xmm1, %xmm3
	vblendvpd	%xmm3, %xmm4, %xmm5, %xmm3
	vmovlpd	%xmm3, -8(%rsi,%rax,8)
	addq	$-2, %rax
	jne	LBB10_3
## %bb.4:
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB10_5:
	vpermpd	$27, 776(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vbroadcastsd	LCPI10_0(%rip), %ymm0   ## ymm0 = [1.0E+2,1.0E+2,1.0E+2,1.0E+2]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vbroadcastsd	LCPI10_1(%rip), %ymm1   ## ymm1 = [1.0E+1,1.0E+1,1.0E+1,1.0E+1]
	vmulpd	%ymm1, %ymm3, %ymm2
	vaddpd	%ymm0, %ymm2, %ymm5
	vbroadcastsd	LCPI10_2(%rip), %ymm2   ## ymm2 = [1.0E+3,1.0E+3,1.0E+3,1.0E+3]
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 776(%rsi)
	vpermpd	$27, 744(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 744(%rsi)
	vpermpd	$27, 712(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 712(%rsi)
	vpermpd	$27, 680(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 680(%rsi)
	vpermpd	$27, 648(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 648(%rsi)
	vpermpd	$27, 616(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 616(%rsi)
	vpermpd	$27, 584(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 584(%rsi)
	vpermpd	$27, 552(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 552(%rsi)
	vpermpd	$27, 520(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 520(%rsi)
	vpermpd	$27, 488(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 488(%rsi)
	vpermpd	$27, 456(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 456(%rsi)
	vpermpd	$27, 424(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 424(%rsi)
	vpermpd	$27, 392(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 392(%rsi)
	vpermpd	$27, 360(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 360(%rsi)
	vpermpd	$27, 328(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 328(%rsi)
	vpermpd	$27, 296(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 296(%rsi)
	vpermpd	$27, 264(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 264(%rsi)
	vpermpd	$27, 232(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 232(%rsi)
	vpermpd	$27, 200(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 200(%rsi)
	vpermpd	$27, 168(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 168(%rsi)
	vpermpd	$27, 136(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 136(%rsi)
	vpermpd	$27, 104(%rdi), %ymm3           ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 104(%rsi)
	vpermpd	$27, 72(%rdi), %ymm3            ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 72(%rsi)
	vpermpd	$27, 40(%rdi), %ymm3            ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm5
	vaddpd	%ymm0, %ymm5, %ymm5
	vaddpd	%ymm2, %ymm3, %ymm3
	vblendvpd	%ymm4, %ymm5, %ymm3, %ymm3
	vpermpd	$27, %ymm3, %ymm3               ## ymm3 = ymm3[3,2,1,0]
	vmovupd	%ymm3, 40(%rsi)
	vpermpd	$27, 8(%rdi), %ymm3             ## ymm3 = mem[3,2,1,0]
	vcmpltpd	%ymm3, %ymm0, %ymm4
	vmulpd	%ymm1, %ymm3, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm0
	vaddpd	%ymm2, %ymm3, %ymm1
	vblendvpd	%ymm4, %ymm0, %ymm1, %ymm0
	vpermpd	$27, %ymm0, %ymm0               ## ymm0 = ymm0[3,2,1,0]
	vmovupd	%ymm0, 8(%rsi)
	xorl	%eax, %eax
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func9
LCPI11_0:
	.quad	0x4059000000000000              ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func9
	.p2align	4, 0x90
_func9:                                 ## @func9
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	addq	$800000, %rsi                   ## imm = 0xC3500
	addq	$800, %rdi                      ## imm = 0x320
	movl	$100, %eax
	vmovsd	LCPI11_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	jmp	LBB11_1
	.p2align	4, 0x90
LBB11_5:                                ##   in Loop: Header=BB11_1 Depth=1
	leaq	-1(%rax), %rcx
	addq	$-8000, %rsi                    ## imm = 0xE0C0
	addq	$-8, %rdi
	cmpq	$1, %rax
	movq	%rcx, %rax
	jbe	LBB11_6
LBB11_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB11_2 Depth 2
	movq	%rdi, %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB11_2:                                ##   Parent Loop BB11_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpq	$300, %rdx                      ## imm = 0x12C
	je	LBB11_5
## %bb.3:                               ##   in Loop: Header=BB11_2 Depth=2
	vmovsd	(%rcx), %xmm1                   ## xmm1 = mem[0],zero
	vaddsd	(%rsi,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, (%rsi,%rdx,8)
	vmovsd	8(%rsi,%rdx,8), %xmm1           ## xmm1 = mem[0],zero
	vucomisd	%xmm0, %xmm1
	ja	LBB11_1
## %bb.4:                               ##   in Loop: Header=BB11_2 Depth=2
	vmovsd	8000(%rcx), %xmm1               ## xmm1 = mem[0],zero
	vaddsd	8(%rsi,%rdx,8), %xmm1, %xmm1
	vmovsd	%xmm1, 8(%rsi,%rdx,8)
	vmovsd	16(%rsi,%rdx,8), %xmm1          ## xmm1 = mem[0],zero
	addq	$2, %rdx
	addq	$16000, %rcx                    ## imm = 0x3E80
	vucomisd	%xmm0, %xmm1
	jbe	LBB11_2
	jmp	LBB11_1
LBB11_6:
	leaq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func10                         ## -- Begin function func10
	.p2align	4, 0x90
_func10:                                ## @func10
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	leaq	800(%rdi), %r8
	leaq	800096(%rsi), %rcx
	leaq	800000(%rsi), %rdx
	leaq	8800(%rdi), %r9
	movl	$100, %r10d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
LBB12_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB12_9 Depth 2
                                        ##     Child Loop BB12_5 Depth 2
	movl	$100, %eax
	subq	%r11, %rax
	movl	$101, %ebx
	subq	%r11, %rbx
	leaq	(%rdi,%rbx,8), %r14
	addq	$2392000, %r14                  ## imm = 0x247FC0
	imulq	$8000, %rax, %r15               ## imm = 0x1F40
	leaq	(%rsi,%r15), %rbx
	cmpq	%r14, %rbx
	jae	LBB12_8
## %bb.2:                               ##   in Loop: Header=BB12_1 Depth=1
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rsi,%r15), %rbx
	addq	$2400, %rbx                     ## imm = 0x960
	cmpq	%rbx, %rax
	jae	LBB12_8
## %bb.3:                               ##   in Loop: Header=BB12_1 Depth=1
	xorl	%eax, %eax
	jmp	LBB12_4
	.p2align	4, 0x90
LBB12_8:                                ##   in Loop: Header=BB12_1 Depth=1
	movq	%r8, %rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB12_9:                                ##   Parent Loop BB12_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	16000(%rax), %xmm0              ## xmm0 = mem[0],zero
	vmovhpd	24000(%rax), %xmm0, %xmm0       ## xmm0 = xmm0[0],mem[0]
	vmovsd	(%rax), %xmm1                   ## xmm1 = mem[0],zero
	vmovhpd	8000(%rax), %xmm1, %xmm1        ## xmm1 = xmm1[0],mem[0]
	vmovsd	48000(%rax), %xmm2              ## xmm2 = mem[0],zero
	vmovhpd	56000(%rax), %xmm2, %xmm2       ## xmm2 = xmm2[0],mem[0]
	vmovsd	32000(%rax), %xmm3              ## xmm3 = mem[0],zero
	vmovhpd	40000(%rax), %xmm3, %xmm3       ## xmm3 = xmm3[0],mem[0]
	vinsertf128	$1, %xmm0, %ymm1, %ymm0
	vmovsd	80000(%rax), %xmm1              ## xmm1 = mem[0],zero
	vmovhpd	88000(%rax), %xmm1, %xmm1       ## xmm1 = xmm1[0],mem[0]
	vinsertf128	$1, %xmm2, %ymm3, %ymm2
	vmovsd	64000(%rax), %xmm3              ## xmm3 = mem[0],zero
	vmovhpd	72000(%rax), %xmm3, %xmm3       ## xmm3 = xmm3[0],mem[0]
	vinsertf128	$1, %xmm1, %ymm3, %ymm1
	vmovsd	112000(%rax), %xmm3             ## xmm3 = mem[0],zero
	vmovhpd	120000(%rax), %xmm3, %xmm3      ## xmm3 = xmm3[0],mem[0]
	vmovsd	96000(%rax), %xmm4              ## xmm4 = mem[0],zero
	vmovhpd	104000(%rax), %xmm4, %xmm4      ## xmm4 = xmm4[0],mem[0]
	vinsertf128	$1, %xmm3, %ymm4, %ymm3
	vaddpd	-96(%rcx,%rbx,8), %ymm0, %ymm0
	vaddpd	-64(%rcx,%rbx,8), %ymm2, %ymm2
	vaddpd	-32(%rcx,%rbx,8), %ymm1, %ymm1
	vaddpd	(%rcx,%rbx,8), %ymm3, %ymm3
	vmovupd	%ymm0, -96(%rcx,%rbx,8)
	vmovupd	%ymm2, -64(%rcx,%rbx,8)
	vmovupd	%ymm1, -32(%rcx,%rbx,8)
	vmovupd	%ymm3, (%rcx,%rbx,8)
	addq	$16, %rbx
	addq	$128000, %rax                   ## imm = 0x1F400
	cmpq	$288, %rbx                      ## imm = 0x120
	jne	LBB12_9
## %bb.10:                              ##   in Loop: Header=BB12_1 Depth=1
	movl	$288, %eax                      ## imm = 0x120
LBB12_4:                                ##   in Loop: Header=BB12_1 Depth=1
	imulq	$8000, %rax, %rbx               ## imm = 0x1F40
	addq	%r9, %rbx
	.p2align	4, 0x90
LBB12_5:                                ##   Parent Loop BB12_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	-8000(%rbx), %xmm0              ## xmm0 = mem[0],zero
	vaddsd	(%rdx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	vmovsd	(%rbx), %xmm0                   ## xmm0 = mem[0],zero
	vaddsd	8(%rdx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rdx,%rax,8)
	addq	$2, %rax
	addq	$16000, %rbx                    ## imm = 0x3E80
	cmpq	$300, %rax                      ## imm = 0x12C
	jne	LBB12_5
## %bb.6:                               ##   in Loop: Header=BB12_1 Depth=1
	leaq	-1(%r10), %rax
	addq	$1, %r11
	addq	$-8, %r8
	addq	$-8000, %rcx                    ## imm = 0xE0C0
	addq	$-8, %r9
	addq	$-8000, %rdx                    ## imm = 0xE0C0
	cmpq	$1, %r10
	movq	%rax, %r10
	ja	LBB12_1
## %bb.7:
	leaq	-32(%rbp), %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func11                         ## -- Begin function func11
	.p2align	4, 0x90
_func11:                                ## @func11
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdi, -32(%rbp)
	leaq	800(%rdi), %r8
	leaq	800096(%rsi), %rcx
	leaq	800000(%rsi), %rdx
	leaq	8800(%rdi), %r9
	movl	$100, %r10d
	xorl	%r11d, %r11d
	.p2align	4, 0x90
LBB13_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB13_9 Depth 2
                                        ##     Child Loop BB13_5 Depth 2
	movl	$100, %eax
	subq	%r11, %rax
	movl	$101, %ebx
	subq	%r11, %rbx
	leaq	(%rdi,%rbx,8), %r14
	addq	$2392000, %r14                  ## imm = 0x247FC0
	imulq	$8000, %rax, %r15               ## imm = 0x1F40
	leaq	(%rsi,%r15), %rbx
	cmpq	%r14, %rbx
	jae	LBB13_8
## %bb.2:                               ##   in Loop: Header=BB13_1 Depth=1
	leaq	(%rdi,%rax,8), %rax
	leaq	(%rsi,%r15), %rbx
	addq	$2400, %rbx                     ## imm = 0x960
	cmpq	%rbx, %rax
	jae	LBB13_8
## %bb.3:                               ##   in Loop: Header=BB13_1 Depth=1
	xorl	%eax, %eax
	jmp	LBB13_4
	.p2align	4, 0x90
LBB13_8:                                ##   in Loop: Header=BB13_1 Depth=1
	movq	%r8, %rax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
LBB13_9:                                ##   Parent Loop BB13_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	16000(%rax), %xmm0              ## xmm0 = mem[0],zero
	vmovhpd	24000(%rax), %xmm0, %xmm0       ## xmm0 = xmm0[0],mem[0]
	vmovsd	(%rax), %xmm1                   ## xmm1 = mem[0],zero
	vmovhpd	8000(%rax), %xmm1, %xmm1        ## xmm1 = xmm1[0],mem[0]
	vmovsd	48000(%rax), %xmm2              ## xmm2 = mem[0],zero
	vmovhpd	56000(%rax), %xmm2, %xmm2       ## xmm2 = xmm2[0],mem[0]
	vmovsd	32000(%rax), %xmm3              ## xmm3 = mem[0],zero
	vmovhpd	40000(%rax), %xmm3, %xmm3       ## xmm3 = xmm3[0],mem[0]
	vinsertf128	$1, %xmm0, %ymm1, %ymm0
	vmovsd	80000(%rax), %xmm1              ## xmm1 = mem[0],zero
	vmovhpd	88000(%rax), %xmm1, %xmm1       ## xmm1 = xmm1[0],mem[0]
	vinsertf128	$1, %xmm2, %ymm3, %ymm2
	vmovsd	64000(%rax), %xmm3              ## xmm3 = mem[0],zero
	vmovhpd	72000(%rax), %xmm3, %xmm3       ## xmm3 = xmm3[0],mem[0]
	vinsertf128	$1, %xmm1, %ymm3, %ymm1
	vmovsd	112000(%rax), %xmm3             ## xmm3 = mem[0],zero
	vmovhpd	120000(%rax), %xmm3, %xmm3      ## xmm3 = xmm3[0],mem[0]
	vmovsd	96000(%rax), %xmm4              ## xmm4 = mem[0],zero
	vmovhpd	104000(%rax), %xmm4, %xmm4      ## xmm4 = xmm4[0],mem[0]
	vinsertf128	$1, %xmm3, %ymm4, %ymm3
	vaddpd	-96(%rcx,%rbx,8), %ymm0, %ymm0
	vaddpd	-64(%rcx,%rbx,8), %ymm2, %ymm2
	vaddpd	-32(%rcx,%rbx,8), %ymm1, %ymm1
	vaddpd	(%rcx,%rbx,8), %ymm3, %ymm3
	vmovupd	%ymm0, -96(%rcx,%rbx,8)
	vmovupd	%ymm2, -64(%rcx,%rbx,8)
	vmovupd	%ymm1, -32(%rcx,%rbx,8)
	vmovupd	%ymm3, (%rcx,%rbx,8)
	addq	$16, %rbx
	addq	$128000, %rax                   ## imm = 0x1F400
	cmpq	$288, %rbx                      ## imm = 0x120
	jne	LBB13_9
## %bb.10:                              ##   in Loop: Header=BB13_1 Depth=1
	movl	$288, %eax                      ## imm = 0x120
LBB13_4:                                ##   in Loop: Header=BB13_1 Depth=1
	imulq	$8000, %rax, %rbx               ## imm = 0x1F40
	addq	%r9, %rbx
	.p2align	4, 0x90
LBB13_5:                                ##   Parent Loop BB13_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovsd	-8000(%rbx), %xmm0              ## xmm0 = mem[0],zero
	vaddsd	(%rdx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, (%rdx,%rax,8)
	vmovsd	(%rbx), %xmm0                   ## xmm0 = mem[0],zero
	vaddsd	8(%rdx,%rax,8), %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rdx,%rax,8)
	addq	$2, %rax
	addq	$16000, %rbx                    ## imm = 0x3E80
	cmpq	$300, %rax                      ## imm = 0x12C
	jne	LBB13_5
## %bb.6:                               ##   in Loop: Header=BB13_1 Depth=1
	leaq	-1(%r10), %rax
	addq	$1, %r11
	addq	$-8, %r8
	addq	$-8000, %rcx                    ## imm = 0xE0C0
	addq	$-8, %r9
	addq	$-8000, %rdx                    ## imm = 0xE0C0
	cmpq	$1, %r10
	movq	%rax, %r10
	ja	LBB13_1
## %bb.7:
	leaq	-32(%rbp), %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func12                         ## -- Begin function func12
	.p2align	4, 0x90
_func12:                                ## @func12
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	8016(%rsi), %rax
	movq	$-2, %rcx
	jmp	LBB14_1
	.p2align	4, 0x90
LBB14_5:                                ##   in Loop: Header=BB14_1 Depth=1
	vmovsd	%xmm0, 8032(%rdi,%rcx,8)
	addq	$32, %rax
	addq	$32000, %rsi                    ## imm = 0x7D00
	addq	$4, %rcx
	cmpq	$998, %rcx                      ## imm = 0x3E6
	jae	LBB14_6
LBB14_1:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	-16(%rax), %xmm0                ## xmm0 = mem[0],zero
	vcvttsd2si	%xmm0, %edx
	cmpl	$3, %edx
	ja	LBB14_3
## %bb.2:                               ##   in Loop: Header=BB14_1 Depth=1
	movl	%edx, %edx
	vmovsd	(%rsi,%rdx,8), %xmm0            ## xmm0 = mem[0],zero
LBB14_3:                                ##   in Loop: Header=BB14_1 Depth=1
	vmovsd	%xmm0, 8016(%rdi,%rcx,8)
	vmovsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	vcvttsd2si	%xmm0, %edx
	cmpl	$3, %edx
	ja	LBB14_5
## %bb.4:                               ##   in Loop: Header=BB14_1 Depth=1
	movl	%edx, %edx
	vmovsd	16000(%rsi,%rdx,8), %xmm0       ## xmm0 = mem[0],zero
	jmp	LBB14_5
LBB14_6:
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function func13
LCPI15_0:
	.long	0x41200000                      ## float 10
LCPI15_1:
	.long	0x41a00000                      ## float 20
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func13
	.p2align	4, 0x90
_func13:                                ## @func13
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vsubss	%xmm2, %xmm0, %xmm0
	vmulss	LCPI15_0(%rip), %xmm0, %xmm0
	vsubss	%xmm3, %xmm1, %xmm1
	vmulss	LCPI15_1(%rip), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vsqrtss	%xmm0, %xmm0, %xmm0
	vroundss	$9, %xmm0, %xmm0, %xmm0
	vcvttps2dq	%xmm0, %xmm0
	vcvtdq2ps	%xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function pom_func_float
LCPI16_0:
	.long	0xbf800000                      ## float -1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_pom_func_float
	.p2align	4, 0x90
_pom_func_float:                        ## @pom_func_float
	.cfi_startproc
## %bb.0:
	vmovaps	%xmm0, %xmm2
	vxorps	%xmm0, %xmm0, %xmm0
	vucomiss	%xmm1, %xmm0
	jae	LBB16_2
## %bb.1:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	vaddss	LCPI16_0(%rip), %xmm1, %xmm1
	vmovaps	%xmm2, %xmm0
	vmovss	%xmm2, -4(%rbp)                 ## 4-byte Spill
	callq	_pom_func_float
	vmovss	-4(%rbp), %xmm2                 ## 4-byte Reload
                                        ## xmm2 = mem[0],zero,zero,zero
	vmulss	%xmm2, %xmm0, %xmm2
	addq	$16, %rsp
	popq	%rbp
LBB16_2:
	vmovaps	%xmm2, %xmm0
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func14                         ## -- Begin function func14
	.p2align	4, 0x90
_func14:                                ## @func14
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	vmovss	%xmm3, -12(%rbp)                ## 4-byte Spill
	vmovss	%xmm2, -8(%rbp)                 ## 4-byte Spill
	callq	_pom_func_float
	vmovss	%xmm0, -4(%rbp)                 ## 4-byte Spill
	vmovss	-8(%rbp), %xmm0                 ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	vmovss	-12(%rbp), %xmm1                ## 4-byte Reload
                                        ## xmm1 = mem[0],zero,zero,zero
	callq	_pom_func_float
	vaddss	-4(%rbp), %xmm0, %xmm0          ## 4-byte Folded Reload
	vroundss	$9, %xmm0, %xmm0, %xmm0
	vcvttps2dq	%xmm0, %xmm0
	vcvtdq2ps	%xmm0, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func15_unrolled
LCPI18_0:
	.quad	0x4024000000000000              ## double 10
LCPI18_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func15_unrolled
	.p2align	4, 0x90
_func15_unrolled:                       ## @func15_unrolled
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	vmovsd	(%rsi), %xmm2                   ## xmm2 = mem[0],zero
	vmovsd	LCPI18_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vmovsd	LCPI18_1(%rip), %xmm1           ## xmm1 = mem[0],zero
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, (%rdi)
	vmovsd	8(%rsi), %xmm2                  ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 8(%rdi)
	vmovsd	16(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 16(%rdi)
	vmovsd	24(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 24(%rdi)
	vmovsd	32(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 32(%rdi)
	vmovsd	40(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 40(%rdi)
	vmovsd	48(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 48(%rdi)
	vmovsd	56(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 56(%rdi)
	vmovsd	64(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 64(%rdi)
	vmovsd	72(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 72(%rdi)
	vmovsd	80(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 80(%rdi)
	vmovsd	88(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 88(%rdi)
	vmovsd	96(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 96(%rdi)
	vmovsd	104(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 104(%rdi)
	vmovsd	112(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 112(%rdi)
	vmovsd	120(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 120(%rdi)
	vmovsd	128(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 128(%rdi)
	vmovsd	136(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 136(%rdi)
	vmovsd	144(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 144(%rdi)
	vmovsd	152(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vsqrtsd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 152(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func15_looped
LCPI19_0:
	.quad	0x4024000000000000              ## double 10
LCPI19_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func15_looped
	.p2align	4, 0x90
_func15_looped:                         ## @func15_looped
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	160(%rsi), %rcx
	cmpq	%rdi, %rcx
	jbe	LBB19_4
## %bb.1:
	leaq	160(%rax), %rcx
	cmpq	%rsi, %rcx
	jbe	LBB19_4
## %bb.2:
	xorl	%ecx, %ecx
	vmovsd	LCPI19_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	vmovsd	LCPI19_1(%rip), %xmm1           ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB19_3:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi,%rcx,8), %xmm2            ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, (%rax,%rcx,8)
	addq	$1, %rcx
	cmpq	$20, %rcx
	jne	LBB19_3
## %bb.5:
	popq	%rbp
	retq
LBB19_4:
	vmovupd	(%rsi), %ymm0
	vbroadcastsd	LCPI19_0(%rip), %ymm1   ## ymm1 = [1.0E+1,1.0E+1,1.0E+1,1.0E+1]
	vbroadcastsd	LCPI19_1(%rip), %ymm2   ## ymm2 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vaddpd	%ymm2, %ymm0, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vmovupd	%ymm0, (%rax)
	vmovupd	32(%rsi), %ymm0
	vaddpd	%ymm2, %ymm0, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vmovupd	%ymm0, 32(%rax)
	vmovupd	64(%rsi), %ymm0
	vaddpd	%ymm2, %ymm0, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vmovupd	%ymm0, 64(%rax)
	vmovupd	96(%rsi), %ymm0
	vaddpd	%ymm2, %ymm0, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm3, %ymm0, %ymm0
	vmovupd	%ymm0, 96(%rax)
	vmovupd	128(%rsi), %ymm0
	vaddpd	%ymm2, %ymm0, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vmulpd	%ymm1, %ymm0, %ymm0
	vmulpd	%ymm2, %ymm0, %ymm0
	vmovupd	%ymm0, 128(%rax)
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func16_long_unrolled
LCPI20_0:
	.quad	0x4024000000000000              ## double 10
LCPI20_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func16_long_unrolled
	.p2align	4, 0x90
_func16_long_unrolled:                  ## @func16_long_unrolled
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	vmovsd	(%rsi), %xmm2                   ## xmm2 = mem[0],zero
	vmovsd	LCPI20_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vmovsd	LCPI20_1(%rip), %xmm1           ## xmm1 = mem[0],zero
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, (%rdi)
	vmovsd	8(%rsi), %xmm2                  ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 8(%rdi)
	vmovsd	16(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 16(%rdi)
	vmovsd	24(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 24(%rdi)
	vmovsd	32(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 32(%rdi)
	vmovsd	40(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 40(%rdi)
	vmovsd	48(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 48(%rdi)
	vmovsd	56(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 56(%rdi)
	vmovsd	64(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 64(%rdi)
	vmovsd	72(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 72(%rdi)
	vmovsd	80(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 80(%rdi)
	vmovsd	88(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 88(%rdi)
	vmovsd	96(%rsi), %xmm2                 ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 96(%rdi)
	vmovsd	104(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 104(%rdi)
	vmovsd	112(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 112(%rdi)
	vmovsd	120(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 120(%rdi)
	vmovsd	128(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 128(%rdi)
	vmovsd	136(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 136(%rdi)
	vmovsd	144(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 144(%rdi)
	vmovsd	152(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 152(%rdi)
	vmovsd	160(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 160(%rdi)
	vmovsd	168(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 168(%rdi)
	vmovsd	176(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 176(%rdi)
	vmovsd	184(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 184(%rdi)
	vmovsd	192(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 192(%rdi)
	vmovsd	200(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 200(%rdi)
	vmovsd	208(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 208(%rdi)
	vmovsd	216(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 216(%rdi)
	vmovsd	224(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 224(%rdi)
	vmovsd	232(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 232(%rdi)
	vmovsd	240(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 240(%rdi)
	vmovsd	248(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 248(%rdi)
	vmovsd	256(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 256(%rdi)
	vmovsd	264(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 264(%rdi)
	vmovsd	272(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 272(%rdi)
	vmovsd	280(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 280(%rdi)
	vmovsd	288(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 288(%rdi)
	vmovsd	296(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 296(%rdi)
	vmovsd	304(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 304(%rdi)
	vmovsd	312(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 312(%rdi)
	vmovsd	320(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 320(%rdi)
	vmovsd	328(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 328(%rdi)
	vmovsd	336(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 336(%rdi)
	vmovsd	344(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 344(%rdi)
	vmovsd	352(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 352(%rdi)
	vmovsd	360(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 360(%rdi)
	vmovsd	368(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 368(%rdi)
	vmovsd	376(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 376(%rdi)
	vmovsd	384(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 384(%rdi)
	vmovsd	392(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 392(%rdi)
	vmovsd	400(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 400(%rdi)
	vmovsd	408(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 408(%rdi)
	vmovsd	416(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 416(%rdi)
	vmovsd	424(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 424(%rdi)
	vmovsd	432(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 432(%rdi)
	vmovsd	440(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 440(%rdi)
	vmovsd	448(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 448(%rdi)
	vmovsd	456(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 456(%rdi)
	vmovsd	464(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 464(%rdi)
	vmovsd	472(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 472(%rdi)
	vmovsd	480(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 480(%rdi)
	vmovsd	488(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 488(%rdi)
	vmovsd	496(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 496(%rdi)
	vmovsd	504(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 504(%rdi)
	vmovsd	512(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 512(%rdi)
	vmovsd	520(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 520(%rdi)
	vmovsd	528(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 528(%rdi)
	vmovsd	536(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 536(%rdi)
	vmovsd	544(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 544(%rdi)
	vmovsd	552(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 552(%rdi)
	vmovsd	560(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 560(%rdi)
	vmovsd	568(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 568(%rdi)
	vmovsd	576(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 576(%rdi)
	vmovsd	584(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 584(%rdi)
	vmovsd	592(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 592(%rdi)
	vmovsd	600(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 600(%rdi)
	vmovsd	608(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 608(%rdi)
	vmovsd	616(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 616(%rdi)
	vmovsd	624(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 624(%rdi)
	vmovsd	632(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 632(%rdi)
	vmovsd	640(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 640(%rdi)
	vmovsd	648(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 648(%rdi)
	vmovsd	656(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 656(%rdi)
	vmovsd	664(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 664(%rdi)
	vmovsd	672(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 672(%rdi)
	vmovsd	680(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 680(%rdi)
	vmovsd	688(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 688(%rdi)
	vmovsd	696(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 696(%rdi)
	vmovsd	704(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 704(%rdi)
	vmovsd	712(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 712(%rdi)
	vmovsd	720(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 720(%rdi)
	vmovsd	728(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 728(%rdi)
	vmovsd	736(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 736(%rdi)
	vmovsd	744(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 744(%rdi)
	vmovsd	752(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 752(%rdi)
	vmovsd	760(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 760(%rdi)
	vmovsd	768(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 768(%rdi)
	vmovsd	776(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 776(%rdi)
	vmovsd	784(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm3
	vaddsd	%xmm1, %xmm2, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm2, %xmm3, %xmm2
	vmovsd	%xmm2, 784(%rdi)
	vmovsd	792(%rsi), %xmm2                ## xmm2 = mem[0],zero
	vmulsd	%xmm0, %xmm2, %xmm0
	vaddsd	%xmm1, %xmm2, %xmm1
	vsqrtsd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 792(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_pom_func17                     ## -- Begin function pom_func17
	.p2align	4, 0x90
_pom_func17:                            ## @pom_func17
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vsubss	%xmm2, %xmm0, %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vsubss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm1, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func17                         ## -- Begin function func17
	.p2align	4, 0x90
_func17:                                ## @func17
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	7944(%rsi), %rcx
	cmpq	%rdi, %rcx
	jbe	LBB22_6
## %bb.1:
	leaq	7968(%rax), %rcx
	cmpq	%rsi, %rcx
	jbe	LBB22_6
## %bb.2:
	xorl	%ecx, %ecx
	jmp	LBB22_3
LBB22_6:
	xorl	%ecx, %ecx
	.p2align	4, 0x90
LBB22_7:                                ## =>This Inner Loop Header: Depth=1
	vmovupd	(%rsi,%rcx), %xmm0
	vunpcklpd	32(%rsi,%rcx), %xmm0, %xmm0 ## xmm0 = xmm0[0],mem[0]
	vaddpd	%xmm0, %xmm0, %xmm0
	vmovupd	(%rax,%rcx), %xmm1
	vmovupd	16(%rax,%rcx), %xmm2
	vmovupd	32(%rax,%rcx), %xmm3
	vmovupd	48(%rax,%rcx), %xmm4
	vunpcklpd	%xmm3, %xmm1, %xmm5     ## xmm5 = xmm1[0],xmm3[0]
	vunpckhpd	%xmm3, %xmm1, %xmm1     ## xmm1 = xmm1[1],xmm3[1]
	vunpcklpd	%xmm4, %xmm2, %xmm3     ## xmm3 = xmm2[0],xmm4[0]
	vunpckhpd	%xmm4, %xmm2, %xmm2     ## xmm2 = xmm2[1],xmm4[1]
	vcvtpd2ps	%xmm5, %xmm4
	vcvtpd2ps	%xmm1, %xmm1
	vcvtpd2ps	%xmm3, %xmm3
	vcvtpd2ps	%xmm2, %xmm2
	vsubps	%xmm3, %xmm4, %xmm3
	vsubps	%xmm2, %xmm1, %xmm1
	vmulps	%xmm3, %xmm3, %xmm2
	vmulps	%xmm1, %xmm1, %xmm1
	vaddps	%xmm1, %xmm2, %xmm1
	vcvtps2pd	%xmm1, %xmm1
	vaddpd	%xmm1, %xmm0, %xmm0
	vmovlpd	%xmm0, (%rax,%rcx)
	vmovhpd	%xmm0, 32(%rax,%rcx)
	addq	$64, %rcx
	cmpq	$7936, %rcx                     ## imm = 0x1F00
	jne	LBB22_7
## %bb.8:
	movl	$992, %ecx                      ## imm = 0x3E0
LBB22_3:
	addq	$-4, %rcx
	.p2align	4, 0x90
LBB22_4:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	32(%rsi,%rcx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	32(%rax,%rcx,8), %xmm1          ## xmm1 = mem[0],zero
	vmovsd	40(%rax,%rcx,8), %xmm2          ## xmm2 = mem[0],zero
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtsd2ss	%xmm2, %xmm2, %xmm2
	vmovsd	48(%rax,%rcx,8), %xmm3          ## xmm3 = mem[0],zero
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vsubss	%xmm3, %xmm1, %xmm1
	vmovsd	56(%rax,%rcx,8), %xmm3          ## xmm3 = mem[0],zero
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vsubss	%xmm3, %xmm2, %xmm2
	vmulss	%xmm1, %xmm1, %xmm1
	vmulss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rax,%rcx,8)
	addq	$4, %rcx
	cmpq	$992, %rcx                      ## imm = 0x3E0
	jb	LBB22_4
## %bb.5:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func18                         ## -- Begin function func18
	.p2align	4, 0x90
_func18:                                ## @func18
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, %rax
	leaq	7944(%rdi), %rdx
	leaq	7944(%rsi), %rcx
	cmpq	%rdi, %rcx
	seta	%r9b
	cmpq	%rsi, %rdx
	seta	%r10b
	movq	_in@GOTPCREL(%rip), %rcx
	leaq	32(%rcx), %rdi
	cmpq	%rdi, %rax
	setb	%dil
	cmpq	%rcx, %rdx
	seta	%r8b
	xorl	%edx, %edx
	testb	%r10b, %r9b
	jne	LBB23_2
## %bb.1:
	andb	%r8b, %dil
	jne	LBB23_2
## %bb.5:
	vbroadcastsd	(%rcx), %ymm0
	vcvtpd2ps	%ymm0, %xmm0
	vbroadcastsd	8(%rcx), %ymm1
	vcvtpd2ps	%ymm1, %xmm1
	vbroadcastsd	16(%rcx), %ymm2
	vcvtpd2ps	%ymm2, %xmm2
	vbroadcastsd	24(%rcx), %ymm3
	vcvtpd2ps	%ymm3, %xmm3
	vsubps	%xmm2, %xmm0, %xmm0
	vsubps	%xmm3, %xmm1, %xmm1
	vmulps	%xmm0, %xmm0, %xmm0
	vmulps	%xmm1, %xmm1, %xmm1
	vaddps	%xmm1, %xmm0, %xmm0
	vcvtps2pd	%xmm0, %ymm0
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB23_6:                                ## =>This Inner Loop Header: Depth=1
	vmovupd	(%rsi,%rdx), %ymm1
	vmovupd	32(%rsi,%rdx), %ymm2
	vperm2f128	$32, 64(%rsi,%rdx), %ymm1, %ymm1 ## ymm1 = ymm1[0,1],mem[0,1]
	vperm2f128	$32, 96(%rsi,%rdx), %ymm2, %ymm2 ## ymm2 = ymm2[0,1],mem[0,1]
	vunpcklpd	%ymm2, %ymm1, %ymm1     ## ymm1 = ymm1[0],ymm2[0],ymm1[2],ymm2[2]
	vaddpd	%ymm1, %ymm1, %ymm1
	vaddpd	%ymm0, %ymm1, %ymm1
	vmovlpd	%xmm1, (%rax,%rdx)
	vmovhpd	%xmm1, 32(%rax,%rdx)
	vextractf128	$1, %ymm1, %xmm1
	vmovlpd	%xmm1, 64(%rax,%rdx)
	vmovhpd	%xmm1, 96(%rax,%rdx)
	subq	$-128, %rdx
	cmpq	$7936, %rdx                     ## imm = 0x1F00
	jne	LBB23_6
## %bb.7:
	movl	$992, %edx                      ## imm = 0x3E0
LBB23_2:
	addq	$-4, %rdx
	.p2align	4, 0x90
LBB23_3:                                ## =>This Inner Loop Header: Depth=1
	vmovsd	32(%rsi,%rdx,8), %xmm0          ## xmm0 = mem[0],zero
	vaddsd	%xmm0, %xmm0, %xmm0
	vmovsd	(%rcx), %xmm1                   ## xmm1 = mem[0],zero
	vmovsd	8(%rcx), %xmm2                  ## xmm2 = mem[0],zero
	vcvtsd2ss	%xmm1, %xmm1, %xmm1
	vcvtsd2ss	%xmm2, %xmm2, %xmm2
	vmovsd	16(%rcx), %xmm3                 ## xmm3 = mem[0],zero
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vsubss	%xmm3, %xmm1, %xmm1
	vmovsd	24(%rcx), %xmm3                 ## xmm3 = mem[0],zero
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vsubss	%xmm3, %xmm2, %xmm2
	vmulss	%xmm1, %xmm1, %xmm1
	vmulss	%xmm2, %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 32(%rax,%rdx,8)
	addq	$4, %rdx
	cmpq	$992, %rdx                      ## imm = 0x3E0
	jb	LBB23_3
## %bb.4:
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func19
LCPI24_0:
	.quad	0x4049000000000000              ## double 50
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func19
	.p2align	4, 0x90
_func19:                                ## @func19
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$10, %eax
	movq	_out@GOTPCREL(%rip), %rcx
	vmovsd	LCPI24_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	.p2align	4, 0x90
LBB24_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB24_2 Depth 2
	vmovsd	(%rcx,%rax,8), %xmm1            ## xmm1 = mem[0],zero
	.p2align	4, 0x90
LBB24_2:                                ##   Parent Loop BB24_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vaddsd	%xmm1, %xmm1, %xmm1
	vsqrtsd	%xmm1, %xmm1, %xmm1
	vucomisd	%xmm0, %xmm1
	ja	LBB24_2
## %bb.3:                               ##   in Loop: Header=BB24_1 Depth=1
	vmovsd	%xmm1, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	$1001, %rax                     ## imm = 0x3E9
	jne	LBB24_1
## %bb.4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func20
LCPI25_0:
	.quad	0x4024000000000000              ## double 10
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func20
	.p2align	4, 0x90
_func20:                                ## @func20
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$23, %edx
	movq	_in@GOTPCREL(%rip), %rcx
	vbroadcastsd	LCPI25_0(%rip), %ymm0   ## ymm0 = [1.0E+1,1.0E+1,1.0E+1,1.0E+1]
	movq	_out@GOTPCREL(%rip), %rax
	.p2align	4, 0x90
LBB25_1:                                ## =>This Inner Loop Header: Depth=1
	vmovupd	-96(%rcx,%rdx,8), %ymm1
	vmovupd	-64(%rcx,%rdx,8), %ymm2
	vmovupd	-32(%rcx,%rdx,8), %ymm3
	vmovupd	(%rcx,%rdx,8), %ymm4
	vcmpltpd	%ymm1, %ymm0, %ymm5
	vcmpltpd	%ymm2, %ymm0, %ymm6
	vcmpltpd	%ymm3, %ymm0, %ymm7
	vcmpltpd	%ymm4, %ymm0, %ymm8
	vroundpd	$9, %ymm1, %ymm9
	vroundpd	$9, %ymm2, %ymm10
	vroundpd	$9, %ymm3, %ymm11
	vroundpd	$10, %ymm1, %ymm1
	vblendvpd	%ymm5, %ymm9, %ymm1, %ymm1
	vroundpd	$9, %ymm4, %ymm5
	vroundpd	$10, %ymm2, %ymm2
	vblendvpd	%ymm6, %ymm10, %ymm2, %ymm2
	vroundpd	$10, %ymm3, %ymm3
	vblendvpd	%ymm7, %ymm11, %ymm3, %ymm3
	vroundpd	$10, %ymm4, %ymm4
	vblendvpd	%ymm8, %ymm5, %ymm4, %ymm4
	vmovupd	%ymm1, -96(%rax,%rdx,8)
	vmovupd	%ymm2, -64(%rax,%rdx,8)
	vmovupd	%ymm3, -32(%rax,%rdx,8)
	vmovupd	%ymm4, (%rax,%rdx,8)
	addq	$16, %rdx
	cmpq	$311, %rdx                      ## imm = 0x137
	jne	LBB25_1
## %bb.2:
	vmovsd	2392(%rcx), %xmm0               ## xmm0 = mem[0],zero
	vroundsd	$9, %xmm0, %xmm0, %xmm1
	vroundsd	$10, %xmm0, %xmm0, %xmm2
	vmovsd	LCPI25_0(%rip), %xmm3           ## xmm3 = mem[0],zero
	vcmpltsd	%xmm0, %xmm3, %xmm0
	vblendvpd	%xmm0, %xmm1, %xmm2, %xmm0
	vmovsd	2400(%rcx), %xmm1               ## xmm1 = mem[0],zero
	vroundsd	$9, %xmm1, %xmm1, %xmm2
	vroundsd	$10, %xmm1, %xmm1, %xmm4
	vcmpltsd	%xmm1, %xmm3, %xmm1
	vblendvpd	%xmm1, %xmm2, %xmm4, %xmm1
	vunpcklpd	%xmm1, %xmm0, %xmm0     ## xmm0 = xmm0[0],xmm1[0]
	vmovupd	%xmm0, 2392(%rax)
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func21
LCPI26_0:
	.quad	0x40b3830000000000              ## double 4995
LCPI26_1:
	.quad	0x3ff0000000000000              ## double 1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func21
	.p2align	4, 0x90
_func21:                                ## @func21
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rsi, %rax
	leaq	8000(%rsi), %rcx
	cmpq	%rdi, %rcx
	jbe	LBB26_6
## %bb.1:
	leaq	8000(%rdi), %rcx
	cmpq	%rax, %rcx
	jbe	LBB26_6
## %bb.2:
	xorl	%ecx, %ecx
	jmp	LBB26_3
LBB26_6:
	movl	$28, %ecx
	vbroadcastsd	LCPI26_0(%rip), %ymm0   ## ymm0 = [4.995E+3,4.995E+3,4.995E+3,4.995E+3]
	vbroadcastsd	LCPI26_1(%rip), %ymm1   ## ymm1 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	.p2align	4, 0x90
LBB26_7:                                ## =>This Inner Loop Header: Depth=1
	vmovups	%ymm0, -224(%rdi,%rcx,8)
	vmovups	%ymm0, -192(%rdi,%rcx,8)
	vmovups	%ymm0, -160(%rdi,%rcx,8)
	vmovups	%ymm0, -128(%rdi,%rcx,8)
	vmovups	%ymm1, -224(%rax,%rcx,8)
	vmovups	%ymm1, -192(%rax,%rcx,8)
	vmovups	%ymm1, -160(%rax,%rcx,8)
	vmovups	%ymm1, -128(%rax,%rcx,8)
	vmovups	%ymm0, -96(%rdi,%rcx,8)
	vmovups	%ymm0, -64(%rdi,%rcx,8)
	vmovups	%ymm0, -32(%rdi,%rcx,8)
	vmovups	%ymm0, (%rdi,%rcx,8)
	vmovups	%ymm1, -96(%rax,%rcx,8)
	vmovups	%ymm1, -64(%rax,%rcx,8)
	vmovups	%ymm1, -32(%rax,%rcx,8)
	vmovups	%ymm1, (%rax,%rcx,8)
	addq	$32, %rcx
	cmpq	$1020, %rcx                     ## imm = 0x3FC
	jne	LBB26_7
## %bb.8:
	movl	$992, %ecx                      ## imm = 0x3E0
LBB26_3:
	movabsq	$4662214075281833984, %rdx      ## imm = 0x40B3830000000000
	movabsq	$4607182418800017408, %rsi      ## imm = 0x3FF0000000000000
	.p2align	4, 0x90
LBB26_4:                                ## =>This Inner Loop Header: Depth=1
	movq	%rdx, (%rdi,%rcx,8)
	movq	%rsi, (%rax,%rcx,8)
	movq	%rdx, 8(%rdi,%rcx,8)
	movq	%rsi, 8(%rax,%rcx,8)
	movq	%rdx, 16(%rdi,%rcx,8)
	movq	%rsi, 16(%rax,%rcx,8)
	movq	%rdx, 24(%rdi,%rcx,8)
	movq	%rsi, 24(%rax,%rcx,8)
	addq	$4, %rcx
	cmpq	$1000, %rcx                     ## imm = 0x3E8
	jne	LBB26_4
## %bb.5:
	popq	%rbp
	vzeroupper
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
	.comm	_out,800,4                      ## @out
	.comm	_in,800,4                       ## @in
.subsections_via_symbols
