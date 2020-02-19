%include "io.inc"

section .bss
source_length: resd 1

section .data
source_text: db "ABCABCBABCBABCBBBABABBCBABCBAAACCCB", 0
substring: db "BABC", 0

substr_length: dd 4

print_format: db "Substring found at index: ", 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    push ebp
    mov ebp, esp

    ; TODO: Fill source_length with the length of the source_text string.
    ; Find the length of the string using scasb.
    
    lea edi, [source_text]
    xor ebx, ebx
    
l0:
    inc ebx
    mov al, 0x0
    scasb
    jne l0
    dec ebx
    
    mov [source_length], ebx
    
    ;PRINT_UDEC 4, [source_length]

    ; TODO: Print the start indices for all occurrences of the substring in source_text
    
    xor ebx, ebx
    
    mov ecx, [source_length]
    sub ecx, [substr_length]
    
    ;NEWLINE
    ;PRINT_UDEC 4, ecx
    ;NEWLINE
    
l1:
    lea esi, [source_text + ecx]
    lea edi, [substring]
    mov ebx, ecx
    mov ecx, [substr_length]
    repe cmpsb
    jnz continue
    PRINT_DEC 4, ebx
    NEWLINE
    
continue:
    mov ecx, ebx
    dec ecx
    cmp ecx, 0
    jnz l1

    leave
    ret
