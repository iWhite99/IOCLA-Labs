%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power

loop0:
    mov ecx, eax
    and ecx, ebx
    jz continue
    PRINT_DEC 4, ebx
    NEWLINE

continue:
    shl ebx, 1
    cmp eax, ebx
    jg loop0

    leave
    ret
