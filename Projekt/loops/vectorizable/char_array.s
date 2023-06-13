	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 3
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function _Z9function1v
LCPI0_0:
	.space	16,97
LCPI0_1:
	.byte	97                              ## 0x61
	.byte	97                              ## 0x61
	.byte	97                              ## 0x61
	.byte	97                              ## 0x61
	.byte	97                              ## 0x61
	.byte	97                              ## 0x61
	.byte	97                              ## 0x61
	.byte	97                              ## 0x61
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.space	1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z9function1v
	.p2align	4, 0x90
__Z9function1v:                         ## @_Z9function1v
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movdqa	_abc(%rip), %xmm0
	movdqa	LCPI0_0(%rip), %xmm1            ## xmm1 = [97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97]
	pcmpeqb	%xmm0, %xmm1
	movd	%xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_1
## %bb.2:
	pextrb	$1, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_3
LBB0_4:
	pextrb	$2, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_5
LBB0_6:
	pextrb	$3, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_7
LBB0_8:
	pextrb	$4, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_9
LBB0_10:
	pextrb	$5, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_11
LBB0_12:
	pextrb	$6, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_13
LBB0_14:
	pextrb	$7, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_15
LBB0_16:
	pextrb	$8, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_17
LBB0_18:
	pextrb	$9, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_19
LBB0_20:
	pextrb	$10, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_21
LBB0_22:
	pextrb	$11, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_23
LBB0_24:
	pextrb	$12, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_25
LBB0_26:
	pextrb	$13, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_27
LBB0_28:
	pextrb	$14, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_29
LBB0_30:
	pextrb	$15, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_32
LBB0_31:
	pextrb	$15, %xmm0, _res+15(%rip)
LBB0_32:
	movdqa	_abc+16(%rip), %xmm0
	movdqa	LCPI0_0(%rip), %xmm1            ## xmm1 = [97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97]
	pcmpeqb	%xmm0, %xmm1
	movd	%xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_33
## %bb.34:
	pextrb	$1, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_35
LBB0_36:
	pextrb	$2, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_37
LBB0_38:
	pextrb	$3, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_39
LBB0_40:
	pextrb	$4, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_41
LBB0_42:
	pextrb	$5, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_43
LBB0_44:
	pextrb	$6, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_45
LBB0_46:
	pextrb	$7, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_47
LBB0_48:
	pextrb	$8, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_49
LBB0_50:
	pextrb	$9, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_51
LBB0_52:
	pextrb	$10, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_53
LBB0_54:
	pextrb	$11, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_55
LBB0_56:
	pextrb	$12, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_57
LBB0_58:
	pextrb	$13, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_59
LBB0_60:
	pextrb	$14, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_61
LBB0_62:
	pextrb	$15, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_64
LBB0_63:
	pextrb	$15, %xmm0, _res+31(%rip)
LBB0_64:
	movdqa	_abc+32(%rip), %xmm0
	movdqa	LCPI0_0(%rip), %xmm1            ## xmm1 = [97,97,97,97,97,97,97,97,97,97,97,97,97,97,97,97]
	pcmpeqb	%xmm0, %xmm1
	movd	%xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_65
## %bb.66:
	pextrb	$1, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_67
LBB0_68:
	pextrb	$2, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_69
LBB0_70:
	pextrb	$3, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_71
LBB0_72:
	pextrb	$4, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_73
LBB0_74:
	pextrb	$5, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_75
LBB0_76:
	pextrb	$6, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_77
LBB0_78:
	pextrb	$7, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_79
LBB0_80:
	pextrb	$8, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_81
LBB0_82:
	pextrb	$9, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_83
LBB0_84:
	pextrb	$10, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_85
LBB0_86:
	pextrb	$11, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_87
LBB0_88:
	pextrb	$12, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_89
LBB0_90:
	pextrb	$13, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_91
LBB0_92:
	pextrb	$14, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_93
LBB0_94:
	pextrb	$15, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_96
LBB0_95:
	pextrb	$15, %xmm0, _res+47(%rip)
LBB0_96:
	movq	_abc+48(%rip), %xmm0            ## xmm0 = mem[0],zero
	movdqa	LCPI0_1(%rip), %xmm1            ## xmm1 = <97,97,97,97,97,97,97,97,u,u,u,u,u,u,u,u>
	pcmpeqb	%xmm0, %xmm1
	movd	%xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_98
