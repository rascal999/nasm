section .bss
   Buf resb 1

section .data
   Str: db 'Testing',10h,0h

section .text
   global _start

_start:
   mov eax,Str
   mov edi,Buf
   stosw

   mov eax,1
   mov ebx,0
   int 80h
