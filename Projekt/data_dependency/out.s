	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function func1
LCPI0_0:
	.long	0x40400000                      ## float 3
LCPI0_1:
	.long	0x40800000                      ## float 4
LCPI0_2:
	.long	0x41200000                      ## float 10
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
	movq	%rdi, %rax
	xorl	%ecx, %ecx
	vmovss	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	vmovss	LCPI0_1(%rip), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	vmovss	LCPI0_2(%rip), %xmm2            ## xmm2 = mem[0],zero,zero,zero
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	(%rsi,%rcx,4), %xmm3            ## xmm3 = mem[0],zero,zero,zero
	vaddss	%xmm3, %xmm3, %xmm3
	vmovss	%xmm3, (%rax,%rcx,4)
	vmulss	(%rsi,%rcx,4), %xmm0, %xmm3
	vmovss	%xmm3, 4(%rax,%rcx,4)
	vmulss	(%rsi,%rcx,4), %xmm1, %xmm3
	vmovss	%xmm3, 8(%rax,%rcx,4)
	vaddss	(%rsi,%rcx,4), %xmm2, %xmm3
	vmovss	%xmm3, 12(%rax,%rcx,4)
	leaq	1(%rcx), %rdx
	movq	%rdx, %rcx
	cmpq	$996, %rdx                      ## imm = 0x3E4
	jne	LBB0_1
## %bb.2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function func2
LCPI1_0:
	.long	0xc0800000                      ## float -4
LCPI1_1:
	.long	0x80000000                      ## float -0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func2
	.p2align	4, 0x90
_func2:                                 ## @func2
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	testl	%edi, %edi
	jle	LBB1_18
## %bb.1:
	movl	%edi, %r10d
	cmpl	$8, %edi
	jae	LBB1_3
## %bb.2:
	xorl	%edi, %edi
	jmp	LBB1_13
LBB1_3:
	leaq	(%r8,%r10,4), %rdi
	cmpq	%r9, %rdi
	seta	-48(%rbp)                       ## 1-byte Folded Spill
	leaq	(%r9,%r10,4), %rbx
	cmpq	%r8, %rbx
	seta	-47(%rbp)                       ## 1-byte Folded Spill
	leaq	(%rdx,%r10,4), %rax
	cmpq	%r9, %rax
	seta	%r12b
	cmpq	%rdx, %rbx
	seta	-46(%rbp)                       ## 1-byte Folded Spill
	leaq	(%rsi,%r10,4), %r15
	cmpq	%r9, %r15
	seta	%r11b
	cmpq	%rsi, %rbx
	seta	-45(%rbp)                       ## 1-byte Folded Spill
	leaq	(%rcx,%r10,4), %r14
	cmpq	%r9, %r14
	seta	%r13b
	cmpq	%rcx, %rbx
	seta	-44(%rbp)                       ## 1-byte Folded Spill
	cmpq	%r8, %rax
	seta	%bl
	cmpq	%rdx, %rdi
	seta	-43(%rbp)                       ## 1-byte Folded Spill
	cmpq	%r8, %r15
	seta	%r15b
	cmpq	%rsi, %rdi
	seta	-42(%rbp)                       ## 1-byte Folded Spill
	cmpq	%r8, %r14
	seta	%r14b
	cmpq	%rcx, %rdi
	seta	-41(%rbp)                       ## 1-byte Folded Spill
	xorl	%edi, %edi
	movb	-47(%rbp), %al                  ## 1-byte Reload
	testb	%al, -48(%rbp)                  ## 1-byte Folded Reload
	jne	LBB1_13
## %bb.4:
	andb	-46(%rbp), %r12b                ## 1-byte Folded Reload
	jne	LBB1_13
## %bb.5:
	andb	-45(%rbp), %r11b                ## 1-byte Folded Reload
	jne	LBB1_13
## %bb.6:
	andb	-44(%rbp), %r13b                ## 1-byte Folded Reload
	jne	LBB1_13
## %bb.7:
	andb	-43(%rbp), %bl                  ## 1-byte Folded Reload
	jne	LBB1_13
## %bb.8:
	andb	-42(%rbp), %r15b                ## 1-byte Folded Reload
	jne	LBB1_13
