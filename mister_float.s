	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function mister_float_knr
lCPI0_0:
	.quad	0x3f847ae147ae147b              ; double 0.01
lCPI0_1:
	.quad	0x40563851eb851eb8              ; double 88.879999999999995
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mister_float_knr
	.p2align	2
_mister_float_knr:                      ; @mister_float_knr
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	fcvt	s1, d0
	stur	s1, [x29, #-4]
	ldur	x9, [x29, #-4]
	stur	x9, [x29, #-16]
	ldr	x0, [x8]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	x9, sp
	adrp	x10, l___func__.mister_float_knr@PAGE
	add	x10, x10, l___func__.mister_float_knr@PAGEOFF
	str	x10, [x9]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	_fprintf
	ldur	s1, [x29, #-4]
	fcvt	d0, s1
	adrp	x8, lCPI0_1@PAGE
	ldr	d2, [x8, lCPI0_1@PAGEOFF]
	fabd	d0, d0, d2
	adrp	x8, lCPI0_0@PAGE
	ldr	d2, [x8, lCPI0_0@PAGEOFF]
	fcmp	d0, d2
	cset	w11, mi
	tbnz	w11, #0, LBB0_1
	b	LBB0_2
LBB0_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_fprintf
	b	LBB0_3
LBB0_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_fprintf
LBB0_3:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x9, [x29, #-16]
	ldur	s0, [x29, #-4]
	fcvt	d1, s0
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x10, sp
	str	x9, [x10]
	str	d1, [x10, #8]
	bl	_fprintf
	mov	w11, #0
	mov	x0, x11
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function mister_float_mix
lCPI1_0:
	.quad	0x3f847ae147ae147b              ; double 0.01
lCPI1_1:
	.quad	0x40563851eb851eb8              ; double 88.879999999999995
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mister_float_mix
	.p2align	2
_mister_float_mix:                      ; @mister_float_mix
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	fcvt	s1, d0
	stur	s1, [x29, #-4]
	ldur	x9, [x29, #-4]
	stur	x9, [x29, #-16]
	ldr	x0, [x8]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	x9, sp
	adrp	x10, l___func__.mister_float_mix@PAGE
	add	x10, x10, l___func__.mister_float_mix@PAGEOFF
	str	x10, [x9]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	_fprintf
	ldur	s1, [x29, #-4]
	fcvt	d0, s1
	adrp	x8, lCPI1_1@PAGE
	ldr	d2, [x8, lCPI1_1@PAGEOFF]
	fabd	d0, d0, d2
	adrp	x8, lCPI1_0@PAGE
	ldr	d2, [x8, lCPI1_0@PAGEOFF]
	fcmp	d0, d2
	cset	w11, mi
	tbnz	w11, #0, LBB1_1
	b	LBB1_2
LBB1_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_fprintf
	b	LBB1_3
LBB1_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_fprintf
LBB1_3:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x9, [x29, #-16]
	ldur	s0, [x29, #-4]
	fcvt	d1, s0
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x10, sp
	str	x9, [x10]
	str	d1, [x10, #8]
	bl	_fprintf
	mov	w11, #0
	mov	x0, x11
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function mister_float_new
lCPI2_0:
	.quad	0x3f847ae147ae147b              ; double 0.01
lCPI2_1:
	.quad	0x40563851eb851eb8              ; double 88.879999999999995
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mister_float_new
	.p2align	2
_mister_float_new:                      ; @mister_float_new
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	stur	s0, [x29, #-4]
	ldur	x9, [x29, #-4]
	stur	x9, [x29, #-16]
	ldr	x0, [x8]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	x9, sp
	adrp	x10, l___func__.mister_float_new@PAGE
	add	x10, x10, l___func__.mister_float_new@PAGEOFF
	str	x10, [x9]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	_fprintf
	ldur	s0, [x29, #-4]
	fcvt	d1, s0
	adrp	x8, lCPI2_1@PAGE
	ldr	d2, [x8, lCPI2_1@PAGEOFF]
	fabd	d1, d1, d2
	adrp	x8, lCPI2_0@PAGE
	ldr	d2, [x8, lCPI2_0@PAGEOFF]
	fcmp	d1, d2
	cset	w11, mi
	tbnz	w11, #0, LBB2_1
	b	LBB2_2
LBB2_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_fprintf
	b	LBB2_3
LBB2_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_fprintf
LBB2_3:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x9, [x29, #-16]
	ldur	s0, [x29, #-4]
	fcvt	d1, s0
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x10, sp
	str	x9, [x10]
	str	d1, [x10, #8]
	bl	_fprintf
	mov	w11, #0
	mov	x0, x11
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function mister_float_new_decl
lCPI3_0:
	.quad	0x3f847ae147ae147b              ; double 0.01
lCPI3_1:
	.quad	0x40563851eb851eb8              ; double 88.879999999999995
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_mister_float_new_decl
	.p2align	2
_mister_float_new_decl:                 ; @mister_float_new_decl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stderrp@GOTPAGE
	ldr	x8, [x8, ___stderrp@GOTPAGEOFF]
	stur	s0, [x29, #-4]
	ldur	x9, [x29, #-4]
	stur	x9, [x29, #-16]
	ldr	x0, [x8]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	mov	x9, sp
	adrp	x10, l___func__.mister_float_new_decl@PAGE
	add	x10, x10, l___func__.mister_float_new_decl@PAGEOFF
	str	x10, [x9]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	_fprintf
	ldur	s0, [x29, #-4]
	fcvt	d1, s0
	adrp	x8, lCPI3_1@PAGE
	ldr	d2, [x8, lCPI3_1@PAGEOFF]
	fabd	d1, d1, d2
	adrp	x8, lCPI3_0@PAGE
	ldr	d2, [x8, lCPI3_0@PAGEOFF]
	fcmp	d1, d2
	cset	w11, mi
	tbnz	w11, #0, LBB3_1
	b	LBB3_2
LBB3_1:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_fprintf
	b	LBB3_3
LBB3_2:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_fprintf
LBB3_3:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x9, [x29, #-16]
	ldur	s0, [x29, #-4]
	fcvt	d1, s0
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	mov	x10, sp
	str	x9, [x10]
	str	d1, [x10, #8]
	bl	_fprintf
	mov	w11, #0
	mov	x0, x11
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%22s(): "

l___func__.mister_float_knr:            ; @__func__.mister_float_knr
	.asciz	"mister_float_knr"

l_.str.1:                               ; @.str.1
	.asciz	"\033[32m"

l_.str.2:                               ; @.str.2
	.asciz	"\033[31m"

l_.str.3:                               ; @.str.3
	.asciz	"0x%016lx : f=%f\033[0m\n"

l___func__.mister_float_mix:            ; @__func__.mister_float_mix
	.asciz	"mister_float_mix"

l___func__.mister_float_new:            ; @__func__.mister_float_new
	.asciz	"mister_float_new"

l___func__.mister_float_new_decl:       ; @__func__.mister_float_new_decl
	.asciz	"mister_float_new_decl"

.subsections_via_symbols
