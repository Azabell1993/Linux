#include <string.h>
#include <stdlib.h>
#include <stdio.h>

char 	az_putchar(char az_char);

int main() {
	int 	i;
	char 	*str;

	str = (char*)malloc(sizeof(char) * 1024);
	
	i = 1;
	do {
			scanf("%c", &(str[i]));
			i++;

			if(i == '\n')
			{
				break;
			}

	} while((str[i]) != '\0');

	i = 2;
	do {
		az_putchar(str[i]);
		i++;
	} while((str[i] != '\n'));

	free (str);
	return 0;
}

char	az_putchar(char az_char)
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

	return (az_char);
}