## %bb.9:
	andb	-41(%rbp), %r14b                ## 1-byte Folded Reload
	jne	LBB1_13
## %bb.10:
	movl	%r10d, %edi
	andl	$-8, %edi
	xorl	%eax, %eax
	vbroadcastss	LCPI1_0(%rip), %ymm0    ## ymm0 = [-4.0E+0,-4.0E+0,-4.0E+0,-4.0E+0,-4.0E+0,-4.0E+0,-4.0E+0,-4.0E+0]
	vxorps	%xmm1, %xmm1, %xmm1
	vbroadcastss	LCPI1_1(%rip), %ymm2    ## ymm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	.p2align	4, 0x90
LBB1_11:                                ## =>This Inner Loop Header: Depth=1
	vmovups	(%rdx,%rax,4), %ymm3
	vmulps	%ymm3, %ymm3, %ymm4
	vmulps	(%rsi,%rax,4), %ymm0, %ymm5
	vmulps	(%rcx,%rax,4), %ymm5, %ymm5
	vaddps	%ymm5, %ymm4, %ymm4
	vsqrtps	%ymm4, %ymm5
	vsubps	%ymm3, %ymm5, %ymm3
	vcvtps2pd	%xmm3, %ymm6
	vcmpleps	%ymm4, %ymm1, %ymm7
	vextractf128	$1, %ymm3, %xmm3
	vcvtps2pd	%xmm3, %ymm3
	vcvtps2pd	16(%rsi,%rax,4), %ymm8
	vcvtps2pd	(%rsi,%rax,4), %ymm9
	vaddpd	%ymm9, %ymm9, %ymm9
	vdivpd	%ymm9, %ymm6, %ymm6
	vaddpd	%ymm8, %ymm8, %ymm8
	vdivpd	%ymm8, %ymm3, %ymm3
	vcvtpd2ps	%ymm6, %xmm6
	vcvtpd2ps	%ymm3, %xmm3
	vinsertf128	$1, %xmm3, %ymm6, %ymm3
	vmaskmovps	%ymm3, %ymm7, (%r9,%rax,4)
	vxorps	(%rdx,%rax,4), %ymm2, %ymm3
	vsubps	%ymm5, %ymm3, %ymm3
	vcvtps2pd	%xmm3, %ymm5
	vcmpnleps	%ymm4, %ymm1, %ymm4
	vextractf128	$1, %ymm3, %xmm3
	vcvtps2pd	%xmm3, %ymm3
	vcvtps2pd	16(%rsi,%rax,4), %ymm6
	vcvtps2pd	(%rsi,%rax,4), %ymm7
	vaddpd	%ymm7, %ymm7, %ymm7
	vdivpd	%ymm7, %ymm5, %ymm5
	vaddpd	%ymm6, %ymm6, %ymm6
	vdivpd	%ymm6, %ymm3, %ymm3
	vcvtpd2ps	%ymm5, %xmm5
	vcvtpd2ps	%ymm3, %xmm3
	vinsertf128	$1, %xmm3, %ymm5, %ymm3
	vmaskmovps	%ymm1, %ymm4, (%r9,%rax,4)
	vandnps	%ymm3, %ymm4, %ymm3
	vmovups	%ymm3, (%r8,%rax,4)
	addq	$8, %rax
	cmpq	%rax, %rdi
	jne	LBB1_11
## %bb.12:
	cmpq	%r10, %rdi
	je	LBB1_18
LBB1_13:
	vmovss	LCPI1_0(%rip), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	vxorps	%xmm1, %xmm1, %xmm1
	vbroadcastss	LCPI1_1(%rip), %xmm2    ## xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	jmp	LBB1_14
	.p2align	4, 0x90
