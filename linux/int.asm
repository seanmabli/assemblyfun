section .text
  global _start     ; call

_start:
  mov eax, [data]   ; move data into eax
  add eax, 0x30     ; add 0
  mov [data], eax   ; move eax into data

  mov	eax, 4        ; print command
  mov	ecx, data     ; print data
  mov	edx, len      ; print length
  int	0x80          ; run in kernel

  mov	eax, 1        ; exit command
  int	0x80          ; run in kernel

section .data
  data db 51        ; define data
  len equ $ - data  ; define data length