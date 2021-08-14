#include "stdio.h"

void	az_bzero(void *s, size_t n)
{
	if (s == NULL)
		az_putstr("Error: Null input");
	az_memset(s, 0, n);
}