LBB1_16:                                ##   in Loop: Header=BB1_14 Depth=1
	movl	$0, (%r9,%rdi,4)
	vxorps	%xmm3, %xmm3, %xmm3
	vmovss	%xmm3, (%r8,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, %r10
	je	LBB1_18
LBB1_14:                                ## =>This Inner Loop Header: Depth=1
	vmovss	(%rdx,%rdi,4), %xmm3            ## xmm3 = mem[0],zero,zero,zero
	vmovss	(%rsi,%rdi,4), %xmm4            ## xmm4 = mem[0],zero,zero,zero
	vmulss	%xmm0, %xmm4, %xmm5
	vmulss	(%rcx,%rdi,4), %xmm5, %xmm5
	vmulss	%xmm3, %xmm3, %xmm6
	vaddss	%xmm5, %xmm6, %xmm5
	vucomiss	%xmm1, %xmm5
	jb	LBB1_16
## %bb.15:                              ##   in Loop: Header=BB1_14 Depth=1
	vsqrtss	%xmm5, %xmm5, %xmm5
	vsubss	%xmm3, %xmm5, %xmm3
	vcvtss2sd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	%xmm4, %xmm4, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm4
	vdivsd	%xmm4, %xmm3, %xmm3
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vmovss	%xmm3, (%r9,%rdi,4)
	vmovss	(%rdx,%rdi,4), %xmm3            ## xmm3 = mem[0],zero,zero,zero
	vxorps	%xmm2, %xmm3, %xmm3
	vsubss	%xmm5, %xmm3, %xmm3
	vcvtss2sd	%xmm3, %xmm3, %xmm3
	vmovss	(%rsi,%rdi,4), %xmm4            ## xmm4 = mem[0],zero,zero,zero
	vcvtss2sd	%xmm4, %xmm4, %xmm4
	vaddsd	%xmm4, %xmm4, %xmm4
	vdivsd	%xmm4, %xmm3, %xmm3
	vcvtsd2ss	%xmm3, %xmm3, %xmm3
	vmovss	%xmm3, (%r8,%rdi,4)
	addq	$1, %rdi
	cmpq	%rdi, %r10
	jne	LBB1_14
LBB1_18:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	vmovdqu	8(%rdi), %ymm0
	vmovdqu	72(%rdi), %ymm1
	vmovdqu	104(%rdi), %ymm2
	vpaddd	168(%rdi), %ymm2, %ymm2
	vpaddd	136(%rdi), %ymm1, %ymm1
	vpaddd	%ymm2, %ymm1, %ymm1
	vextracti128	$1, %ymm1, %xmm2
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$238, %xmm1, %xmm2              ## xmm2 = xmm1[2,3,2,3]
	vpaddd	%xmm2, %xmm1, %xmm1
	vpshufd	$85, %xmm1, %xmm2               ## xmm2 = xmm1[1,1,1,1]
	vpaddd	%xmm2, %xmm1, %xmm1
	vmovd	%xmm1, %ecx
	vpaddd	40(%rdi), %ymm0, %ymm0
	vextracti128	$1, %ymm0, %xmm1
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$238, %xmm0, %xmm1              ## xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm1, %xmm0, %xmm0
	vpshufd	$85, %xmm0, %xmm1               ## xmm1 = xmm0[1,1,1,1]
	vpaddd	%xmm1, %xmm0, %xmm0
	vmovd	%xmm0, %eax
	addl	%ecx, %eax
	addl	4(%rdi), %eax
	addl	(%rdi), %eax
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
	leaq	4000(%rdx), %rax
	cmpq	%rdi, %rax
	jbe	LBB3_5
## %bb.1:
	leaq	4000(%rdi), %r8
	leaq	4(%rdx), %rax
	cmpq	%r8, %rax
	jae	LBB3_5
## %bb.2:
	movl	$2, %eax
	.p2align	4, 0x90
LBB3_3:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	-8(%rdi,%rax,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	vaddss	-4(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdi,%rax,4)
	vaddss	-4(%rcx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdx,%rax,4)
	cmpq	$1000, %rax                     ## imm = 0x3E8
	je	LBB3_4
## %bb.8:                               ##   in Loop: Header=BB3_3 Depth=1
	vmovss	-4(%rdi,%rax,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	vaddss	(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%rax,4)
	vaddss	(%rcx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rdx,%rax,4)
	addq	$2, %rax
	jmp	LBB3_3
LBB3_5:
	vmovss	(%rdi), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movl	$2, %eax
	.p2align	4, 0x90
LBB3_6:                                 ## =>This Inner Loop Header: Depth=1
	vaddss	-4(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdi,%rax,4)
	vaddss	-4(%rcx,%rax,4), %xmm0, %xmm1
	vmovss	%xmm1, -4(%rdx,%rax,4)
	cmpq	$1000, %rax                     ## imm = 0x3E8
	je	LBB3_4
## %bb.7:                               ##   in Loop: Header=BB3_6 Depth=1
	vaddss	(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%rax,4)
	vaddss	(%rcx,%rax,4), %xmm0, %xmm1
	vmovss	%xmm1, (%rdx,%rax,4)
	addq	$2, %rax
	jmp	LBB3_6
LBB3_4:
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
	vmovss	(%rsi), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movl	$2, %eax
	.p2align	4, 0x90
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	vaddss	-8(%rdx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdi,%rax,4)
	vaddss	-4(%rdx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rsi,%rax,4)
	cmpq	$1000, %rax                     ## imm = 0x3E8
	je	LBB4_3
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	vaddss	-4(%rdx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%rax,4)
	vaddss	(%rdx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rsi,%rax,4)
	addq	$2, %rax
	jmp	LBB4_1
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
	leaq	4(%rdi), %rsi
	movl	$3996, %edx                     ## imm = 0xF9C
	callq	_memmove
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
	pushq	%rbx
	.cfi_offset %rbx, -24
	leaq	4000(%rdi), %r8
	leaq	4000(%rsi), %rax
	cmpq	%rdi, %rax
	seta	%r11b
	leaq	4000(%rdx), %rax
	cmpq	%rsi, %r8
	seta	%bl
	cmpq	%rdi, %rax
	seta	%r10b
	cmpq	%rdx, %r8
	seta	%r9b
	xorl	%r8d, %r8d
	testb	%bl, %r11b
	jne	LBB6_5
## %bb.1:
	andb	%r9b, %r10b
	jne	LBB6_5
## %bb.2:
	movl	$24, %eax
	.p2align	4, 0x90
LBB6_3:                                 ## =>This Inner Loop Header: Depth=1
	vmovups	-96(%rsi,%rax,4), %ymm0
	vmovups	-64(%rsi,%rax,4), %ymm1
	vmovups	-32(%rsi,%rax,4), %ymm2
	vmovups	(%rsi,%rax,4), %ymm3
	vaddps	-96(%rdx,%rax,4), %ymm0, %ymm0
	vaddps	-64(%rdx,%rax,4), %ymm1, %ymm1
	vaddps	-32(%rdx,%rax,4), %ymm2, %ymm2
	vaddps	(%rdx,%rax,4), %ymm3, %ymm3
	vmovups	%ymm0, -96(%rdi,%rax,4)
	vmovups	%ymm1, -64(%rdi,%rax,4)
	vmovups	%ymm2, -32(%rdi,%rax,4)
	vmovups	%ymm3, (%rdi,%rax,4)
	addq	$32, %rax
	cmpq	$1016, %rax                     ## imm = 0x3F8
	jne	LBB6_3
## %bb.4:
	movl	$992, %r8d                      ## imm = 0x3E0
LBB6_5:
	leaq	12(,%r8,4), %rax
	.p2align	4, 0x90
LBB6_6:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	-12(%rsi,%rax), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	vaddss	-12(%rdx,%rax), %xmm0, %xmm0
	vmovss	%xmm0, -12(%rdi,%rax)
	vmovss	-8(%rsi,%rax), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	vaddss	-8(%rdx,%rax), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rdi,%rax)
	vmovss	-4(%rsi,%rax), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	vaddss	-4(%rdx,%rax), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdi,%rax)
	vmovss	(%rsi,%rax), %xmm0              ## xmm0 = mem[0],zero,zero,zero
	vaddss	(%rdx,%rax), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpq	$4012, %rax                     ## imm = 0xFAC
	jne	LBB6_6
## %bb.7:
	vmovss	(%rdi), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movl	$3, %eax
	.p2align	4, 0x90
LBB6_8:                                 ## =>This Inner Loop Header: Depth=1
	vaddss	-8(%rcx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -8(%rdi,%rax,4)
	vaddss	-4(%rcx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rdi,%rax,4)
	vaddss	(%rcx,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, (%rdi,%rax,4)
	addq	$3, %rax
	cmpq	$1002, %rax                     ## imm = 0x3EA
	jne	LBB6_8
## %bb.9:
	popq	%rbx
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
.subsections_via_symbols
