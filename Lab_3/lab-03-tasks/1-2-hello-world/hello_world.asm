%include "io.inc"

section .data
    myString: db "Hello, World!",0
    endString: db "Goodbye, World!",0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ecx, 6                 ; N = valoarea registrului ecx
    mov eax, 2
    mov ebx, 1
    cmp eax, ebx
    jg l1                   ; TODO1: eax > ebx?
    ret
l1:
    PRINT_STRING myString
    NEWLINE
    dec ecx
    cmp ecx, 0
    jg l1
print:
    PRINT_STRING endString
    NEWLINE
                               ; TODO2.2: afisati "Hello, World!" de N ori
                               ; TODO2.1: afisati "Goodbye, World!"

    ret
