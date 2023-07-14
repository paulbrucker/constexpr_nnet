	.file	"Tests.cpp"
	.text
	.section	.text._Z3expd,"axG",@progbits,_Z3expd,comdat
	.weak	_Z3expd
	.type	_Z3expd, @function
_Z3expd:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -40(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$20, -20(%rbp)
	movl	$1, -24(%rbp)
	jmp	.L2
.L3:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-24(%rbp), %xmm1
	movsd	-40(%rbp), %xmm0
	divsd	%xmm1, %xmm0
	movsd	-8(%rbp), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-16(%rbp), %xmm0
	addsd	-8(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	addl	$1, -24(%rbp)
.L2:
	cmpl	$20, -24(%rbp)
	jle	.L3
	movsd	-16(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	_Z3expd, .-_Z3expd
	.section	.text._ZN7Sigmoid4CalcEd,"axG",@progbits,_ZN7Sigmoid4CalcEd,comdat
	.align 2
	.weak	_ZN7Sigmoid4CalcEd
	.type	_ZN7Sigmoid4CalcEd, @function
_ZN7Sigmoid4CalcEd:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movq	.LC1(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	_Z3expd
	movsd	.LC0(%rip), %xmm1
	addsd	%xmm0, %xmm1
	movsd	.LC0(%rip), %xmm0
	divsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN7Sigmoid4CalcEd, .-_ZN7Sigmoid4CalcEd
	.section	.text._ZNSt9exceptionC2Ev,"axG",@progbits,_ZNSt9exceptionC5Ev,comdat
	.align 2
	.weak	_ZNSt9exceptionC2Ev
	.type	_ZNSt9exceptionC2Ev, @function
_ZNSt9exceptionC2Ev:
.LFB214:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVSt9exception(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE214:
	.size	_ZNSt9exceptionC2Ev, .-_ZNSt9exceptionC2Ev
	.weak	_ZNSt9exceptionC1Ev
	.set	_ZNSt9exceptionC1Ev,_ZNSt9exceptionC2Ev
	.section	.rodata
	.align 4
	.type	_ZL4seed, @object
	.size	_ZL4seed, 4
_ZL4seed:
	.long	45557
	.align 32
	.type	_ZL11randomArray, @object
	.size	_ZL11randomArray, 800
_ZL11randomArray:
	.long	313085936
	.long	1072492389
	.long	783951791
	.long	1070391548
	.long	1191320849
	.long	1071811842
	.long	-2108313546
	.long	1072554437
	.long	-155855773
	.long	1070617918
	.long	-1230078634
	.long	1071873890
	.long	-234745733
	.long	1072616485
	.long	-703687442
	.long	1070742015
	.long	643489180
	.long	1071935939
	.long	1638822081
	.long	1072678534
	.long	-1251519110
	.long	1070866112
	.long	-1777910302
	.long	1071997987
	.long	727326942
	.long	1066867930
	.long	-1799350779
	.long	1070990209
	.long	95657512
	.long	1072060036
	.long	275977419
	.long	1068151924
	.long	1947784849
	.long	1071114306
	.long	1969225325
	.long	1072122084
	.long	-2053337965
	.long	1068821821
	.long	1399953180
	.long	1071238403
	.long	-452174157
	.long	1072184132
	.long	50302657
	.long	1069318209
	.long	852121512
	.long	1071362500
	.long	1421393657
	.long	1072246181
	.long	1844430756
	.long	1069265914
	.long	304289843
	.long	1071486597
	.long	-1000005825
	.long	1072308229
	.long	-173447959
	.long	1069654910
	.long	-243541826
	.long	1071610693
	.long	873561988
	.long	1072370278
	.long	-1269111296
	.long	1069903104
	.long	1751796901
	.long	1071689731
	.long	-1547837494
	.long	1072432326
	.long	1930192663
	.long	1070151298
	.long	-669602581
	.long	1071751779
	.long	325730320
	.long	1072494375
	.long	834529325
	.long	1070399492
	.long	1203965232
	.long	1071813828
	.long	-2095669163
	.long	1072556423
	.long	-130567006
	.long	1070621890
	.long	-1217434250
	.long	1071875876
	.long	-222101349
	.long	1072618471
	.long	-678398674
	.long	1070745987
	.long	656133564
	.long	1071937925
	.long	1651466465
	.long	1072680520
	.long	-1226230343
	.long	1070870084
	.long	-1765265918
	.long	1071999973
	.long	1131947221
	.long	1066931482
	.long	-1774062011
	.long	1070994181
	.long	108301895
	.long	1072062022
	.long	478287558
	.long	1068183700
	.long	1973073616
	.long	1071118278
	.long	1981869709
	.long	1072124070
	.long	-228423541
	.long	1068079110
	.long	1425241948
	.long	1071242375
	.long	-439529773
	.long	1072186118
	.long	-158054796
	.long	1068785414
	.long	877410279
	.long	1071366472
	.long	1434038041
	.long	1072248167
	.long	1945585825
	.long	1069281802
	.long	329578610
	.long	1071490569
	.long	-987361442
	.long	1072310215
	.long	-122870424
	.long	1069662854
	.long	-218253058
	.long	1071614665
	.long	886206372
	.long	1072372264
	.long	-1218533761
	.long	1069911048
	.long	1764441285
	.long	1071691717
	.long	-1535193110
	.long	1072434312
	.long	1980770197
	.long	1070159242
	.long	-656958198
	.long	1071753765
	.long	338374703
	.long	1072496361
	.long	885106860
	.long	1070407436
	.long	1216609616
	.long	1071815814
	.long	-2083024779
	.long	1072558409
	.long	-105278238
	.long	1070625862
	.long	-1204789866
	.long	1071877862
	.long	-209456965
	.long	1072620457
	.long	-653109907
	.long	1070749959
	.long	668777948
	.long	1071939911
	.long	1664110849
	.long	1072682506
	.long	-1200941575
	.long	1070874056
	.long	-1752621535
	.long	1072001959
	.long	1536567500
	.long	1066995034
	.long	-1748773244
	.long	1070998153
	.long	120946279
	.long	1072064008
	.long	123145302
	.long	1066785856
	.long	1998362383
	.long	1071122250
	.long	1994514093
	.long	1072126056
	.long	-26113401
	.long	1068110886
	.long	1450530715
	.long	1071246347
	.long	-426885389
	.long	1072188104
	.long	-56899727
	.long	1068801302
	.long	902699046
	.long	1071370444
	.long	1446682424
	.long	1072250153
	.long	2046740895
	.long	1069297690
	.long	354867378
	.long	1071494541
	.long	-974717058
	.long	1072312201
	.long	-72292890
	.long	1069670798
	.long	-192964291
	.long	1071618637
	.long	898850756
	.long	1072374250
	.align 4
	.type	_ZL3RNG, @object
	.size	_ZL3RNG, 4
_ZL3RNG:
	.long	451
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv,"axG",@progbits,_ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv,comdat
	.align 2
	.weak	_ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv
	.type	_ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv, @function
_ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv:
.LFB3311:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rax
	movq	%rbx, %xmm1
	movq	%rax, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3311:
	.size	_ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv, .-_ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv
	.section	.text._ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv,"axG",@progbits,_ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv,comdat
	.align 2
	.weak	_ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv
	.type	_ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv, @function
_ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv:
.LFB3313:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3313:
	.size	_ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv, .-_ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv
	.section	.text._ZN18ActivationFunctionC2ERKS_,"axG",@progbits,_ZN18ActivationFunctionC5ERKS_,comdat
	.align 2
	.weak	_ZN18ActivationFunctionC2ERKS_
	.type	_ZN18ActivationFunctionC2ERKS_, @function
_ZN18ActivationFunctionC2ERKS_:
.LFB3389:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	16+_ZTV18ActivationFunction(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3389:
	.size	_ZN18ActivationFunctionC2ERKS_, .-_ZN18ActivationFunctionC2ERKS_
	.weak	_ZN18ActivationFunctionC1ERKS_
	.set	_ZN18ActivationFunctionC1ERKS_,_ZN18ActivationFunctionC2ERKS_
	.section	.text._ZN7SigmoidC2ERKS_,"axG",@progbits,_ZN7SigmoidC5ERKS_,comdat
	.align 2
	.weak	_ZN7SigmoidC2ERKS_
	.type	_ZN7SigmoidC2ERKS_, @function
_ZN7SigmoidC2ERKS_:
.LFB3391:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN18ActivationFunctionC2ERKS_
	leaq	16+_ZTV7Sigmoid(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3391:
	.size	_ZN7SigmoidC2ERKS_, .-_ZN7SigmoidC2ERKS_
	.weak	_ZN7SigmoidC1ERKS_
	.set	_ZN7SigmoidC1ERKS_,_ZN7SigmoidC2ERKS_
	.section	.text._ZN5LayerILm3ELm1E7SigmoidEC2ERKS1_,"axG",@progbits,_ZN5LayerILm3ELm1E7SigmoidEC5ERKS1_,comdat
	.align 2
	.weak	_ZN5LayerILm3ELm1E7SigmoidEC2ERKS1_
	.type	_ZN5LayerILm3ELm1E7SigmoidEC2ERKS1_, @function
_ZN5LayerILm3ELm1E7SigmoidEC2ERKS1_:
.LFB3399:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	(%rsi), %rax
	movq	8(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rax
	movq	32(%rsi), %rdx
	movq	%rax, 24(%rcx)
	movq	%rdx, 32(%rcx)
	movq	40(%rsi), %rax
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	-16(%rbp), %rdx
	addq	$48, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN7SigmoidC1ERKS_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3399:
	.size	_ZN5LayerILm3ELm1E7SigmoidEC2ERKS1_, .-_ZN5LayerILm3ELm1E7SigmoidEC2ERKS1_
	.weak	_ZN5LayerILm3ELm1E7SigmoidEC1ERKS1_
	.set	_ZN5LayerILm3ELm1E7SigmoidEC1ERKS1_,_ZN5LayerILm3ELm1E7SigmoidEC2ERKS1_
	.section	.text._ZN5LayerILm2ELm3E7SigmoidEC2ERKS1_,"axG",@progbits,_ZN5LayerILm2ELm3E7SigmoidEC5ERKS1_,comdat
	.align 2
	.weak	_ZN5LayerILm2ELm3E7SigmoidEC2ERKS1_
	.type	_ZN5LayerILm2ELm3E7SigmoidEC2ERKS1_, @function
_ZN5LayerILm2ELm3E7SigmoidEC2ERKS1_:
.LFB3405:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	-24(%rbp), %rax
	addq	$64, %rax
	movq	-32(%rbp), %rdx
	addq	$64, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN7SigmoidC1ERKS_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3405:
	.size	_ZN5LayerILm2ELm3E7SigmoidEC2ERKS1_, .-_ZN5LayerILm2ELm3E7SigmoidEC2ERKS1_
	.weak	_ZN5LayerILm2ELm3E7SigmoidEC1ERKS1_
	.set	_ZN5LayerILm2ELm3E7SigmoidEC1ERKS1_,_ZN5LayerILm2ELm3E7SigmoidEC2ERKS1_
	.text
	.globl	_Z9TrainTestv
	.type	_Z9TrainTestv, @function
_Z9TrainTestv:
.LFB3317:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$256, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-160(%rbp), %rdx
	movl	$0, %eax
	movl	$19, %ecx
	movq	%rdx, %rdi
	rep stosq
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -160(%rbp)
	leaq	16+_ZTV7Sigmoid(%rip), %rax
	movq	%rax, -144(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -96(%rbp)
	leaq	16+_ZTV7Sigmoid(%rip), %rax
	movq	%rax, -88(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	16+_ZTV7Sigmoid(%rip), %rax
	movq	%rax, -16(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -256(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -248(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -240(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -232(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -224(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -216(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -208(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -200(%rbp)
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -192(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -184(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -176(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -168(%rbp)
	leaq	-256(%rbp), %rcx
	leaq	-160(%rbp), %rax
	movl	$5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m
	movl	$1, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3317:
	.size	_Z9TrainTestv, .-_Z9TrainTestv
	.section	.rodata
.LC11:
	.string	"Train test failed."
	.text
	.globl	main
	.type	main, @function
main:
.LFB3453:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3453
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	.cfi_offset 12, -24
	.cfi_offset 3, -32
.LEHB0:
	call	_Z9TrainTestv
.LEHE0:
	xorl	$1, %eax
	testb	%al, %al
	je	.L20
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	.LC11(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB1:
	call	_ZNSt13runtime_errorC1EPKc@PLT
.LEHE1:
	movq	_ZNSt13runtime_errorD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt13runtime_error(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB2:
	call	__cxa_throw@PLT
.L20:
	movl	$0, %eax
	jmp	.L24
.L23:
	endbr64
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	__cxa_free_exception@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE2:
.L24:
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3453:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3453:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3453-.LLSDACSB3453
.LLSDACSB3453:
	.uleb128 .LEHB0-.LFB3453
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3453
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L23-.LFB3453
	.uleb128 0
	.uleb128 .LEHB2-.LFB3453
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE3453:
	.text
	.size	main, .-main
	.section	.text._ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv,"axG",@progbits,_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv,comdat
	.align 2
	.weak	_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv
	.type	_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv, @function
_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv:
.LFB3795:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rcx
	movq	8(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 48(%rax)
	movq	%rbx, 56(%rax)
	movq	64(%rdx), %rcx
	movq	72(%rdx), %rbx
	movq	%rcx, 64(%rax)
	movq	%rbx, 72(%rax)
	movq	80(%rdx), %rcx
	movq	88(%rdx), %rbx
	movq	%rcx, 80(%rax)
	movq	%rbx, 88(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3795:
	.size	_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv, .-_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv
	.section	.text._ZNK9DataEntryILm2ELm1EE9GetInputsEv,"axG",@progbits,_ZNK9DataEntryILm2ELm1EE9GetInputsEv,comdat
	.align 2
	.weak	_ZNK9DataEntryILm2ELm1EE9GetInputsEv
	.type	_ZNK9DataEntryILm2ELm1EE9GetInputsEv, @function
_ZNK9DataEntryILm2ELm1EE9GetInputsEv:
.LFB3796:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rax
	movq	%rbx, %xmm1
	movq	%rax, %xmm0
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3796:
	.size	_ZNK9DataEntryILm2ELm1EE9GetInputsEv, .-_ZNK9DataEntryILm2ELm1EE9GetInputsEv
	.section	.text._ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv,"axG",@progbits,_ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv,comdat
	.align 2
	.weak	_ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv
	.type	_ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv, @function
_ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv:
.LFB3797:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm2EE4sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3797:
	.size	_ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv, .-_ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv
	.section	.text._ZNKSt5arrayIdLm2EE4sizeEv,"axG",@progbits,_ZNKSt5arrayIdLm2EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5arrayIdLm2EE4sizeEv
	.type	_ZNKSt5arrayIdLm2EE4sizeEv, @function
_ZNKSt5arrayIdLm2EE4sizeEv:
.LFB3798:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$2, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3798:
	.size	_ZNKSt5arrayIdLm2EE4sizeEv, .-_ZNKSt5arrayIdLm2EE4sizeEv
	.section	.text._ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_,"axG",@progbits,_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_,comdat
	.weak	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_
	.type	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_, @function
_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_:
.LFB3799:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	movq	%rax, %rdi
	call	_ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3799:
	.size	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_, .-_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_
	.section	.text._ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv,"axG",@progbits,_ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv,comdat
	.align 2
	.weak	_ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv
	.type	_ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv, @function
_ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv:
.LFB3800:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm1EE4sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3800:
	.size	_ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv, .-_ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv
	.section	.text._ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3801:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3801:
	.size	_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB3802:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3802:
	.size	_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m:
.LFB3794:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$296, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -280(%rbp)
	movq	%rsi, -288(%rbp)
	movq	%rdx, -296(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-224(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_
	movq	%rax, %rdi
	call	_ZNK9DataEntryILm2ELm1EE9GetInputsEv
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -256(%rbp)
	movsd	%xmm0, -248(%rbp)
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm2EE4sizeEv
	movq	%rax, %rbx
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	movq	%rax, %rdi
	call	_ZNK5LayerILm2ELm3E7SigmoidE18GetNumberOfNeuronsEv
	cmpq	%rax, %rbx
	jne	.L42
	leaq	-128(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EEONSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeEOS6_
	movq	%rax, %rdi
	call	_ZNK9DataEntryILm2ELm1EE9GetInputsEv
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -240(%rbp)
	movsd	%xmm0, -232(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm2EE4sizeEv
	movq	%rax, %rbx
	movq	-280(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	movq	%rax, %rdi
	call	_ZNK5LayerILm1ELm0E7SigmoidE18GetNumberOfNeuronsEv
	cmpq	%rax, %rbx
	je	.L43
.L42:
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	testb	%al, %al
	je	.L45
	movl	$8, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	call	_ZNSt9exceptionC1Ev
	movq	_ZNSt9exceptionD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZTISt9exception(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	__cxa_throw@PLT
.L45:
	movq	$0, -264(%rbp)
	jmp	.L46
.L47:
	leaq	-128(%rbp), %rax
	movq	-288(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK7DataSetIJ9DataEntryILm2ELm1EES1_S1_S1_EE10GetEntriesEv
	leaq	-128(%rbp), %rdx
	movq	-280(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	addq	$1, -264(%rbp)
.L46:
	movq	-264(%rbp), %rax
	cmpq	-296(%rbp), %rax
	jb	.L47
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L48
	call	__stack_chk_fail@PLT
.L48:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3794:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE5TrainI7DataSetIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT_m
	.section	.text._ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB3909:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3909:
	.size	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERT0_RSt11_Tuple_implIXT_EJS2_DpT1_EE
	.section	.text._ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB3910:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3910:
	.size	_ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardI9DataEntryILm2ELm1EEEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNKSt5arrayIdLm1EE4sizeEv,"axG",@progbits,_ZNKSt5arrayIdLm1EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5arrayIdLm1EE4sizeEv
	.type	_ZNKSt5arrayIdLm1EE4sizeEv, @function
_ZNKSt5arrayIdLm1EE4sizeEv:
.LFB3911:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3911:
	.size	_ZNKSt5arrayIdLm1EE4sizeEv, .-_ZNKSt5arrayIdLm1EE4sizeEv
	.section	.text._ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.type	_ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, @function
_ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE:
.LFB3912:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3912:
	.size	_ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE, .-_ZSt12__get_helperILm0E5LayerILm2ELm3E7SigmoidEJS0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS5_DpT1_EE
	.section	.text._ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.type	_ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, @function
_ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE:
.LFB3913:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3913:
	.size	_ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE, .-_ZSt12__get_helperILm2E5LayerILm1ELm0E7SigmoidEJEERT0_RSt11_Tuple_implIXT_EJS3_DpT1_EE
	.section	.text._ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv,"axG",@progbits,_ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv,comdat
	.align 2
	.weak	_ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv
	.type	_ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv, @function
_ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv:
.LFB3917:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	16(%rdx), %rcx
	movq	24(%rdx), %rbx
	movq	%rcx, (%rax)
	movq	%rbx, 8(%rax)
	movq	32(%rdx), %rcx
	movq	40(%rdx), %rbx
	movq	%rcx, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	48(%rdx), %rcx
	movq	56(%rdx), %rbx
	movq	%rcx, 32(%rax)
	movq	%rbx, 40(%rax)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3917:
	.size	_ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv, .-_ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv
	.section	.text._ZNSt5arrayIdLm2EEixEm,"axG",@progbits,_ZNSt5arrayIdLm2EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayIdLm2EEixEm
	.type	_ZNSt5arrayIdLm2EEixEm, @function
_ZNSt5arrayIdLm2EEixEm:
.LFB3918:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3918:
	.size	_ZNSt5arrayIdLm2EEixEm, .-_ZNSt5arrayIdLm2EEixEm
	.section	.text._ZNKSt5arrayIdLm3EE4sizeEv,"axG",@progbits,_ZNKSt5arrayIdLm3EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5arrayIdLm3EE4sizeEv
	.type	_ZNKSt5arrayIdLm3EE4sizeEv, @function
_ZNKSt5arrayIdLm3EE4sizeEv:
.LFB3919:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$3, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3919:
	.size	_ZNKSt5arrayIdLm3EE4sizeEv, .-_ZNKSt5arrayIdLm3EE4sizeEv
	.section	.text._ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_,"axG",@progbits,_ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_,comdat
	.align 2
	.weak	_ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_
	.type	_ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_, @function
_ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_:
.LFB3916:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$152, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -136(%rbp)
	movq	%rsi, -144(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK5LayerILm2ELm3E7SigmoidE10GetWeightsEv
	movq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK5LayerILm2ELm3E7SigmoidE10GetNeuronsEv
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -96(%rbp)
	movsd	%xmm0, -88(%rbp)
	movq	$0, -120(%rbp)
	jmp	.L66
.L69:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -112(%rbp)
	movq	$0, -104(%rbp)
	jmp	.L67
.L68:
	movq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm2EEixEm
	movsd	(%rax), %xmm2
	movsd	%xmm2, -152(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm3EE4sizeEv
	imulq	-104(%rbp), %rax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm6EEixEm
	movsd	(%rax), %xmm0
	mulsd	-152(%rbp), %xmm0
	movsd	-112(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -112(%rbp)
	addq	$1, -104(%rbp)
.L67:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm2EE4sizeEv
	cmpq	%rax, -104(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L68
	movq	-136(%rbp), %rax
	leaq	48(%rax), %rdx
	movq	-112(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN7Sigmoid4CalcEd
	movq	%xmm0, %rbx
	movq	-136(%rbp), %rax
	movq	-120(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm3EEixEm
	movq	%rbx, (%rax)
	addq	$1, -120(%rbp)
.L66:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm3EE4sizeEv
	cmpq	%rax, -120(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L69
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L70
	call	__stack_chk_fail@PLT
.L70:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3916:
	.size	_ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_, .-_ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_
	.section	.text._ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv,"axG",@progbits,_ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv,comdat
	.align 2
	.weak	_ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv
	.type	_ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv, @function
_ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv:
.LFB3922:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rsi
	movq	24(%rsi), %rax
	movq	32(%rsi), %rdx
	movq	%rax, (%rcx)
	movq	%rdx, 8(%rcx)
	movq	40(%rsi), %rax
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3922:
	.size	_ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv, .-_ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv
	.section	.text._ZNSt5arrayIdLm3EEixEm,"axG",@progbits,_ZNSt5arrayIdLm3EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayIdLm3EEixEm
	.type	_ZNSt5arrayIdLm3EEixEm, @function
_ZNSt5arrayIdLm3EEixEm:
.LFB3923:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3923:
	.size	_ZNSt5arrayIdLm3EEixEm, .-_ZNSt5arrayIdLm3EEixEm
	.section	.text._ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_,"axG",@progbits,_ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_,comdat
	.align 2
	.weak	_ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_
	.type	_ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_, @function
_ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_:
.LFB3921:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-80(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK5LayerILm3ELm1E7SigmoidE10GetWeightsEv
	leaq	-48(%rbp), %rax
	movq	-128(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNK5LayerILm3ELm1E7SigmoidE10GetNeuronsEv
	movq	$0, -104(%rbp)
	jmp	.L76
.L79:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -96(%rbp)
	movq	$0, -88(%rbp)
	jmp	.L77
.L78:
	movq	-88(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm3EEixEm
	movsd	(%rax), %xmm2
	movsd	%xmm2, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm1EE4sizeEv
	imulq	-88(%rbp), %rax
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm3EEixEm
	movsd	(%rax), %xmm0
	mulsd	-136(%rbp), %xmm0
	movsd	-96(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -96(%rbp)
	addq	$1, -88(%rbp)
.L77:
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm3EE4sizeEv
	cmpq	%rax, -88(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L78
	movq	-120(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-96(%rbp), %rax
	movq	%rax, %xmm0
	movq	%rdx, %rdi
	call	_ZN7Sigmoid4CalcEd
	movq	%xmm0, %rbx
	movq	-120(%rbp), %rax
	movq	-104(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt5arrayIdLm1EEixEm
	movq	%rbx, (%rax)
	addq	$1, -104(%rbp)
.L76:
	movq	-120(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm1EE4sizeEv
	cmpq	%rax, -104(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L79
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3921:
	.size	_ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_, .-_ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav:
.LFB3924:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3924:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav:
.LFB3920:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5LayerILm3ELm1E7SigmoidEC1ERKS1_
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm2EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	movq	%rax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5LayerILm1ELm0E7SigmoidE23layer_forward_propagateIS_ILm3ELm1ES0_EEEDaRKT_
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm3EEEDav
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L83
	call	__stack_chk_fail@PLT
.L83:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3920:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav:
.LFB3915:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%rdi, -88(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN5LayerILm2ELm3E7SigmoidEC1ERKS1_
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	movq	%rax, %rdx
	leaq	-80(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN5LayerILm3ELm1E7SigmoidE23layer_forward_propagateIS_ILm2ELm3ES0_EEEDaRKT_
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm2EEEDav
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3915:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_:
.LFB3914:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -32(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	movq	%rax, %rbx
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9DataEntryILm2ELm1EE9GetInputsEv
	movq	%xmm0, %rax
	movapd	%xmm1, %xmm0
	movq	%rax, -64(%rbp)
	movsd	%xmm0, -56(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav
	movq	-80(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L87
	call	__stack_chk_fail@PLT
.L87:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3914:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm0ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.section	.text._ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_
	.type	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_, @function
_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_:
.LFB3995:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3995:
	.size	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_, .-_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERS2_
	.section	.text._ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_
	.type	_ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_, @function
_ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_:
.LFB3996:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$80, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3996:
	.size	_ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_, .-_ZNSt11_Tuple_implILm0EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE7_M_headERS5_
	.section	.text._ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_,comdat
	.weak	_ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_
	.type	_ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_, @function
_ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_:
.LFB3997:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3997:
	.size	_ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_, .-_ZNSt11_Tuple_implILm2EJ5LayerILm1ELm0E7SigmoidEEE7_M_headERS3_
	.section	.text._ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,"axG",@progbits,_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,comdat
	.weak	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.type	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, @function
_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_:
.LFB3998:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3998:
	.size	_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, .-_ZSt3getILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.section	.text._ZNKSt5arrayIdLm6EE4sizeEv,"axG",@progbits,_ZNKSt5arrayIdLm6EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt5arrayIdLm6EE4sizeEv
	.type	_ZNKSt5arrayIdLm6EE4sizeEv, @function
_ZNKSt5arrayIdLm6EE4sizeEv:
.LFB4000:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	$6, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4000:
	.size	_ZNKSt5arrayIdLm6EE4sizeEv, .-_ZNKSt5arrayIdLm6EE4sizeEv
	.section	.text._ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE,"axG",@progbits,_ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE,comdat
	.align 2
	.weak	_ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE
	.type	_ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE, @function
_ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE:
.LFB3999:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	$0, -8(%rbp)
	jmp	.L99
.L100:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm2EE4sizeEv
	movq	%rax, %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	divq	%rcx
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm2EEixEm
	movsd	(%rax), %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt5arrayIdLm6EEixEm
	movsd	-40(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	addq	$1, -8(%rbp)
.L99:
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	call	_ZNKSt5arrayIdLm6EE4sizeEv
	cmpq	%rax, -8(%rbp)
	setb	%al
	testb	%al, %al
	jne	.L100
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3999:
	.size	_ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE, .-_ZN5LayerILm2ELm3E7SigmoidE15SetOutputValuesERKSt5arrayIdLm2EE
	.section	.text._ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,"axG",@progbits,_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_,comdat
	.weak	_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.type	_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, @function
_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_:
.LFB4001:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4001:
	.size	_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_, .-_ZSt3getILm1EJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEERNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERS9_
	.section	.text._ZNSt5arrayIdLm6EEixEm,"axG",@progbits,_ZNSt5arrayIdLm6EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayIdLm6EEixEm
	.type	_ZNSt5arrayIdLm6EEixEm, @function
_ZNSt5arrayIdLm6EEixEm:
.LFB4002:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4002:
	.size	_ZNSt5arrayIdLm6EEixEm, .-_ZNSt5arrayIdLm6EEixEm
	.section	.text._ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm,"axG",@progbits,_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm,comdat
	.weak	_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm
	.type	_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm, @function
_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm:
.LFB4003:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4003:
	.size	_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm, .-_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm
	.section	.text._ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm,"axG",@progbits,_ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm,comdat
	.weak	_ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm
	.type	_ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm, @function
_ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm:
.LFB4004:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4004:
	.size	_ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm, .-_ZNSt14__array_traitsIdLm3EE6_S_refERA3_Kdm
	.section	.text._ZNSt5arrayIdLm1EEixEm,"axG",@progbits,_ZNSt5arrayIdLm1EEixEm,comdat
	.align 2
	.weak	_ZNSt5arrayIdLm1EEixEm
	.type	_ZNSt5arrayIdLm1EEixEm, @function
_ZNSt5arrayIdLm1EEixEm:
.LFB4005:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4005:
	.size	_ZNSt5arrayIdLm1EEixEm, .-_ZNSt5arrayIdLm1EEixEm
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_:
.LFB4006:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L112
	call	__stack_chk_fail@PLT
.L112:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4006:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm1ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.section	.text._ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_,"axG",@progbits,_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_,comdat
	.weak	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_
	.type	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_, @function
_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_:
.LFB4069:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4069:
	.size	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_, .-_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERS2_
	.section	.text._ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_:
.LFB4070:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4070:
	.size	_ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm0E5LayerILm2ELm3E7SigmoidELb0EE7_M_headERS3_
	.section	.text._ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_:
.LFB4071:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4071:
	.size	_ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm2E5LayerILm1ELm0E7SigmoidELb0EE7_M_headERS3_
	.section	.text._ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB4072:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4072:
	.size	_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm0E9DataEntryILm2ELm1EEJS1_S1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.section	.text._ZNKSt5arrayIdLm2EEixEm,"axG",@progbits,_ZNKSt5arrayIdLm2EEixEm,comdat
	.align 2
	.weak	_ZNKSt5arrayIdLm2EEixEm
	.type	_ZNKSt5arrayIdLm2EEixEm, @function
_ZNKSt5arrayIdLm2EEixEm:
.LFB4073:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt14__array_traitsIdLm2EE6_S_refERA2_Kdm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4073:
	.size	_ZNKSt5arrayIdLm2EEixEm, .-_ZNKSt5arrayIdLm2EEixEm
	.section	.text._ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.type	_ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, @function
_ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE:
.LFB4074:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4074:
	.size	_ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE, .-_ZSt12__get_helperILm1E5LayerILm3ELm1E7SigmoidEJS0_ILm1ELm0ES1_EEERT0_RSt11_Tuple_implIXT_EJS4_DpT1_EE
	.section	.text._ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm,"axG",@progbits,_ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm,comdat
	.weak	_ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm
	.type	_ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm, @function
_ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm:
.LFB4075:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4075:
	.size	_ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm, .-_ZNSt14__array_traitsIdLm6EE6_S_refERA6_Kdm
	.section	.text._ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm,"axG",@progbits,_ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm,comdat
	.weak	_ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm
	.type	_ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm, @function
_ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm:
.LFB4076:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4076:
	.size	_ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm, .-_ZNSt14__array_traitsIdLm1EE6_S_refERA1_Kdm
	.section	.text._ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,"axG",@progbits,_ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,comdat
	.weak	_ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.type	_ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, @function
_ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_:
.LFB4077:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4077:
	.size	_ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, .-_ZSt3getILm1EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_:
.LFB4078:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L132
	call	__stack_chk_fail@PLT
.L132:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4078:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm2ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.section	.text._ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_,"axG",@progbits,_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_,comdat
	.weak	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_
	.type	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_, @function
_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_:
.LFB4148:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4148:
	.size	_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_, .-_ZNSt11_Tuple_implILm0EJ9DataEntryILm2ELm1EES1_S1_S1_EE7_M_headERKS2_
	.section	.text._ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_
	.type	_ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_, @function
_ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_:
.LFB4149:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4149:
	.size	_ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_, .-_ZNSt11_Tuple_implILm1EJ5LayerILm3ELm1E7SigmoidES0_ILm1ELm0ES1_EEE7_M_headERS4_
	.section	.text._ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB4150:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4150:
	.size	_ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm1E9DataEntryILm2ELm1EEJS1_S1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.section	.text._ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,"axG",@progbits,_ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,comdat
	.weak	_ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.type	_ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, @function
_ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_:
.LFB4151:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4151:
	.size	_ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, .-_ZSt3getILm2EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_:
.LFB4152:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	16(%rcx), %rax
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE23forward_propagate_entryILm1EEEDav
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L142
	call	__stack_chk_fail@PLT
.L142:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4152:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm3ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.section	.text._ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,"axG",@progbits,_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,comdat
	.weak	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.type	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, @function
_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_:
.LFB4188:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4188:
	.size	_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, .-_ZNSt10_Head_baseILm0E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.section	.text._ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_,"axG",@progbits,_ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_,comdat
	.weak	_ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_
	.type	_ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_, @function
_ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_:
.LFB4189:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4189:
	.size	_ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_, .-_ZNSt10_Head_baseILm1E5LayerILm3ELm1E7SigmoidELb0EE7_M_headERS3_
	.section	.text._ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_,"axG",@progbits,_ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_,comdat
	.weak	_ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_
	.type	_ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_, @function
_ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_:
.LFB4190:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4190:
	.size	_ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_, .-_ZNSt11_Tuple_implILm1EJ9DataEntryILm2ELm1EES1_S1_EE7_M_headERKS2_
	.section	.text._ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB4191:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4191:
	.size	_ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm2E9DataEntryILm2ELm1EEJS1_EERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.section	.text._ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,"axG",@progbits,_ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_,comdat
	.weak	_ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.type	_ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, @function
_ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_:
.LFB4192:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4192:
	.size	_ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_, .-_ZSt3getILm3EJ9DataEntryILm2ELm1EES1_S1_S1_EERKNSt13tuple_elementIXT_ESt5tupleIJDpT0_EEE4typeERKS6_
	.section	.text._ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,"axG",@progbits,_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_,comdat
	.align 2
	.weak	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.type	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, @function
_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_:
.LFB4193:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4193:
	.size	_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_, .-_ZN4NNetIJ5LayerILm2ELm3E7SigmoidES0_ILm3ELm1ES1_ES0_ILm1ELm0ES1_EEE17forward_propagateILm4ESt5tupleIJ9DataEntryILm2ELm1EES9_S9_S9_EEEEvRKT0_
	.section	.text._ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,"axG",@progbits,_ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,comdat
	.weak	_ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.type	_ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, @function
_ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_:
.LFB4210:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4210:
	.size	_ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, .-_ZNSt10_Head_baseILm1E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.section	.text._ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_,"axG",@progbits,_ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_,comdat
	.weak	_ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_
	.type	_ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_, @function
_ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_:
.LFB4211:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4211:
	.size	_ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_, .-_ZNSt11_Tuple_implILm2EJ9DataEntryILm2ELm1EES1_EE7_M_headERKS2_
	.section	.text._ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,"axG",@progbits,_ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE,comdat
	.weak	_ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.type	_ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, @function
_ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE:
.LFB4212:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4212:
	.size	_ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE, .-_ZSt12__get_helperILm3E9DataEntryILm2ELm1EEJEERKT0_RKSt11_Tuple_implIXT_EJS2_DpT1_EE
	.section	.text._ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,"axG",@progbits,_ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,comdat
	.weak	_ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.type	_ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, @function
_ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_:
.LFB4221:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4221:
	.size	_ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, .-_ZNSt10_Head_baseILm2E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.section	.text._ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_,"axG",@progbits,_ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_,comdat
	.weak	_ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_
	.type	_ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_, @function
_ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_:
.LFB4222:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4222:
	.size	_ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_, .-_ZNSt11_Tuple_implILm3EJ9DataEntryILm2ELm1EEEE7_M_headERKS2_
	.section	.text._ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,"axG",@progbits,_ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_,comdat
	.weak	_ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.type	_ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, @function
_ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_:
.LFB4223:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4223:
	.size	_ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_, .-_ZNSt10_Head_baseILm3E9DataEntryILm2ELm1EELb0EE7_M_headERKS2_
	.weak	_ZTV7Sigmoid
	.section	.data.rel.ro.local._ZTV7Sigmoid,"awG",@progbits,_ZTV7Sigmoid,comdat
	.align 8
	.type	_ZTV7Sigmoid, @object
	.size	_ZTV7Sigmoid, 24
_ZTV7Sigmoid:
	.quad	0
	.quad	_ZTI7Sigmoid
	.quad	_ZN7Sigmoid4CalcEd
	.weak	_ZTV18ActivationFunction
	.section	.data.rel.ro._ZTV18ActivationFunction,"awG",@progbits,_ZTV18ActivationFunction,comdat
	.align 8
	.type	_ZTV18ActivationFunction, @object
	.size	_ZTV18ActivationFunction, 24
_ZTV18ActivationFunction:
	.quad	0
	.quad	_ZTI18ActivationFunction
	.quad	__cxa_pure_virtual
	.weak	_ZTI7Sigmoid
	.section	.data.rel.ro._ZTI7Sigmoid,"awG",@progbits,_ZTI7Sigmoid,comdat
	.align 8
	.type	_ZTI7Sigmoid, @object
	.size	_ZTI7Sigmoid, 40
_ZTI7Sigmoid:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS7Sigmoid
	.long	0
	.long	1
	.quad	_ZTI18ActivationFunction
	.quad	0
	.weak	_ZTS7Sigmoid
	.section	.rodata._ZTS7Sigmoid,"aG",@progbits,_ZTS7Sigmoid,comdat
	.align 8
	.type	_ZTS7Sigmoid, @object
	.size	_ZTS7Sigmoid, 9
_ZTS7Sigmoid:
	.string	"7Sigmoid"
	.weak	_ZTI18ActivationFunction
	.section	.data.rel.ro._ZTI18ActivationFunction,"awG",@progbits,_ZTI18ActivationFunction,comdat
	.align 8
	.type	_ZTI18ActivationFunction, @object
	.size	_ZTI18ActivationFunction, 16
_ZTI18ActivationFunction:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS18ActivationFunction
	.weak	_ZTS18ActivationFunction
	.section	.rodata._ZTS18ActivationFunction,"aG",@progbits,_ZTS18ActivationFunction,comdat
	.align 16
	.type	_ZTS18ActivationFunction, @object
	.size	_ZTS18ActivationFunction, 21
_ZTS18ActivationFunction:
	.string	"18ActivationFunction"
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB4224:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L168
	cmpl	$65535, -8(%rbp)
	jne	.L168
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L168:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4224:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__Z9TrainTestv, @function
_GLOBAL__sub_I__Z9TrainTestv:
.LFB4225:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4225:
	.size	_GLOBAL__sub_I__Z9TrainTestv, .-_GLOBAL__sub_I__Z9TrainTestv
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z9TrainTestv
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1072693248
	.align 16
.LC1:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC2:
	.long	313085936
	.long	1072492389
	.align 8
.LC3:
	.long	783951791
	.long	1070391548
	.align 8
.LC4:
	.long	1191320849
	.long	1071811842
	.align 8
.LC5:
	.long	-2108313546
	.long	1072554437
	.align 8
.LC6:
	.long	-155855773
	.long	1070617918
	.align 8
.LC7:
	.long	-1230078634
	.long	1071873890
	.align 8
.LC8:
	.long	-234745733
	.long	1072616485
	.align 8
.LC9:
	.long	-703687442
	.long	1070742015
	.weak	__cxa_pure_virtual
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04.1) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
