	.globl _binaryPolyMul_prim
_binaryPolyMul_prim:
	## 第一引数：%rbx
	## 第二引数：%r14
	movq %rbx, %xmm0
	movq %r14, %xmm1
	pclmulqdq $0, %xmm0, %xmm1 ## %xmm0の下位64ビットと%xmm1の下位64ビットを計算して、結果を%xmm1に入れる
	pextrq $1, %xmm1, %r14 ## 第二返却値 (hi)
	movq %xmm1, %rbx ## 第一返却値 (lo)
	jmp *(%rbp)
