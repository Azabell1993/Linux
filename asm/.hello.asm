section .data

msg	db "Hello World", 0xa  	;string to be printed
len equ	$ - msg				;length of the string

section .text
	global _start	;must be declared for linker (ld)

_start:
	mov edx, len;  	;message length
	mov ecx, msg;	;message to write
	mov ebx, 1;		;file desriptor (stdout)
	mov eax, 4;		;system call number (sys_write)
	int 0x80;		;call kernel

	mov ebx, 0;		;system call number (sys_exit)
	mov eax, 1;		;call kernel
	int 0x80;
