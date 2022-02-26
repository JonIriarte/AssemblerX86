; hello_world.asm

; 2022-02-26

global _start


; La sigueinte parte define las instrucciones que se van a llevar a cabo
section .text:

_start:
    mov eax, 0x4            ; Usar el syscall "write"
    mov ebx, 1              ; usar stdout como el fd
    mov ecx, message        ; usar message como buffer
    mov edx, message_length ;proporcionar la longitud de message 
    int 0x80                ; interrupt e invocar al syscall

    mov eax, 0x1 
    mov ebx, 0
     ret 16   

; la siguiente sección define los datos y las variables que se manejan
section.data: 
    message: db "!Hello World", 0xA 
    message_length equ $-message ñ