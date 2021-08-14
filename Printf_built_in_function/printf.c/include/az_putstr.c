#include "stdio.h"

void	az_putstr(char const *s)
{
	int	i;

	i = 0;
	while (s[i])
	{
		az_putchar(s[i]);
		i++;
	}
}
