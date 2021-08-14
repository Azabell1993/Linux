#include "stdio.h"

int		az_tolower(int c)
{
	if (az_isupper(c))
		c = c + 32;
	return (c);
}
