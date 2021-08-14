#include "stdio.h"

int		az_strbchr(const char *s, int c)
{
	char	*tmp;
	int		i;

	tmp = (char *)s;
	i = 0;
	while (tmp[i])
	{
		if (tmp[i] == c)
			return (1);
		i++;
	}
	return (0);
}
