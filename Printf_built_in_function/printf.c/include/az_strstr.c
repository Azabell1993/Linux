#include "stdio.h"

char	*az_strstr(const char *big, const char *little)
{
	size_t	i;
	size_t	track;
	size_t	len;

	i = 0;
	track = 0;
	len = az_strlen(little);
	if (len == 0)
		return (char *)big;
	while (big[i])
	{
		while (little[track] == big[i + track])
		{
			if (track == (len - 1))
				return ((char *)big + i);
			track++;
		}
		track = 0;
		i++;
	}
	return (NULL);
}
