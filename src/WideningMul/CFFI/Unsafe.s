.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
_r1Es_bytes:
	.asciz "main"
.data
.align 3
.align 0
_r1Hw_closure:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1Es_bytes
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
_r1Hx_bytes:
	.asciz "WideningMul.CFFI.Unsafe"
.data
.align 3
.align 0
_r1Hy_closure:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1Hx_bytes
.data
.align 3
.align 0
.globl _WideningMulziCFFIziUnsafe_zdtrModule_closure
_WideningMulziCFFIziUnsafe_zdtrModule_closure:
	.quad	_ghczmprim_GHCziTypes_Module_con_info
	.quad	_r1Hw_closure+1
	.quad	_r1Hy_closure+1
	.quad	3
.text
.align 3
_r1Hz_info_dsp:
.align 3
	.quad	17179869207
	.quad	0
	.long	14
	.long	0
_r1Hz_info:
Lc1Wb:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1Wt
Lc1Wu:
	leaq _c1W8_info(%rip),%rax
	movq %rax,-24(%rbp)
	movq %r14,%rbx
	movq %rsi,-16(%rbp)
	movq %rdi,-8(%rbp)
	addq $-24,%rbp
	testb $7,%bl
	jne Lc1W8
Lc1W9:
	jmp *(%rbx)
.align 3
	.quad	2
	.long	30
	.long	0
_c1W8_info:
Lc1W8:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1We_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1We
Lc1Wf:
	jmp *(%rbx)
.align 3
	.quad	66
	.long	30
	.long	0
_c1We_info:
Lc1We:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1Wj_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,16(%rbp)
	testb $7,%bl
	jne Lc1Wj
Lc1Wk:
	jmp *(%rbx)
.align 3
	.quad	194
	.long	30
	.long	0
_c1Wj_info:
Lc1Wj:
	movq 8(%rbp),%rax
	movq 16(%rbp),%rcx
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja Lc1Wz
Lc1Wy:
	movq 7(%rbx),%rbx
	movq _wideningMul_with_ptr@GOTPCREL(%rip),%rdx
	subq $8,%rsp
	movq %rdx,%rsi
	movq %rbx,%rdx
	movq %rax,%rdi
	movq %rsi,%rax
	movq %rcx,%rsi
	movq %rax,%rbx
	xorl %eax,%eax
	call *%rbx
	addq $8,%rsp
	leaq _base_GHCziWord_W64zh_con_info(%rip),%rbx
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -7(%r12),%rax
	movq %rax,%rbx
	addq $24,%rbp
	jmp *(%rbp)
Lc1Wt:
	leaq _r1Hz_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1Wz:
	movq $16,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _r1Hz_info - _r1Hz_info_dsp
.data
.align 3
.align 0
_r1Hz_closure:
	.quad	_r1Hz_info
.text
.align 3
_WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_info_dsp:
.align 3
	.quad	17179869207
	.quad	0
	.long	14
	.long	0
.globl _WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_info
_WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_info:
Lc1WO:
Lc1WQ:
	jmp _r1Hz_info
	.long  _WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_info - _WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_closure
_WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_closure:
	.quad	_WideningMulziCFFIziUnsafe_czuwideningMulzuwithzuptr_info
.text
.align 3
_WideningMulziCFFIziUnsafe_czuwideningMulzulo_info_dsp:
.align 3
	.quad	8589934607
	.quad	0
	.long	14
	.long	0
.globl _WideningMulziCFFIziUnsafe_czuwideningMulzulo_info
_WideningMulziCFFIziUnsafe_czuwideningMulzulo_info:
Lc1X1:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1Xd
Lc1Xe:
	leaq _c1WY_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1WY
Lc1WZ:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	0
_c1WY_info:
Lc1WY:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1X4_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1X4
Lc1X5:
	jmp *(%rbx)
.align 3
	.quad	65
	.long	30
	.long	0
_c1X4_info:
Lc1X4:
	movq 8(%rbp),%rax
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja Lc1Xi
Lc1Xh:
	movq 7(%rbx),%rbx
	movq _wideningMul_lo@GOTPCREL(%rip),%rcx
	subq $8,%rsp
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call *%rcx
	addq $8,%rsp
	leaq _base_GHCziWord_W64zh_con_info(%rip),%rbx
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -7(%r12),%rax
	movq %rax,%rbx
	addq $16,%rbp
	jmp *(%rbp)
