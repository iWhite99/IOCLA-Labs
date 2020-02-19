global computeLength
global computeLength2

section .text
computeLength:
    push ebp
    mov ebp, esp

    xor eax, eax
    ;TODO: Implement byte count using a software loop

    mov edi, dword [ebp + 8]

compute_loop:
    inc eax
    cmp byte [edi + eax], 0
    jne compute_loop

    dec eax
    mov esp, ebp
    pop ebp
    ret

computeLength2:
    push ebp
    mov ebp, esp

    xor eax, eax
    ;xor ecx, ecx
    mov ecx, -1
    ;TODO: Implement byte count using a hardware loop
    mov edi, dword [ebp + 8]
    cld
    repnz scasb
    not ecx
    dec ecx
    dec ecx
    mov eax, ecx


    mov esp, ebp
    pop ebp
    ret