## %bb.97:
	pextrb	$0, %xmm0, _res+48(%rip)
LBB0_98:
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm1, %xmm2
	pextrb	$1, %xmm2, %eax
	testb	$1, %al
	je	LBB0_100
## %bb.99:
	pextrb	$1, %xmm0, _res+49(%rip)
LBB0_100:
	pextrb	$2, %xmm2, %eax
	testb	$1, %al
	je	LBB0_102
## %bb.101:
	pextrb	$2, %xmm0, _res+50(%rip)
LBB0_102:
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm1, %xmm2
	pextrb	$3, %xmm2, %eax
	testb	$1, %al
	je	LBB0_104
## %bb.103:
	pextrb	$3, %xmm0, _res+51(%rip)
LBB0_104:
	pextrb	$4, %xmm2, %eax
	testb	$1, %al
	je	LBB0_106
## %bb.105:
	pextrb	$4, %xmm0, _res+52(%rip)
LBB0_106:
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm1, %xmm2
	pextrb	$5, %xmm2, %eax
	testb	$1, %al
	je	LBB0_108
## %bb.107:
	pextrb	$5, %xmm0, _res+53(%rip)
LBB0_108:
	pextrb	$6, %xmm2, %eax
	testb	$1, %al
	je	LBB0_110
## %bb.109:
	pextrb	$6, %xmm0, _res+54(%rip)
LBB0_110:
	pcmpeqd	%xmm2, %xmm2
	pxor	%xmm2, %xmm1
	pextrb	$7, %xmm1, %eax
	testb	$1, %al
	jne	LBB0_111
## %bb.112:
	movb	_abc+56(%rip), %al
	cmpb	$97, %al
	jne	LBB0_113
LBB0_114:
	movb	_abc+57(%rip), %al
	cmpb	$97, %al
	jne	LBB0_115
LBB0_116:
	movb	_abc+58(%rip), %al
	cmpb	$97, %al
	jne	LBB0_117
LBB0_118:
	movb	_abc+59(%rip), %al
	cmpb	$97, %al
	jne	LBB0_119
LBB0_120:
	popq	%rbp
	retq
LBB0_1:
	pextrb	$0, %xmm0, _res(%rip)
	pextrb	$1, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_4
LBB0_3:
	pextrb	$1, %xmm0, _res+1(%rip)
	pextrb	$2, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_6
LBB0_5:
	pextrb	$2, %xmm0, _res+2(%rip)
	pextrb	$3, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_8
LBB0_7:
	pextrb	$3, %xmm0, _res+3(%rip)
	pextrb	$4, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_10
LBB0_9:
	pextrb	$4, %xmm0, _res+4(%rip)
	pextrb	$5, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_12
LBB0_11:
	pextrb	$5, %xmm0, _res+5(%rip)
	pextrb	$6, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_14
LBB0_13:
	pextrb	$6, %xmm0, _res+6(%rip)
	pextrb	$7, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_16
LBB0_15:
	pextrb	$7, %xmm0, _res+7(%rip)
	pextrb	$8, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_18
LBB0_17:
	pextrb	$8, %xmm0, _res+8(%rip)
	pextrb	$9, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_20
LBB0_19:
	pextrb	$9, %xmm0, _res+9(%rip)
	pextrb	$10, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_22
LBB0_21:
	pextrb	$10, %xmm0, _res+10(%rip)
	pextrb	$11, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_24
LBB0_23:
	pextrb	$11, %xmm0, _res+11(%rip)
	pextrb	$12, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_26
LBB0_25:
	pextrb	$12, %xmm0, _res+12(%rip)
	pextrb	$13, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_28
LBB0_27:
	pextrb	$13, %xmm0, _res+13(%rip)
	pextrb	$14, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_30
LBB0_29:
	pextrb	$14, %xmm0, _res+14(%rip)
	pextrb	$15, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_31
	jmp	LBB0_32
LBB0_33:
	pextrb	$0, %xmm0, _res+16(%rip)
	pextrb	$1, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_36
LBB0_35:
	pextrb	$1, %xmm0, _res+17(%rip)
	pextrb	$2, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_38
LBB0_37:
	pextrb	$2, %xmm0, _res+18(%rip)
	pextrb	$3, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_40
LBB0_39:
	pextrb	$3, %xmm0, _res+19(%rip)
	pextrb	$4, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_42
