#include "stdio.h"
#include <unistd.h>

void	az_putchar_fd(char c, int fd)
{
	write(fd, &c, 1);
}

