#include "stdio.h"

void	az_putunsigned(unsigned int n)
{
	if (n > 9)
	{
		az_putunsigned(n / 10);
		az_putunsigned(n % 10);
	}
	else
		az_putchar(n + '0');
}
