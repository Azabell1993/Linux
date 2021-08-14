#include "stdio.h"

void	*az_memchr(const void *s, int c, size_t n)
{
	size_t			i;
	unsigned char	un_char;
	unsigned char	*s2;

	i = 0;
	un_char = c;
	if (s == NULL)
		return (NULL);
	s2 = (unsigned char *)s;
	while (s2[i] != un_char && i < (n - 1))
		i++;
	if (s2[i] == un_char && n != 0)
		return (s2 += i);
	return (NULL);
}
