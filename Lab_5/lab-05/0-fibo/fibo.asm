%include "io.inc"
section .data
    N dd 9 ; compute the sum of the first N fibonacci numbers
    
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp
    
    ;xor eax, eax
    
    xor eax, eax
    mov ebx, 1
    xor edx, edx
    
    mov ecx, [N]
    
l0:
    add edx, eax
    
    add eax, ebx
    xchg eax, ebx
    
    loop l0

    ; TODO: calculate the sum of first N fibonacci numbers
    ;       (f(0) = 0, f(1) = 1)
    ;       store the sum in eax
    ;       use loop instruction 

    PRINT_STRING "Sum first "
    PRINT_DEC 4, [N]
    PRINT_STRING " fibo is "
    PRINT_UDEC 4, edx

    xor eax, eax
    leave
	ret
