	.file	"trans.c"
	.text
.Ltext0:
	.globl	transpose_switch
	.type	transpose_switch, @function
transpose_switch:
.LFB0:
	.file 1 "trans.c"
	.loc 1 23 62
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	.loc 1 23 41
	movl	-68(%rbp), %r14d
	movslq	%r14d, %rax
	subq	$1, %rax
	.loc 1 23 6
	movq	%rax, -64(%rbp)
	movslq	%r14d, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	.loc 1 23 54
	movl	-72(%rbp), %edi
	movslq	%edi, %rax
	subq	$1, %rax
	.loc 1 23 6
	movq	%rax, -56(%rbp)
	movslq	%edi, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	.loc 1 26 7
	cmpl	$32, -68(%rbp)
	jne	.L28
	.loc 1 26 16 discriminator 1
	cmpl	$32, -72(%rbp)
	jne	.L28
	.loc 1 27 16
	movl	$0, %r13d
	.loc 1 27 9
	jmp	.L3
.L25:
	.loc 1 28 20
	movl	$0, %r12d
	.loc 1 28 13
	jmp	.L4
.L24:
	.loc 1 29 24
	movl	$0, %ebx
	.loc 1 29 17
	jmp	.L5
.L23:
	.loc 1 31 32
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 31 29
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 31 26
	movslq	%r13d, %rax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %r11d
	.loc 1 31 57
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 31 54
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 31 65
	leal	1(%r13), %eax
	.loc 1 31 51
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %r10d
	.loc 1 31 82
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 31 79
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 31 90
	leal	2(%r13), %eax
	.loc 1 31 76
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -92(%rbp)
	.loc 1 31 107
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 31 104
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 31 115
	leal	3(%r13), %eax
	.loc 1 31 101
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -96(%rbp)
	.loc 1 32 32
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 32 29
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 32 40
	leal	4(%r13), %eax
	.loc 1 32 26
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -100(%rbp)
	.loc 1 32 57
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 32 54
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 32 65
	leal	5(%r13), %eax
	.loc 1 32 51
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -104(%rbp)
	.loc 1 32 82
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 32 79
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 32 90
	leal	6(%r13), %eax
	.loc 1 32 76
	cltq
	movl	(%rdx,%rax,4), %r15d
	.loc 1 32 107
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 32 104
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 32 115
	leal	7(%r13), %eax
	.loc 1 32 101
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %ecx
	.loc 1 35 21
	cmpl	$7, %ebx
	je	.L6
	cmpl	$7, %ebx
	jg	.L29
	cmpl	$6, %ebx
	je	.L8
	cmpl	$6, %ebx
	jg	.L29
	cmpl	$5, %ebx
	je	.L9
	cmpl	$5, %ebx
	jg	.L29
	cmpl	$4, %ebx
	je	.L10
	cmpl	$4, %ebx
	jg	.L29
	cmpl	$3, %ebx
	je	.L11
	cmpl	$3, %ebx
	jg	.L29
	cmpl	$2, %ebx
	je	.L12
	cmpl	$2, %ebx
	jg	.L29
	testl	%ebx, %ebx
	je	.L13
	cmpl	$1, %ebx
	je	.L14
	.loc 1 61 25
	jmp	.L29
.L13:
	.loc 1 37 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 37 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 37 38
	movslq	%r12d, %rax
	movl	%r11d, %esi
	movl	%esi, (%rdx,%rax,4)
.L14:
	.loc 1 40 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 40 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 40 37
	leal	1(%r12), %eax
	.loc 1 40 42
	cltq
	movl	%r10d, %esi
	movl	%esi, (%rdx,%rax,4)
