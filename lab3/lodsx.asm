section .bss

section .data
   Str: db 'Testing',10h,0h

section .text
   global _start

_start:
   mov esi,Str
   lodsb
   dec esi
   lodsw

   mov eax,1
   mov ebx,0
   int 80h