LBB0_41:
	pextrb	$4, %xmm0, _res+20(%rip)
	pextrb	$5, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_44
LBB0_43:
	pextrb	$5, %xmm0, _res+21(%rip)
	pextrb	$6, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_46
LBB0_45:
	pextrb	$6, %xmm0, _res+22(%rip)
	pextrb	$7, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_48
LBB0_47:
	pextrb	$7, %xmm0, _res+23(%rip)
	pextrb	$8, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_50
LBB0_49:
	pextrb	$8, %xmm0, _res+24(%rip)
	pextrb	$9, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_52
LBB0_51:
	pextrb	$9, %xmm0, _res+25(%rip)
	pextrb	$10, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_54
LBB0_53:
	pextrb	$10, %xmm0, _res+26(%rip)
	pextrb	$11, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_56
LBB0_55:
	pextrb	$11, %xmm0, _res+27(%rip)
	pextrb	$12, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_58
LBB0_57:
	pextrb	$12, %xmm0, _res+28(%rip)
	pextrb	$13, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_60
LBB0_59:
	pextrb	$13, %xmm0, _res+29(%rip)
	pextrb	$14, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_62
LBB0_61:
	pextrb	$14, %xmm0, _res+30(%rip)
	pextrb	$15, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_63
	jmp	LBB0_64
LBB0_65:
	pextrb	$0, %xmm0, _res+32(%rip)
	pextrb	$1, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_68
LBB0_67:
	pextrb	$1, %xmm0, _res+33(%rip)
	pextrb	$2, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_70
LBB0_69:
	pextrb	$2, %xmm0, _res+34(%rip)
	pextrb	$3, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_72
LBB0_71:
	pextrb	$3, %xmm0, _res+35(%rip)
	pextrb	$4, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_74
LBB0_73:
	pextrb	$4, %xmm0, _res+36(%rip)
	pextrb	$5, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_76
LBB0_75:
	pextrb	$5, %xmm0, _res+37(%rip)
	pextrb	$6, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_78
LBB0_77:
	pextrb	$6, %xmm0, _res+38(%rip)
	pextrb	$7, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_80
LBB0_79:
	pextrb	$7, %xmm0, _res+39(%rip)
	pextrb	$8, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_82
LBB0_81:
	pextrb	$8, %xmm0, _res+40(%rip)
	pextrb	$9, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_84
LBB0_83:
	pextrb	$9, %xmm0, _res+41(%rip)
	pextrb	$10, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_86
LBB0_85:
	pextrb	$10, %xmm0, _res+42(%rip)
	pextrb	$11, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_88
LBB0_87:
	pextrb	$11, %xmm0, _res+43(%rip)
	pextrb	$12, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_90
LBB0_89:
	pextrb	$12, %xmm0, _res+44(%rip)
	pextrb	$13, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_92
LBB0_91:
	pextrb	$13, %xmm0, _res+45(%rip)
	pextrb	$14, %xmm1, %eax
	notb	%al
	testb	$1, %al
	je	LBB0_94
LBB0_93:
	pextrb	$14, %xmm0, _res+46(%rip)
	pextrb	$15, %xmm1, %eax
	notb	%al
	testb	$1, %al
	jne	LBB0_95
	jmp	LBB0_96
LBB0_111:
	pextrb	$7, %xmm0, _res+55(%rip)
	movb	_abc+56(%rip), %al
	cmpb	$97, %al
	je	LBB0_114
LBB0_113:
	movb	%al, _res+56(%rip)
	movb	_abc+57(%rip), %al
	cmpb	$97, %al
	je	LBB0_116
LBB0_115:
	movb	%al, _res+57(%rip)
	movb	_abc+58(%rip), %al
	cmpb	$97, %al
	je	LBB0_118
LBB0_117:
	movb	%al, _res+58(%rip)
	movb	_abc+59(%rip), %al
	cmpb	$97, %al
	je	LBB0_120
LBB0_119:
	movb	%al, _res+59(%rip)
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
	.section	__DATA,__data
	.globl	_abc                            ## @abc
	.p2align	4
_abc:
	.asciz	"najnfoahjjfaojrgiohervnasoijrnvaiorjvnlkasdmvioarjnvioasrnvaosijrnviursdvhsrdgjvhrklg\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

	.globl	_res                            ## @res
.zerofill __DATA,__common,_res,100,4
.subsections_via_symbols