.L12:
	.loc 1 43 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 43 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 43 37
	leal	2(%r12), %eax
	.loc 1 43 42
	cltq
	movl	-92(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L11:
	.loc 1 46 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 46 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 46 37
	leal	3(%r12), %eax
	.loc 1 46 42
	cltq
	movl	-96(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L10:
	.loc 1 49 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 49 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 49 37
	leal	4(%r12), %eax
	.loc 1 49 42
	cltq
	movl	-100(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L9:
	.loc 1 52 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 52 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 52 37
	leal	5(%r12), %eax
	.loc 1 52 42
	cltq
	movl	-104(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L8:
	.loc 1 55 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 55 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 55 37
	leal	6(%r12), %eax
	.loc 1 55 42
	cltq
	movl	%r15d, (%rdx,%rax,4)
.L6:
	.loc 1 58 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 58 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 58 37
	leal	7(%r12), %eax
	.loc 1 58 42
	cltq
	movl	%ecx, %esi
	movl	%esi, (%rdx,%rax,4)
.L29:
	.loc 1 61 25
	nop
	.loc 1 65 21
	cmpl	$7, %ebx
	je	.L15
	cmpl	$7, %ebx
	jg	.L30
	cmpl	$6, %ebx
	je	.L17
	cmpl	$6, %ebx
	jg	.L30
	cmpl	$5, %ebx
	je	.L18
	cmpl	$5, %ebx
	jg	.L30
	cmpl	$4, %ebx
	je	.L19
	cmpl	$4, %ebx
	jg	.L30
	cmpl	$3, %ebx
	je	.L20
	cmpl	$3, %ebx
	jg	.L30
	cmpl	$1, %ebx
	je	.L21
	cmpl	$2, %ebx
	je	.L22
	.loc 1 96 25
	jmp	.L30
.L15:
	.loc 1 67 48
	leal	6(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 67 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	.loc 1 67 55
	leal	(%r12,%rbx), %r8d
	.loc 1 67 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 67 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 1 67 37
	leal	6(%r12), %ecx
	.loc 1 67 52
	movslq	%r8d, %rax
	movl	(%r9,%rax,4), %edx
	.loc 1 67 42
	movslq	%ecx, %rax
	movl	%edx, (%rsi,%rax,4)
	.loc 1 68 29
	leal	6(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 68 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 68 36
	leal	(%r12,%rbx), %eax
	.loc 1 68 42
	cltq
	movl	%r15d, (%rdx,%rax,4)
.L17:
	.loc 1 71 48
	leal	5(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 71 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	.loc 1 71 55
	leal	(%r12,%rbx), %r8d
	.loc 1 71 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 71 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 71 37
	leal	5(%r12), %esi
	.loc 1 71 52
	movslq	%r8d, %rax
	movl	(%r9,%rax,4), %edx
	.loc 1 71 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 72 29
	leal	5(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 72 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 72 36
	leal	(%r12,%rbx), %eax
	.loc 1 72 42
	cltq
	movl	-104(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L18:
	.loc 1 75 48
	leal	4(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 75 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 75 55
	leal	(%r12,%rbx), %eax
	.loc 1 75 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 75 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 75 37
	leal	4(%r12), %esi
	.loc 1 75 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 75 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 76 29
	leal	4(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 76 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 76 36
	leal	(%r12,%rbx), %eax
	.loc 1 76 42
	cltq
	movl	-100(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L19:
	.loc 1 79 48
	leal	3(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 79 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 79 55
	leal	(%r12,%rbx), %eax
	.loc 1 79 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 79 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 79 37
	leal	3(%r12), %esi
	.loc 1 79 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 79 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 80 29
	leal	3(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 80 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 80 36
	leal	(%r12,%rbx), %eax
	.loc 1 80 42
	cltq
	movl	-96(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L20:
	.loc 1 83 48
	leal	2(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 83 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 83 55
	leal	(%r12,%rbx), %eax
	.loc 1 83 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 83 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 83 37
	leal	2(%r12), %esi
	.loc 1 83 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 83 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 84 29
	leal	2(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 84 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 84 36
	leal	(%r12,%rbx), %eax
	.loc 1 84 42
	cltq
	movl	-92(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L22:
	.loc 1 87 48
	leal	1(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 87 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 87 55
	leal	(%r12,%rbx), %eax
	.loc 1 87 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 87 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 87 37
	leal	1(%r12), %esi
	.loc 1 87 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 87 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 88 29
	leal	1(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 88 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 88 36
	leal	(%r12,%rbx), %eax
	.loc 1 88 42
	cltq
	movl	%r10d, %ecx
	movl	%ecx, (%rdx,%rax,4)
.L21:
	.loc 1 91 41
	movslq	%r13d, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 91 47
	leal	(%r12,%rbx), %eax
	.loc 1 91 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 91 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 91 44
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 91 38
	movslq	%r12d, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 92 26
	movslq	%r13d, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 92 32
	leal	(%r12,%rbx), %eax
	.loc 1 92 38
	cltq
	movl	%r11d, %esi
	movl	%esi, (%rdx,%rax,4)
.L30:
	.loc 1 96 25
	nop
	.loc 1 29 39
	addl	$1, %ebx
.L5:
	.loc 1 29 17 discriminator 1
	cmpl	$7, %ebx
	jle	.L23
	.loc 1 28 34 discriminator 2
	addl	$8, %r12d
.L4:
	.loc 1 28 13 discriminator 1
	cmpl	-72(%rbp), %r12d
	jl	.L24
	.loc 1 27 30 discriminator 2
	addl	$8, %r13d
.L3:
	.loc 1 27 9 discriminator 1
	cmpl	-68(%rbp), %r13d
	jl	.L25
.L28:
	.loc 1 157 5
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	transpose_switch, .-transpose_switch
	.globl	transpose_submit_desc
	.data
	.align 16
	.type	transpose_submit_desc, @object
	.size	transpose_submit_desc, 21
transpose_submit_desc:
	.string	"Transpose submission"
	.text
	.globl	transpose_submit
	.type	transpose_submit, @function
transpose_submit:
.LFB1:
	.loc 1 160 62
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movq	%rdx, -80(%rbp)
	movq	%rcx, -88(%rbp)
	.loc 1 160 41
	movl	-68(%rbp), %r14d
	movslq	%r14d, %rax
	subq	$1, %rax
	.loc 1 160 6
	movq	%rax, -64(%rbp)
	movslq	%r14d, %rax
	movq	%rax, %r10
	movl	$0, %r11d
	.loc 1 160 54
	movl	-72(%rbp), %edi
	movslq	%edi, %rax
	subq	$1, %rax
	.loc 1 160 6
	movq	%rax, -56(%rbp)
	movslq	%edi, %rax
	movq	%rax, %r8
	movl	$0, %r9d
	.loc 1 163 7
	cmpl	$32, -68(%rbp)
	jne	.L58
	.loc 1 163 16 discriminator 1
	cmpl	$32, -72(%rbp)
	jne	.L58
	.loc 1 164 16
	movl	$0, %r13d
	.loc 1 164 9
	jmp	.L33
.L55:
	.loc 1 165 20
	movl	$0, %r12d
	.loc 1 165 13
	jmp	.L34
.L54:
	.loc 1 166 24
	movl	$0, %ebx
	.loc 1 166 17
	jmp	.L35
.L53:
	.loc 1 168 32
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 168 29
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 168 26
	movslq	%r13d, %rax
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %r11d
	.loc 1 168 57
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 168 54
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 168 65
	leal	1(%r13), %eax
	.loc 1 168 51
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %r10d
	.loc 1 168 82
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 168 79
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 168 90
	leal	2(%r13), %eax
	.loc 1 168 76
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -92(%rbp)
	.loc 1 168 107
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 168 104
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 168 115
	leal	3(%r13), %eax
	.loc 1 168 101
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -96(%rbp)
	.loc 1 169 32
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 169 29
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 169 40
	leal	4(%r13), %eax
	.loc 1 169 26
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -100(%rbp)
	.loc 1 169 57
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 169 54
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 169 65
	leal	5(%r13), %eax
	.loc 1 169 51
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, -104(%rbp)
	.loc 1 169 82
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 169 79
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 169 90
	leal	6(%r13), %eax
	.loc 1 169 76
	cltq
	movl	(%rdx,%rax,4), %r15d
	.loc 1 169 107
	leal	(%r12,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 169 104
	movslq	%r14d, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-80(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 169 115
	leal	7(%r13), %eax
	.loc 1 169 101
	cltq
	movl	(%rdx,%rax,4), %eax
	movl	%eax, %ecx
	.loc 1 172 21
	cmpl	$7, %ebx
	je	.L36
	cmpl	$7, %ebx
	jg	.L59
	cmpl	$6, %ebx
	je	.L38
	cmpl	$6, %ebx
	jg	.L59
	cmpl	$5, %ebx
	je	.L39
	cmpl	$5, %ebx
	jg	.L59
	cmpl	$4, %ebx
	je	.L40
	cmpl	$4, %ebx
	jg	.L59
	cmpl	$3, %ebx
	je	.L41
	cmpl	$3, %ebx
	jg	.L59
	cmpl	$2, %ebx
	je	.L42
	cmpl	$2, %ebx
	jg	.L59
	testl	%ebx, %ebx
	je	.L43
	cmpl	$1, %ebx
	je	.L44
	.loc 1 198 25
	jmp	.L59
.L43:
	.loc 1 174 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 174 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 174 38
	movslq	%r12d, %rax
	movl	%r11d, %esi
	movl	%esi, (%rdx,%rax,4)
.L44:
	.loc 1 177 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 177 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 177 37
	leal	1(%r12), %eax
	.loc 1 177 42
	cltq
	movl	%r10d, %esi
	movl	%esi, (%rdx,%rax,4)
.L42:
	.loc 1 180 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 180 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 180 37
	leal	2(%r12), %eax
	.loc 1 180 42
	cltq
	movl	-92(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L41:
	.loc 1 183 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 183 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 183 37
	leal	3(%r12), %eax
	.loc 1 183 42
	cltq
	movl	-96(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L40:
	.loc 1 186 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 186 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 186 37
	leal	4(%r12), %eax
	.loc 1 186 42
	cltq
	movl	-100(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L39:
	.loc 1 189 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 189 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 189 37
	leal	5(%r12), %eax
	.loc 1 189 42
	cltq
	movl	-104(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L38:
	.loc 1 192 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 192 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 192 37
	leal	6(%r12), %eax
	.loc 1 192 42
	cltq
	movl	%r15d, (%rdx,%rax,4)
.L36:
	.loc 1 195 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 195 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 195 37
	leal	7(%r12), %eax
	.loc 1 195 42
	cltq
	movl	%ecx, %esi
	movl	%esi, (%rdx,%rax,4)
.L59:
	.loc 1 198 25
	nop
	.loc 1 202 21
	cmpl	$7, %ebx
	je	.L45
	cmpl	$7, %ebx
	jg	.L60
	cmpl	$6, %ebx
	je	.L47
	cmpl	$6, %ebx
	jg	.L60
	cmpl	$5, %ebx
	je	.L48
	cmpl	$5, %ebx
	jg	.L60
	cmpl	$4, %ebx
	je	.L49
	cmpl	$4, %ebx
	jg	.L60
	cmpl	$3, %ebx
	je	.L50
	cmpl	$3, %ebx
	jg	.L60
	cmpl	$1, %ebx
	je	.L51
	cmpl	$2, %ebx
	je	.L52
	.loc 1 233 25
	jmp	.L60
.L45:
	.loc 1 204 48
	leal	6(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 204 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	.loc 1 204 55
	leal	(%r12,%rbx), %r8d
	.loc 1 204 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 204 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rsi
	.loc 1 204 37
	leal	6(%r12), %ecx
	.loc 1 204 52
	movslq	%r8d, %rax
	movl	(%r9,%rax,4), %edx
	.loc 1 204 42
	movslq	%ecx, %rax
	movl	%edx, (%rsi,%rax,4)
	.loc 1 205 29
	leal	6(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 205 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 205 36
	leal	(%r12,%rbx), %eax
	.loc 1 205 42
	cltq
	movl	%r15d, (%rdx,%rax,4)
.L47:
	.loc 1 208 48
	leal	5(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 208 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %r9
	.loc 1 208 55
	leal	(%r12,%rbx), %r8d
	.loc 1 208 29
	leal	0(%r13,%rbx), %eax
	movslq	%eax, %rdx
	.loc 1 208 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	.loc 1 208 37
	leal	5(%r12), %esi
	.loc 1 208 52
	movslq	%r8d, %rax
	movl	(%r9,%rax,4), %edx
	.loc 1 208 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 209 29
	leal	5(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 209 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 209 36
	leal	(%r12,%rbx), %eax
	.loc 1 209 42
	cltq
	movl	-104(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L48:
	.loc 1 212 48
	leal	4(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 212 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 212 55
	leal	(%r12,%rbx), %eax
	.loc 1 212 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 212 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 212 37
	leal	4(%r12), %esi
	.loc 1 212 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 212 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 213 29
	leal	4(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 213 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 213 36
	leal	(%r12,%rbx), %eax
	.loc 1 213 42
	cltq
	movl	-100(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L49:
	.loc 1 216 48
	leal	3(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 216 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 216 55
	leal	(%r12,%rbx), %eax
	.loc 1 216 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 216 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 216 37
	leal	3(%r12), %esi
	.loc 1 216 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 216 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 217 29
	leal	3(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 217 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 217 36
	leal	(%r12,%rbx), %eax
	.loc 1 217 42
	cltq
	movl	-96(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L50:
	.loc 1 220 48
	leal	2(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 220 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 220 55
	leal	(%r12,%rbx), %eax
	.loc 1 220 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 220 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 220 37
	leal	2(%r12), %esi
	.loc 1 220 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 220 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 221 29
	leal	2(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 221 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 221 36
	leal	(%r12,%rbx), %eax
	.loc 1 221 42
	cltq
	movl	-92(%rbp), %esi
	movl	%esi, (%rdx,%rax,4)
.L52:
	.loc 1 224 48
	leal	1(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 224 45
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 224 55
	leal	(%r12,%rbx), %eax
	.loc 1 224 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 224 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 224 37
	leal	1(%r12), %esi
	.loc 1 224 52
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 224 42
	movslq	%esi, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 225 29
	leal	1(%r13), %eax
	movslq	%eax, %rdx
	.loc 1 225 26
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 225 36
	leal	(%r12,%rbx), %eax
	.loc 1 225 42
	cltq
	movl	%r10d, %ecx
	movl	%ecx, (%rdx,%rax,4)
.L51:
	.loc 1 228 41
	movslq	%r13d, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 228 47
	leal	(%r12,%rbx), %eax
	.loc 1 228 29
	leal	0(%r13,%rbx), %ecx
	movslq	%ecx, %rsi
	.loc 1 228 26
	movslq	%edi, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-88(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 228 44
	cltq
	movl	(%rdx,%rax,4), %edx
	.loc 1 228 38
	movslq	%r12d, %rax
	movl	%edx, (%rcx,%rax,4)
	.loc 1 229 26
	movslq	%r13d, %rdx
	movslq	%edi, %rax
	imulq	%rdx, %rax
	leaq	0(,%rax,4), %rdx
	movq	-88(%rbp), %rax
	addq	%rax, %rdx
	.loc 1 229 32
	leal	(%r12,%rbx), %eax
	.loc 1 229 38
	cltq
	movl	%r11d, %esi
	movl	%esi, (%rdx,%rax,4)
.L60:
	.loc 1 233 25
	nop
	.loc 1 166 39
	addl	$1, %ebx
.L35:
	.loc 1 166 17 discriminator 1
	cmpl	$7, %ebx
	jle	.L53
	.loc 1 165 34 discriminator 2
	addl	$8, %r12d
.L34:
	.loc 1 165 13 discriminator 1
	cmpl	-72(%rbp), %r12d
	jl	.L54
	.loc 1 164 30 discriminator 2
	addl	$8, %r13d
.L33:
	.loc 1 164 9 discriminator 1
	cmpl	-68(%rbp), %r13d
	jl	.L55
.L58:
	.loc 1 294 5
	nop
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	transpose_submit, .-transpose_submit
	.globl	trans_desc
	.data
	.align 16
	.type	trans_desc, @object
	.size	trans_desc, 31
trans_desc:
	.string	"Simple row-wise scan transpose"
	.text
	.globl	trans
	.type	trans, @function
trans:
.LFB2:
	.loc 1 306 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	.loc 1 305 30
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	.loc 1 305 6
	movq	%rdx, -16(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	.loc 1 305 43
	movl	-40(%rbp), %edx
	movslq	%edx, %rcx
	subq	$1, %rcx
	.loc 1 305 6
	movq	%rcx, -8(%rbp)
	movslq	%edx, %rcx
	movq	%rcx, %r8
	movl	$0, %r9d
	.loc 1 309 12
	movl	$0, -24(%rbp)
	.loc 1 309 5
	jmp	.L62
.L65:
	.loc 1 310 16
	movl	$0, -28(%rbp)
	.loc 1 310 9
	jmp	.L63
.L64:
	.loc 1 311 20 discriminator 3
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rsi
	movslq	%eax, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rsi
	.loc 1 311 17 discriminator 3
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rsi,%rcx,4), %ecx
	movl	%ecx, -20(%rbp)
	.loc 1 312 14 discriminator 3
	movl	-28(%rbp), %ecx
	movslq	%ecx, %rsi
	movslq	%edx, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-56(%rbp), %rcx
	leaq	(%rsi,%rcx), %rdi
	.loc 1 312 21 discriminator 3
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	-20(%rbp), %esi
	movl	%esi, (%rdi,%rcx,4)
	.loc 1 310 29 discriminator 3
	addl	$1, -28(%rbp)
.L63:
	.loc 1 310 9 discriminator 1
	movl	-28(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	jl	.L64
	.loc 1 309 25 discriminator 2
	addl	$1, -24(%rbp)
.L62:
	.loc 1 309 5 discriminator 1
	movl	-24(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jl	.L65
	.loc 1 316 1
	nop
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	trans, .-trans
	.globl	registerFunctions
	.type	registerFunctions, @function
registerFunctions:
.LFB3:
	.loc 1 326 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	.loc 1 328 5
	leaq	transpose_submit_desc(%rip), %rsi
	leaq	transpose_submit(%rip), %rdi
	call	registerTransFunction@PLT
	.loc 1 331 5
	leaq	trans_desc(%rip), %rsi
	leaq	trans(%rip), %rdi
	call	registerTransFunction@PLT
	.loc 1 333 1
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	registerFunctions, .-registerFunctions
	.globl	is_transpose
	.type	is_transpose, @function
is_transpose:
.LFB4:
	.loc 1 341 1
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movq	%rcx, -56(%rbp)
	.loc 1 340 36
	movl	-36(%rbp), %eax
	movslq	%eax, %rdx
	subq	$1, %rdx
	.loc 1 340 5
	movq	%rdx, -16(%rbp)
	movslq	%eax, %rdx
	movq	%rdx, %r10
	movl	$0, %r11d
	.loc 1 340 49
	movl	-40(%rbp), %edx
	movslq	%edx, %rcx
	subq	$1, %rcx
	.loc 1 340 5
	movq	%rcx, -8(%rbp)
	movslq	%edx, %rcx
	movq	%rcx, %r8
	movl	$0, %r9d
	.loc 1 344 12
	movl	$0, -20(%rbp)
	.loc 1 344 5
	jmp	.L68
.L73:
	.loc 1 345 16
	movl	$0, -24(%rbp)
	.loc 1 345 9
	jmp	.L69
.L72:
	.loc 1 346 18
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rsi
	movslq	%eax, %rcx
	imulq	%rsi, %rcx
	leaq	0(,%rcx,4), %rsi
	movq	-48(%rbp), %rcx
	addq	%rcx, %rsi
	.loc 1 346 21
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rsi,%rcx,4), %esi
	.loc 1 346 29
	movl	-24(%rbp), %ecx
	movslq	%ecx, %rdi
	movslq	%edx, %rcx
	imulq	%rdi, %rcx
	leaq	0(,%rcx,4), %rdi
	movq	-56(%rbp), %rcx
	addq	%rcx, %rdi
	.loc 1 346 32
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rdi,%rcx,4), %ecx
	.loc 1 346 16
	cmpl	%ecx, %esi
	je	.L70
	.loc 1 347 24
	movl	$0, %eax
	jmp	.L71
.L70:
	.loc 1 345 28 discriminator 2
	addl	$1, -24(%rbp)
.L69:
	.loc 1 345 9 discriminator 1
	movl	-24(%rbp), %ecx
	cmpl	-36(%rbp), %ecx
	jl	.L72
	.loc 1 344 25 discriminator 2
	addl	$1, -20(%rbp)
.L68:
	.loc 1 344 5 discriminator 1
	movl	-20(%rbp), %ecx
	cmpl	-40(%rbp), %ecx
	jl	.L73
	.loc 1 351 12
	movl	$1, %eax
.L71:
	.loc 1 352 1
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	is_transpose, .-is_transpose
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6a1
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF60
	.byte	0xc
	.long	.LASF61
	.long	.LASF62
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd1
	.byte	0x17
	.long	0x39
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6c
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6c
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x7
	.long	.LASF63
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x21f
	.uleb128 0x8
	.long	.LASF11
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x65
	.byte	0
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x8b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x8b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x8b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x8b
	.byte	0x28
	.uleb128 0x8
	.long	.LASF17
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x8b
	.byte	0x30
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x8b
	.byte	0x38
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8b
	.byte	0x40
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x8b
	.byte	0x48
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x8b
	.byte	0x50
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x8b
	.byte	0x58
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x238
	.byte	0x60
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x23e
	.byte	0x68
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x65
	.byte	0x70
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x65
	.byte	0x74
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x73
	.byte	0x78
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x50
	.byte	0x80
	.uleb128 0x8
	.long	.LASF29
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x57
	.byte	0x82
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x244
	.byte	0x83
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x254
	.byte	0x88
	.uleb128 0x8
	.long	.LASF32
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x7f
	.byte	0x90
	.uleb128 0x8
	.long	.LASF33
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x25f
	.byte	0x98
	.uleb128 0x8
	.long	.LASF34
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x26a
	.byte	0xa0
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x23e
	.byte	0xa8
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x47
	.byte	0xb0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2d
	.byte	0xb8
	.uleb128 0x8
	.long	.LASF38
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x65
	.byte	0xc0
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x270
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0x98
	.uleb128 0x9
	.long	.LASF64
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xa
	.long	.LASF41
	.uleb128 0x6
	.byte	0x8
	.long	0x233
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0xb
	.long	0x91
	.long	0x254
	.uleb128 0xc
	.long	0x39
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22b
	.uleb128 0xa
	.long	.LASF42
	.uleb128 0x6
	.byte	0x8
	.long	0x25a
	.uleb128 0xa
	.long	.LASF43
	.uleb128 0x6
	.byte	0x8
	.long	0x265
	.uleb128 0xb
	.long	0x91
	.long	0x280
	.uleb128 0xc
	.long	0x39
	.byte	0x13
	.byte	0
	.uleb128 0xd
	.long	.LASF44
	.byte	0x6
	.byte	0x89
	.byte	0xe
	.long	0x28c
	.uleb128 0x6
	.byte	0x8
	.long	0x21f
	.uleb128 0xd
	.long	.LASF45
	.byte	0x6
	.byte	0x8a
	.byte	0xe
	.long	0x28c
	.uleb128 0xd
	.long	.LASF46
	.byte	0x6
	.byte	0x8b
	.byte	0xe
	.long	0x28c
	.uleb128 0xb
	.long	0x91
	.long	0x2ba
	.uleb128 0xc
	.long	0x39
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.long	.LASF47
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.long	0x2aa
	.uleb128 0x9
	.byte	0x3
	.quad	transpose_submit_desc
	.uleb128 0xb
	.long	0x91
	.long	0x2e0
	.uleb128 0xc
	.long	0x39
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.value	0x130
	.byte	0x6
	.long	0x2d0
	.uleb128 0x9
	.byte	0x3
	.quad	trans_desc
	.uleb128 0x10
	.long	.LASF65
	.byte	0x1
	.value	0x154
	.byte	0x5
	.long	0x65
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x370
	.uleb128 0x11
	.string	"M"
	.byte	0x1
	.value	0x154
	.byte	0x16
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.string	"N"
	.byte	0x1
	.value	0x154
	.byte	0x1d
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"A"
	.byte	0x1
	.value	0x154
	.byte	0x24
	.long	0x383
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"B"
	.byte	0x1
	.value	0x154
	.byte	0x31
	.long	0x39c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.value	0x156
	.byte	0x9
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.value	0x156
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0xb
	.long	0x65
	.long	0x383
	.uleb128 0x13
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x370
	.uleb128 0xb
	.long	0x65
	.long	0x39c
	.uleb128 0x13
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x389
	.uleb128 0x14
	.long	.LASF66
	.byte	0x1
	.value	0x145
	.byte	0x6
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.value	0x131
	.byte	0x6
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x442
	.uleb128 0x11
	.string	"M"
	.byte	0x1
	.value	0x131
	.byte	0x10
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x11
	.string	"N"
	.byte	0x1
	.value	0x131
	.byte	0x17
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x11
	.string	"A"
	.byte	0x1
	.value	0x131
	.byte	0x1e
	.long	0x455
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x11
	.string	"B"
	.byte	0x1
	.value	0x131
	.byte	0x2b
	.long	0x46e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.value	0x133
	.byte	0x9
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.string	"j"
	.byte	0x1
	.value	0x133
	.byte	0xc
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x12
	.string	"tmp"
	.byte	0x1
	.value	0x133
	.byte	0xf
	.long	0x65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xb
	.long	0x65
	.long	0x455
	.uleb128 0x13
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -32
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x442
	.uleb128 0xb
	.long	0x65
	.long	0x46e
	.uleb128 0x13
	.long	0x39
	.uleb128 0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x45b
	.uleb128 0x16
	.long	.LASF50
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x558
	.uleb128 0x17
	.string	"M"
	.byte	0x1
	.byte	0xa0
	.byte	0x1b
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.string	"N"
	.byte	0x1
	.byte	0xa0
	.byte	0x22
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"A"
	.byte	0x1
	.byte	0xa0
	.byte	0x29
	.long	0x56c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"B"
	.byte	0x1
	.byte	0xa0
	.byte	0x36
	.long	0x586
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0xa1
	.byte	0x12
	.long	0x65
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0xa1
	.byte	0x15
	.long	0x65
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x18
	.string	"ii"
	.byte	0x1
	.byte	0xa1
	.byte	0x18
	.long	0x65
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF51
	.byte	0x1
	.byte	0xa2
	.byte	0x12
	.long	0x65
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0xa2
	.byte	0x18
	.long	0x65
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF53
	.byte	0x1
	.byte	0xa2
	.byte	0x1e
	.long	0x65
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x1
	.byte	0xa2
	.byte	0x24
	.long	0x65
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x1
	.byte	0xa2
	.byte	0x2a
	.long	0x65
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x1
	.byte	0xa2
	.byte	0x30
	.long	0x65
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0xa2
	.byte	0x36
	.long	0x65
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0xa2
	.byte	0x3c
	.long	0x65
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.long	0x65
	.long	0x56c
	.uleb128 0x13
	.long	0x39
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x558
	.uleb128 0xb
	.long	0x65
	.long	0x586
	.uleb128 0x13
	.long	0x39
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x572
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0x17
	.byte	0x6
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x670
	.uleb128 0x17
	.string	"M"
	.byte	0x1
	.byte	0x17
	.byte	0x1b
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.string	"N"
	.byte	0x1
	.byte	0x17
	.byte	0x22
	.long	0x65
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.string	"A"
	.byte	0x1
	.byte	0x17
	.byte	0x29
	.long	0x684
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x17
	.string	"B"
	.byte	0x1
	.byte	0x17
	.byte	0x36
	.long	0x69e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.byte	0x18
	.byte	0x12
	.long	0x65
	.uleb128 0x1
	.byte	0x5d
	.uleb128 0x18
	.string	"j"
	.byte	0x1
	.byte	0x18
	.byte	0x15
	.long	0x65
	.uleb128 0x1
	.byte	0x5c
	.uleb128 0x18
	.string	"ii"
	.byte	0x1
	.byte	0x18
	.byte	0x18
	.long	0x65
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x19
	.long	.LASF51
	.byte	0x1
	.byte	0x19
	.byte	0x12
	.long	0x65
	.uleb128 0x1
	.byte	0x5b
	.uleb128 0x19
	.long	.LASF52
	.byte	0x1
	.byte	0x19
	.byte	0x18
	.long	0x65
	.uleb128 0x1
	.byte	0x5a
	.uleb128 0x1a
	.long	.LASF53
	.byte	0x1
	.byte	0x19
	.byte	0x1e
	.long	0x65
	.uleb128 0x1a
	.long	.LASF54
	.byte	0x1
	.byte	0x19
	.byte	0x24
	.long	0x65
	.uleb128 0x1a
	.long	.LASF55
	.byte	0x1
	.byte	0x19
	.byte	0x2a
	.long	0x65
	.uleb128 0x1a
	.long	.LASF56
	.byte	0x1
	.byte	0x19
	.byte	0x30
	.long	0x65
	.uleb128 0x19
	.long	.LASF57
	.byte	0x1
	.byte	0x19
	.byte	0x36
	.long	0x65
	.uleb128 0x1
	.byte	0x5f
	.uleb128 0x19
	.long	.LASF58
	.byte	0x1
	.byte	0x19
	.byte	0x3c
	.long	0x65
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xb
	.long	0x65
	.long	0x684
	.uleb128 0x13
	.long	0x39
	.uleb128 0x4
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x670
	.uleb128 0xb
	.long	0x65
	.long	0x69e
	.uleb128 0x13
	.long	0x39
	.uleb128 0x4
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x68a
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"_IO_buf_end"
.LASF27:
	.string	"_old_offset"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_offset"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF36:
	.string	"_freeres_buf"
.LASF65:
	.string	"is_transpose"
.LASF48:
	.string	"trans_desc"
.LASF46:
	.string	"stderr"
.LASF31:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF47:
	.string	"transpose_submit_desc"
.LASF28:
	.string	"_cur_column"
.LASF50:
	.string	"transpose_submit"
.LASF63:
	.string	"_IO_FILE"
.LASF60:
	.string	"GNU C99 9.3.0 -m64 -mtune=generic -march=x86-64 -g -std=c99 -fno-jump-tables -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF2:
	.string	"unsigned char"
.LASF59:
	.string	"transpose_switch"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_codecvt"
.LASF30:
	.string	"_shortbuf"
.LASF1:
	.string	"unsigned int"
.LASF41:
	.string	"_IO_marker"
.LASF61:
	.string	"trans.c"
.LASF15:
	.string	"_IO_write_base"
.LASF39:
	.string	"_unused2"
.LASF12:
	.string	"_IO_read_ptr"
.LASF3:
	.string	"short unsigned int"
.LASF62:
	.string	"/home/lijunjie/OneDrive/CS/Notes/Public/docs/01.\345\237\272\347\241\200\347\237\245\350\257\206/12.CSAPP/02.lab/lab05-cache/cachelab-handout"
.LASF10:
	.string	"char"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF37:
	.string	"__pad5"
.LASF51:
	.string	"tmp0"
.LASF52:
	.string	"tmp1"
.LASF53:
	.string	"tmp2"
.LASF54:
	.string	"tmp3"
.LASF42:
	.string	"_IO_codecvt"
.LASF56:
	.string	"tmp5"
.LASF57:
	.string	"tmp6"
.LASF58:
	.string	"tmp7"
.LASF0:
	.string	"long unsigned int"
.LASF55:
	.string	"tmp4"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF24:
	.string	"_chain"
.LASF43:
	.string	"_IO_wide_data"
.LASF49:
	.string	"trans"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF25:
	.string	"_fileno"
.LASF40:
	.string	"FILE"
.LASF45:
	.string	"stdout"
.LASF66:
	.string	"registerFunctions"
.LASF64:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
