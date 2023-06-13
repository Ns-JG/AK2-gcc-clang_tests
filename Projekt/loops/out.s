	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function main
LCPI0_0:
	.long	123456                          ## 0x1e240
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3
LCPI0_1:
	.quad	0x4330000000000000              ## double 4503599627370496
LCPI0_2:
	.quad	0x4014000000000000              ## double 5
LCPI0_3:
	.quad	0x41e0000000000000              ## double 2147483648
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	_in@GOTPCREL(%rip), %rax
	leaq	96(%rax), %rdx
	movl	$993, %esi                      ## imm = 0x3E1
	vbroadcastss	LCPI0_0(%rip), %ymm0    ## ymm0 = [123456,123456,123456,123456,123456,123456,123456,123456]
	movq	_out@GOTPCREL(%rip), %rcx
	.p2align	4, 0x90
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	vorpd	-96(%rdx), %ymm0, %ymm1
	vorpd	-64(%rdx), %ymm0, %ymm2
	vorpd	-32(%rdx), %ymm0, %ymm3
	vorpd	(%rdx), %ymm0, %ymm4
	vpermilps	$27, %ymm1, %ymm1       ## ymm1 = ymm1[3,2,1,0,7,6,5,4]
	vpermpd	$78, %ymm1, %ymm1               ## ymm1 = ymm1[2,3,0,1]
	vmovupd	%ymm1, (%rcx,%rsi,4)
	vpermilps	$27, %ymm2, %ymm1       ## ymm1 = ymm2[3,2,1,0,7,6,5,4]
	vpermpd	$78, %ymm1, %ymm1               ## ymm1 = ymm1[2,3,0,1]
	vmovupd	%ymm1, -32(%rcx,%rsi,4)
	vpermilps	$27, %ymm3, %ymm1       ## ymm1 = ymm3[3,2,1,0,7,6,5,4]
	vpermpd	$78, %ymm1, %ymm1               ## ymm1 = ymm1[2,3,0,1]
	vmovupd	%ymm1, -64(%rcx,%rsi,4)
	vpermilps	$27, %ymm4, %ymm1       ## ymm1 = ymm4[3,2,1,0,7,6,5,4]
	vpermpd	$78, %ymm1, %ymm1               ## ymm1 = ymm1[2,3,0,1]
	vmovupd	%ymm1, -96(%rcx,%rsi,4)
	subq	$-128, %rdx
	addq	$-32, %rsi
	cmpq	$1, %rsi
	jne	LBB0_1
