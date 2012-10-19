section .bss
   arg1: resb 4
   arg2: resb 4
   answer: resb 4

section .text
   global _start

_start:
   ; Here we want to determine the length of each arg
   pop eax ; Number of args
   pop ebx ; Program name
   pop eax ; arg 1
   mov dword [arg1],eax
   call SysWrite

   ; Here we want to determine the length of each arg
   ;pop eax ; arg 2
   ;jmp ArgLength

   ;mov dword [arg1],ebx
   ;mov dword [arg2],ecx

   ;add dword [arg1],arg2 ; Add together

   ;mov eax,4
   ;mov ebx,1
   ;mov ecx,Answer
   ;mov edx,3
   ;int 80h

   mov eax,1
   mov ebx,0
   int 80h

ArgLength:
   ret

ArgStrToInt:
   ret

SysWrite:
   mov eax,4 ; write
   mov ebx,1 ; stdout
   mov ecx,arg1 ; var
   mov edx,2 ; length

   int 80h
   ret
