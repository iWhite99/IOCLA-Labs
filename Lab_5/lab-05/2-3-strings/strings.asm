%include "io.inc"

section .data
    string db "Lorem ipsum dolor sit amet.", 0
    print_strlen db "strlen: ", 10, 0
    print_occ db "occurences of `i`:", 10, 0

    occurences dd 0
    length dd 0    
    char db 'i'

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    ; TODO1: compute the length of a string
    
    lea edi, [string]
    xor ebx, ebx
    
l0:
    inc ebx
    mov al, 0x0
    scasb
    jne l0
    dec ebx
    mov [length], ebx

    ; TODO1: save the result in at address length

    ; print the result of strlen
    PRINT_STRING print_strlen
    PRINT_UDEC 4, [length]
    NEWLINE

    ; TODO2: compute the number of occurences

    lea edi, [string]
    xor ebx, ebx
    mov ecx, [length]
    
l1:
    mov al, [char]
    scasb
    je counter
    jmp continue
    
counter:
    inc ebx
    
continue:
    loop l1

    ; TODO2: save the result in at address occurences
    
    mov [occurences], ebx
    
    ; print the number of occurences of the char
    PRINT_STRING print_occ
    PRINT_UDEC 4, [occurences]
    NEWLINE

    xor eax, eax
    leave
    ret
