	.globl _wideningMul_prim
_wideningMul_prim:
	## 第一引数：%rbx
	## 第二引数：%r14
	movq %rbx, %rax
	mulq %r14 ## %raxと%r14の積を計算して、上位を%rdx, 下位を%raxに入れる
	movq %rax, %rbx ## 第一返却値 (lo)
	movq %rdx, %r14 ## 第二返却値 (hi)
	jmp *(%rbp)
