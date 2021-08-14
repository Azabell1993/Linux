#include "stdio.h"

char	az_ishex(int n)
{
	if (n > 9)
		return (65 + (n - 10));
	return (n + 48);
}
