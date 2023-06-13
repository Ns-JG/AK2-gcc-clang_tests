	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.globl	_func1                          ## -- Begin function func1
	.p2align	4, 0x90
_func1:                                 ## @func1
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%edx, %edx
	jle	LBB0_13
## %bb.1:
	movl	%edx, %eax
	cmpl	$32, %edx
	jb	LBB0_2
## %bb.3:
	leaq	(%rsi,%rax,4), %rcx
	cmpq	%rdi, %rcx
	jbe	LBB0_6
## %bb.4:
	leaq	(%rdi,%rax,4), %rcx
	cmpq	%rsi, %rcx
	jbe	LBB0_6
LBB0_2:
	xorl	%ecx, %ecx
LBB0_9:
	movq	%rcx, %rdx
	notq	%rdx
	testb	$1, %al
	je	LBB0_11
## %bb.10:
	vaddss	(%rsi,%rcx,4), %xmm0, %xmm1
	vmulss	(%rdi,%rcx,4), %xmm1, %xmm1
	vmovss	%xmm1, (%rdi,%rcx,4)
	orq	$1, %rcx
LBB0_11:
	addq	%rax, %rdx
	je	LBB0_13
	.p2align	4, 0x90
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	vaddss	(%rsi,%rcx,4), %xmm0, %xmm1
	vmulss	(%rdi,%rcx,4), %xmm1, %xmm1
	vmovss	%xmm1, (%rdi,%rcx,4)
	vaddss	4(%rsi,%rcx,4), %xmm0, %xmm1
	vmulss	4(%rdi,%rcx,4), %xmm1, %xmm1
	vmovss	%xmm1, 4(%rdi,%rcx,4)
	addq	$2, %rcx
	cmpq	%rcx, %rax
	jne	LBB0_12
	jmp	LBB0_13
LBB0_6:
	movl	%eax, %ecx
	andl	$-32, %ecx
	vbroadcastss	%xmm0, %ymm1
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	vaddps	(%rsi,%rdx,4), %ymm1, %ymm2
	vaddps	32(%rsi,%rdx,4), %ymm1, %ymm3
	vaddps	64(%rsi,%rdx,4), %ymm1, %ymm4
	vaddps	96(%rsi,%rdx,4), %ymm1, %ymm5
	vmulps	(%rdi,%rdx,4), %ymm2, %ymm2
	vmulps	32(%rdi,%rdx,4), %ymm3, %ymm3
	vmulps	64(%rdi,%rdx,4), %ymm4, %ymm4
	vmulps	96(%rdi,%rdx,4), %ymm5, %ymm5
	vmovups	%ymm2, (%rdi,%rdx,4)
	vmovups	%ymm3, 32(%rdi,%rdx,4)
	vmovups	%ymm4, 64(%rdi,%rdx,4)
	vmovups	%ymm5, 96(%rdi,%rdx,4)
	addq	$32, %rdx
	cmpq	%rdx, %rcx
	jne	LBB0_7
## %bb.8:
	cmpq	%rax, %rcx
	jne	LBB0_9
LBB0_13:
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
	leaq	8000(%rsi), %rax
	cmpq	%rdi, %rax
	jbe	LBB1_3
## %bb.1:
	leaq	8000(%rdi), %rax
	cmpq	%rsi, %rax
	jbe	LBB1_3
## %bb.2:
	xorl	%eax, %eax
	jmp	LBB1_6
LBB1_3:
	movl	$12, %eax
	.p2align	4, 0x90
LBB1_4:                                 ## =>This Inner Loop Header: Depth=1
	vmovupd	-96(%rsi,%rax,8), %ymm0
	vmovupd	-64(%rsi,%rax,8), %ymm1
	vmovupd	-32(%rsi,%rax,8), %ymm2
	vmovupd	(%rsi,%rax,8), %ymm3
	vmovupd	-96(%rdi,%rax,8), %ymm4
	vmovupd	-64(%rdi,%rax,8), %ymm5
	vmovupd	-32(%rdi,%rax,8), %ymm6
	vmovupd	(%rdi,%rax,8), %ymm7
	vcmpltpd	%ymm0, %ymm4, %ymm4
	vmaskmovpd	%ymm0, %ymm4, -96(%rdi,%rax,8)
	vcmpltpd	%ymm1, %ymm5, %ymm0
	vmaskmovpd	%ymm1, %ymm0, -64(%rdi,%rax,8)
	vcmpltpd	%ymm2, %ymm6, %ymm0
	vmaskmovpd	%ymm2, %ymm0, -32(%rdi,%rax,8)
	vcmpltpd	%ymm3, %ymm7, %ymm0
	vmaskmovpd	%ymm3, %ymm0, (%rdi,%rax,8)
	addq	$16, %rax
	cmpq	$1004, %rax                     ## imm = 0x3EC
	jne	LBB1_4
