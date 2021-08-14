#include "stdio.h"

void	az_putnbr_endl(int n)
{
	if (n < 0)
	{
		az_putchar('-');
		n = -n;
	}
	else if (n >= 10)
	{
		az_putnbr(n / 10);
		az_putnbr(n % 10);
	}
	else
		az_putchar(n + '0');
	az_putchar(10);
}
