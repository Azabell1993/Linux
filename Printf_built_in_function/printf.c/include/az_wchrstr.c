#include "stdio.h"

char	*az_wchrstr(wchar_t *src, char *dst, size_t dstlen)
{
	size_t	i;
	wchar_t	currentchar;

	i = 0;
	while (src[i] != '\0' && i < (dstlen - 1))
	{
		currentchar = src[i];
		if (currentchar < 128)
			dst[i] = (char)currentchar;
		else
		{
			dst[i] = '?';
			if (currentchar >= 0xD800 && currentchar <= 0xD8FF)
				i++;
		}
		i++;
	}
	dst[i] = '\0';
	return (dst);
}