Lc1Xd:
	leaq _WideningMulziCFFIziUnsafe_czuwideningMulzulo_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1Xi:
	movq $16,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMulziCFFIziUnsafe_czuwideningMulzulo_info - _WideningMulziCFFIziUnsafe_czuwideningMulzulo_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziCFFIziUnsafe_czuwideningMulzulo_closure
_WideningMulziCFFIziUnsafe_czuwideningMulzulo_closure:
	.quad	_WideningMulziCFFIziUnsafe_czuwideningMulzulo_info
.text
.align 3
_WideningMulziCFFIziUnsafe_czuwideningMulzuhi_info_dsp:
.align 3
	.quad	8589934607
	.quad	0
	.long	14
	.long	0
.globl _WideningMulziCFFIziUnsafe_czuwideningMulzuhi_info
_WideningMulziCFFIziUnsafe_czuwideningMulzuhi_info:
Lc1Xy:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1XK
Lc1XL:
	leaq _c1Xv_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1Xv
Lc1Xw:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	0
_c1Xv_info:
Lc1Xv:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1XB_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1XB
Lc1XC:
	jmp *(%rbx)
.align 3
	.quad	65
	.long	30
	.long	0
_c1XB_info:
Lc1XB:
	movq 8(%rbp),%rax
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja Lc1XP
Lc1XO:
	movq 7(%rbx),%rbx
	movq _wideningMul_hi@GOTPCREL(%rip),%rcx
	subq $8,%rsp
	movq %rbx,%rsi
	movq %rax,%rdi
	xorl %eax,%eax
	call *%rcx
	addq $8,%rsp
	leaq _base_GHCziWord_W64zh_con_info(%rip),%rbx
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -7(%r12),%rax
	movq %rax,%rbx
	addq $16,%rbp
	jmp *(%rbp)
Lc1XK:
	leaq _WideningMulziCFFIziUnsafe_czuwideningMulzuhi_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1XP:
	movq $16,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMulziCFFIziUnsafe_czuwideningMulzuhi_info - _WideningMulziCFFIziUnsafe_czuwideningMulzuhi_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziCFFIziUnsafe_czuwideningMulzuhi_closure
_WideningMulziCFFIziUnsafe_czuwideningMulzuhi_closure:
	.quad	_WideningMulziCFFIziUnsafe_czuwideningMulzuhi_info
.text
.align 3
_WideningMulziCFFIziUnsafe_wideningMul2_info_dsp:
.align 3
	.quad	8589934607
	.quad	0
	.long	14
	.long	0
.globl _WideningMulziCFFIziUnsafe_wideningMul2_info
_WideningMulziCFFIziUnsafe_wideningMul2_info:
Lc1Y5:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1YE
Lc1YF:
	leaq _c1Y2_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1Y2
Lc1Y3:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	0
_c1Y2_info:
Lc1Y2:
	movq 8(%rbp),%rax
	leaq _c1Y8_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1Y8
Lc1Y9:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	0
_c1Y8_info:
Lc1Y8:
	movq 8(%rbp),%rax
	leaq _c1Yd_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1Yd
Lc1Ye:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	0
_c1Yd_info:
Lc1Yd:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rcx
	leaq _c1Yi_info(%rip),%rdx
	movq %rdx,-8(%rbp)
	movq %rbx,%rdx
	movq %rax,%rbx
	movq %rcx,(%rbp)
	movq %rdx,8(%rbp)
	addq $-8,%rbp
	testb $7,%bl
	jne Lc1Yi
Lc1Yj:
	jmp *(%rbx)
.align 3
	.quad	66
	.long	30
	.long	0
_c1Yi_info:
Lc1Yi:
	movq 16(%rbp),%rax
	movq 8(%rbp),%rcx
	movq 7(%rbx),%rdx
	movq _wideningMul_hi@GOTPCREL(%rip),%rsi
	subq $8,%rsp
	movq %rsi,%rdi
	movq %rdx,%rsi
	movq %rdi,%rdx
	movq %rcx,%rdi
	movq %rax,%rcx
	xorl %eax,%eax
	movq %rcx,%r14
	call *%rdx
	addq $8,%rsp
	leaq _c1Yq_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %r14,%rbx
	movq %rax,8(%rbp)
	movq %rcx,16(%rbp)
	testb $7,%bl
	jne Lc1Yq
Lc1Yr:
	jmp *(%rbx)
.align 3
	.quad	66
	.long	30
	.long	0
_c1Yq_info:
Lc1Yq:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1Yv_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,16(%rbp)
	testb $7,%bl
	jne Lc1Yv
Lc1Yw:
	jmp *(%rbx)
