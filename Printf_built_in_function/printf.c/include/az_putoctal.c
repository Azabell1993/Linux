#include "stdio.h"

void	az_putoctal(int n)
{
	if (n < 0)
	{
		az_putchar('-');
		az_putnbr(-n);
	}
	else if (n > 9)
	{
		az_putoctal(n / 8);
		az_putoctal(n % 8);
	}
	else
		az_putchar(n + '0');
}
