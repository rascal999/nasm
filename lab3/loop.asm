section .bss

section .data

section .text
   global _start

_start:
   mov ecx,5

   LoopTest:
      add eax,5
      loop LoopTest

   mov eax,1
   mov ebx,0
   int 80h
