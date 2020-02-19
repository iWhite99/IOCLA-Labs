%include "io.inc"

%define NUM_FIBO 10

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO - replace below instruction with the algorithm for the Fibonacci sequence
    sub esp, NUM_FIBO * 4
    
    xor ecx, ecx
    push 0
    push 1
    
fibo:
    mov eax, [esp]
    add eax, [esp + 4]
    
    push eax
    
    inc ecx
    cmp ecx, NUM_FIBO - 2
    jne fibo

    mov ecx, NUM_FIBO
print:
    PRINT_UDEC 4, [esp + (ecx - 1) * 4]
    PRINT_STRING " "
    dec ecx
    cmp ecx, 0
    ja print

    mov esp, ebp
    xor eax, eax
    ret
