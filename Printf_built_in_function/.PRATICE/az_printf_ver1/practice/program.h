#ifndef NUMBER_H_
#define NUMBER_H_

#include <stdarg.h>
#include <stddef.h>
#include <ctype.h>
#include "define.h"
#include <asm/div64.h>

int		i;
int		base;
int		size;
int		precision;
int		type;

char	c;
char	sign;
char	*str;
char	tmp[66];

unsigned long long num;

const char	*digits = "0123456789abcdefghijklmnopqrtuvwxyz";

static char *number();
void		TypeSign();
void		TypeSpecial();
void		az_number();

static 	int	az_atoi(const char **s);


static	int	az_atoi(const char **s)
{
	int	i;
	int	c;

	i = 0;
	while('0' <= (c = **s) && c <= '9')
	{
		i = i * 10 + c - '0';
		++*s;
	}

	return (i);
}

static char *number()
{
	c = (type & ZEROPAD) ? '0' : ' '; 
	sign = 0;

	if(type & LARGE)
		digits = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";

	if(type & LEFT)
		type &= ~ZEROPAD;
	if(base < 2 || base > 36)
		return (0);

	if(type & SIGN)
	{
		TypeSign();
	}
	
	if(type & SPECIAL)
	{
		TypeSign();
	}

	az_number();

	return (str);
}

void		TypeSign()
{
	if ((signed long long)num < 0) {
			sign = '-';
			num = - (signed long long)num;
			size--;
		} else if (type & PLUS) {
			sign = '+';
			size--;
		} else if (type & SPACE) {
			sign = ' ';
			size--;
		}
}

void		TypeSpecial()
{
	if (base == 16)
			size -= 2;
		else if (base == 8)
			size--;
}

void		az_number()
{
	int 	i;

	i = 0;
	if (num == 0)
		tmp[i++]='0';
	else while (num != 0) {
		//tmp[i++] = digits[do_div(num, base)];
		//make a new function
	}
	if (i > precision)
		precision = i;
	size -= precision;
	if (!(type&(ZEROPAD+LEFT)))
		while(size-->0)
			*str++ = ' ';
	if (sign)
		*str++ = sign;
	if (type & SPECIAL) {
		if (base==8)
			*str++ = '0';
		else if (base==16) {
			*str++ = '0';
			*str++ = digits[33];
		}
	}
	if (!(type & LEFT))
		while (size-- > 0)
			*str++ = c;
	while (i < precision--)
		*str++ = '0';
	while (i-- > 0)
		*str++ = tmp[i];
	while (size-- > 0)
		*str++ = ' ';
}

#endif
