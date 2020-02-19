%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ; input values (eax, edx): the 2 numbers to compute the gcd for
    mov eax, 49
    mov edx, 28
    
    PRINT_STRING "gdc("
    PRINT_UDEC 4, eax
    PRINT_STRING ", "
    PRINT_UDEC 4, edx
    PRINT_STRING ")="

    push eax
    push edx

gcd:
    neg     eax
    je      L3

L1:
    neg     eax
    push eax
    push edx
    pop eax
    pop edx

L2:
    sub     eax,edx
    jg      L2
    jne     L1

L3:
    add     eax,edx
    jne     print
    inc     eax

print:

    ; TODO 1: solve the 'The program crashed!' error
    ;mov esp, ebp

    ; TODO 2: print the result in the form of: "gdc(eax, edx)=7"

    PRINT_UDEC 4, eax  ; output value in eax
    
    pop edx
    pop eax


    xor eax, eax
    ret