%include "io.inc"

section .data
    mystring db "ana are mere", 0

section .text
global CMAIN

rot13:
    push ebp
    mov ebp, esp
    
    mov eax, dword [ebp + 8]
    
goup:
    mov bl, byte [eax]
    cmp bl, 0
    je end
    
    cmp bl,' '
    je finish
    
continue:
    cmp bl, 'm'
    jle after
    sub bl, 13
    jmp finish
    
after:
    add bl, 13
    jmp finish
    
finish:
    mov byte [eax], bl
    inc eax
    jmp goup
    
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