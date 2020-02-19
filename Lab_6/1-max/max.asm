%include "io.inc"

section .text
global CMAIN
CMAIN:
    ; cele doua numere se gasesc in eax si ebx
    mov eax, 4
    mov ebx, 1 

    ; TODO: aflati maximul folosind doar o instructiune de salt si push/pop
    
    push ebx
    cmp [esp], eax
    jl try
    mov eax, [esp]
    
try:
    pop ebx
    PRINT_DEC 4, eax ; afiseaza maximul
    NEWLINE

    ret
