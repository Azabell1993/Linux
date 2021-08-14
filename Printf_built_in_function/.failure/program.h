#ifndef PROGRAM_H
#define PROGRAM_H

#include <unistd.h>
#include <stdarg.h>
#include <stdlib.h>
#include <malloc.h>
#include "char.h"
#include "atoi.h"

size_t	az_strlen(const char *s);
size_t 	az_nbrlen(int n);

char	az_strchr(const char *s, int c);

int		az_isprint(int c);
int		az_chrpos(const char *s, int c);
int		Printf(const char *format);

void	az_putchar(char az_char);
void	az_putstr(char const *s);
void	*az_malloc(size_t size);
void	*az_memset(void *b, int c, size_t len);
void	az_typeini(char *format, char specif, char flag, va_list ap);

static	void	az_process(char *format, va_list ap);
static	void	az_mod(char *format);
static	void	az_input(char *format, va_list ap);
static	void	az_output(char *format, va_list ap);
static	void	az_check(char *format);
static 	void	az_Rputhex(unsigned int n);
static	void	az_puthex(unsigned int n);


void az_putchar(char az_char)
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

static	void	az_Rputhex(unsigned int n)
{
	char	c;
	char	*map;

	map = "0123456789abcdef";
	if (c)
	{
		c = (char)(n&0xF);
		n = (n >> 4);
		az_puthex(n);
		az_putchar(map[(int)c]);
	}
}

static	void	az_puthex(unsigned int n)
{
	az_Rputhex(n);
}


void	*az_malloc(size_t size)
{
	void	*tmp;

	tmp = malloc(size);

	if(tmp == NULL)
		return (NULL);
	return (az_mset(tmp, 0, size);
}

void	*az_meset(void *b, int c, size_t len)
{
	unsigned char	*s;
	size_t			i;

	i = 0;
	if (len == 0)
		return (b);
	s = b;

	while (i < len)
	{
		s[i] = (unsigned char)c;
		i++;
	}
	return (b);
}

static void az_process(char *format, va_list ap)
{
	char flags;
	int	i;

	i = 0;
	while(format[i])
	{
		if(format[i] == '%')
		{
			i++;
			flags =  az_putchar(format[i]);
			i = az_output(format, flag, ap, i);
		}
		else if(format[i] != '\0')
		{
			az_putchar(format[i]);
		}
		i++;	
	}
}

static	void	az_mod(char *format)
{
	int i;

	i = 0;
	while(format[i])
	{
		if(format[i] == '%')
		{
			i++;
			if(format[i] == '%')
			{
				az_putchar(format[i++]);
			}
		}
		az_putchar(format[i]);
		i++;
	}
}

int		az_chrpos(const char *s, int c)
{
	int i;

	i = 0;
	while(s[i])
	{
		if ((int)s[i] == c)
		{
			return (i);
		}
		i++;
	}

	return (-1);
}

static	void	az_check(char *format)
{
	int pos;

	pos = az_chrpos(format, '%');

	if (format[pos + 1] == '%' && format[pos] == '%')
		return (2);
	else if(pos == -1)
		return (-1);
	else if(pos == 0 || format[0] == '%')
		return (1);
	else if(pos > 0)
		return (1);
	else
		return (0);
}

void	az_putstr(char const *s)
{
	int i;

	i = 0;
	while(s[i])
	{
		az_putchar(s[i]);
		i++;
	}
}

int		az_input(char *format, va_list ap)
{
	int ret;

	ret = az_check(format);
	if(ret == 1)
		az_process(format, ap);
	else if(ret == 2)
		az_mod(format);
	else
	{
		if (ret < 0)
			az_putstr(format);
	}
}

int		az_output(char *format, va_list ap)
{
	//i = az_skip(format, i);
	az_typeini(format, format[i], flag, ap);
	return (i);
}

void	az_typeini(char *format, char specif, char flag, va_list ap)
{
	if (specif == 'c' || specif == 'C')
		az_c(ap, format, flag);
	else if (specif == 's' || specif == 'S')
		az_s(ap, format, flag);
	else if (specif == 'p')
		az_p(ap);
	else if (specif == 'x' || specif == 'X')
		az_x(ap, format, flag);
	else if (specif == 'd' || specif == 'D')
		az_d(ap, format, flag);
	else if (specif == 'i')
		az_i(ap, format, flag);
	else if (specif == 'o' || specif == 'O')
		az_o(ap, format, flag);
	else if (specif == 'u' || specif == 'U')
		az_u(ap, format, flag);
}


int		az_isprint(int c)
{
	if(c >= 32 &&  c <= 126)
		return (1);
	return (0);
}

size_t	az_nbrLen(int n)
{
	size_t Len;

	len = 0;
	if(n < 0)
	{
		len++;
	}

	while (n / 10 != 0)
	{
		n = n/10;
		len++;
	}

	len++;

	return (len);
}

size_t	az_strlen(const char *s)
{
	size_t i;

	i = 0;
	if(s[i] == '\0' || az_isprint(s[i]) == 0)
		return (0);

	while(s[i] != '\0' && az_isprint(s[i]))
		i++;

	return (i);

}

char	*az_strchr(const char *s, int i)
{
	char	*tmp;
	int		i;
	int		track;

	tmp = (char*)malloc(sizeof(char) * az_strlen(s));
	i = 0;
	track = 0;
	if((char)s[i] != '\0')
		i = i - 1;

	while(s[i] != '\0')
	{
		tmp[track] = (char)s[i];
		i++;
		track++;
	}

	tmp[track] = '\0';
	if(track == 0)
		return (NULL);

	return (tmp);
}

#endif
