	.file	"sort-c.c"
	.text
	.globl	sort_x86
	.type	sort_x86, @function
sort_x86:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	52(%esp), %eax
	movl	48(%esp), %edx
	leal	-4(%edx,%eax,4), %eax
	movl	%eax, 12(%esp)
	cmpl	%eax, %edx
	jnb	.L1
	movl	%edx, %esi
	jmp	.L5
.L7:
	addl	$4, %esi
	cmpl	%esi, 12(%esp)
	jbe	.L1
.L5:
	movl	4(%esi), %ebp
	movl	(%esi), %edi
	subl	$8, %esp
	.cfi_def_cfa_offset 56
	pushl	%ebp
	.cfi_def_cfa_offset 60
	pushl	%edi
	.cfi_def_cfa_offset 64
	call	strcmp@PLT
	addl	$16, %esp
	.cfi_def_cfa_offset 48
	testl	%eax, %eax
	jle	.L7
	movl	%ebp, (%esi)
	movl	%edi, 4(%esi)
	movl	48(%esp), %esi
	jmp	.L5
.L1:
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	sort_x86, .-sort_x86
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