## %bb.5:
	movl	$992, %eax                      ## imm = 0x3E0
	jmp	LBB1_6
	.p2align	4, 0x90
LBB1_10:                                ##   in Loop: Header=BB1_6 Depth=1
	addq	$2, %rax
	cmpq	$1000, %rax                     ## imm = 0x3E8
	je	LBB1_11
LBB1_6:                                 ## =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi,%rax,8), %xmm0            ## xmm0 = mem[0],zero
	vucomisd	(%rdi,%rax,8), %xmm0
	ja	LBB1_7
## %bb.8:                               ##   in Loop: Header=BB1_6 Depth=1
	vmovsd	8(%rsi,%rax,8), %xmm0           ## xmm0 = mem[0],zero
	vucomisd	8(%rdi,%rax,8), %xmm0
	jbe	LBB1_10
	jmp	LBB1_9
	.p2align	4, 0x90
LBB1_7:                                 ##   in Loop: Header=BB1_6 Depth=1
	vmovsd	%xmm0, (%rdi,%rax,8)
	vmovsd	8(%rsi,%rax,8), %xmm0           ## xmm0 = mem[0],zero
	vucomisd	8(%rdi,%rax,8), %xmm0
	jbe	LBB1_10
LBB1_9:                                 ##   in Loop: Header=BB1_6 Depth=1
	vmovsd	%xmm0, 8(%rdi,%rax,8)
	jmp	LBB1_10
LBB1_11:
	popq	%rbp
	vzeroupper
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
	leaq	400(%rdx), %rax
	leaq	400(%rdi), %rcx
	leaq	400(%rsi), %r8
	cmpq	%rdx, %rcx
	seta	%r9b
	cmpq	%rdi, %rax
	seta	%cl
	andb	%r9b, %cl
	cmpq	%rdx, %r8
	seta	%r9b
	cmpq	%rsi, %rax
	seta	%r8b
	andb	%r9b, %r8b
	orb	%cl, %r8b
	je	LBB2_2
## %bb.1:
	xorl	%eax, %eax
	jmp	LBB2_3
