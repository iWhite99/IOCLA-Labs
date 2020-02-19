%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;cele doua numere se gasesc in eax si ebx
    mov eax, 54
    mov ebx, 21 
    ; TODO: aflati minimul
    cmp eax, ebx
    jl print
    
    xchg eax, ebx
    
print:
    PRINT_DEC 4, eax ; afiseaza minimul
    NEWLINE
    ret
    