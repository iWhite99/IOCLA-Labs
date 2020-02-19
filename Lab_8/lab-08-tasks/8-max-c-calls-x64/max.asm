section .text

global get_max

get_max:
	push rbp
	mov rbp, rsp

	; [ebp+8] is array pointer
	; [ebp+12] is array length

	; first 3 parameters: rdi, rsi, rdx
	; rdi - array
	; rsi - number of elements
	; rdx - position pointer 
	push rbx
	mov rbx, rdi
	mov rcx, rsi
	xor rax, rax

compare:
	cmp eax, [rdi+rcx*4-4]
	jge check_end
	mov eax, [rdi+rcx*4-4]
	mov rbx, rcx
check_end:
	loopnz compare

	mov dword [rdx], ebx
	dec dword [rdx]

	pop rbx
	leave
	ret
