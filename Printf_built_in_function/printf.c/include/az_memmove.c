#include "stdio.h"

void	*az_memmove(void *dst, const void *src, size_t len)
{
	size_t		i;
	char		*s1;
	const char	*s2;

	s1 = dst;
	s2 = src;
	if (len != 0)
	{
		i = 0;
		while (i < len || (i < az_strlen(dst)))
		{
			s1[i] = s2[i];
			i++;
		}
		s1[i] = '\0';
	}
	return (s1);
}
