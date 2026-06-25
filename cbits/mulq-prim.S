#include "ghcconfig.h"
#if defined(LEADING_UNDERSCORE)
#define SYMBOL(name) _ ## name
#else
#define SYMBOL(name) name
#endif
	.globl SYMBOL(wideningMul_prim)
SYMBOL(wideningMul_prim):
	## 第一引数：%rbx
	## 第二引数：%r14
	movq %rbx, %rax
	mulq %r14 ## %raxと%r14の積を計算して、上位を%rdx, 下位を%raxに入れる
	movq %rax, %rbx ## 第一返却値 (lo)
	movq %rdx, %r14 ## 第二返却値 (hi)
#if defined(TABLES_NEXT_TO_CODE)
	jmp *(%rbp)
#else
	movq (%rbp),%rax
	jmp *(%rax)
#endif

	.globl SYMBOL(wideningMul_prim_xmm)
SYMBOL(wideningMul_prim_xmm):
	## 第一引数：%rbx
	## 第二引数：%r14
	movq %rbx, %rax
	mulq %r14 ## %raxと%r14の積を計算して、上位を%rdx, 下位を%raxに入れる
	movq %rax, %xmm1 ## 第一返却値 (lo)
	movq %rdx, %xmm2 ## 第二返却値 (hi)
	punpcklqdq %xmm2, %xmm1
#if defined(TABLES_NEXT_TO_CODE)
	jmp *(%rbp)
#else
	movq (%rbp),%rax
	jmp *(%rax)
#endif
