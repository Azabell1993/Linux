#include "stdio.h"

size_t	az_strlcat(char *dst, const char *src, size_t size)
{
	size_t		i;
	size_t		delim;
	size_t		res;

	i = 0;
	while (dst[i] != '\0' && i < size)
		i++;
	delim = i;
	while (src[i - delim] && i < (size - 1))
	{
		dst[i] = src[i - delim];
		i++;
	}
	if (delim < size)
		dst[i] = '\0';
	res = delim + az_strlen(src);
	return (res);
}
