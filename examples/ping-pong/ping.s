	.file	"ping.go"
	.section	.go_export,"",@progbits
	.ascii	"v1;\n"
	.ascii	"package "
	.ascii	"main"
	.ascii	";\n"
	.ascii	"pkgpath "
	.ascii	"main"
	.ascii	";\n"
	.ascii	"priority 7;\n"
	.ascii	"import "
	.ascii	"fmt"
	.ascii	" "
	.ascii	"fmt"
	.ascii	" \""
	.ascii	"fmt"
	.ascii	"\";\n"
	.ascii	"init"
	.ascii	" "
	.ascii	"math"
	.ascii	" "
	.ascii	"math..import"
	.ascii	" 1"
	.ascii	" "
	.ascii	"runtime"
	.ascii	" "
	.ascii	"runtime..import"
	.ascii	" 1"
	.ascii	" "
	.ascii	"strconv"
	.ascii	" "
	.ascii	"strconv..import"
	.ascii	" 2"
	.ascii	" "
	.ascii	"sync"
	.ascii	" "
	.ascii	"sync..import"
	.ascii	" 2"
	.ascii	" "
	.ascii	"io"
	.ascii	" "
	.ascii	"io..import"
	.ascii	" 3"
	.ascii	" "
	.ascii	"reflect"
	.ascii	" "
	.ascii	"reflect..import"
	.ascii	" 3"
	.ascii	" "
	.ascii	"syscall"
	.ascii	" "
	.ascii	"syscall..import"
	.ascii	" 3"
	.ascii	" "
	.ascii	"time"
	.ascii	" "
	.ascii	"time..import"
	.ascii	" 4"
	.ascii	" "
	.ascii	"os"
	.ascii	" "
	.ascii	"os..import"
	.ascii	" 5"
	.ascii	" "
	.ascii	"fmt"
	.ascii	" "
	.ascii	"fmt..import"
	.ascii	" 6"
	.ascii	";\n"
	.ascii	"checksum 6FA2485F591AB961218EE0E298E6B9E35ACA6237;\n"
	.section	.rodata
.LC0:
	.ascii	"string"
	.zero	1
	.section	.rodata.C0,"a",@progbits
	.align 16
	.type	C0, @object
	.size	C0, 16
C0:
	.quad	.LC0
	.quad	6
	.section	.rodata.C1,"a",@progbits
	.align 16
	.type	C1, @object
	.size	C1, 16
C1:
	.quad	.LC0
	.quad	6
	.local	C.2
	.comm	C.2,40,32
	.section	.rodata.C2,"a",@progbits
	.align 32
	.type	C2, @object
	.size	C2, 40
C2:
	.quad	C1
	.quad	0
	.quad	C.2
	.quad	0
	.quad	0
	.section	.rodata
.LC1:
	.ascii	"*string"
	.zero	1
	.section	.rodata.C3,"a",@progbits
	.align 16
	.type	C3, @object
	.size	C3, 16
C3:
	.quad	.LC1
	.quad	7
	.weak	__go_td_pN6_string
	.section	.rodata.__go_td_pN6_string,"aG",@progbits,__go_td_pN6_string,comdat
	.align 64
	.type	__go_td_pN6_string, @object
	.size	__go_td_pN6_string, 72
__go_td_pN6_string:
	.byte	22
	.byte	8
	.byte	8
	.zero	5
	.quad	8
	.long	-1918473815
	.zero	4
	.quad	__go_type_hash_identity
	.quad	__go_type_equal_identity
	.quad	C3
	.quad	0
	.quad	0
	.quad	__go_tdn_string
	.weak	__go_tdn_string
	.section	.rodata.__go_tdn_string,"aG",@progbits,__go_tdn_string,comdat
	.align 64
	.type	__go_tdn_string, @object
	.size	__go_tdn_string, 64
__go_tdn_string:
	.byte	24
	.byte	8
	.byte	8
	.zero	5
	.quad	16
	.long	-1998952806
	.zero	4
	.quad	__go_type_hash_string
	.quad	__go_type_equal_string
	.quad	C0
	.quad	C2
	.quad	__go_td_pN6_string
	.section	.rodata
.LC2:
	.ascii	"Ping!"
	.zero	1
	.text
	.type	main.ping, @function
main.ping:
.LFB0:
	.cfi_startproc
	cmpq	%fs:112, %rsp
	jnb	.L2
	movl	$104, %r10d
	movl	$0, %r11d
	call	__morestack
	ret
.L2:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movl	$16, %edi
	call	__go_new
	movq	%rax, %rbx
	movl	$16, %edi
	call	__go_new
	movq	$.LC2, (%rax)
	movq	$5, 8(%rax)
	movl	$__go_tdn_string, %r12d
	movq	%rax, %r13
	movq	%r12, (%rbx)
	movq	%r13, 8(%rbx)
	movq	%rbx, -96(%rbp)
	movq	$1, -88(%rbp)
	movq	$1, -80(%rbp)
	leaq	-64(%rbp), %rax
	subq	$8, %rsp
	pushq	-80(%rbp)
	pushq	-88(%rbp)
	pushq	-96(%rbp)
	movq	%rax, %rdi
	call	fmt.Println
	addq	$32, %rsp
	call	pong
	leaq	-24(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main.ping, .-main.ping
	.globl	main.main
	.type	main.main, @function
main.main:
.LFB1:
	.cfi_startproc
	cmpq	%fs:112, %rsp
	jnb	.L4
	movl	$8, %r10d
	movl	$0, %r11d
	call	__morestack
	ret
.L4:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	main.ping
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main.main, .-main.main
	.globl	__go_init_main
	.type	__go_init_main, @function
__go_init_main:
.LFB2:
	.cfi_startproc
	cmpq	%fs:112, %rsp
	jnb	.L6
	movl	$8, %r10d
	movl	$0, %r11d
	call	__morestack
	ret
.L6:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	math..import
	call	runtime..import
	call	strconv..import
	call	sync..import
	call	io..import
	call	reflect..import
	call	syscall..import
	call	time..import
	call	os..import
	call	fmt..import
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	__go_init_main, .-__go_init_main
	.section	.note.GNU-split-stack,"",@progbits
	.ident	"GCC: (GNU) 4.9.2 20150304 (prerelease)"
	.section	.note.GNU-stack,"",@progbits