## %bb.2:
	movl	$123456, %edx                   ## imm = 0x1E240
	movl	3968(%rax), %esi
	orl	%edx, %esi
	movl	%esi, 32(%rcx)
	movl	3972(%rax), %esi
	orl	%edx, %esi
	movl	%esi, 28(%rcx)
	movl	3976(%rax), %esi
	orl	%edx, %esi
	movl	%esi, 24(%rcx)
	movl	3980(%rax), %esi
	orl	%edx, %esi
	movl	%esi, 20(%rcx)
	movl	3984(%rax), %esi
	orl	%edx, %esi
	movl	%esi, 16(%rcx)
	movl	3988(%rax), %esi
	orl	%edx, %esi
	movl	%esi, 12(%rcx)
	movl	3992(%rax), %esi
	orl	%edx, %esi
	movl	%esi, 8(%rcx)
	orl	3996(%rax), %edx
	movl	%edx, 4(%rcx)
	xorl	%edx, %edx
	vpbroadcastq	LCPI0_1(%rip), %ymm0    ## ymm0 = [4.503599627370496E+15,4.503599627370496E+15,4.503599627370496E+15,4.503599627370496E+15]
	vbroadcastsd	LCPI0_2(%rip), %ymm2    ## ymm2 = [5.0E+0,5.0E+0,5.0E+0,5.0E+0]
	vbroadcastsd	LCPI0_3(%rip), %ymm1    ## ymm1 = [2.147483648E+9,2.147483648E+9,2.147483648E+9,2.147483648E+9]
	.p2align	4, 0x90
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	20(%rax,%rdx,4), %ymm3  ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vpmovzxdq	36(%rax,%rdx,4), %ymm4  ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vsqrtpd	%ymm4, %ymm4
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vroundpd	$10, %ymm3, %ymm3
	vroundpd	$10, %ymm4, %ymm4
	vmulpd	%ymm2, %ymm4, %ymm4
	vmulpd	%ymm2, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm5
	vpsrad	$31, %xmm5, %xmm6
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm6, %xmm3, %xmm3
	vorpd	%xmm3, %xmm5, %xmm3
	vcvttpd2dq	%ymm4, %xmm5
	vpsrad	$31, %xmm5, %xmm6
	vsubpd	%ymm1, %ymm4, %ymm4
	vcvttpd2dq	%ymm4, %xmm4
	vandpd	%xmm6, %xmm4, %xmm4
	vorpd	%xmm4, %xmm5, %xmm4
	vmovapd	%xmm4, 16(%rcx,%rdx,4)
	vmovapd	%xmm3, (%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$992, %rdx                      ## imm = 0x3E0
	jne	LBB0_3
## %bb.4:
	movl	3988(%rax), %edx
	movl	3992(%rax), %esi
	vcvtsi2sd	%rdx, %xmm7, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vroundsd	$10, %xmm2, %xmm2, %xmm2
	vmovsd	LCPI0_2(%rip), %xmm3            ## xmm3 = mem[0],zero
	vmulsd	%xmm3, %xmm2, %xmm2
	vcvttsd2si	%xmm2, %rdx
	movl	%edx, 3968(%rcx)
	vcvtsi2sd	%rsi, %xmm7, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vroundsd	$10, %xmm2, %xmm2, %xmm2
	vmulsd	%xmm3, %xmm2, %xmm2
	vcvttsd2si	%xmm2, %rdx
	movl	3996(%rax), %esi
	vcvtsi2sd	%rsi, %xmm7, %xmm2
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vroundsd	$10, %xmm2, %xmm2, %xmm2
	vmulsd	%xmm3, %xmm2, %xmm2
	vcvttsd2si	%xmm2, %rsi
	movl	%edx, 3972(%rcx)
	movl	4000(%rax), %edx
	vcvtsi2sd	%rdx, %xmm7, %xmm2
	movl	%esi, 3976(%rcx)
	vsqrtsd	%xmm2, %xmm2, %xmm2
	vroundsd	$10, %xmm2, %xmm2, %xmm2
	vmulsd	%xmm3, %xmm2, %xmm2
	vcvttsd2si	%xmm2, %rdx
	movl	%edx, 3980(%rcx)
	movl	$24, %edx
	.p2align	4, 0x90
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	vmovdqu	-96(%rcx,%rdx,4), %ymm2
	vmovdqu	-64(%rcx,%rdx,4), %ymm3
	vmovdqu	-32(%rcx,%rdx,4), %ymm4
	vmovdqu	(%rcx,%rdx,4), %ymm5
	vpaddd	-96(%rax,%rdx,4), %ymm2, %ymm2
	vpaddd	-64(%rax,%rdx,4), %ymm3, %ymm3
	vpaddd	-32(%rax,%rdx,4), %ymm4, %ymm4
	vpaddd	(%rax,%rdx,4), %ymm5, %ymm5
	vmovdqu	%ymm2, -96(%rcx,%rdx,4)
	vmovdqu	%ymm3, -64(%rcx,%rdx,4)
	vmovdqu	%ymm4, -32(%rcx,%rdx,4)
	vmovdqu	%ymm5, (%rcx,%rdx,4)
	addq	$32, %rdx
	cmpq	$1016, %rdx                     ## imm = 0x3F8
	jne	LBB0_5
## %bb.6:
	movl	3968(%rax), %edx
	movl	3972(%rax), %esi
	addl	%edx, 3968(%rcx)
	addl	%esi, 3972(%rcx)
	movl	3976(%rax), %edx
	addl	%edx, 3976(%rcx)
	movl	3980(%rax), %edx
	addl	%edx, 3980(%rcx)
	movl	3984(%rax), %edx
	addl	%edx, 3984(%rcx)
	movl	3988(%rax), %edx
	addl	%edx, 3988(%rcx)
	movl	3992(%rax), %edx
	addl	%edx, 3992(%rcx)
	movl	3996(%rax), %edx
	addl	%edx, 3996(%rcx)
	movl	$993, %edx                      ## imm = 0x3E1
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	vmovdqu	-96(%rcx,%rdx,4), %ymm2
	vmovdqu	-64(%rcx,%rdx,4), %ymm3
	vmovdqu	-32(%rcx,%rdx,4), %ymm4
	vmovdqu	(%rcx,%rdx,4), %ymm5
	vpaddd	(%rax,%rdx,4), %ymm5, %ymm5
	vpaddd	-32(%rax,%rdx,4), %ymm4, %ymm4
	vpaddd	-64(%rax,%rdx,4), %ymm3, %ymm3
	vpaddd	-96(%rax,%rdx,4), %ymm2, %ymm2
	vmovdqu	%ymm5, (%rcx,%rdx,4)
	vmovdqu	%ymm4, -32(%rcx,%rdx,4)
	vmovdqu	%ymm3, -64(%rcx,%rdx,4)
	vmovdqu	%ymm2, -96(%rcx,%rdx,4)
	addq	$-32, %rdx
	cmpq	$1, %rdx
	jne	LBB0_7
## %bb.8:
	movl	32(%rax), %edx
	addl	%edx, 32(%rcx)
	movl	28(%rax), %edx
	addl	%edx, 28(%rcx)
	movl	24(%rax), %edx
	addl	%edx, 24(%rcx)
	movl	20(%rax), %edx
	addl	%edx, 20(%rcx)
	movl	12(%rax), %edx
	movl	16(%rax), %esi
	addl	%esi, 16(%rcx)
	addl	%edx, 12(%rcx)
	movl	8(%rax), %edx
	addl	%edx, 8(%rcx)
	movl	4(%rax), %edx
	addl	%edx, 4(%rcx)
	movq	$-2, %rdx
	.p2align	4, 0x90
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	8(%rax,%rdx,4), %esi
	addl	%esi, 8(%rcx,%rdx,4)
	movl	16(%rax,%rdx,4), %esi
	addl	%esi, 16(%rcx,%rdx,4)
	addq	$4, %rdx
	cmpq	$998, %rdx                      ## imm = 0x3E6
	jb	LBB0_9
## %bb.10:
	movq	$-40, %rdx
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	movl	160(%rax,%rdx,4), %esi
	addl	%esi, 160(%rcx,%rdx,4)
	movl	240(%rax,%rdx,4), %esi
	addl	%esi, 240(%rcx,%rdx,4)
	addq	$40, %rdx
	cmpq	$960, %rdx                      ## imm = 0x3C0
	jb	LBB0_11
## %bb.12:
	movl	$1005, %edx                     ## imm = 0x3ED
	.p2align	4, 0x90
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	movl	-20(%rax,%rdx,4), %esi
	addl	%esi, -20(%rcx,%rdx,4)
	movl	-40(%rax,%rdx,4), %esi
	addl	%esi, -40(%rcx,%rdx,4)
	addq	$-10, %rdx
	cmpq	$5, %rdx
	ja	LBB0_13
## %bb.14:
	movl	4(%rcx), %edx
	movl	8(%rcx), %r8d
	movl	4(%rax), %edi
	movl	8(%rax), %esi
	addl	%edi, %edx
	addl	$-6, %edx
	movl	%edx, 4(%rcx)
	leal	-6(%rsi,%r8), %edx
	movl	%edx, 8(%rcx)
	movl	16(%rax), %edx
	movl	16(%rcx), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	%edx, 16(%rcx)
	movl	32(%rax), %edx
	movl	32(%rcx), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	%edx, 32(%rcx)
	movl	64(%rax), %edx
	movl	64(%rcx), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	%edx, 64(%rcx)
	movl	128(%rax), %edx
	movl	128(%rcx), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	%edx, 128(%rcx)
	movl	256(%rax), %edx
	movl	256(%rcx), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	%edx, 256(%rcx)
	movl	512(%rax), %edx
	movl	512(%rcx), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	%edx, 512(%rcx)
	movl	1024(%rax), %edx
	movl	1024(%rcx), %esi
	leal	-6(%rdx,%rsi), %edx
	movl	%edx, 1024(%rcx)
	movl	2048(%rax), %edx
	movl	2048(%rcx), %esi
	addl	%esi, %edx
	addl	$-6, %edx
	movl	%edx, 2048(%rcx)
	movl	$14, %edx
	.p2align	4, 0x90
LBB0_15:                                ## =>This Inner Loop Header: Depth=1
	movl	36(%rax,%rdx,4), %esi
	addl	%esi, 36(%rcx,%rdx,4)
	movl	48(%rax,%rdx,4), %esi
	addl	%esi, 48(%rcx,%rdx,4)
	movl	60(%rax,%rdx,4), %esi
	addl	%esi, 60(%rcx,%rdx,4)
	addq	$9, %rdx
	cmpq	$491, %rdx                      ## imm = 0x1EB
	jb	LBB0_15
## %bb.16:
	movq	_in_2d@GOTPCREL(%rip), %rax
	movq	_out_2d@GOTPCREL(%rip), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_17:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_18 Depth 2
	xorl	%esi, %esi
	.p2align	4, 0x90
LBB0_18:                                ##   Parent Loop BB0_17 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vpmovzxdq	(%rax,%rsi,4), %ymm2    ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	16(%rax,%rsi,4), %ymm3  ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	16(%rcx,%rsi,4), %ymm4  ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	(%rcx,%rsi,4), %ymm5    ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, (%rcx,%rsi,4)
	vmovapd	%xmm3, 16(%rcx,%rsi,4)
	addq	$8, %rsi
	cmpq	$1000, %rsi                     ## imm = 0x3E8
	jne	LBB0_18
## %bb.19:                              ##   in Loop: Header=BB0_17 Depth=1
	addq	$1, %rdx
	addq	$4000, %rax                     ## imm = 0xFA0
	addq	$4000, %rcx                     ## imm = 0xFA0
	cmpq	$100, %rdx
	jne	LBB0_17
## %bb.20:
	xorl	%edx, %edx
	movq	_in_2d@GOTPCREL(%rip), %rax
	movq	_out_2d@GOTPCREL(%rip), %rcx
	.p2align	4, 0x90
LBB0_21:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	(%rax,%rdx,4), %ymm2    ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	16(%rax,%rdx,4), %ymm3  ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	16(%rcx,%rdx,4), %ymm4  ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	(%rcx,%rdx,4), %ymm5    ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, (%rcx,%rdx,4)
	vmovapd	%xmm3, 16(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_21
## %bb.22:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_23:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	4000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	4016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	4016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	4000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 4000(%rcx,%rdx,4)
	vmovapd	%xmm3, 4016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_23
## %bb.24:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_25:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	8000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	8016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	8016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	8000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 8000(%rcx,%rdx,4)
	vmovapd	%xmm3, 8016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_25
## %bb.26:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_27:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	12000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	12016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	12016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	12000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 12000(%rcx,%rdx,4)
	vmovapd	%xmm3, 12016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_27
## %bb.28:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_29:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	16000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	16016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	16016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	16000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 16000(%rcx,%rdx,4)
	vmovapd	%xmm3, 16016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_29
## %bb.30:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_31:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	20000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	20016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	20016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	20000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 20000(%rcx,%rdx,4)
	vmovapd	%xmm3, 20016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_31
## %bb.32:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_33:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	24000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	24016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	24016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	24000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 24000(%rcx,%rdx,4)
	vmovapd	%xmm3, 24016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_33
## %bb.34:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_35:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	28000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	28016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	28016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	28000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 28000(%rcx,%rdx,4)
	vmovapd	%xmm3, 28016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_35
## %bb.36:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_37:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	32000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	32016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	32016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	32000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 32000(%rcx,%rdx,4)
	vmovapd	%xmm3, 32016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_37
## %bb.38:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_39:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	36000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	36016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	36016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	36000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 36000(%rcx,%rdx,4)
	vmovapd	%xmm3, 36016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_39
## %bb.40:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_41:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	40000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	40016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	40016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	40000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 40000(%rcx,%rdx,4)
	vmovapd	%xmm3, 40016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_41
## %bb.42:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_43:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	44000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	44016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	44016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	44000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 44000(%rcx,%rdx,4)
	vmovapd	%xmm3, 44016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_43
## %bb.44:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_45:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	48000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	48016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	48016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	48000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 48000(%rcx,%rdx,4)
	vmovapd	%xmm3, 48016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_45
## %bb.46:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_47:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	52000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	52016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	52016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	52000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 52000(%rcx,%rdx,4)
	vmovapd	%xmm3, 52016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_47
## %bb.48:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_49:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	56000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	56016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	56016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	56000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 56000(%rcx,%rdx,4)
	vmovapd	%xmm3, 56016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_49
## %bb.50:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_51:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	60000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	60016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	60016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	60000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 60000(%rcx,%rdx,4)
	vmovapd	%xmm3, 60016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_51
## %bb.52:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_53:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	64000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	64016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	64016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	64000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 64000(%rcx,%rdx,4)
	vmovapd	%xmm3, 64016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_53
## %bb.54:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_55:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	68000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	68016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	68016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	68000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 68000(%rcx,%rdx,4)
	vmovapd	%xmm3, 68016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_55
## %bb.56:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_57:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	72000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	72016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	72016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	72000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 72000(%rcx,%rdx,4)
	vmovapd	%xmm3, 72016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_57
## %bb.58:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_59:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	76000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	76016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	76016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	76000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 76000(%rcx,%rdx,4)
	vmovapd	%xmm3, 76016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_59
## %bb.60:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_61:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	80000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	80016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	80016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	80000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 80000(%rcx,%rdx,4)
	vmovapd	%xmm3, 80016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_61
## %bb.62:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_63:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	84000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	84016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	84016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	84000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 84000(%rcx,%rdx,4)
	vmovapd	%xmm3, 84016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_63
## %bb.64:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_65:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	88000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	88016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	88016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	88000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 88000(%rcx,%rdx,4)
	vmovapd	%xmm3, 88016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_65
## %bb.66:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_67:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	92000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	92016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	92016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	92000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 92000(%rcx,%rdx,4)
	vmovapd	%xmm3, 92016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_67
## %bb.68:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_69:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	96000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	96016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	96016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	96000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 96000(%rcx,%rdx,4)
	vmovapd	%xmm3, 96016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_69
## %bb.70:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_71:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	100000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	100016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	100016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	100000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 100000(%rcx,%rdx,4)
	vmovapd	%xmm3, 100016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_71
## %bb.72:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_73:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	104000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	104016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	104016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	104000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 104000(%rcx,%rdx,4)
	vmovapd	%xmm3, 104016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_73
## %bb.74:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_75:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	108000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	108016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	108016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	108000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 108000(%rcx,%rdx,4)
	vmovapd	%xmm3, 108016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_75
## %bb.76:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_77:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	112000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	112016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	112016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	112000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 112000(%rcx,%rdx,4)
	vmovapd	%xmm3, 112016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_77
## %bb.78:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_79:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	116000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	116016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	116016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	116000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 116000(%rcx,%rdx,4)
	vmovapd	%xmm3, 116016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_79
## %bb.80:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_81:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	120000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	120016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	120016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	120000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 120000(%rcx,%rdx,4)
	vmovapd	%xmm3, 120016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_81
## %bb.82:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_83:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	124000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	124016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	124016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	124000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 124000(%rcx,%rdx,4)
	vmovapd	%xmm3, 124016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_83
## %bb.84:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_85:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	128000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	128016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	128016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	128000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 128000(%rcx,%rdx,4)
	vmovapd	%xmm3, 128016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_85
## %bb.86:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_87:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	132000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	132016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	132016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	132000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 132000(%rcx,%rdx,4)
	vmovapd	%xmm3, 132016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_87
## %bb.88:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_89:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	136000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	136016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	136016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	136000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 136000(%rcx,%rdx,4)
	vmovapd	%xmm3, 136016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_89
## %bb.90:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_91:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	140000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	140016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	140016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	140000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 140000(%rcx,%rdx,4)
	vmovapd	%xmm3, 140016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_91
## %bb.92:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_93:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	144000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	144016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	144016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	144000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 144000(%rcx,%rdx,4)
	vmovapd	%xmm3, 144016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_93
## %bb.94:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_95:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	148000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	148016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	148016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	148000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 148000(%rcx,%rdx,4)
	vmovapd	%xmm3, 148016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_95
## %bb.96:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_97:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	152000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	152016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	152016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	152000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 152000(%rcx,%rdx,4)
	vmovapd	%xmm3, 152016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_97
## %bb.98:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_99:                                ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	156000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	156016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	156016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	156000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 156000(%rcx,%rdx,4)
	vmovapd	%xmm3, 156016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_99
## %bb.100:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_101:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	160000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	160016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	160016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	160000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 160000(%rcx,%rdx,4)
	vmovapd	%xmm3, 160016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_101
## %bb.102:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_103:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	164000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	164016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	164016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	164000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 164000(%rcx,%rdx,4)
	vmovapd	%xmm3, 164016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_103
## %bb.104:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_105:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	168000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	168016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	168016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	168000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 168000(%rcx,%rdx,4)
	vmovapd	%xmm3, 168016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_105
## %bb.106:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_107:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	172000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	172016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	172016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	172000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 172000(%rcx,%rdx,4)
	vmovapd	%xmm3, 172016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_107
## %bb.108:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_109:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	176000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	176016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	176016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	176000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 176000(%rcx,%rdx,4)
	vmovapd	%xmm3, 176016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_109
## %bb.110:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_111:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	180000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	180016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	180016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	180000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 180000(%rcx,%rdx,4)
	vmovapd	%xmm3, 180016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_111
## %bb.112:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_113:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	184000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	184016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	184016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	184000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 184000(%rcx,%rdx,4)
	vmovapd	%xmm3, 184016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_113
## %bb.114:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_115:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	188000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	188016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	188016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	188000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 188000(%rcx,%rdx,4)
	vmovapd	%xmm3, 188016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_115
## %bb.116:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_117:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	192000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	192016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	192016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	192000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 192000(%rcx,%rdx,4)
	vmovapd	%xmm3, 192016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_117
## %bb.118:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_119:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	196000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	196016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	196016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	196000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 196000(%rcx,%rdx,4)
	vmovapd	%xmm3, 196016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_119
## %bb.120:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_121:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	200000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	200016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	200016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	200000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 200000(%rcx,%rdx,4)
	vmovapd	%xmm3, 200016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_121
## %bb.122:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_123:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	204000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	204016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	204016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	204000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 204000(%rcx,%rdx,4)
	vmovapd	%xmm3, 204016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_123
## %bb.124:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_125:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	208000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	208016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	208016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	208000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 208000(%rcx,%rdx,4)
	vmovapd	%xmm3, 208016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_125
## %bb.126:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_127:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	212000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	212016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	212016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	212000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 212000(%rcx,%rdx,4)
	vmovapd	%xmm3, 212016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_127
## %bb.128:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_129:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	216000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	216016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	216016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	216000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 216000(%rcx,%rdx,4)
	vmovapd	%xmm3, 216016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_129
## %bb.130:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_131:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	220000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	220016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	220016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	220000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 220000(%rcx,%rdx,4)
	vmovapd	%xmm3, 220016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_131
## %bb.132:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_133:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	224000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	224016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	224016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	224000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 224000(%rcx,%rdx,4)
	vmovapd	%xmm3, 224016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_133
## %bb.134:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_135:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	228000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	228016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	228016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	228000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 228000(%rcx,%rdx,4)
	vmovapd	%xmm3, 228016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_135
## %bb.136:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_137:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	232000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	232016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	232016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	232000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 232000(%rcx,%rdx,4)
	vmovapd	%xmm3, 232016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_137
## %bb.138:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_139:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	236000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	236016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	236016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	236000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 236000(%rcx,%rdx,4)
	vmovapd	%xmm3, 236016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_139
## %bb.140:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_141:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	240000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	240016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	240016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	240000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 240000(%rcx,%rdx,4)
	vmovapd	%xmm3, 240016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_141
## %bb.142:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_143:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	244000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	244016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	244016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	244000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 244000(%rcx,%rdx,4)
	vmovapd	%xmm3, 244016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_143
## %bb.144:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_145:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	248000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	248016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	248016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	248000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 248000(%rcx,%rdx,4)
	vmovapd	%xmm3, 248016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_145
## %bb.146:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_147:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	252000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	252016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	252016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	252000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 252000(%rcx,%rdx,4)
	vmovapd	%xmm3, 252016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_147
## %bb.148:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_149:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	256000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	256016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	256016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	256000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 256000(%rcx,%rdx,4)
	vmovapd	%xmm3, 256016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_149
## %bb.150:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_151:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	260000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	260016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	260016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	260000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 260000(%rcx,%rdx,4)
	vmovapd	%xmm3, 260016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_151
## %bb.152:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_153:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	264000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	264016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	264016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	264000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 264000(%rcx,%rdx,4)
	vmovapd	%xmm3, 264016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_153
## %bb.154:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_155:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	268000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	268016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	268016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	268000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 268000(%rcx,%rdx,4)
	vmovapd	%xmm3, 268016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_155
## %bb.156:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_157:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	272000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	272016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	272016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	272000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 272000(%rcx,%rdx,4)
	vmovapd	%xmm3, 272016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_157
## %bb.158:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_159:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	276000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	276016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	276016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	276000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 276000(%rcx,%rdx,4)
	vmovapd	%xmm3, 276016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_159
## %bb.160:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_161:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	280000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	280016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	280016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	280000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 280000(%rcx,%rdx,4)
	vmovapd	%xmm3, 280016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_161
## %bb.162:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_163:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	284000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	284016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	284016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	284000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 284000(%rcx,%rdx,4)
	vmovapd	%xmm3, 284016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_163
## %bb.164:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_165:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	288000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	288016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	288016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	288000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 288000(%rcx,%rdx,4)
	vmovapd	%xmm3, 288016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_165
## %bb.166:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_167:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	292000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	292016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	292016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	292000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 292000(%rcx,%rdx,4)
	vmovapd	%xmm3, 292016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_167
## %bb.168:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_169:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	296000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	296016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	296016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	296000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 296000(%rcx,%rdx,4)
	vmovapd	%xmm3, 296016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_169
## %bb.170:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_171:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	300000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	300016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	300016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	300000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 300000(%rcx,%rdx,4)
	vmovapd	%xmm3, 300016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_171
## %bb.172:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_173:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	304000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	304016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	304016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	304000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 304000(%rcx,%rdx,4)
	vmovapd	%xmm3, 304016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_173
## %bb.174:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_175:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	308000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	308016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	308016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	308000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 308000(%rcx,%rdx,4)
	vmovapd	%xmm3, 308016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_175
## %bb.176:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_177:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	312000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	312016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	312016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	312000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 312000(%rcx,%rdx,4)
	vmovapd	%xmm3, 312016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_177
## %bb.178:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_179:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	316000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	316016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	316016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	316000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 316000(%rcx,%rdx,4)
	vmovapd	%xmm3, 316016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_179
## %bb.180:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_181:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	320000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	320016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	320016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	320000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 320000(%rcx,%rdx,4)
	vmovapd	%xmm3, 320016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_181
## %bb.182:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_183:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	324000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	324016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	324016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	324000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 324000(%rcx,%rdx,4)
	vmovapd	%xmm3, 324016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_183
## %bb.184:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_185:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	328000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	328016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	328016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	328000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 328000(%rcx,%rdx,4)
	vmovapd	%xmm3, 328016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_185
## %bb.186:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_187:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	332000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	332016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	332016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	332000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 332000(%rcx,%rdx,4)
	vmovapd	%xmm3, 332016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_187
## %bb.188:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_189:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	336000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	336016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	336016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	336000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 336000(%rcx,%rdx,4)
	vmovapd	%xmm3, 336016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_189
## %bb.190:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_191:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	340000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	340016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	340016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	340000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 340000(%rcx,%rdx,4)
	vmovapd	%xmm3, 340016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_191
## %bb.192:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_193:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	344000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	344016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	344016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	344000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 344000(%rcx,%rdx,4)
	vmovapd	%xmm3, 344016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_193
## %bb.194:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_195:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	348000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	348016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	348016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	348000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 348000(%rcx,%rdx,4)
	vmovapd	%xmm3, 348016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_195
## %bb.196:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_197:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	352000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	352016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	352016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	352000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 352000(%rcx,%rdx,4)
	vmovapd	%xmm3, 352016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_197
## %bb.198:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_199:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	356000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	356016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	356016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	356000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 356000(%rcx,%rdx,4)
	vmovapd	%xmm3, 356016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_199
## %bb.200:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_201:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	360000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	360016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	360016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	360000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 360000(%rcx,%rdx,4)
	vmovapd	%xmm3, 360016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_201
## %bb.202:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_203:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	364000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	364016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	364016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	364000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 364000(%rcx,%rdx,4)
	vmovapd	%xmm3, 364016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_203
## %bb.204:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_205:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	368000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	368016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	368016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	368000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 368000(%rcx,%rdx,4)
	vmovapd	%xmm3, 368016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_205
## %bb.206:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_207:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	372000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	372016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	372016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	372000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 372000(%rcx,%rdx,4)
	vmovapd	%xmm3, 372016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_207
## %bb.208:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_209:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	376000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	376016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	376016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	376000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 376000(%rcx,%rdx,4)
	vmovapd	%xmm3, 376016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_209
## %bb.210:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_211:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	380000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	380016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	380016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	380000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 380000(%rcx,%rdx,4)
	vmovapd	%xmm3, 380016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_211
## %bb.212:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_213:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	384000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	384016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	384016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	384000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 384000(%rcx,%rdx,4)
	vmovapd	%xmm3, 384016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_213
## %bb.214:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_215:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	388000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	388016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	388016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	388000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 388000(%rcx,%rdx,4)
	vmovapd	%xmm3, 388016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_215
## %bb.216:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_217:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	392000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	392016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	392016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	392000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 392000(%rcx,%rdx,4)
	vmovapd	%xmm3, 392016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_217
## %bb.218:
	xorl	%edx, %edx
	.p2align	4, 0x90
LBB0_219:                               ## =>This Inner Loop Header: Depth=1
	vpmovzxdq	396000(%rax,%rdx,4), %ymm2 ## ymm2 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm2, %ymm2
	vpmovzxdq	396016(%rax,%rdx,4), %ymm3 ## ymm3 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vsqrtpd	%ymm3, %ymm3
	vsubpd	%ymm0, %ymm2, %ymm2
	vsqrtpd	%ymm2, %ymm2
	vpmovzxdq	396016(%rcx,%rdx,4), %ymm4 ## ymm4 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vpor	%ymm0, %ymm4, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vpmovzxdq	396000(%rcx,%rdx,4), %ymm5 ## ymm5 = mem[0],zero,mem[1],zero,mem[2],zero,mem[3],zero
	vaddpd	%ymm4, %ymm3, %ymm3
	vpor	%ymm0, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm4
	vaddpd	%ymm4, %ymm2, %ymm2
	vcvttpd2dq	%ymm3, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm3, %ymm3
	vcvttpd2dq	%ymm3, %xmm3
	vandpd	%xmm5, %xmm3, %xmm3
	vorpd	%xmm3, %xmm4, %xmm3
	vcvttpd2dq	%ymm2, %xmm4
	vpsrad	$31, %xmm4, %xmm5
	vsubpd	%ymm1, %ymm2, %ymm2
	vcvttpd2dq	%ymm2, %xmm2
	vandpd	%xmm5, %xmm2, %xmm2
	vorpd	%xmm2, %xmm4, %xmm2
	vmovapd	%xmm2, 396000(%rcx,%rdx,4)
	vmovapd	%xmm3, 396016(%rcx,%rdx,4)
	addq	$8, %rdx
	cmpq	$1000, %rdx                     ## imm = 0x3E8
	jne	LBB0_219
## %bb.220:
	xorl	%eax, %eax
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_matrixMultiplication           ## -- Begin function matrixMultiplication
	.p2align	4, 0x90
_matrixMultiplication:                  ## @matrixMultiplication
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB1_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_2 Depth 2
                                        ##       Child Loop BB1_3 Depth 3
	movq	(%rdx,%r8,8), %r9
	movq	(%rdi,%r8,8), %r10
	xorl	%r11d, %r11d
	.p2align	4, 0x90
LBB1_2:                                 ##   Parent Loop BB1_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB1_3 Depth 3
	movl	$0, (%r9,%r11,4)
	vxorps	%xmm0, %xmm0, %xmm0
	movl	$1, %eax
	.p2align	4, 0x90
LBB1_3:                                 ##   Parent Loop BB1_1 Depth=1
                                        ##     Parent Loop BB1_2 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovss	-4(%r10,%rax,4), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	movq	-8(%rsi,%rax,8), %rcx
	vmulss	(%rcx,%r11,4), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r9,%r11,4)
	vmovss	(%r10,%rax,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	movq	(%rsi,%rax,8), %rcx
	vmulss	(%rcx,%r11,4), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r9,%r11,4)
	addq	$2, %rax
	cmpq	$1001, %rax                     ## imm = 0x3E9
	jne	LBB1_3
## %bb.4:                               ##   in Loop: Header=BB1_2 Depth=2
	addq	$1, %r11
	cmpq	$1000, %r11                     ## imm = 0x3E8
	jne	LBB1_2
## %bb.5:                               ##   in Loop: Header=BB1_1 Depth=1
	addq	$1, %r8
	cmpq	$1000, %r8                      ## imm = 0x3E8
	jne	LBB1_1
## %bb.6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_fibonacciSequence              ## -- Begin function fibonacciSequence
	.p2align	4, 0x90
_fibonacciSequence:                     ## @fibonacciSequence
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movabsq	$4294967296, %rax               ## imm = 0x100000000
	movq	%rax, (%rsi)
	cmpl	$3, %edi
	jl	LBB2_7
## %bb.1:
	movl	$1, 8(%rsi)
	cmpl	$3, %edi
	je	LBB2_7
## %bb.2:
	movl	%edi, %ecx
	leaq	-3(%rcx), %r8
	addq	$-4, %rcx
	movl	%r8d, %eax
	andl	$3, %eax
	cmpq	$3, %rcx
	jae	LBB2_8
## %bb.3:
	movl	$2, %edi
	movl	$1, %ecx
	movl	$3, %edx
	testq	%rax, %rax
	jne	LBB2_6
	jmp	LBB2_7
LBB2_8:
	andq	$-4, %r8
	negq	%r8
	movl	$1, %ecx
	movl	$3, %edx
	.p2align	4, 0x90
LBB2_9:                                 ## =>This Inner Loop Header: Depth=1
	addl	-8(%rsi,%rdx,4), %ecx
	movl	%ecx, (%rsi,%rdx,4)
	movl	-4(%rsi,%rdx,4), %edi
	addl	%ecx, %edi
	movl	%edi, 4(%rsi,%rdx,4)
	addl	%edi, %ecx
	movl	%ecx, 8(%rsi,%rdx,4)
	addl	%edi, %ecx
	movl	%ecx, 12(%rsi,%rdx,4)
	leaq	(%r8,%rdx), %rdi
	addq	$4, %rdi
	addq	$4, %rdx
	cmpq	$3, %rdi
	jne	LBB2_9
## %bb.4:
	leaq	-1(%rdx), %rdi
	testq	%rax, %rax
	je	LBB2_7
	.p2align	4, 0x90
LBB2_6:                                 ## =>This Inner Loop Header: Depth=1
	addl	-4(%rsi,%rdi,4), %ecx
	movl	%ecx, (%rsi,%rdx,4)
	movq	%rdx, %rdi
	addq	$1, %rdx
	addq	$-1, %rax
	jne	LBB2_6
LBB2_7:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_isPrime                        ## -- Begin function isPrime
	.p2align	4, 0x90
_isPrime:                               ## @isPrime
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
	.globl	_generatePrimes                 ## -- Begin function generatePrimes
	.p2align	4, 0x90
_generatePrimes:                        ## @generatePrimes
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_exponentialFunction            ## -- Begin function exponentialFunction
	.p2align	4, 0x90
_exponentialFunction:                   ## @exponentialFunction
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
	subq	$40, %rsp
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	4000(%rdi), %rax
	cmpq	%rsi, %rax
	jbe	LBB5_2
## %bb.1:
	leaq	4000(%r14), %rax
	cmpq	%r15, %rax
	jbe	LBB5_2
## %bb.5:
	movl	$4, %ebx
	.p2align	4, 0x90
LBB5_6:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	-16(%r15,%rbx,4), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovss	%xmm0, -16(%r14,%rbx,4)
	vmovss	-12(%r15,%rbx,4), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovss	%xmm0, -12(%r14,%rbx,4)
	vmovss	-8(%r15,%rbx,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovss	%xmm0, -8(%r14,%rbx,4)
	vmovss	-4(%r15,%rbx,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovss	%xmm0, -4(%r14,%rbx,4)
	vmovss	(%r15,%rbx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovss	%xmm0, (%r14,%rbx,4)
	addq	$5, %rbx
	cmpq	$1004, %rbx                     ## imm = 0x3EC
	jne	LBB5_6
	jmp	LBB5_4
LBB5_2:
	movl	$4, %ebx
	.p2align	4, 0x90
LBB5_3:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	-16(%r15,%rbx,4), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -48(%rbp)                ## 4-byte Spill
	vmovss	-12(%r15,%rbx,4), %xmm0         ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovaps	%xmm0, -64(%rbp)                ## 16-byte Spill
	vmovss	-48(%rbp), %xmm0                ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vinsertps	$16, -64(%rbp), %xmm0, %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = xmm0[0],mem[0],xmm0[2,3]
	vmovaps	%xmm0, -48(%rbp)                ## 16-byte Spill
	vmovss	-8(%r15,%rbx,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovaps	-48(%rbp), %xmm1                ## 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, -48(%rbp)                ## 16-byte Spill
	vmovss	-4(%r15,%rbx,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovaps	-48(%rbp), %xmm1                ## 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0,1,2],xmm0[0]
	vmovups	%xmm0, -16(%r14,%rbx,4)
	vmovss	(%r15,%rbx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, -48(%rbp)                ## 4-byte Spill
	vmovss	4(%r15,%rbx,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovaps	%xmm0, -64(%rbp)                ## 16-byte Spill
	vmovss	-48(%rbp), %xmm0                ## 4-byte Reload
                                        ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vinsertps	$16, -64(%rbp), %xmm0, %xmm0 ## 16-byte Folded Reload
                                        ## xmm0 = xmm0[0],mem[0],xmm0[2,3]
	vmovaps	%xmm0, -48(%rbp)                ## 16-byte Spill
	vmovss	8(%r15,%rbx,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovaps	-48(%rbp), %xmm1                ## 16-byte Reload
	vinsertps	$32, %xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0,1],xmm0[0],xmm1[3]
	vmovaps	%xmm0, -48(%rbp)                ## 16-byte Spill
	vmovss	12(%r15,%rbx,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	callq	_expf
	vmovaps	-48(%rbp), %xmm1                ## 16-byte Reload
	vinsertps	$48, %xmm0, %xmm1, %xmm0 ## xmm0 = xmm1[0,1,2],xmm0[0]
	vmovups	%xmm0, (%r14,%rbx,4)
	addq	$8, %rbx
	cmpq	$1004, %rbx                     ## imm = 0x3EC
	jne	LBB5_3
LBB5_4:
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unrolledVectorSum              ## -- Begin function unrolledVectorSum
	.p2align	4, 0x90
_unrolledVectorSum:                     ## @unrolledVectorSum
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vxorps	%xmm0, %xmm0, %xmm0
	movq	$-4, %rax
	.p2align	4, 0x90
LBB6_1:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	16(%rdi,%rax,4), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	vmovss	32(%rdi,%rax,4), %xmm2          ## xmm2 = mem[0],zero,zero,zero
	vaddss	20(%rdi,%rax,4), %xmm1, %xmm1
	vaddss	24(%rdi,%rax,4), %xmm1, %xmm1
	vaddss	28(%rdi,%rax,4), %xmm1, %xmm1
	vaddss	36(%rdi,%rax,4), %xmm2, %xmm2
	vaddss	40(%rdi,%rax,4), %xmm2, %xmm2
	vaddss	44(%rdi,%rax,4), %xmm2, %xmm2
	vaddss	%xmm1, %xmm0, %xmm0
	vaddss	%xmm2, %xmm0, %xmm0
	addq	$8, %rax
	cmpq	$996, %rax                      ## imm = 0x3E4
	jb	LBB6_1
## %bb.2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_unrolledMatrixTranspose        ## -- Begin function unrolledMatrixTranspose
	.p2align	4, 0x90
_unrolledMatrixTranspose:               ## @unrolledMatrixTranspose
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB7_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB7_2 Depth 2
	movq	(%rdi,%r8,8), %r9
	movq	%r8, %r11
	orq	$1, %r11
	movq	(%rdi,%r11,8), %r10
	movq	$-2, %rcx
	.p2align	4, 0x90
LBB7_2:                                 ##   Parent Loop BB7_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovss	8(%r9,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	16(%rsi,%rcx,8), %rax
	vmovss	%xmm0, (%rax,%r8,4)
	vmovss	12(%r9,%rcx,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	movq	24(%rsi,%rcx,8), %rdx
	vmovss	%xmm0, (%rdx,%r8,4)
	vmovss	8(%r10,%rcx,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rax,%r11,4)
	vmovss	12(%r10,%rcx,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	vmovss	%xmm0, (%rdx,%r11,4)
	addq	$2, %rcx
	cmpq	$998, %rcx                      ## imm = 0x3E6
	jb	LBB7_2
## %bb.3:                               ##   in Loop: Header=BB7_1 Depth=1
	leaq	2(%r8), %rax
	cmpq	$998, %r8                       ## imm = 0x3E6
	movq	%rax, %r8
	jb	LBB7_1
## %bb.4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_collapsedMatrixAddition        ## -- Begin function collapsedMatrixAddition
	.p2align	4, 0x90
_collapsedMatrixAddition:               ## @collapsedMatrixAddition
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB8_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB8_2 Depth 2
	movq	(%rdi,%r8,8), %r9
	movq	(%rsi,%r8,8), %r10
	movq	(%rdx,%r8,8), %rcx
	movq	$-2, %rax
	.p2align	4, 0x90
LBB8_2:                                 ##   Parent Loop BB8_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	vmovss	8(%r9,%rax,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	vaddss	8(%r10,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rcx,%rax,4)
	vmovss	12(%r9,%rax,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	vaddss	12(%r10,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 12(%rcx,%rax,4)
	vmovss	16(%r9,%rax,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	vaddss	16(%r10,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 16(%rcx,%rax,4)
	vmovss	20(%r9,%rax,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	vaddss	20(%r10,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 20(%rcx,%rax,4)
	addq	$4, %rax
	cmpq	$998, %rax                      ## imm = 0x3E6
	jb	LBB8_2
## %bb.3:                               ##   in Loop: Header=BB8_1 Depth=1
	addq	$1, %r8
	cmpq	$1000, %r8                      ## imm = 0x3E8
	jne	LBB8_1
## %bb.4:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_collapsedVectorMultiplication  ## -- Begin function collapsedVectorMultiplication
	.p2align	4, 0x90
_collapsedVectorMultiplication:         ## @collapsedVectorMultiplication
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	$-2, %rax
	.p2align	4, 0x90
LBB9_1:                                 ## =>This Inner Loop Header: Depth=1
	vmovss	8(%rdi,%rax,4), %xmm0           ## xmm0 = mem[0],zero,zero,zero
	vmulss	8(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 8(%rdx,%rax,4)
	vmovss	12(%rdi,%rax,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	vmulss	12(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 12(%rdx,%rax,4)
	vmovss	16(%rdi,%rax,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	vmulss	16(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 16(%rdx,%rax,4)
	vmovss	20(%rdi,%rax,4), %xmm0          ## xmm0 = mem[0],zero,zero,zero
	vmulss	20(%rsi,%rax,4), %xmm0, %xmm0
	vmovss	%xmm0, 20(%rdx,%rax,4)
	addq	$4, %rax
	cmpq	$998, %rax                      ## imm = 0x3E6
	jb	LBB9_1
## %bb.2:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_nestedMatrixMultiplication     ## -- Begin function nestedMatrixMultiplication
	.p2align	4, 0x90
_nestedMatrixMultiplication:            ## @nestedMatrixMultiplication
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	xorl	%r8d, %r8d
	.p2align	4, 0x90
LBB10_1:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB10_2 Depth 2
                                        ##       Child Loop BB10_3 Depth 3
	movq	(%rdx,%r8,8), %r9
	movq	(%rdi,%r8,8), %r10
	xorl	%r11d, %r11d
	.p2align	4, 0x90
LBB10_2:                                ##   Parent Loop BB10_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB10_3 Depth 3
	movl	$0, (%r9,%r11,4)
	vxorps	%xmm0, %xmm0, %xmm0
	movl	$1, %eax
	.p2align	4, 0x90
LBB10_3:                                ##   Parent Loop BB10_1 Depth=1
                                        ##     Parent Loop BB10_2 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	vmovss	-4(%r10,%rax,4), %xmm1          ## xmm1 = mem[0],zero,zero,zero
	movq	-8(%rsi,%rax,8), %rcx
	vmulss	(%rcx,%r11,4), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r9,%r11,4)
	vmovss	(%r10,%rax,4), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	movq	(%rsi,%rax,8), %rcx
	vmulss	(%rcx,%r11,4), %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vmovss	%xmm0, (%r9,%r11,4)
	addq	$2, %rax
	cmpq	$1001, %rax                     ## imm = 0x3E9
	jne	LBB10_3
## %bb.4:                               ##   in Loop: Header=BB10_2 Depth=2
	addq	$1, %r11
	cmpq	$1000, %r11                     ## imm = 0x3E8
	jne	LBB10_2
## %bb.5:                               ##   in Loop: Header=BB10_1 Depth=1
	addq	$1, %r8
	cmpq	$1000, %r8                      ## imm = 0x3E8
	jne	LBB10_1
## %bb.6:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.comm	_in,4000,4                      ## @in
	.comm	_out,4000,4                     ## @out
	.comm	_in_2d,4000000,4                ## @in_2d
	.comm	_out_2d,4000000,4               ## @out_2d
.subsections_via_symbols
