#include <unistd.h>
#include <stdio.h>

void	az_putChar(char c);
void	az_getString(char buffer[], int limit);

int		main(void)
{
	char	flags[1024];
	int		state;

	state = az_getString(flags, 9);

	if(state == 1)
		printf("input : %s\n", flags);
	else
		printf("input : %s -> out of range\n", flags);

	return (0);
}


int		az_getString(char buffer[], int limit)
{
	int i;

	i = 0;
	while(i < limit)
	{
		buffer[i] = az_putChar();
		if(buffer[i] == '%')
		{
			buffer[i] = 0;
			return (1);
		}
		buffer[i] = 0;
		rewind(stdin);
		i++;
	}
}


void	az_putChar(char c)
{
	int dword_c;
	dword_c = (char)c;

	asm volatile(
			".intel_syntax noprefix;"
			"mov r10, rsp;" 	/* save rsp */
			"sub rsp, 8;"		/* space for buffer, align by 8 */
			"mov [rsp], al;"	/* store the character into buffer */
			"mov edi, 1;"		/* STDOUT */
			"mov rsi, rsp;"		/* pointer to buffer */
			"mov edx, 1;"		/* string length in bytes */
			"mov eax, 1;"		/* WRTIE */
			"syscall;"			/* clobbers rcx & r11 */
			"mov rsp, r10;"		/* restor rsp */
			".att_syntax prefix;"
			: /* outputs */
			: "a"(dword_c) /* inputs : eax */
			: "rcs", "rdx", "rsi", "rdi", "r10", "r11"
			);
}


