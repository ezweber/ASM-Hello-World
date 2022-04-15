; hello_world.asm
;
; Made by ezweber
; 4-14-2022

global _start

section .text:

	_start
		mov eax, 0x4 		; write syscall
		mov ebx, 1              ; use stdout as the file descriptor
		mov ecx, message
		mov edx, messageLen
		int 0x80                ; syscall

		; exit

		mov eax, 0x1
		mov ebx, 0
		int 0x80

section .data:
	message: db "Hello World!", 0xA
	messageLen: equ $-message
	
