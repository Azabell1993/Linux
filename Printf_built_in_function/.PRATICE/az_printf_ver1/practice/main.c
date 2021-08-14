#include <string.h>
#include <stdarg.h>
#include "program.h"
#include "vsprintf.h"

void	az_printf(const char*format, ...);
char 	az_putchar(char az_char);
int		az_strncmp(const char *s1, const char *s2, size_t n);
int		az_sprintf(char *buf, const char *format, ...);

int		main(void)
{
	az_printf("Hello world!\n");
    
	az_printf("A single character : %c \n", 'T');
	
	az_printf("An integer : %d \n", 37);
	az_printf("An integer : %d \n", 299);

	az_printf("5-4 = %d\n", 1);


	/* 추가 구현이 필요함 */
	/* 내장함수 추가해야 할 출력문들 */

	int	a;
	int	b;

	a = 1;
	b = 2;

	az_printf("%d + %d\n", a, b, a+b);


	az_printf("%#x\n\n", 16777215);
	az_printf("%#-X\n\n", 16215);
	az_printf("%#-0+10o\n\n", 2048);

	az_printf("Input\t\t: 650\n");
    az_printf("Output\t\t: ");
    az_printf("% d\n\n", 650);
    
	az_printf("%d\n", 123);
	az_printf("%02d\n", 123);

	return 0;
}

void	az_printf(const char *format, ...)
{
    va_list ap;
    char 	arr[50];
	int 	i;
	int 	Num;

	i = 0;
    va_start(ap, format);
    while(*format)
    {
        if(az_strncmp(format, "%d",2) == 0)
		{
            Num = va_arg(ap, int);
            az_sprintf(arr, "%d", Num);

            while(arr[i]!='\0'){
                az_putchar(arr[i]);
                i++;
            }
            format = format + 2;
        }
        else if(az_strncmp(format, "%c", 2)==0)
        {
			az_putchar(va_arg(ap, int));            
            format = format + 2;
        }
        else
		{
            az_putchar(*format);
            format++;
        }
    }
    va_end(ap);
}

int		az_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	i;
	char	*my_s1;
	char	*my_s2;

	i = 0;
	my_s1 = (char *)s1;
	my_s2 = (char *)s2;

	while (i < n)
	{
		if (my_s1[i] == '\0' && my_s2[i] == '\0')
			return (0);
		if (my_s1[i] != my_s2[i])
			return (my_s1[i] - my_s2[i]);
		i++;
	}
	return (0);
}

int		az_sprintf(char *buf, const char *format, ...)
{
	va_list 	args;
	int			i;

	va_start(args, format);
	i = vsprintf(buf, format, args);
	va_end(args);
	return (i);
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

