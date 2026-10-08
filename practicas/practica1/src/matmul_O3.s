	.file	"matmul.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"c"
.LC19:
	.string	"%s,%d,%d,%.6f,%.3f,%.6e\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB30:
	.cfi_startproc
	endbr64
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	movq	%rsp, %rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$160, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	cmpl	$1, %edi
	jg	.L63
	movl	$2097152, %edi
	movl	$512, %r15d
	movl	$512, %ebx
	call	malloc@PLT
	movl	$2097152, %edi
	movq	%rax, %r13
	call	malloc@PLT
	movl	$2097152, %edi
	movq	%rax, %r14
	call	malloc@PLT
	movq	$262144, -104(%rbp)
	movl	$262144, %edi
	movl	$262144, %edx
	movq	%rax, -136(%rbp)
	leaq	.LC0(%rip), %rax
	movl	$5, -112(%rbp)
	movq	%rax, -144(%rbp)
.L33:
	movl	$1717986919, %ecx
	movl	%edx, %esi
	vmovdqa	.LC1(%rip), %ymm2
	vmovdqa	.LC4(%rip), %ymm10
	vpbroadcastd	%ecx, %ymm7
	movl	$-1840700269, %ecx
	shrl	$3, %esi
	vbroadcastsd	.LC7(%rip), %ymm9
	vpbroadcastd	%ecx, %ymm4
	vbroadcastsd	.LC9(%rip), %ymm8
	movl	$8, %ecx
	salq	$6, %rsi
	xorl	%eax, %eax
	vpbroadcastd	%ecx, %ymm6
.L8:
	vpsrlq	$32, %ymm2, %ymm5
	vpmuldq	%ymm7, %ymm2, %ymm1
	vpmuldq	%ymm7, %ymm5, %ymm0
	vpmuldq	%ymm4, %ymm2, %ymm3
	vpmuldq	%ymm4, %ymm5, %ymm5
	vpermt2d	%ymm0, %ymm10, %ymm1
	vpermt2d	%ymm5, %ymm10, %ymm3
	vpsrad	$1, %ymm1, %ymm1
	vpaddd	%ymm2, %ymm3, %ymm3
	vpslld	$2, %ymm1, %ymm0
	vpsrad	$2, %ymm3, %ymm3
	vpaddd	%ymm1, %ymm0, %ymm0
	vpslld	$3, %ymm3, %ymm1
	vpsubd	%ymm0, %ymm2, %ymm0
	vpsubd	%ymm3, %ymm1, %ymm1
	vpsubd	%ymm1, %ymm2, %ymm1
	vpaddd	%ymm6, %ymm2, %ymm2
	vcvtdq2pd	%xmm1, %ymm3
	vmulpd	%ymm9, %ymm3, %ymm3
	vextracti32x4	$0x1, %ymm1, %xmm1
	vcvtdq2pd	%xmm1, %ymm1
	vmulpd	%ymm9, %ymm1, %ymm1
	vmovupd	%ymm3, 0(%r13,%rax)
	vmovupd	%ymm1, 32(%r13,%rax)
	vcvtdq2pd	%xmm0, %ymm1
	vmulpd	%ymm8, %ymm1, %ymm1
	vextracti32x4	$0x1, %ymm0, %xmm0
	vcvtdq2pd	%xmm0, %ymm0
	vmulpd	%ymm8, %ymm0, %ymm0
	vmovupd	%ymm1, (%r14,%rax)
	vmovupd	%ymm0, 32(%r14,%rax)
	addq	$64, %rax
	cmpq	%rax, %rsi
	jne	.L8
	testb	$7, %dl
	je	.L60
	movl	%edx, %eax
	andl	$-8, %eax
	movl	%eax, %ecx
	vzeroupper
