#include "stdio.h"

int		az_isalnum(int c)
{
	if (az_isalpha(c))
		return (1);
	if (az_isdigit(c))
		return (1);
	return (0);
}
