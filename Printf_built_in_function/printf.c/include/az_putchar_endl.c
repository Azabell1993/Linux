#include "stdio.h"
#include <unistd.h>

void	az_putchar_endl(char c)
{
	write(1, &c, 1);
	az_putchar(10);
}
