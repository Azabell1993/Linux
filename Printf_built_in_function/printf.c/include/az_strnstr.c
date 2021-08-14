#include "stdio.h"

char	*az_strnstr(const char *big, const char *little, size_t len)
{
	size_t	i;
	size_t	track;
	size_t	length;

	i = 0;
	track = 0;
	length = az_strlen(little);
	if (length == 0)
		return (char *)big;
	while (big[i] && len >= length)
	{
		while (little[track] == big[i + track])
		{
			if (track == (length - 1))
				return ((char *)big + i);
			track++;
		}
		track = 0;
		i++;
		len--;
	}
	return (NULL);
}
