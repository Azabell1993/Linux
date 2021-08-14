section .data
	userMsg db 	'Input the number : '
	lenUserMsg equ $-userMsg
	dispMsg db	'Output : '
	lenDispMsg equ $-dispMsg	;equ : (symbol)

section .bss
	num resb 10				;reserve byte

section .text
	global _start

_start:
	mov eax, 4				;system call number.. 4:sys_write
	mov ebx, 1				;file desriptor (stdout 1)
	mov ecx, userMsg		;'Input the number : '
	mov edx, lenUserMsg		;message length
	int 0x80				;system call

	;Read on store the user input
	mov eax, 3				;system call number.. 3: sys_read
	mov ebx, 2				;file desriptor (stderr 2)
	mov ecx, num			;message to write
	mov edx, 10 			;input 10 byte
	int 0x80				;system call

	;Output the message
	mov eax, 4				;system call number.. 4:sys_write
	mov ebx, 1				;file desriptor (stdout 1)
	mov ecx, dispMsg		;'Output : '
	mov edx, lenDispMsg		;message length
	int 0x80				;system call

	;Output the number entered
	mov eax, 4				;sys_write
	mov ebx, 1				;stdout
	mov ecx, num			;message to write
	mov edx ,10				;output 10 byte
	int 0x80				;system call
	
	;exit
	mov eax, 1				;call kernel
	mov ebx, 0				;system call number (sys_out)
	int 0x80				;system call
