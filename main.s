	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 3	sdk_version 11, 3
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96                     ; =96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80                    ; =80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, _MY_FLOAT@PAGE
	adrp	x9, _MY_FLOAT@PAGE
	add	x9, x9, _MY_FLOAT@PAGEOFF
	ldr	x9, [x9]
                                        ; kill: def $w9 killed $w9 killed $x9
	stur	w9, [x29, #-4]
	ldr	s0, [x8, _MY_FLOAT@PAGEOFF]
	fcvt	d1, s0
	stur	d1, [x29, #-16]
	ldur	x10, [x29, #-16]
	stur	x10, [x29, #-24]
	adrp	x10, ___stderrp@GOTPAGE
	ldr	x10, [x10, ___stderrp@GOTPAGEOFF]
	ldr	x0, [x10]
	ldur	w9, [x29, #-4]
                                        ; implicit-def: $x1
	mov	x1, x9
	ldr	s0, [x8, _MY_FLOAT@PAGEOFF]
	fcvt	d1, s0
	adrp	x11, l_.str@PAGE
	add	x11, x11, l_.str@PAGEOFF
	stur	x1, [x29, #-32]                 ; 8-byte Folded Spill
	mov	x1, x11
	mov	x11, sp
	adrp	x12, l___func__.main@PAGE
	add	x12, x12, l___func__.main@PAGEOFF
	str	x12, [x11]
	ldur	x13, [x29, #-32]                ; 8-byte Folded Reload
	str	x13, [x11, #8]
	str	d1, [x11, #16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	str	x10, [sp, #32]                  ; 8-byte Folded Spill
	str	x12, [sp, #24]                  ; 8-byte Folded Spill
	bl	_fprintf
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x10, [x8]
	ldur	x11, [x29, #-24]
	ldur	d1, [x29, #-16]
	mov	x0, x10
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x10, sp
	ldr	x12, [sp, #24]                  ; 8-byte Folded Reload
	str	x12, [x10]
	str	x11, [x10, #8]
	str	d1, [x10, #16]
	bl	_fprintf
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	s0, [x8, _MY_FLOAT@PAGEOFF]
	fcvt	d0, s0
	bl	_mister_float_knr
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	s2, [x8, _MY_FLOAT@PAGEOFF]
	fcvt	d0, s2
	bl	_mister_float_new
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	s0, [x8, _MY_FLOAT@PAGEOFF]
	bl	_mister_float_new_decl
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldr	s0, [x8, _MY_FLOAT@PAGEOFF]
	bl	_mister_float_mix
	mov	w9, #0
	mov	x0, x9
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96                     ; =96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__DATA,__data
	.globl	_MY_FLOAT                       ; @MY_FLOAT
	.p2align	2
_MY_FLOAT:
	.long	0x42b1c28f                      ; float 88.8799973

	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s() :           The true value: %08x,          MY_FLOAT=%f\n"

l___func__.main:                        ; @__func__.main
	.asciz	"main"

l_.str.1:                               ; @.str.1
	.asciz	"%s() : The true value as double: %016lx, MY_DOUBLE=%f\n"

.subsections_via_symbols