.L7:
	subl	%eax, %edx
	leal	-1(%rdx), %esi
	cmpl	$2, %esi
	jbe	.L12
	vpbroadcastd	%ecx, %xmm0
	movl	$1717986919, %r8d
	vmovdqa	.LC13(%rip), %xmm2
	salq	$3, %rax
	vpaddd	.LC11(%rip), %xmm0, %xmm0
	vpbroadcastd	%r8d, %xmm1
	leaq	0(%r13,%rax), %rsi
	movl	$-1840700269, %r8d
	vpsrlq	$32, %xmm0, %xmm4
	vpmuldq	%xmm1, %xmm0, %xmm3
	vpmuldq	%xmm1, %xmm4, %xmm1
	vpermt2d	%xmm1, %xmm2, %xmm3
	vpsrad	$1, %xmm3, %xmm3
	vpslld	$2, %xmm3, %xmm1
	vpaddd	%xmm3, %xmm1, %xmm1
	vpbroadcastd	%r8d, %xmm3
	vpmuldq	%xmm3, %xmm0, %xmm5
	vpmuldq	%xmm3, %xmm4, %xmm4
	vpsubd	%xmm1, %xmm0, %xmm1
	vpermi2d	%xmm4, %xmm5, %xmm2
	vpaddd	%xmm0, %xmm2, %xmm2
	vpsrad	$2, %xmm2, %xmm2
	vpslld	$3, %xmm2, %xmm3
	vpsubd	%xmm2, %xmm3, %xmm2
	vmovddup	.LC7(%rip), %xmm3
	vpsubd	%xmm2, %xmm0, %xmm0
	vcvtdq2pd	%xmm0, %xmm2
	vmulpd	%xmm3, %xmm2, %xmm2
	vpshufd	$238, %xmm0, %xmm0
	vcvtdq2pd	%xmm0, %xmm0
	vmulpd	%xmm3, %xmm0, %xmm0
	vmovupd	%xmm2, (%rsi)
	vmovddup	.LC9(%rip), %xmm2
	vmovupd	%xmm0, 16(%rsi)
	vcvtdq2pd	%xmm1, %xmm0
	vmulpd	%xmm2, %xmm0, %xmm0
	vmovupd	%xmm0, (%r14,%rax)
	vpshufd	$238, %xmm1, %xmm0
	vcvtdq2pd	%xmm0, %xmm0
	vmulpd	%xmm2, %xmm0, %xmm0
	vmovupd	%xmm0, 16(%r14,%rax)
	testb	$3, %dl
	je	.L10
	andl	$-4, %edx
	addl	%edx, %ecx
.L12:
	movl	%ecx, %eax
	movl	$7, %r9d
	vxorpd	%xmm5, %xmm5, %xmm5
	movl	$5, %r8d
	cltd
	vmovsd	.LC7(%rip), %xmm2
	vmovsd	.LC9(%rip), %xmm1
	movslq	%ecx, %rsi
	idivl	%r9d
	movl	%ecx, %eax
	leal	1(%rcx), %r10d
	vcvtsi2sdl	%edx, %xmm5, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	cltd
	idivl	%r8d
	vmovsd	%xmm0, 0(%r13,%rsi,8)
	vcvtsi2sdl	%edx, %xmm5, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, (%r14,%rsi,8)
	cmpl	%edi, %r10d
	jge	.L10
	movl	%r10d, %eax
	addl	$2, %ecx
	cltd
	idivl	%r9d
	movl	%r10d, %eax
	vcvtsi2sdl	%edx, %xmm5, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	cltd
	idivl	%r8d
	vmovsd	%xmm0, 8(%r13,%rsi,8)
	vcvtsi2sdl	%edx, %xmm5, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%r14,%rsi,8)
	cmpl	%edi, %ecx
	jge	.L10
	movl	%ecx, %eax
	cltd
	idivl	%r9d
	movl	%ecx, %eax
	vcvtsi2sdl	%edx, %xmm5, %xmm0
	vmulsd	%xmm2, %xmm0, %xmm0
	cltd
	idivl	%r8d
	vmovsd	%xmm0, 16(%r13,%rsi,8)
	vcvtsi2sdl	%edx, %xmm5, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vmovsd	%xmm0, 16(%r14,%rsi,8)
.L10:
	testl	%r15d, %r15d
	jle	.L5
	leaq	0(,%rbx,8), %rax
	movl	$0, -88(%rbp)
	movq	%rbx, %rcx
	movl	%r15d, %r12d
	movq	%rax, -128(%rbp)
	movl	%r15d, %eax
	movq	-136(%rbp), %r11
	movq	%r13, %r10
	shrl	%eax
	movl	%edi, -152(%rbp)
	salq	$4, %rcx
	xorl	%edx, %edx
	salq	$4, %rax
	andl	$1, %r12d
	movq	%rax, %r9
	movl	%r15d, %eax
	andl	$-2, %eax
	movl	%eax, -96(%rbp)
.L6:
	movl	%edx, -108(%rbp)
	movq	%r14, %r8
	xorl	%edi, %edi
	leaq	(%r9,%r10), %rsi
	movq	%r9, -120(%rbp)
	.p2align 4,,10
	.p2align 3
.L15:
	movl	%edi, %r9d
	cmpl	$1, %r15d
	je	.L38
.L19:
	movq	%r10, %rdx
	movq	%r8, %rax
	vxorpd	%xmm1, %xmm1, %xmm1
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L17:
	vmovsd	(%rax), %xmm0
	addq	$16, %rdx
	vmovhpd	(%rax,%rbx,8), %xmm0, %xmm0
	vmulpd	-16(%rdx), %xmm0, %xmm0
	addq	%rcx, %rax
	vaddsd	%xmm0, %xmm1, %xmm1
	vunpckhpd	%xmm0, %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm1
	cmpq	%rsi, %rdx
	jne	.L17
	testl	%r12d, %r12d
	je	.L14
	movl	-96(%rbp), %eax
