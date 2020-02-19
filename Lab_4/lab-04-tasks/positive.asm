%include "io.inc"

%define ARRAY_SIZE    10

section .data
    dword_array dd 1392, 1254, 7992, 6992, 7202, -2718, 0, 1789, -1298, 1799
    positive_format db "Positive: ", 0
    negative_format db "Negative: ", 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    mov ecx, ARRAY_SIZE     ; Use ecx as loop counter.
    xor eax, eax ; positive
    xor ebx, ebx ; negative

add_dword_array_element:
    mov edx, dword [dword_array + (ecx - 1) * 4]
    cmp edx, 0
    jg add_positive
    jl add_negative
    jmp continue
    
add_positive:
    inc eax
    jmp continue

add_negative:
    inc ebx
    
continue:
    loop add_dword_array_element ; Decrement ecx, if not zero, add another element.

    PRINT_STRING positive_format
    PRINT_UDEC 4, eax
    NEWLINE
    
    PRINT_STRING negative_format
    PRINT_UDEC 4, ebx
    NEWLINE

    leave
    ret
