section .bss
   Buffer resb 9

section .data
   String db 'Testing',10h,0h

section .text
   global _start

_start:
   std
   mov esi,String+8
   mov edi,Buffer+8
   mov ecx,9
   rep movsb

   mov eax,1
   mov ebx,0
   int 80h