.L20:
	movl	%r15d, %edx
	addq	$8, %r8
	imull	%eax, %edx
	addl	-88(%rbp), %eax
	cltq
	addl	%r9d, %edx
	movslq	%edx, %rdx
	vmovsd	(%r14,%rdx,8), %xmm7
	vfmadd231sd	0(%r13,%rax,8), %xmm7, %xmm1
	vmovsd	%xmm1, (%r11,%rdi,8)
	incq	%rdi
	cmpq	%rdi, %rbx
	jne	.L15
.L55:
	movl	-108(%rbp), %edx
	movq	-128(%rbp), %rax
	addl	%r15d, -88(%rbp)
	movq	-120(%rbp), %r9
	incl	%edx
	addq	%rax, %r11
	addq	%rax, %r10
	cmpl	%r15d, %edx
	jne	.L6
	movl	-152(%rbp), %edi
.L5:
	movl	-112(%rbp), %eax
	testl	%eax, %eax
	jle	.L32
	movq	-136(%rbp), %rsi
	movq	-104(%rbp), %rax
	vxorpd	%xmm4, %xmm4, %xmm4
	movl	$1, %r12d
	vcvtsi2sdl	%r15d, %xmm4, %xmm0
	vmovlpd	%xmm0, -184(%rbp)
	leaq	-8(%rsi,%rax,8), %rax
	movq	%rax, -160(%rbp)
	movl	%edi, %eax
	sarl	%eax
	cltq
	leaq	(%rsi,%rax,8), %rax
	movq	%rax, -176(%rbp)
	leaq	0(,%rbx,8), %rax
	movq	%rax, -120(%rbp)
	movq	%rbx, %rax
	salq	$4, %rax
	movq	%rax, -96(%rbp)
	leaq	-80(%rbp), %rax
	movq	%rax, -152(%rbp)
.L31:
	movq	-152(%rbp), %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtsi2sdq	-72(%rbp), %xmm4, %xmm0
	vmovapd	%xmm0, %xmm1
	vcvtsi2sdq	-80(%rbp), %xmm4, %xmm0
	vfmadd132sd	.LC17(%rip), %xmm0, %xmm1
	vmovsd	%xmm1, -168(%rbp)
	testl	%r15d, %r15d
	jle	.L22
	movl	%r15d, %eax
	movl	%r12d, -188(%rbp)
	movl	%r15d, %r11d
	movq	-136(%rbp), %r9
	shrl	%eax
	movq	%r13, %r8
	xorl	%r10d, %r10d
	xorl	%ecx, %ecx
	salq	$4, %rax
	andl	$1, %r11d
	movq	%rax, %rdi
	movl	%r15d, %eax
	andl	$-2, %eax
	movq	%rdi, -128(%rbp)
	movl	%eax, -104(%rbp)
	.p2align 4,,10
	.p2align 3
.L23:
	movq	-128(%rbp), %rdi
	movl	%ecx, -108(%rbp)
	movq	%r14, %rsi
	xorl	%eax, %eax
	leaq	(%rdi,%r8), %r12
	.p2align 4,,10
	.p2align 3
.L25:
	movl	%eax, %edi
	cmpl	$1, %r15d
	je	.L39
.L29:
	movq	%rax, -88(%rbp)
	movq	%r8, %rcx
	movq	%rsi, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L27:
	vmovsd	(%rdx), %xmm2
	addq	$16, %rcx
	vmovhpd	(%rdx,%rbx,8), %xmm2, %xmm2
	vmulpd	-16(%rcx), %xmm2, %xmm2
	addq	-96(%rbp), %rdx
	vaddsd	%xmm2, %xmm0, %xmm0
	vunpckhpd	%xmm2, %xmm2, %xmm2
	vaddsd	%xmm0, %xmm2, %xmm0
	cmpq	%rcx, %r12
	jne	.L27
	movq	-88(%rbp), %rax
	testl	%r11d, %r11d
	je	.L24
	movl	-104(%rbp), %edx
.L30:
	movl	%r15d, %ecx
	addq	$8, %rsi
	imull	%edx, %ecx
	addl	%r10d, %edx
	movslq	%edx, %rdx
	addl	%edi, %ecx
	movslq	%ecx, %rcx
	vmovsd	(%r14,%rcx,8), %xmm6
	vfmadd231sd	0(%r13,%rdx,8), %xmm6, %xmm0
	vmovsd	%xmm0, (%r9,%rax,8)
	incq	%rax
	cmpq	%rax, %rbx
	jne	.L25
.L57:
	movl	-108(%rbp), %ecx
	movq	-120(%rbp), %rax
	addl	%r15d, %r10d
	incl	%ecx
	addq	%rax, %r9
	addq	%rax, %r8
	cmpl	%r15d, %ecx
	jne	.L23
	movl	-188(%rbp), %r12d
