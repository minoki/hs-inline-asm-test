.text
.align 3
_WideningMul_wideningMul2_info_dsp:
.align 3
	.quad	8589934607
	.quad	0
	.long	14
	.long	0
.globl _WideningMul_wideningMul2_info
_WideningMul_wideningMul2_info:
Lc1PY:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1Q7
Lc1Q8:
	leaq _c1PV_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1PV
Lc1PW:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	0
_c1PV_info:
Lc1PV:
	movq 8(%rbp),%rax
	movq 7(%rbx),%rbx
	leaq _c1Q1_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1Q1
Lc1Q2:
	jmp *(%rbx)
.align 3
	.quad	65
	.long	30
	.long	0
_c1Q1_info:
Lc1Q1:
	movq 8(%rbp),%rax
	addq $24,%r12
	cmpq 856(%r13),%r12
	ja Lc1Qc
Lc1Qb:
	movq 7(%rbx),%rbx
	mulq %rbx
	leaq _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_Word128_con_info(%rip),%rbx
	movq %rbx,-16(%r12)
	movq %rdx,-8(%r12)
	movq %rax,(%r12)
	leaq -15(%r12),%rax
	movq %rax,%rbx
	addq $16,%rbp
	jmp *(%rbp)
Lc1Q7:
	leaq _WideningMul_wideningMul2_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1Qc:
	movq $24,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMul_wideningMul2_info - _WideningMul_wideningMul2_info_dsp
.data
.align 3
.align 0
.globl _WideningMul_wideningMul2_closure
_WideningMul_wideningMul2_closure:
	.quad	_WideningMul_wideningMul2_info
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
_r1MS_bytes:
	.asciz "main"
.data
.align 3
.align 0
_r1ND_closure:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1MS_bytes
.section	__TEXT,__cstring,cstring_literals
.align 1
.align 0
_r1NE_bytes:
	.asciz "WideningMul"
.data
.align 3
.align 0
_r1NF_closure:
	.quad	_ghczmprim_GHCziTypes_TrNameS_con_info
	.quad	_r1NE_bytes
.data
.align 3
.align 0
.globl _WideningMul_zdtrModule_closure
_WideningMul_zdtrModule_closure:
	.quad	_ghczmprim_GHCziTypes_Module_con_info
	.quad	_r1ND_closure+1
	.quad	_r1NF_closure+1
	.quad	3
.data
.align 3
.align 0
_u1QY_srt:
	.quad	_stg_SRT_3_info
	.quad	_base_GHCziReal_fromIntegral_closure
	.quad	_widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdfNumWord128_closure
	.quad	_base_GHCziWord_zdfIntegralWord64_closure
	.quad	0
.data
.align 3
.align 0
_u1QZ_srt:
	.quad	_stg_SRT_1_info
	.quad	_u1QY_srt
	.quad	0
.data
.align 3
.align 0
_u1R0_srt:
	.quad	_stg_SRT_1_info
	.quad	_u1QZ_srt
	.quad	0
.text
.align 3
_s1PH_info_dsp:
.align 3
	.quad	1
	.long	16
	.long	_u1QY_srt-(_s1PH_info)+0
_s1PH_info:
Lc1QH:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1QI
Lc1QJ:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,%rdi
	leaq _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdfNumWord128_closure(%rip),%rsi
	leaq _base_GHCziWord_zdfIntegralWord64_closure(%rip),%r14
	leaq _base_GHCziReal_fromIntegral_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_ppp_fast
Lc1QI:
	jmp *-16(%r13)
	.long  _s1PH_info - _s1PH_info_dsp
.text
.align 3
_s1PG_info_dsp:
.align 3
	.quad	1
	.long	16
	.long	_u1QY_srt-(_s1PG_info)+0
_s1PG_info:
Lc1QO:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1QP
Lc1QQ:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,%rdi
	leaq _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdfNumWord128_closure(%rip),%rsi
	leaq _base_GHCziWord_zdfIntegralWord64_closure(%rip),%r14
	leaq _base_GHCziReal_fromIntegral_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_ppp_fast
