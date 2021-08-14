#include "stdio.h"

void	*az_memccpy(void *dst, const void *src, int c, size_t n)
{
	size_t			i;
	size_t			i_trk;
	unsigned char	*d;
	unsigned char	*s;

	i_trk = 0;
	d = (unsigned char *)dst;
	s = (unsigned char *)src;
	if (n != 0)
	{
		i = 0;
		while (i < n && i_trk == 0)
		{
			if (d[i] != (unsigned char)c)
				d[i] = s[i];
			if (d[i] == (unsigned char)c)
				i_trk = i + 1;
			i++;
		}
		if (i_trk > 0)
			d[i_trk] = '\0';
	}
	return (d);
}
