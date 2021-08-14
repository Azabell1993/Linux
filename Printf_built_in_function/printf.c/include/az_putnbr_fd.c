#include "stdio.h"

void	az_putnbr_fd(int n, int fd)
{
	if (n < 0)
	{
		az_putchar_fd('-', fd);
		n = -n;
	}
	else if (n >= 10)
	{
		az_putnbr(n / 10);
		az_putnbr(n % 10);
	}
	else
		az_putchar_fd(n + '0', fd);
}
