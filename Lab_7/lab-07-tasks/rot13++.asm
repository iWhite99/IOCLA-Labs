%include "io.inc"

section .data
    mystring db "ana", 0, "are", 0, "mere", 0
    len dd 12

section .text
global CMAIN

rot13:
    push ebp
    mov ebp, esp
    
    mov eax, dword [ebp + 8]
    xor ecx, ecx
    
goup:
    mov bl, byte [eax]
    cmp bl, 0
    je space
    
continue:
    cmp bl, 'm'
    jle after
    sub bl, 13
    jmp finish
    
after:
    add bl, 13
    jmp finish
    
space:
    mov bl, ' '
    
finish:
    mov byte [eax], bl
    inc eax
    inc ecx
    cmp ecx, dword [len]
    jl goup
    
end:
    leave
    ret

CMAIN:
    ;write your code here
    push ebp
    mov ebp, esp
    
    push mystring
    
    call rot13
    
    PRINT_STRING mystring
    
    pop dword [mystring]
    
    
    xor eax, eax
    leave
    ret