LBB2_2:
	vmovups	(%rsi), %ymm0
	vandps	(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, (%rdx)
	vmovups	32(%rsi), %ymm0
	vandps	32(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 32(%rdx)
	vmovups	64(%rsi), %ymm0
	vandps	64(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 64(%rdx)
	vmovups	96(%rsi), %ymm0
	vandps	96(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 96(%rdx)
	vmovups	128(%rsi), %ymm0
	vandps	128(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 128(%rdx)
	vmovups	160(%rsi), %ymm0
	vandps	160(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 160(%rdx)
	vmovups	192(%rsi), %ymm0
	vandps	192(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 192(%rdx)
	vmovups	224(%rsi), %ymm0
	vandps	224(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 224(%rdx)
	vmovups	256(%rsi), %ymm0
	vandps	256(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 256(%rdx)
	vmovups	288(%rsi), %ymm0
	vandps	288(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 288(%rdx)
	vmovups	320(%rsi), %ymm0
	vandps	320(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 320(%rdx)
	vmovdqu	352(%rsi), %ymm0
	vpand	352(%rdi), %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rdx)
	movl	$96, %eax
	.p2align	4, 0x90
LBB2_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	andl	(%rdi,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
	movl	4(%rsi,%rax,4), %ecx
	andl	4(%rdi,%rax,4), %ecx
	movl	%ecx, 4(%rdx,%rax,4)
	movl	8(%rsi,%rax,4), %ecx
	andl	8(%rdi,%rax,4), %ecx
	movl	%ecx, 8(%rdx,%rax,4)
	movl	12(%rsi,%rax,4), %ecx
	andl	12(%rdi,%rax,4), %ecx
	movl	%ecx, 12(%rdx,%rax,4)
	addq	$4, %rax
	cmpq	$100, %rax
	jne	LBB2_3
## %bb.4:
	testb	%r8b, %r8b
	je	LBB2_6
## %bb.5:
	xorl	%eax, %eax
	jmp	LBB2_7
LBB2_6:
	vmovups	(%rsi), %ymm0
	vorps	(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, (%rdx)
	vmovups	32(%rsi), %ymm0
	vorps	32(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 32(%rdx)
	vmovups	64(%rsi), %ymm0
	vorps	64(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 64(%rdx)
	vmovups	96(%rsi), %ymm0
	vorps	96(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 96(%rdx)
	vmovups	128(%rsi), %ymm0
	vorps	128(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 128(%rdx)
	vmovups	160(%rsi), %ymm0
	vorps	160(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 160(%rdx)
	vmovups	192(%rsi), %ymm0
	vorps	192(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 192(%rdx)
	vmovups	224(%rsi), %ymm0
	vorps	224(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 224(%rdx)
	vmovups	256(%rsi), %ymm0
	vorps	256(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 256(%rdx)
	vmovups	288(%rsi), %ymm0
	vorps	288(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 288(%rdx)
	vmovups	320(%rsi), %ymm0
	vorps	320(%rdi), %ymm0, %ymm0
	vmovups	%ymm0, 320(%rdx)
	vmovdqu	352(%rsi), %ymm0
	vpor	352(%rdi), %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rdx)
	movl	$96, %eax
	.p2align	4, 0x90
LBB2_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	(%rsi,%rax,4), %ecx
	orl	(%rdi,%rax,4), %ecx
	movl	%ecx, (%rdx,%rax,4)
	movl	4(%rsi,%rax,4), %ecx
	orl	4(%rdi,%rax,4), %ecx
	movl	%ecx, 4(%rdx,%rax,4)
	movl	8(%rsi,%rax,4), %ecx
	orl	8(%rdi,%rax,4), %ecx
	movl	%ecx, 8(%rdx,%rax,4)
	movl	12(%rsi,%rax,4), %ecx
	orl	12(%rdi,%rax,4), %ecx
	movl	%ecx, 12(%rdx,%rax,4)
	addq	$4, %rax
	cmpq	$100, %rax
	jne	LBB2_7
## %bb.8:
	testb	%r8b, %r8b
	je	LBB2_10
## %bb.9:
	xorl	%eax, %eax
	jmp	LBB2_11
LBB2_10:
	vmovdqu	(%rdi), %ymm0
	vpsllvd	(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rdx)
	vmovdqu	32(%rdi), %ymm0
	vpsllvd	32(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rdx)
	vmovdqu	64(%rdi), %ymm0
	vpsllvd	64(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rdx)
	vmovdqu	96(%rdi), %ymm0
	vpsllvd	96(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rdx)
	vmovdqu	128(%rdi), %ymm0
	vpsllvd	128(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rdx)
	vmovdqu	160(%rdi), %ymm0
	vpsllvd	160(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rdx)
	vmovdqu	192(%rdi), %ymm0
	vpsllvd	192(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rdx)
	vmovdqu	224(%rdi), %ymm0
	vpsllvd	224(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rdx)
	vmovdqu	256(%rdi), %ymm0
	vpsllvd	256(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rdx)
	vmovdqu	288(%rdi), %ymm0
	vpsllvd	288(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rdx)
	vmovdqu	320(%rdi), %ymm0
	vpsllvd	320(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rdx)
	vmovdqu	352(%rdi), %ymm0
	vpsllvd	352(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rdx)
	movl	$96, %eax
	.p2align	4, 0x90
LBB2_11:                                ## =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %r9d
	movzbl	(%rsi,%rax,4), %ecx
	shll	%cl, %r9d
	movl	%r9d, (%rdx,%rax,4)
	movl	4(%rdi,%rax,4), %r9d
	movzbl	4(%rsi,%rax,4), %ecx
	shll	%cl, %r9d
	movl	%r9d, 4(%rdx,%rax,4)
	movl	8(%rdi,%rax,4), %r9d
	movzbl	8(%rsi,%rax,4), %ecx
	shll	%cl, %r9d
	movl	%r9d, 8(%rdx,%rax,4)
	movl	12(%rdi,%rax,4), %r9d
	movzbl	12(%rsi,%rax,4), %ecx
	shll	%cl, %r9d
	movl	%r9d, 12(%rdx,%rax,4)
	addq	$4, %rax
	cmpq	$100, %rax
	jne	LBB2_11
## %bb.12:
	testb	%r8b, %r8b
	je	LBB2_14
## %bb.13:
	xorl	%eax, %eax
	jmp	LBB2_15
LBB2_14:
	vmovdqu	(%rdi), %ymm0
	vpsravd	(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, (%rdx)
	vmovdqu	32(%rdi), %ymm0
	vpsravd	32(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 32(%rdx)
	vmovdqu	64(%rdi), %ymm0
	vpsravd	64(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 64(%rdx)
	vmovdqu	96(%rdi), %ymm0
	vpsravd	96(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 96(%rdx)
	vmovdqu	128(%rdi), %ymm0
	vpsravd	128(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 128(%rdx)
	vmovdqu	160(%rdi), %ymm0
	vpsravd	160(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 160(%rdx)
	vmovdqu	192(%rdi), %ymm0
	vpsravd	192(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 192(%rdx)
	vmovdqu	224(%rdi), %ymm0
	vpsravd	224(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 224(%rdx)
	vmovdqu	256(%rdi), %ymm0
	vpsravd	256(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 256(%rdx)
	vmovdqu	288(%rdi), %ymm0
	vpsravd	288(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 288(%rdx)
	vmovdqu	320(%rdi), %ymm0
	vpsravd	320(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 320(%rdx)
	vmovdqu	352(%rdi), %ymm0
	vpsravd	352(%rsi), %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rdx)
	movl	$96, %eax
	.p2align	4, 0x90
LBB2_15:                                ## =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %r9d
	movzbl	(%rsi,%rax,4), %ecx
	sarl	%cl, %r9d
	movl	%r9d, (%rdx,%rax,4)
	movl	4(%rdi,%rax,4), %r9d
	movzbl	4(%rsi,%rax,4), %ecx
	sarl	%cl, %r9d
	movl	%r9d, 4(%rdx,%rax,4)
	movl	8(%rdi,%rax,4), %r9d
	movzbl	8(%rsi,%rax,4), %ecx
	sarl	%cl, %r9d
	movl	%r9d, 8(%rdx,%rax,4)
	movl	12(%rdi,%rax,4), %r9d
	movzbl	12(%rsi,%rax,4), %ecx
	sarl	%cl, %r9d
	movl	%r9d, 12(%rdx,%rax,4)
	addq	$4, %rax
	cmpq	$100, %rax
	jne	LBB2_15
## %bb.16:
	testb	%r8b, %r8b
	je	LBB2_18
## %bb.17:
	xorl	%eax, %eax
	jmp	LBB2_19
LBB2_18:
	vpcmpeqd	%ymm0, %ymm0, %ymm0
	vpxor	(%rdi), %ymm0, %ymm1
	vpxor	(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, (%rdx)
	vpxor	32(%rdi), %ymm0, %ymm1
	vpxor	32(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 32(%rdx)
	vpxor	64(%rdi), %ymm0, %ymm1
	vpxor	64(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 64(%rdx)
	vpxor	96(%rdi), %ymm0, %ymm1
	vpxor	96(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 96(%rdx)
	vpxor	128(%rdi), %ymm0, %ymm1
	vpxor	128(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 128(%rdx)
	vpxor	160(%rdi), %ymm0, %ymm1
	vpxor	160(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 160(%rdx)
	vpxor	192(%rdi), %ymm0, %ymm1
	vpxor	192(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 192(%rdx)
	vpxor	224(%rdi), %ymm0, %ymm1
	vpxor	224(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 224(%rdx)
	vpxor	256(%rdi), %ymm0, %ymm1
	vpxor	256(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 256(%rdx)
	vpxor	288(%rdi), %ymm0, %ymm1
	vpxor	288(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 288(%rdx)
	vpxor	320(%rdi), %ymm0, %ymm1
	vpxor	320(%rsi), %ymm0, %ymm2
	vpaddd	%ymm1, %ymm2, %ymm1
	vmovdqu	%ymm1, 320(%rdx)
	vpxor	352(%rdi), %ymm0, %ymm1
	vpxor	352(%rsi), %ymm0, %ymm0
	vpaddd	%ymm1, %ymm0, %ymm0
	vmovdqu	%ymm0, 352(%rdx)
	movl	$96, %eax
	.p2align	4, 0x90
LBB2_19:                                ## =>This Inner Loop Header: Depth=1
	movl	(%rdi,%rax,4), %r8d
	notl	%r8d
	movl	(%rsi,%rax,4), %ecx
	notl	%ecx
	addl	%r8d, %ecx
	movl	%ecx, (%rdx,%rax,4)
	movl	4(%rdi,%rax,4), %r8d
	notl	%r8d
	movl	4(%rsi,%rax,4), %ecx
	notl	%ecx
	addl	%r8d, %ecx
	movl	%ecx, 4(%rdx,%rax,4)
	addq	$2, %rax
	cmpq	$100, %rax
	jne	LBB2_19
## %bb.20:
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func4                          ## -- Begin function func4
	.p2align	4, 0x90
_func4:                                 ## @func4
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovd	%edx, %xmm0
	vpinsrd	$1, %ecx, %xmm0, %xmm0
	vmovd	%edi, %xmm1
	vpinsrd	$1, %esi, %xmm1, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpmulld	%xmm1, %xmm0, %xmm0
	vpbroadcastq	%xmm0, %xmm0
	vmovdqu	%xmm0, (%r8)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func5                          ## -- Begin function func5
	.p2align	4, 0x90
_func5:                                 ## @func5
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%ecx, %ecx
	jle	LBB4_3
## %bb.1:
	movl	%ecx, %eax
	xorl	%ecx, %ecx
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB4_2:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	(%rdi,%rcx,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	vmulss	(%rsi,%rcx,4), %xmm1, %xmm1
	vmovss	4(%rdi,%rcx,4), %xmm2           ## xmm2 = mem[0],zero,zero,zero
	vaddss	%xmm0, %xmm1, %xmm1
	vmulss	4(%rsi,%rcx,4), %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmovss	8(%rdi,%rcx,4), %xmm2           ## xmm2 = mem[0],zero,zero,zero
	vmulss	8(%rsi,%rcx,4), %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmovss	12(%rdi,%rcx,4), %xmm2          ## xmm2 = mem[0],zero,zero,zero
	vmulss	12(%rsi,%rcx,4), %xmm2, %xmm2
	vaddss	%xmm2, %xmm1, %xmm1
	vmovss	%xmm1, (%rdx,%rcx,4)
	addq	$4, %rcx
	cmpq	%rax, %rcx
	jb	LBB4_2
LBB4_3:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func6                          ## -- Begin function func6
	.p2align	4, 0x90
_func6:                                 ## @func6
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%ecx, %ecx
	jle	LBB5_8
## %bb.1:
	movl	%ecx, %eax
	addq	$-1, %rax
	movq	%rax, %rcx
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %r8d
	andl	$3, %r8d
	cmpq	$12, %rax
	jae	LBB5_3
## %bb.2:
	xorl	%eax, %eax
	jmp	LBB5_5
LBB5_3:
	andq	$-4, %rcx
	negq	%rcx
	xorl	%eax, %eax
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB5_4:                                 ## =>This Inner Loop Header: Depth=1
	vmovups	(%rdi,%rax,4), %xmm1
	vmulps	(%rsi,%rax,4), %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, (%rdx,%rax,4)
	vmovups	16(%rdi,%rax,4), %xmm1
	vmulps	16(%rsi,%rax,4), %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, 16(%rdx,%rax,4)
	vmovups	32(%rdi,%rax,4), %xmm1
	vmulps	32(%rsi,%rax,4), %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, 32(%rdx,%rax,4)
	vmovups	48(%rdi,%rax,4), %xmm1
	vmulps	48(%rsi,%rax,4), %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, 48(%rdx,%rax,4)
	addq	$16, %rax
	addq	$4, %rcx
	jne	LBB5_4
LBB5_5:
	testq	%r8, %r8
	je	LBB5_8
## %bb.6:
	leaq	(%rdx,%rax,4), %rcx
	leaq	(%rsi,%rax,4), %rdx
	leaq	(%rdi,%rax,4), %rax
	shlq	$4, %r8
	xorl	%esi, %esi
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align	4, 0x90
LBB5_7:                                 ## =>This Inner Loop Header: Depth=1
	vmovups	(%rax,%rsi), %xmm1
	vmulps	(%rdx,%rsi), %xmm1, %xmm1
	vaddps	%xmm0, %xmm1, %xmm1
	vmovups	%xmm1, (%rcx,%rsi)
	addq	$16, %rsi
	cmpq	%rsi, %r8
	jne	LBB5_7
LBB5_8:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_func7                          ## -- Begin function func7
	.p2align	4, 0x90
_func7:                                 ## @func7
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovsd	8(%rsi), %xmm0                  ## xmm0 = mem[0],zero
	vmovsd	%xmm0, (%rdi)
	vmovsd	16(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 8(%rdi)
	vmovsd	24(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 16(%rdi)
	vmovsd	32(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 24(%rdi)
	vmovsd	40(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 32(%rdi)
	vmovsd	48(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 40(%rdi)
	vmovsd	56(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 48(%rdi)
	vmovsd	64(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 56(%rdi)
	vmovsd	72(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 64(%rdi)
	vmovsd	80(%rsi), %xmm0                 ## xmm0 = mem[0],zero
	vmovsd	%xmm0, 72(%rdi)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
