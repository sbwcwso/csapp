	.file	"goodcnt.c"
	.text
	.globl	thread
	.type	thread, @function
thread:
.LFB27:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movl	(%rdi), %r12d
	testl	%r12d, %r12d
	jle	.L2
	movl	$0, %ebx
	leaq	mutex(%rip), %rbp
.L3:
	movq	%rbp, %rdi
	call	P@PLT
	movq	cnt(%rip), %rax
	addq	$1, %rax
	movq	%rax, cnt(%rip)
	movq	%rbp, %rdi
	call	V@PLT
	addl	$1, %ebx
	cmpl	%ebx, %r12d
	jne	.L3
.L2:
	movl	$0, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE27:
	.size	thread, .-thread
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"usage: %s <niters>\n"
.LC1:
	.string	"BOOM! cnt=%ld\n"
.LC2:
	.string	"OK cnt=%ld\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	je	.L7
	movq	(%rsi), %rsi
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$0, %edi
	call	exit@PLT
.L7:
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	movl	%eax, 4(%rsp)
	movl	$1, %edx
	movl	$0, %esi
	leaq	mutex(%rip), %rdi
	call	Sem_init@PLT
	leaq	4(%rsp), %rbp
	leaq	8(%rsp), %rdi
	movq	%rbp, %rcx
	leaq	thread(%rip), %rbx
	movq	%rbx, %rdx
	movl	$0, %esi
	call	Pthread_create@PLT
	leaq	16(%rsp), %rdi
	movq	%rbp, %rcx
	movq	%rbx, %rdx
	movl	$0, %esi
	call	Pthread_create@PLT
	movl	$0, %esi
	movq	8(%rsp), %rdi
	call	Pthread_join@PLT
	movl	$0, %esi
	movq	16(%rsp), %rdi
	call	Pthread_join@PLT
	movq	cnt(%rip), %rdx
	movl	4(%rsp), %eax
	addl	%eax, %eax
	cltq
	cmpq	%rdx, %rax
	je	.L8
	movq	cnt(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L9:
	movl	$0, %edi
	call	exit@PLT
.L8:
	movq	cnt(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L9
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.globl	mutex
	.bss
	.align 32
	.type	mutex, @object
	.size	mutex, 32
mutex:
	.zero	32
	.globl	cnt
	.align 8
	.type	cnt, @object
	.size	cnt, 8
cnt:
	.zero	8
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