Lc1QP:
	jmp *-16(%r13)
	.long  _s1PG_info - _s1PG_info_dsp
.text
.align 3
_WideningMul_wideningMul_info_dsp:
.align 3
	.quad	8589934607
	.quad	1
	.long	14
	.long	0
.globl _WideningMul_wideningMul_info
_WideningMul_wideningMul_info:
Lc1QR:
	leaq -24(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1QS
Lc1QT:
	leaq _c1Qt_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1Qt
Lc1Qu:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u1R0_srt-(_c1Qt_info)+0
_c1Qt_info:
Lc1Qt:
	movq 8(%rbp),%rax
	leaq _c1Qy_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1Qy
Lc1Qz:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u1QZ_srt-(_c1Qy_info)+0
_c1Qy_info:
Lc1Qy:
	movq 8(%rbp),%rax
	addq $48,%r12
	cmpq 856(%r13),%r12
	ja Lc1QX
Lc1QW:
	leaq _s1PH_info(%rip),%rcx
	movq %rcx,-40(%r12)
	movq %rbx,-24(%r12)
	leaq -40(%r12),%rbx
	leaq _s1PG_info(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	leaq _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdfNumWord128_closure(%rip),%r14
	leaq _stg_ap_pp_info(%rip),%rcx
	movq %rcx,-8(%rbp)
	movq %rax,(%rbp)
	movq %rbx,8(%rbp)
	addq $-8,%rbp
	jmp _base_GHCziNum_zt_info
Lc1QS:
	leaq _WideningMul_wideningMul_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1QX:
	movq $48,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMul_wideningMul_info - _WideningMul_wideningMul_info_dsp
.data
.align 3
.align 0
.globl _WideningMul_wideningMul_closure
_WideningMul_wideningMul_closure:
	.quad	_WideningMul_wideningMul_info
	.quad	_u1R0_srt
	.quad	0
.data
.align 3
.align 0
_u1S3_srt:
	.quad	_stg_SRT_3_info
	.quad	_base_GHCziReal_fromIntegral_closure
	.quad	_base_GHCziWord_zdfIntegralWord64_closure
	.quad	_base_GHCziNum_zdfNumInteger_closure
	.quad	0
.data
.align 3
.align 0
_u1S4_srt:
	.quad	_stg_SRT_1_info
	.quad	_u1S3_srt
	.quad	0
.data
.align 3
.align 0
_u1S5_srt:
	.quad	_stg_SRT_3_info
	.quad	_widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdfNumWord128_closure
	.quad	_base_GHCziReal_zdfIntegralInteger_closure
	.quad	_u1S4_srt
	.quad	0
.data
.align 3
.align 0
_u1S6_srt:
	.quad	_stg_SRT_1_info
	.quad	_u1S5_srt
	.quad	0
.text
.align 3
_s1PP_info_dsp:
.align 3
	.quad	1
	.long	16
	.long	_u1S3_srt-(_s1PP_info)+0
_s1PP_info:
Lc1RH:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1RI
Lc1RJ:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,%rdi
	leaq _base_GHCziNum_zdfNumInteger_closure(%rip),%rsi
	leaq _base_GHCziWord_zdfIntegralWord64_closure(%rip),%r14
	leaq _base_GHCziReal_fromIntegral_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_ppp_fast
Lc1RI:
	jmp *-16(%r13)
	.long  _s1PP_info - _s1PP_info_dsp
.text
.align 3
_s1PO_info_dsp:
.align 3
	.quad	1
	.long	16
	.long	_u1S3_srt-(_s1PO_info)+0
_s1PO_info:
Lc1RO:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1RP
Lc1RQ:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq %rax,%rdi
	leaq _base_GHCziNum_zdfNumInteger_closure(%rip),%rsi
	leaq _base_GHCziWord_zdfIntegralWord64_closure(%rip),%r14
	leaq _base_GHCziReal_fromIntegral_closure(%rip),%rbx
	addq $-16,%rbp
	jmp _stg_ap_ppp_fast
Lc1RP:
	jmp *-16(%r13)
	.long  _s1PO_info - _s1PO_info_dsp
.text
.align 3
_s1PQ_info_dsp:
.align 3
	.quad	2
	.long	18
	.long	_u1S4_srt-(_s1PQ_info)+0
_s1PQ_info:
Lc1RR:
	leaq -40(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1RS
Lc1RT:
	addq $48,%r12
	cmpq 856(%r13),%r12
	ja Lc1RV
Lc1RU:
	leaq _stg_upd_frame_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %rbx,-8(%rbp)
	movq 16(%rbx),%rax
	movq 24(%rbx),%rbx
	leaq _s1PP_info(%rip),%rcx
	movq %rcx,-40(%r12)
	movq %rbx,-24(%r12)
	leaq -40(%r12),%rbx
	leaq _s1PO_info(%rip),%rcx
	movq %rcx,-16(%r12)
	movq %rax,(%r12)
	leaq -16(%r12),%rax
	leaq _base_GHCziNum_zdfNumInteger_closure(%rip),%r14
	leaq _stg_ap_pp_info(%rip),%rcx
	movq %rcx,-40(%rbp)
	movq %rax,-32(%rbp)
	movq %rbx,-24(%rbp)
	addq $-40,%rbp
	jmp _base_GHCziNum_zt_info
Lc1RV:
	movq $48,904(%r13)
Lc1RS:
	jmp *-16(%r13)
	.long  _s1PQ_info - _s1PQ_info_dsp
.text
.align 3
_WideningMul_wideningMulI_info_dsp:
.align 3
	.quad	8589934607
	.quad	1
	.long	14
	.long	0
.globl _WideningMul_wideningMulI_info
_WideningMul_wideningMulI_info:
Lc1RW:
	leaq -16(%rbp),%rax
	cmpq %r15,%rax
	jb Lc1RX
Lc1RY:
	leaq _c1Rp_info(%rip),%rax
	movq %rax,-16(%rbp)
	movq %r14,%rbx
	movq %rsi,-8(%rbp)
	addq $-16,%rbp
	testb $7,%bl
	jne Lc1Rp
Lc1Rq:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u1S6_srt-(_c1Rp_info)+0
_c1Rp_info:
Lc1Rp:
	movq 8(%rbp),%rax
	leaq _c1Ru_info(%rip),%rcx
	movq %rcx,(%rbp)
	movq %rbx,%rcx
	movq %rax,%rbx
	movq %rcx,8(%rbp)
	testb $7,%bl
	jne Lc1Ru
Lc1Rv:
	jmp *(%rbx)
.align 3
	.quad	1
	.long	30
	.long	_u1S5_srt-(_c1Ru_info)+0
_c1Ru_info:
Lc1Ru:
	movq 8(%rbp),%rax
	addq $32,%r12
	cmpq 856(%r13),%r12
	ja Lc1S2
Lc1S1:
	leaq _s1PQ_info(%rip),%rcx
	movq %rcx,-24(%r12)
	movq %rax,-8(%r12)
	movq %rbx,(%r12)
	leaq -24(%r12),%rax
	movq %rax,%rdi
	leaq _widezmwordzm0zi1zi0zi8zmA5TQgehsox47LCvJA1Exaj_DataziWideWordziWord128_zdfNumWord128_closure(%rip),%rsi
	leaq _base_GHCziReal_zdfIntegralInteger_closure(%rip),%r14
	leaq _base_GHCziReal_fromIntegral_closure(%rip),%rbx
	addq $16,%rbp
	jmp _stg_ap_ppp_fast
Lc1RX:
	leaq _WideningMul_wideningMulI_closure(%rip),%rbx
	jmp *-8(%r13)
Lc1S2:
	movq $32,904(%r13)
	jmp _stg_gc_unpt_r1
	.long  _WideningMul_wideningMulI_info - _WideningMul_wideningMulI_info_dsp
.data
.align 3
.align 0
.globl _WideningMul_wideningMulI_closure
_WideningMul_wideningMulI_closure:
	.quad	_WideningMul_wideningMulI_info
	.quad	_u1S6_srt
	.quad	0
.subsections_via_symbols
.ident "GHC 8.6.5"


