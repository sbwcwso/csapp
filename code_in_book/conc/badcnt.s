	.file	"badcnt.c"
	.text
	.globl	thread
	.type	thread, @function
thread:
.LFB27:
	.cfi_startproc
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	jle	.L2
	movl	$0, %edx
.L3:
	movq	cnt(%rip), %rax
	addq	$1, %rax
	movq	%rax, cnt(%rip)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.L3
.L2:
	movl	$0, %eax
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
	je	.L6
	movq	(%rsi), %rsi
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	movl	$0, %edi
	call	exit@PLT
.L6:
	movq	8(%rsi), %rdi
	movl	$10, %edx
	movl	$0, %esi
	call	strtol@PLT
	cltq
	movq	%rax, (%rsp)
	movq	%rsp, %rbp
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
	movq	(%rsp), %rax
	addq	%rax, %rax
	cmpq	%rdx, %rax
	je	.L7
	movq	cnt(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L8:
	movl	$0, %edi
	call	exit@PLT
.L7:
	movq	cnt(%rip), %rsi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L8
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.globl	cnt
	.bss
	.align 8
	.type	cnt, @object
	.size	cnt, 8
cnt:
	.zero	8
	.ident	"GCC: (GNU) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
