#include "stdio.h"

int		az_isascii(int c)
{
	if (c >= 0 && c <= 127)
		return (1);
	return (0);
}
