
	.globl _wideningMul_thunk
_wideningMul_thunk:
	## GHC:
	##   第一引数：%rbx
	##   第二引数：%r14
	## C:
	##   第一引数：%rdi
	##   第二引数：%rsi
	movq %rbx, %rdi
	movq %r14, %rsi
	subq $8, %rsp ## ???
	callq _wideningMul_uint128
	addq $8, %rsp ## ???
	## C:
	##   第一返却値：%rax
	##   第二返却値：%rdx
	## GHC:
	##   第一返却値：%rbx
        ##   第二返却値：%r14
	movq %rax, %rbx
	movq %rdx, %r14
	jmp *(%rbp)
	# C:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# GHC:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# Stack frame:
	#   (%rsp+8) is always a multiple of 16

	.globl _binaryPolyMul_portable_thunk
_binaryPolyMul_portable_thunk:
	## GHC:
	##   第一引数：%rbx
	##   第二引数：%r14
	## C:
	##   第一引数：%rdi
	##   第二引数：%rsi
	movq %rbx, %rdi
	movq %r14, %rsi
	subq $8, %rsp ## ???
	callq _binaryPolyMul_portable_uint128
	addq $8, %rsp ## ???
	## C:
	##   第一返却値：%rax
	##   第二返却値：%rdx
	## GHC:
	##   第一返却値：%rbx
        ##   第二返却値：%r14
	movq %rax, %rbx
	movq %rdx, %r14
	jmp *(%rbp)
	# C:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# GHC:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# Stack frame:
	#   (%rsp+8) is always a multiple of 16

	.globl _binaryPolyMul_clmul_thunk
_binaryPolyMul_clmul_thunk:
	## GHC:
	##   第一引数：%rbx
	##   第二引数：%r14
	## C:
	##   第一引数：%rdi
	##   第二引数：%rsi
	movq %rbx, %rdi
	movq %r14, %rsi
	subq $8, %rsp ## ???
	callq _binaryPolyMul_clmul_uint128
	addq $8, %rsp ## ???
	## C:
	##   第一返却値：%rax
	##   第二返却値：%rdx
	## GHC:
	##   第一返却値：%rbx
        ##   第二返却値：%r14
	movq %rax, %rbx
	movq %rdx, %r14
	jmp *(%rbp)
	# C:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# GHC:
	#   callee-save: %rbp, %rbx, %r12..%r15
	# Stack frame:
	#   (%rsp+8) is always a multiple of 16
