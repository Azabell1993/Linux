#include <unistd.h>
#include <stdarg.h>

void	az_putchar(char az_char);

int		main(void)
{
	char az_char;

	az_char = 'a';
	while(az_char <= 'z')
	{
		az_putchar(az_char);
		az_char++;
		az_putchar(' ');
	}
}


void	az_putchar(char az_char)
{
    int dword_char;
    dword_char = (char)az_char;

    asm volatile(
                    ".intel_syntax noprefix;"
                    "mov r10,rsp;"   // save rsp.
                    "sub rsp,8;"     // space for buffer, align by 8.
                    "mov [rsp],al;"  // store the character into buffer.
                    "mov edi,1;"     // STDOUT.
                    "mov rsi,rsp;"   // pointer to buffer.
                    "mov edx,1;"     // string length in bytes.
                    "mov eax,1;"     // WRITE.
                    "syscall;"       // clobbers rcx & r11.
                    "mov rsp,r10;"   // restore rsp.
                    ".att_syntax prefix;"
                    /* outputs */
                    :
                    /* inputs: eax */
                    : "b"(dword_char)
                    /* clobbered regs */
                    : "rcx", "rdx", "rsi", "rdi", "r10", "r11"
                );
}

