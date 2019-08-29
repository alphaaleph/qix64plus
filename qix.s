			global _start
section .text

_start:
	mov rax, 1			; write(
	mov rdi, 1			;  	STDOUT_FILENO,
	mov rsi, msg		;  	"qix64plus\n"
	mov rdx, msglen		;	sizeof("qix64plus\n")
	syscall				; );

	mov rax, 60			; exit(
	mov rdi, 0			; 	EXIT_SUCCESS
	syscall				; );

section .rodata
	msg: db "qix64plus", 10
	msglen: equ $ - msg

