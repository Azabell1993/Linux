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

void		az_puthex(unsigned int n)
{
	az_puthex_rec(n);
}
