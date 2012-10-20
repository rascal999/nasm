section .bss

section .data
   Str: db 'esting',10h,0h
   Str1: db 'Testing',10h,0h

section .text
   global _start

_start:
   mov esi,Str
   mov edi,Str1
   cmpsb

   mov eax,1
   mov ebx,0
   int 80h
