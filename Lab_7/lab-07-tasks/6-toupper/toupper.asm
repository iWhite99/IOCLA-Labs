%include "io.inc"
extern printf

section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "ab dE^i\saRiMj", 0

section .text
global CMAIN

toupper:
    push ebp
    mov ebp, esp
    
    mov eax, dword [ebp + 8]
    ;PRINT_CHAR eax + 9
    
goup:
    mov bl, byte [eax]
    cmp bl, 0
    je end
    
    cmp bl, 'z'
    jg not_lowercase
    cmp bl, 'a'
    jl not_lowercase
    sub bl, 0x20
not_lowercase:
    ;PRINT_CHAR bl
    mov byte [eax], bl
    inc eax
    jmp goup
    
end:
    leave
    ret

CMAIN:
    push ebp
    mov ebp, esp

    push mystring
    push before_format
    call printf
    add esp, 8

    push mystring
    call toupper
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret
