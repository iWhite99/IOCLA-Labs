%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139 
    mov ebx, 169
    PRINT_DEC 4, eax ; afiseaza prima multime
    NEWLINE
    PRINT_DEC 4, ebx ; afiseaza cea de-a doua multime
    NEWLINE

    ; TODO1: reuniunea a doua multimi
    
    mov ecx, eax
    or ecx, ebx
    PRINT_DEC 4, ecx
    NEWLINE

    ; TODO2: adaugarea unui element in multime
    
    or ecx, 0x100
    PRINT_DEC 4, ecx
    NEWLINE


    ; TODO3: intersectia a doua multimi
    
    mov ecx, eax
    and ecx, ebx
    PRINT_DEC 4, ecx
    NEWLINE


    ; TODO4: complementul unei multimi
    
    mov ecx, eax
    not ecx
    PRINT_DEC 4, ecx
    NEWLINE


    ; TODO5: eliminarea unui element
    
    mov ecx, eax
    and ecx, ~(1<<3)
    PRINT_DEC 4, ecx
    NEWLINE


    ; TODO6: diferenta de multimi EAX-EBX

    mov ecx, eax
    xor ecx, ebx
    PRINT_DEC 4, ecx
    NEWLINE

    xor eax, eax
    ret
