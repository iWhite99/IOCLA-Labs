BITS 64
extern printf
extern get_max

section .data
	arr: dd 19, 7, 129, 87, 54, 218, 67, 12, 19, 99
	len: equ $-arr
	pos: dd 0

	print_format: db "max: %u on pos: %u", 13, 10, 0

section .text

global main

main:
	push rbp
	mov rbp, rsp

	; Compute length in eax.
	; Divide by 4 (we are using integer data type of 4 bytes) by
	; using shr 2 (shift right with 2 bits).
	; arguments: rdi, rsi, rdx
	mov rdi, arr ; array

	mov rsi, len ; length
	shr rsi, 2 ; divide length by size

	mov rdx, pos ; position
	call get_max

	; Print max.
	mov rdx, [pos] ; position value
	mov rsi, rax ; max value
	mov rdi, print_format ; format
	xor rax, rax ; printf convention - max three args
	call printf
	
	leave
	ret
