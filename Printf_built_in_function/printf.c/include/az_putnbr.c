#include "stdio.h"

void	az_putnbr(int n)
{
	unsigned int i;

	i = 0;
	if(n >= 0)
	{
		i = n;
	}

	if(n < 0)
	{
		i = n * -1;
		az_putchar('-');
	}

	if(i >= 10)
	{
		az_putnbr(i / 10);
	}

	az_putchar((i % 10) + '0');
}
