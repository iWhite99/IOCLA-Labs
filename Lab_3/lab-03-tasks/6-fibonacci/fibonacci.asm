%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ecx, 8       ; vrem sa aflam al N-lea numar; N = 7
    
    mov eax, 0
    mov ebx, 1
    
        ; TODO: calculati al N-lea numar fibonacci (f(0) = 0, f(1) = 1)
l1:
    dec ecx
    
    mov edx, eax
    add edx, ebx
    
    mov eax, ebx
    mov ebx, edx
    
    ;PRINT_DEC 4, edx
    ;NEWLINE

    cmp ecx, 0
    jg l1
    
    PRINT_DEC 4, edx
    NEWLINE
    
    ret