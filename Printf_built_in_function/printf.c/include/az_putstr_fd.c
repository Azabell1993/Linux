#include "stdio.h"

void	az_putstr_fd(char const *s, int fd)
{
	int	i;

	i = 0;
	while (s[i])
	{
		az_putchar_fd(s[i], fd);
		i++;
	}
}
