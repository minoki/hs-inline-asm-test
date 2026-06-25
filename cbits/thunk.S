#include "ghcconfig.h"
#if defined(LEADING_UNDERSCORE)
#define SYMBOL(name) _ ## name
#else
#define SYMBOL(name) name
#endif
	.globl SYMBOL(wideningMul_thunk)
SYMBOL(wideningMul_thunk):
	## GHC:
	##   第一引数：%rbx
	##   第二引数：%r14
	## C:
	##   第一引数：%rdi
	##   第二引数：%rsi
	movq %rbx, %rdi
	movq %r14, %rsi
	subq $8, %rsp
	callq SYMBOL(wideningMul_uint128)
	addq $8, %rsp
	## C:
	##   第一返却値：%rax
	##   第二返却値：%rdx
	## GHC:
	##   第一返却値：%rbx
	##   第二返却値：%r14
	movq %rax, %rbx
	movq %rdx, %r14
#if defined(TABLES_NEXT_TO_CODE)
	jmp *(%rbp)
#else
	movq (%rbp),%rax
	jmp *(%rax)
#endif
	# C:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# GHC:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# Stack frame:
	#   (%rsp+8) is always a multiple of 16

	.globl SYMBOL(binaryPolyMul_portable_thunk)
SYMBOL(binaryPolyMul_portable_thunk):
	## GHC:
	##   第一引数：%rbx
	##   第二引数：%r14
	## C:
	##   第一引数：%rdi
	##   第二引数：%rsi
	movq %rbx, %rdi
	movq %r14, %rsi
	subq $8, %rsp
	callq SYMBOL(binaryPolyMul_portable_uint128)
	addq $8, %rsp
	## C:
	##   第一返却値：%rax
	##   第二返却値：%rdx
	## GHC:
	##   第一返却値：%rbx
	##   第二返却値：%r14
	movq %rax, %rbx
	movq %rdx, %r14
#if defined(TABLES_NEXT_TO_CODE)
	jmp *(%rbp)
#else
	movq (%rbp),%rax
	jmp *(%rax)
#endif
	# C:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# GHC:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# Stack frame:
	#   (%rsp+8) is always a multiple of 16

	.globl SYMBOL(binaryPolyMul_clmul_thunk)
SYMBOL(binaryPolyMul_clmul_thunk):
	## GHC:
	##   第一引数：%rbx
	##   第二引数：%r14
	## C:
	##   第一引数：%rdi
	##   第二引数：%rsi
	movq %rbx, %rdi
	movq %r14, %rsi
	subq $8, %rsp
	callq SYMBOL(binaryPolyMul_clmul_uint128)
	addq $8, %rsp
	## C:
	##   第一返却値：%rax
	##   第二返却値：%rdx
	## GHC:
	##   第一返却値：%rbx
	##   第二返却値：%r14
	movq %rax, %rbx
	movq %rdx, %r14
#if defined(TABLES_NEXT_TO_CODE)
	jmp *(%rbp)
#else
	movq (%rbp),%rax
	jmp *(%rax)
#endif
	# C:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# GHC:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# Stack frame:
	#   (%rsp+8) is always a multiple of 16