.L22:
	movq	-152(%rbp), %rsi
	movl	$1, %edi
	call	clock_gettime@PLT
	vmovsd	-184(%rbp), %xmm4
	vxorpd	%xmm7, %xmm7, %xmm7
	movq	-136(%rbp), %rax
	vcvtsi2sdq	-80(%rbp), %xmm7, %xmm1
	vcvtsi2sdq	-72(%rbp), %xmm7, %xmm0
	vfmadd132sd	.LC17(%rip), %xmm1, %xmm0
	movq	-144(%rbp), %rdx
	movl	%r12d, %r8d
	vaddsd	%xmm4, %xmm4, %xmm1
	vmovsd	(%rax), %xmm2
	movq	-176(%rbp), %rax
	movl	%r15d, %ecx
	leaq	.LC19(%rip), %rsi
	movl	$2, %edi
	incl	%r12d
	vaddsd	(%rax), %xmm2, %xmm2
	movq	-160(%rbp), %rax
	vmulsd	%xmm4, %xmm1, %xmm1
	vsubsd	-168(%rbp), %xmm0, %xmm0
	vaddsd	(%rax), %xmm2, %xmm2
	movl	$3, %eax
	vmulsd	%xmm4, %xmm1, %xmm1
	vdivsd	%xmm0, %xmm1, %xmm1
	vdivsd	.LC18(%rip), %xmm1, %xmm1
	call	__printf_chk@PLT
	cmpl	-112(%rbp), %r12d
	jle	.L31
.L32:
	movq	%r13, %rdi
	call	free@PLT
	movq	%r14, %rdi
	call	free@PLT
	movq	-136(%rbp), %rdi
	call	free@PLT
	movq	-56(%rbp), %rax
	subq	%fs:40, %rax
	jne	.L64
	addq	$160, %rsp
	xorl	%eax, %eax
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	.cfi_restore_state
	vmovsd	%xmm0, (%r9,%rax,8)
	incq	%rax
	cmpq	%rax, %rbx
	je	.L57
	addq	$8, %rsi
	movl	%eax, %edi
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L39:
	vxorpd	%xmm0, %xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.L30
.L14:
	vmovsd	%xmm1, (%r11,%rdi,8)
	incq	%rdi
	cmpq	%rdi, %rbx
	je	.L55
	addq	$8, %r8
	movl	%edi, %r9d
	jmp	.L19
.L38:
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	jmp	.L20
.L63:
	movl	%edi, %r13d
	movq	8(%rsi), %rdi
	movq	%rsi, %rbx
	movl	$10, %edx
	xorl	%esi, %esi
	call	__isoc23_strtol@PLT
	movq	%rax, %r12
	movl	%eax, %r15d
	cmpl	$2, %r13d
	je	.L35
	movq	16(%rbx), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	__isoc23_strtol@PLT
	movl	%eax, -112(%rbp)
	cmpl	$3, %r13d
	je	.L36
	movq	24(%rbx), %rax
	movq	%rax, -144(%rbp)
.L3:
	movslq	%r12d, %rbx
	movq	%rbx, %rax
	imulq	%rbx, %rax
	leaq	0(,%rax,8), %r14
	movq	%rax, -104(%rbp)
	movq	%r14, %rdi
	call	malloc@PLT
	movq	%r14, %rdi
	movq	%r14, -88(%rbp)
	movq	%rax, %r13
	call	malloc@PLT
	movq	-88(%rbp), %rdi
	movq	%rax, %r14
	call	malloc@PLT
	movl	%r12d, %edi
	imull	%r12d, %edi
	movq	%rax, -136(%rbp)
	testl	%edi, %edi
	je	.L10
	leal	-1(%rdi), %eax
	movl	%edi, %edx
	cmpl	$6, %eax
	ja	.L33
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.L7
.L35:
	leaq	.LC0(%rip), %rax
	movl	$5, -112(%rbp)
	movq	%rax, -144(%rbp)
	jmp	.L3
.L60:
	vzeroupper
	jmp	.L10
.L36:
	leaq	.LC0(%rip), %rax
	movq	%rax, -144(%rbp)
	jmp	.L3
.L64:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE30:
	.size	main, .-main
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC1:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.align 32
.LC4:
	.long	1
	.long	9
	.long	3
	.long	11
	.long	5
	.long	13
	.long	7
	.long	15
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC7:
	.long	0
	.long	1071644672
	.align 8
.LC9:
	.long	0
	.long	1070596096
	.set	.LC11,.LC1
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	1
	.long	5
	.long	3
	.long	7
	.section	.rodata.cst8
	.align 8
.LC17:
	.long	-400107883
	.long	1041313291
	.align 8
.LC18:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
