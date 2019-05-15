.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
_r1qt_bytes:
	.asciz "main"
.data
.align 3
.align 0
_r1r4_closure:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1qt_bytes
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
_r1r5_bytes:
	.asciz "WideningMul.Prim"
.data
.align 3
.align 0
_r1r6_closure:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1r5_bytes
.data
.align 3
.align 0
.globl _WideningMulziPrim_zdtrModule_closure
_WideningMulziPrim_zdtrModule_closure:
	.quad	_ghczmprim_GHCziTypes_Module_con_info
	.quad	_r1r4_closure+1
	.quad	_r1r6_closure+1
	.quad	3
.text
.align 3
_WideningMulziPrim_wideningMulzuprimzh_info_dsp:
.align 3
	.quad	8589934604
	.quad	0
	.long	14
	.long	0
.globl _WideningMulziPrim_wideningMulzuprimzh_info
_WideningMulziPrim_wideningMulzuprimzh_info:
Lc1DY:
Lc1E0:
	movq %r14,%rax
	movq %rsi,%r14
	movq %rax,%rbx
	jmp _wideningMul_prim
	.long  _WideningMulziPrim_wideningMulzuprimzh_info - _WideningMulziPrim_wideningMulzuprimzh_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziPrim_wideningMulzuprimzh_closure
_WideningMulziPrim_wideningMulzuprimzh_closure:
	.quad	_WideningMulziPrim_wideningMulzuprimzh_info
.text
.align 3
_WideningMulziPrim_wideningMul_info_dsp:
.align 3
	.quad	8589934607
	.quad	0
	.long	14
	.long	0
.globl _WideningMulziPrim_wideningMul_info
_WideningMulziPrim_wideningMul_info:
Lc1Eb:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1Eo
Lc1Ep:
	leaq _c1E8_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1E8
Lc1E9:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	0
_c1E8_info:
Lc1E8:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1Ee_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1Ee
Lc1Ef:
	jmp *(%rbx)
.align 3
	.quad	65
	.long	30
	.long	0
_c1Ee_info:
Lc1Ee:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1Ej_info(%rip),%rcx
	movq %rcx,8(%rbp)
	movq %rbx,%r14
	movq %rax,%rbx
	addq $8,%rbp
	jmp _wideningMul_prim
.align 3
	.quad	0
	.long	30
	.long	0
_c1Ej_info:
Lc1Ej:
Lc1Ek:
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja Lc1Eu
Lc1Et:
	leaq _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_Word128_con_info(%rip),%rax
	movq %rax,-16(%r12)
	movq %r14,-8(%r12)
	movq %rbx,(%r12)
	leaq -15(%r12),%rax
	movq %rax,%rbx
	addq $8,%rbp
	jmp *(%rbp)
.align 3
	.quad	194
	.long	30
	.long	0
_c1El_info:
Lc1El:
	movq 16(%rbp),%rax
	movq 8(%rbp),%rbx
Lu1Ev:
	addq $16,%rbp
Ln1EE:
	movq %rbx,%r14
	movq %rax,%rbx
	jmp Lc1Ek
Lc1Eo:
	leaq _WideningMulziPrim_wideningMul_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1Eu:
	movq $24,904(%r13)
	leaq _c1El_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,-8(%rbp)
	movq %rbx,(%rbp)
	addq $-16,%rbp
	jmp _stg_gc_noregs
	.long  _WideningMulziPrim_wideningMul_info - _WideningMulziPrim_wideningMul_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziPrim_wideningMul_closure
_WideningMulziPrim_wideningMul_closure:
	.quad	_WideningMulziPrim_wideningMul_info
.subsections_via_symbols
.ident "GHC 8.6.5"


