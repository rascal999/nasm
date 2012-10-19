section .data

section .bss
   num1: resb 4
   num2: resb 4
   result: resb 4

section .text
   global _start

_start:
   pop eax ; Number of arguments
   pop ebx ; Program name
   pop ebx ; arg 1
   pop ecx ; arg 2

   mov al, [ebx]
   mov bl, [ecx]

   sub al,'0'
   sub bl,'0'

   add al,bl

   add al,'0'

   mov [result],al

   mov eax,4
   mov ebx,1
   mov ecx,result
   mov edx,4
   int 80h

exit:
   mov eax,1
   mov ebx,0
   int 80h
