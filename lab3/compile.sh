#!/bin/bash

if [[ "$#" != "1" ]]; then
   echo "$0 <asm-file>"
   exit 1
fi

file_asm_no_extension=`echo $1 | gawk -F '.' '{ printf $1}'`

nasm -f elf $1 -o ${file_asm_no_extension}.o
ld -s ${file_asm_no_extension}.o -o $file_asm_no_extension
