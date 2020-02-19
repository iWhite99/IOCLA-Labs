global runAssemblyCode

extern printf

section .data
    str: db "%d\n",10,13

section .text
runAssemblyCode:
    push ebp
    mov ebp, esp

    xor eax, eax
    mov ecx, [ebp + 12]
    mov edi, [ebp + 8]

calculate_sum:
    add eax, dword [edi + ((ecx-1) * 4)]

    ;mov edx, dword [ebx + (ecx - 1) * 4]
    ;add eax, edx
    dec ecx
    cmp ecx, 0
    jg calculate_sum

    mov esp, ebp
    pop ebp
    ret
