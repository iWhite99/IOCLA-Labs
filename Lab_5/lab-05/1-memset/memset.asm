%include "io.inc"

extern printf

%DEFINE LENGTH 20

section .data
    string db "Nunc tristique ante maximus, dictum nunc in, ultricies dui.", 0
    char db 'a'

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    ; TODO: set al to the char to memset with;
    
    mov al, [char]

    ; TODO: set edi to point to the destination string
    
    lea edi, [string]

    ; TODO: set ecx to the number of times stosb will be performed
    
    mov ecx, LENGTH

    ; TODO: use a stosb loop to store to string; use no more than 1 instruction
    
    rep stosb
    
;l0:
    ;stosb
    ;cmp ecx, 0
    ;loop l0

    ; print the string
    PRINT_STRING string

    xor eax, eax
    leave
    ret
