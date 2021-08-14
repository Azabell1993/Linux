#include "stdio.h"

int		az_toupper(int c)
{
	if (az_islower(c))
		c = c - 32;
	return (c);
}
