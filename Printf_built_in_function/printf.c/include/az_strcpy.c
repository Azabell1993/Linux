#include "stdio.h"

char	*az_strcpy(char *dst, const char *src)
{
	int		i;

	i = 0;
	if (src == NULL)
		return (NULL);
	while (src[i])
	{
		dst[i] = src[i];
		i++;
	}
	dst[i] = '\0';
	return (dst);
}
