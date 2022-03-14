;hello_input
;2022-03-15

section.text: ;Instrucciones a llevar a cabo:  
global _start:        ;Punto de entrada
mov eax, 0x4 ;syscall write
mov ebx, 1  
mov ecx, prompt
mov edx, lenPrompt
int 80h

;Leer y guardar el input del usuario
mov eax, 3
mov ebx, 1
mov ecx, num
mov edx, 5
int 80h

;Output del número introducido por el usuario

mov eax, 4
mov ebx, 1
mov ecx, num
mov edx, 5
int 80h

;Salir del programa
mov eax, 1
mov ebx, 0
int 80h


section .data: ;Datos y variables que se manejan
prompt db 'Introduce un número: '
lenPrompt equ $-prompt
dispMsg db 'El número es el '
lendispMsg equ $-dispMsg

section.bss 
    num resb 5

