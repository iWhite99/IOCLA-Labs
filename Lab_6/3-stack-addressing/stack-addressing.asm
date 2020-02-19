%include "io.inc"

%define NUM 5

section .data
    space db " ",0

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands
    
    ; pushing an array on the stack
    mov ecx, NUM
    
push_nums:
    ;push ecx
    sub esp, 4
    mov [esp], ecx
    loop push_nums

    ; pushing a string on the stack
    ;push 0
    sub esp, 4
    mov dword [esp], 0
    ;push "mere"
    sub esp, 4
    mov dword [esp], "mere"
    ;push "are "
    sub esp, 4
    mov dword [esp], "are "
    ;push "Ana "
    sub esp, 4
    mov dword [esp], "Ana "

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    ; (from low addresses to high addresses, byte by byte)
    
    mov ecx, esp

l0:
    PRINT_HEX 4, ecx
    PRINT_STRING space
    PRINT_UDEC 1, [ecx]
    NEWLINE
    inc ecx
    cmp ecx, ebp
    jl l0

    ; TODO 3: print the string byte by byte
    
    xor ecx, ecx
   
    PRINT_STRING [esp]
    NEWLINE
    
l1:
    PRINT_HEX 4, esp
    PRINT_STRING space
    PRINT_UDEC 1, [esp]
    add esp, 4
    NEWLINE
    inc ecx
    cmp ecx, 5
    jb l1
    

    ; TODO 4: print the array element by element
    
l2:
    PRINT_HEX 4, esp
    PRINT_STRING space
    PRINT_UDEC 4, [esp]
    add esp, 4
    NEWLINE
    inc ecx
    cmp ecx, 9
    jb l2

    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
