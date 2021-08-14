#include "stdio.h"

static void	az_puthex_rec(unsigned int n)
{
	char	c;
	char	*map;

	map = "0123456789abcdef";
	if (n)
	{
		c = (char)(n & 0xF);
		n = (n >> 4);
		az_puthex_rec(n);
		az_putchar(map[(int)c]);
	}
}

static void	az_puthex_rec2(unsigned int n)
{
	char	c;
	char	*map;

	map = "0123456789abcdef";
	if (n)
	{
		c = (char)(n & 0xF);
		n = (n >> 4);
		az_puthex_rec(n);
		az_putchar(az_toupper(map[(int)c]));
	}
}

void		az_puthex_pf(unsigned int n, char flag)
{
	if (flag != '#')
		az_puthex_rec(n);
	else
		az_puthex_rec2(n);
}
