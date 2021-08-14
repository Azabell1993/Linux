#include "stdio.h"

void	az_putendl_fd(char const *s, int fd)
{
	az_putstr_fd(s, fd);
	az_putchar_fd(10, fd);
}