.align 3
	.quad	194
	.long	30
	.long	0
_c1Yv_info:
Lc1Yv:
	movq 8(%rbp),%rax
	movq 16(%rbp),%rcx
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja Lc1YN
Lc1YM:
	movq 7(%rbx),%rbx
	movq _wideningMul_lo@GOTPCREL(%rip),%rdx
	subq $8,%rsp
	movq %rbx,%rsi
	movq %rcx,%rdi
	movq %rax,%rbx
	xorl %eax,%eax
	call *%rdx
	addq $8,%rsp
	leaq _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_Word128_con_info(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -15(%r12),%rax
	movq %rax,%rbx
	addq $24,%rbp
	jmp *(%rbp)
Lc1YE:
	leaq _WideningMulziCFFIziUnsafe_wideningMul2_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1YN:
	movq $24,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMulziCFFIziUnsafe_wideningMul2_info - _WideningMulziCFFIziUnsafe_wideningMul2_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziCFFIziUnsafe_wideningMul2_closure
_WideningMulziCFFIziUnsafe_wideningMul2_closure:
	.quad	_WideningMulziCFFIziUnsafe_wideningMul2_info
.data
.align 3
.align 0
_u217_srt:
	.quad	_stg_SRT_2_info
	.quad	_base_ForeignziStorable_zdfStorableWord64_closure
	.quad	_base_ForeignziMarshalziAlloc_alloca_closure
	.quad	0
.data
.align 3
.align 0
_u218_srt:
	.quad	_stg_SRT_1_info
	.quad	_base_ForeignziStorable_zdfStorableWord64_closure
	.quad	0
.data
.align 3
.align 0
_u219_srt:
	.quad	_stg_SRT_1_info
	.quad	_base_GHCziBase_zdfMonadIO_closure
	.quad	0
.data
.align 3
.align 0
_u21a_srt:
	.quad	_stg_SRT_2_info
	.quad	_base_GHCziBase_zd_closure
	.quad	_u219_srt
	.quad	0
.data
.align 3
.align 0
_u21b_srt:
	.quad	_stg_SRT_2_info
	.quad	_u218_srt
	.quad	_u21a_srt
	.quad	0
.data
.align 3
.align 0
_u21c_srt:
	.quad	_stg_SRT_1_info
	.quad	_u21b_srt
	.quad	0
.data
.align 3
.align 0
_u21d_srt:
	.quad	_stg_SRT_2_info
	.quad	_u217_srt
	.quad	_u21c_srt
	.quad	0
.data
.align 3
.align 0
_u21e_srt:
	.quad	_stg_SRT_2_info
	.quad	_base_GHCziIOziUnsafe_unsafeDupablePerformIO_closure
	.quad	_u21d_srt
	.quad	0
.data
.align 3
.align 0
_u21f_srt:
	.quad	_stg_SRT_1_info
	.quad	_u21e_srt
	.quad	0
.text
.align 3
_s1Vp_info_dsp:
.align 3
	.quad	2
	.long	18
	.long	0
_s1Vp_info:
Lc1ZC:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1ZD
Lc1ZE:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rbx
	movq %rax,%rsi
	movq %rbx,%r14
	addq $-16,%rbp
	jmp _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdWWord128_info
Lc1ZD:
	jmp *-16(%r13)
	.long  _s1Vp_info - _s1Vp_info_dsp
.text
.align 3
_s1Vo_info_dsp:
.align 3
	.quad	0
	.long	15
	.long	_u219_srt-(_s1Vo_info)+0
_s1Vo_info:
Lc1ZJ:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1ZK
Lc1ZL:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq _base_GHCziBase_zdfMonadIO_closure(%rip),%r14
	addq $-16,%rbp
	jmp _base_GHCziBase_return_info
Lc1ZK:
	jmp *-16(%r13)
	.long  _s1Vo_info - _s1Vo_info_dsp
.text
.align 3
_s1Vq_info_dsp:
.align 3
	.quad	4294967301
	.quad	1
	.long	9
	.long	_u21a_srt-(_s1Vq_info)+0
_s1Vq_info:
Lc1ZM:
Lc1ZO:
	addq $48,%r12
	cmpq 856(%r13),%r12
	ja Lc1ZQ
Lc1ZP:
	movq 7(%rbx),%rax
	leaq _s1Vp_info(%rip),%rbx
	movq %rbx,-40(%r12)
	movq %rax,-24(%r12)
	movq %r14,-16(%r12)
	leaq -40(%r12),%rax
	leaq _s1Vo_info(%rip),%rbx
	movq %rbx,-8(%r12)
	leaq -8(%r12),%rbx
	movq %rax,%rsi
	movq %rbx,%r14
	leaq _base_GHCziBase_zd_closure(%rip),%rbx
	jmp _stg_ap_pp_fast
Lc1ZQ:
	movq $48,904(%r13)
Lc1ZN:
	jmp *-8(%r13)
	.long  _s1Vq_info - _s1Vq_info_dsp
.text
.align 3
_s1Vm_info_dsp:
.align 3
	.quad	1
	.long	16
	.long	_u218_srt-(_s1Vm_info)+0
_s1Vm_info:
Lc1ZV:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1ZW
Lc1ZX:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq _base_ForeignziStorable_zdfStorableWord64_closure(%rip),%r14
	leaq _stg_ap_p_info(%rip),%rbx
	movq %rbx,-32(%rbp)
	movq %rax,-24(%rbp)
	addq $-32,%rbp
	jmp _base_ForeignziStorable_peek_info
Lc1ZW:
	jmp *-16(%r13)
	.long  _s1Vm_info - _s1Vm_info_dsp
.text
.align 3
_s1Vr_info_dsp:
.align 3
	.quad	4294967301
	.quad	1
	.long	9
	.long	_u21b_srt-(_s1Vr_info)+0
_s1Vr_info:
Lc1ZY:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1ZZ
Lc200:
	addq $40,%r12
	cmpq 856(%r13),%r12
	ja Lc202
Lc201:
	movq 7(%rbx),%rax
	leaq _s1Vq_info(%rip),%rbx
	movq %rbx,-32(%r12)
	movq %r14,-24(%r12)
	leaq -31(%r12),%rbx
	leaq _s1Vm_info(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	leaq _base_GHCziBase_zdfMonadIO_closure(%rip),%r14
	leaq _stg_ap_pp_info(%rip),%rcx
	movq %rcx,-24(%rbp)
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	addq $-24,%rbp
	jmp _base_GHCziBase_zgzgze_info
Lc202:
	movq $40,904(%r13)
Lc1ZZ:
	jmp *-8(%r13)
	.long  _s1Vr_info - _s1Vr_info_dsp
.text
.align 3
_s1Vj_info_dsp:
.align 3
	.quad	4294967299
	.quad	12884901888
	.long	8
	.long	0
_s1Vj_info:
Lc20w:
Lc20y:
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja Lc20A
Lc20z:
	movq 7(%rbx),%rax
	movq 15(%rbx),%rcx
	movq 23(%rbx),%rbx
	movq _wideningMul_with_ptr@GOTPCREL(%rip),%rdx
	subq $8,%rsp
	movq %rdx,%rsi
	movq %rbx,%rdx
	movq %rax,%rdi
	movq %rsi,%rax
	movq %rcx,%rsi
	movq %rax,%rbx
	xorl %eax,%eax
	call *%rbx
	addq $8,%rsp
	leaq _base_GHCziWord_W64zh_con_info(%rip),%rbx
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -7(%r12),%rax
	movq %rax,%rbx
	jmp *(%rbp)
Lc20A:
	movq $16,904(%r13)
Lc20x:
	jmp *-8(%r13)
	.long  _s1Vj_info - _s1Vj_info_dsp
.text
.align 3
_s1Vk_info_dsp:
.align 3
	.quad	3
	.long	15
	.long	0
_s1Vk_info:
Lc20B:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb Lc20C
Lc20D:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rcx
	movq 32(%rbx),%rbx
	leaq _c207_info(%rip),%rdx
	movq %rdx,-40(%rbp)
	movq %rbx,%rdx
	movq %rax,%rbx
	movq %rcx,-32(%rbp)
	movq %rdx,-24(%rbp)
	addq $-40,%rbp
	testb $7,%bl
	jne Lc207
Lc208:
	jmp *(%rbx)
.align 3
	.quad	2
	.long	30
	.long	0
_c207_info:
Lc207:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c20c_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc20c
Lc20d:
	jmp *(%rbx)
.align 3
	.quad	66
	.long	30
	.long	0
_c20c_info:
Lc20c:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c20h_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,16(%rbp)
	testb $7,%bl
	jne Lc20h
Lc20i:
	jmp *(%rbx)
.align 3
	.quad	194
	.long	30
	.long	0
_c20h_info:
Lc20h:
	movq 8(%rbp),%rax
	movq 16(%rbp),%rcx
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja Lc20I
Lc20H:
	movq 7(%rbx),%rbx
	leaq _s1Vj_info(%rip),%rdx
	movq %rdx,-24(%r12)
	movq %rax,-16(%r12)
	movq %rcx,-8(%r12)
	movq %rbx,(%r12)
	leaq -23(%r12),%rax
	movq %rax,%rbx
	addq $24,%rbp
	jmp *(%rbp)
Lc20C:
	jmp *-16(%r13)
Lc20I:
	movq $32,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _s1Vk_info - _s1Vk_info_dsp
.text
.align 3
_s1Vs_info_dsp:
.align 3
	.quad	4294967301
	.quad	2
	.long	11
	.long	_u21c_srt-(_s1Vs_info)+0
_s1Vs_info:
Lc20J:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc20K
Lc20L:
	addq $56,%r12
	cmpq 856(%r13),%r12
	ja Lc20N
Lc20M:
	movq 7(%rbx),%rax
	movq 15(%rbx),%rbx
	leaq _s1Vr_info(%rip),%rcx
	movq %rcx,-48(%r12)
	movq %r14,-40(%r12)
	leaq -47(%r12),%rcx
	leaq _s1Vk_info(%rip),%rdx
	movq %rdx,-32(%r12)
	movq %rax,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,(%r12)
	leaq -32(%r12),%rax
	leaq _base_GHCziBase_zdfMonadIO_closure(%rip),%r14
	leaq _stg_ap_pp_info(%rip),%rbx
	movq %rbx,-24(%rbp)
	movq %rax,-16(%rbp)
	movq %rcx,-8(%rbp)
	addq $-24,%rbp
	jmp _base_GHCziBase_zgzgze_info
Lc20N:
	movq $56,904(%r13)
Lc20K:
	jmp *-8(%r13)
	.long  _s1Vs_info - _s1Vs_info_dsp
.text
.align 3
_s1V5_info_dsp:
.align 3
	.quad	0
	.long	15
	.long	_u217_srt-(_s1V5_info)+0
_s1V5_info:
Lc20S:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc20T
Lc20U:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq _base_ForeignziStorable_zdfStorableWord64_closure(%rip),%r14
	leaq _base_ForeignziMarshalziAlloc_alloca_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_p_fast
Lc20T:
	jmp *-16(%r13)
	.long  _s1V5_info - _s1V5_info_dsp
.text
.align 3
_s1Vt_info_dsp:
.align 3
	.quad	2
	.long	18
	.long	_u21d_srt-(_s1Vt_info)+0
_s1Vt_info:
Lc20V:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc20W
Lc20X:
	addq $40,%r12
	cmpq 856(%r13),%r12
	ja Lc20Z
Lc20Y:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rbx
	leaq _s1Vs_info(%rip),%rcx
	movq %rcx,-32(%r12)
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	leaq -31(%r12),%rax
	leaq _s1V5_info(%rip),%rbx
	movq %rbx,-8(%r12)
	leaq -8(%r12),%rbx
	movq %rax,%rsi
	movq %rbx,%r14
	leaq _base_GHCziBase_zd_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_pp_fast
Lc20Z:
	movq $40,904(%r13)
Lc20W:
	jmp *-16(%r13)
	.long  _s1Vt_info - _s1Vt_info_dsp
.text
.align 3
_WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_info_dsp:
.align 3
	.quad	8589934607
	.quad	1
	.long	14
	.long	0
.globl _WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_info
_WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_info:
Lc210:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc211
Lc212:
	leaq _c1Z5_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1Z5
Lc1Z6:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u21f_srt-(_c1Z5_info)+0
_c1Z5_info:
Lc1Z5:
	movq 8(%rbp),%rax
	leaq _c1Za_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1Za
Lc1Zb:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u21e_srt-(_c1Za_info)+0
_c1Za_info:
Lc1Za:
	movq 8(%rbp),%rax
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja Lc216
Lc215:
	leaq _s1Vt_info(%rip),%rcx
	movq %rcx,-24(%r12)
	movq %rax,-8(%r12)
	movq %rbx,(%r12)
	leaq -24(%r12),%rax
	movq %rax,%rsi
	leaq _base_GHCziIOziUnsafe_unsafeDupablePerformIO_closure(%rip),%r14
	leaq _base_GHCziBase_zd_closure(%rip),%rbx
	addq $16,%rbp
	jmp _stg_ap_pp_fast
Lc211:
	leaq _WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_closure(%rip),%rbx
	jmp *-8(%r13)
Lc216:
	movq $32,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_info - _WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_closure
_WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_closure:
	.quad	_WideningMulziCFFIziUnsafe_wideningMulWithPtrDupable_info
	.quad	_u21f_srt
	.quad	0
.data
.align 3
.align 0
_u24s_srt:
	.quad	_stg_SRT_2_info
	.quad	_base_ForeignziStorable_zdfStorableWord64_closure
	.quad	_base_ForeignziMarshalziAlloc_alloca_closure
	.quad	0
.data
.align 3
.align 0
_u24t_srt:
	.quad	_stg_SRT_1_info
	.quad	_base_ForeignziStorable_zdfStorableWord64_closure
	.quad	0
.data
.align 3
.align 0
_u24u_srt:
	.quad	_stg_SRT_1_info
	.quad	_base_GHCziBase_zdfMonadIO_closure
	.quad	0
.data
.align 3
.align 0
_u24v_srt:
	.quad	_stg_SRT_2_info
	.quad	_base_GHCziBase_zd_closure
	.quad	_u24u_srt
	.quad	0
.data
.align 3
.align 0
_u24w_srt:
	.quad	_stg_SRT_2_info
	.quad	_u24t_srt
	.quad	_u24v_srt
	.quad	0
.data
.align 3
.align 0
_u24x_srt:
	.quad	_stg_SRT_1_info
	.quad	_u24w_srt
	.quad	0
.data
.align 3
.align 0
_u24y_srt:
	.quad	_stg_SRT_2_info
	.quad	_u24s_srt
	.quad	_u24x_srt
	.quad	0
.data
.align 3
.align 0
_u24z_srt:
	.quad	_stg_SRT_2_info
	.quad	_base_GHCziIOziUnsafe_unsafePerformIO_closure
	.quad	_u24y_srt
	.quad	0
.data
.align 3
.align 0
_u24A_srt:
	.quad	_stg_SRT_1_info
	.quad	_u24z_srt
	.quad	0
.text
.align 3
_s1VU_info_dsp:
.align 3
	.quad	2
	.long	18
	.long	0
_s1VU_info:
Lc22X:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc22Y
Lc22Z:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rbx
	movq %rax,%rsi
	movq %rbx,%r14
	addq $-16,%rbp
	jmp _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdWWord128_info
Lc22Y:
	jmp *-16(%r13)
	.long  _s1VU_info - _s1VU_info_dsp
.text
.align 3
_s1VT_info_dsp:
.align 3
	.quad	0
	.long	15
	.long	_u24u_srt-(_s1VT_info)+0
_s1VT_info:
Lc234:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc235
Lc236:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq _base_GHCziBase_zdfMonadIO_closure(%rip),%r14
	addq $-16,%rbp
	jmp _base_GHCziBase_return_info
Lc235:
	jmp *-16(%r13)
	.long  _s1VT_info - _s1VT_info_dsp
.text
.align 3
_s1VV_info_dsp:
.align 3
	.quad	4294967301
	.quad	1
	.long	9
	.long	_u24v_srt-(_s1VV_info)+0
_s1VV_info:
Lc237:
Lc239:
	addq $48,%r12
	cmpq 856(%r13),%r12
	ja Lc23b
Lc23a:
	movq 7(%rbx),%rax
	leaq _s1VU_info(%rip),%rbx
	movq %rbx,-40(%r12)
	movq %rax,-24(%r12)
	movq %r14,-16(%r12)
	leaq -40(%r12),%rax
	leaq _s1VT_info(%rip),%rbx
	movq %rbx,-8(%r12)
	leaq -8(%r12),%rbx
	movq %rax,%rsi
	movq %rbx,%r14
	leaq _base_GHCziBase_zd_closure(%rip),%rbx
	jmp _stg_ap_pp_fast
Lc23b:
	movq $48,904(%r13)
Lc238:
	jmp *-8(%r13)
	.long  _s1VV_info - _s1VV_info_dsp
.text
.align 3
_s1VR_info_dsp:
.align 3
	.quad	1
	.long	16
	.long	_u24t_srt-(_s1VR_info)+0
_s1VR_info:
Lc23g:
	leaq -32(%rbp),%rax
	cmpq %r15,%rax
	jb Lc23h
Lc23i:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	leaq _base_ForeignziStorable_zdfStorableWord64_closure(%rip),%r14
	leaq _stg_ap_p_info(%rip),%rbx
	movq %rbx,-32(%rbp)
	movq %rax,-24(%rbp)
	addq $-32,%rbp
	jmp _base_ForeignziStorable_peek_info
Lc23h:
	jmp *-16(%r13)
	.long  _s1VR_info - _s1VR_info_dsp
.text
.align 3
_s1VW_info_dsp:
.align 3
	.quad	4294967301
	.quad	1
	.long	9
	.long	_u24w_srt-(_s1VW_info)+0
_s1VW_info:
Lc23j:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc23k
Lc23l:
	addq $40,%r12
	cmpq 856(%r13),%r12
	ja Lc23n
Lc23m:
	movq 7(%rbx),%rax
	leaq _s1VV_info(%rip),%rbx
	movq %rbx,-32(%r12)
	movq %r14,-24(%r12)
	leaq -31(%r12),%rbx
	leaq _s1VR_info(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	leaq _base_GHCziBase_zdfMonadIO_closure(%rip),%r14
	leaq _stg_ap_pp_info(%rip),%rcx
	movq %rcx,-24(%rbp)
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	addq $-24,%rbp
	jmp _base_GHCziBase_zgzgze_info
Lc23n:
	movq $40,904(%r13)
Lc23k:
	jmp *-8(%r13)
	.long  _s1VW_info - _s1VW_info_dsp
.text
.align 3
_s1VO_info_dsp:
.align 3
	.quad	4294967299
	.quad	12884901888
	.long	8
	.long	0
_s1VO_info:
Lc23R:
Lc23T:
	addq $16,%r12
	cmpq 856(%r13),%r12
	ja Lc23V
Lc23U:
	movq 7(%rbx),%rax
	movq 15(%rbx),%rcx
	movq 23(%rbx),%rbx
	movq _wideningMul_with_ptr@GOTPCREL(%rip),%rdx
	subq $8,%rsp
	movq %rdx,%rsi
	movq %rbx,%rdx
	movq %rax,%rdi
	movq %rsi,%rax
	movq %rcx,%rsi
	movq %rax,%rbx
	xorl %eax,%eax
	call *%rbx
	addq $8,%rsp
	leaq _base_GHCziWord_W64zh_con_info(%rip),%rbx
	movq %rbx,-8(%r12)
	movq %rax,(%r12)
	leaq -7(%r12),%rax
	movq %rax,%rbx
	jmp *(%rbp)
Lc23V:
	movq $16,904(%r13)
Lc23S:
	jmp *-8(%r13)
	.long  _s1VO_info - _s1VO_info_dsp
.text
.align 3
_s1VP_info_dsp:
.align 3
	.quad	3
	.long	15
	.long	0
_s1VP_info:
Lc23W:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb Lc23X
Lc23Y:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rcx
	movq 32(%rbx),%rbx
	leaq _c23s_info(%rip),%rdx
	movq %rdx,-40(%rbp)
	movq %rbx,%rdx
	movq %rax,%rbx
	movq %rcx,-32(%rbp)
	movq %rdx,-24(%rbp)
	addq $-40,%rbp
	testb $7,%bl
	jne Lc23s
Lc23t:
	jmp *(%rbx)
.align 3
	.quad	2
	.long	30
	.long	0
_c23s_info:
Lc23s:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c23x_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc23x
Lc23y:
	jmp *(%rbx)
.align 3
	.quad	66
	.long	30
	.long	0
_c23x_info:
Lc23x:
	movq 16(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c23C_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,16(%rbp)
	testb $7,%bl
	jne Lc23C
Lc23D:
	jmp *(%rbx)
.align 3
	.quad	194
	.long	30
	.long	0
_c23C_info:
Lc23C:
	movq 8(%rbp),%rax
	movq 16(%rbp),%rcx
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja Lc243
Lc242:
	movq 7(%rbx),%rbx
	leaq _s1VO_info(%rip),%rdx
	movq %rdx,-24(%r12)
	movq %rax,-16(%r12)
	movq %rcx,-8(%r12)
	movq %rbx,(%r12)
	leaq -23(%r12),%rax
	movq %rax,%rbx
	addq $24,%rbp
	jmp *(%rbp)
Lc23X:
	jmp *-16(%r13)
Lc243:
	movq $32,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _s1VP_info - _s1VP_info_dsp
.text
.align 3
_s1VX_info_dsp:
.align 3
	.quad	4294967301
	.quad	2
	.long	11
	.long	_u24x_srt-(_s1VX_info)+0
_s1VX_info:
Lc244:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc245
Lc246:
	addq $56,%r12
	cmpq 856(%r13),%r12
	ja Lc248
Lc247:
	movq 7(%rbx),%rax
	movq 15(%rbx),%rbx
	leaq _s1VW_info(%rip),%rcx
	movq %rcx,-48(%r12)
	movq %r14,-40(%r12)
	leaq -47(%r12),%rcx
	leaq _s1VP_info(%rip),%rdx
	movq %rdx,-32(%r12)
	movq %rax,-16(%r12)
	movq %rbx,-8(%r12)
	movq %r14,(%r12)
	leaq -32(%r12),%rax
	leaq _base_GHCziBase_zdfMonadIO_closure(%rip),%r14
	leaq _stg_ap_pp_info(%rip),%rbx
	movq %rbx,-24(%rbp)
	movq %rax,-16(%rbp)
	movq %rcx,-8(%rbp)
	addq $-24,%rbp
	jmp _base_GHCziBase_zgzgze_info
Lc248:
	movq $56,904(%r13)
Lc245:
	jmp *-8(%r13)
	.long  _s1VX_info - _s1VX_info_dsp
.text
.align 3
_s1VA_info_dsp:
.align 3
	.quad	0
	.long	15
	.long	_u24s_srt-(_s1VA_info)+0
_s1VA_info:
Lc24d:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc24e
Lc24f:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	leaq _base_ForeignziStorable_zdfStorableWord64_closure(%rip),%r14
	leaq _base_ForeignziMarshalziAlloc_alloca_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_p_fast
Lc24e:
	jmp *-16(%r13)
	.long  _s1VA_info - _s1VA_info_dsp
.text
.align 3
_s1VY_info_dsp:
.align 3
	.quad	2
	.long	18
	.long	_u24y_srt-(_s1VY_info)+0
_s1VY_info:
Lc24g:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc24h
Lc24i:
	addq $40,%r12
	cmpq 856(%r13),%r12
	ja Lc24k
Lc24j:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rbx
	leaq _s1VX_info(%rip),%rcx
	movq %rcx,-32(%r12)
	movq %rax,-24(%r12)
	movq %rbx,-16(%r12)
	leaq -31(%r12),%rax
	leaq _s1VA_info(%rip),%rbx
	movq %rbx,-8(%r12)
	leaq -8(%r12),%rbx
	movq %rax,%rsi
	movq %rbx,%r14
	leaq _base_GHCziBase_zd_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_pp_fast
Lc24k:
	movq $40,904(%r13)
Lc24h:
	jmp *-16(%r13)
	.long  _s1VY_info - _s1VY_info_dsp
.text
.align 3
_WideningMulziCFFIziUnsafe_wideningMulWithPtr_info_dsp:
.align 3
	.quad	8589934607
	.quad	1
	.long	14
	.long	0
.globl _WideningMulziCFFIziUnsafe_wideningMulWithPtr_info
_WideningMulziCFFIziUnsafe_wideningMulWithPtr_info:
Lc24l:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc24m
Lc24n:
	leaq _c22q_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc22q
Lc22r:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u24A_srt-(_c22q_info)+0
_c22q_info:
Lc22q:
	movq 8(%rbp),%rax
	leaq _c22v_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc22v
Lc22w:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u24z_srt-(_c22v_info)+0
_c22v_info:
Lc22v:
	movq 8(%rbp),%rax
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja Lc24r
Lc24q:
	leaq _s1VY_info(%rip),%rcx
	movq %rcx,-24(%r12)
	movq %rax,-8(%r12)
	movq %rbx,(%r12)
	leaq -24(%r12),%rax
	movq %rax,%rsi
	leaq _base_GHCziIOziUnsafe_unsafePerformIO_closure(%rip),%r14
	leaq _base_GHCziBase_zd_closure(%rip),%rbx
	addq $16,%rbp
	jmp _stg_ap_pp_fast
Lc24m:
	leaq _WideningMulziCFFIziUnsafe_wideningMulWithPtr_closure(%rip),%rbx
	jmp *-8(%r13)
Lc24r:
	movq $32,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMulziCFFIziUnsafe_wideningMulWithPtr_info - _WideningMulziCFFIziUnsafe_wideningMulWithPtr_info_dsp
.data
.align 3
.align 0
.globl _WideningMulziCFFIziUnsafe_wideningMulWithPtr_closure
_WideningMulziCFFIziUnsafe_wideningMulWithPtr_closure:
	.quad	_WideningMulziCFFIziUnsafe_wideningMulWithPtr_info
	.quad	_u24A_srt
	.quad	0
.subsections_via_symbols
.ident "GHC 8.6.5"


