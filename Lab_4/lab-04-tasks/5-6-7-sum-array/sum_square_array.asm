%include "io.inc"

%define ARRAY_SIZE    10

section .data
    dword_array dd 1392, 12544, 7992, 6992, 7202, 27187, 28789, 17897, 12988, 17992
    print_format db "Array sum is ", 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    mov ecx, ARRAY_SIZE     ; Use ecx as loop counter.
    xor eax, eax            ; current value
    xor ebx, ebx            ; Use eax to store the sum.

add_dword_array_element:
    mov eax, dword [dword_array + (ecx - 1) * 4]
    mul eax
    add ebx, eax
    loop add_dword_array_element ; Decrement ecx, if not zero, add another element.

    PRINT_STRING print_format
    PRINT_UDEC 4, ebx
    NEWLINE

    leave
    ret
