#include "stdio.h"
#include <stdio.h>

char	*az_strjoin(char const *s1, char const *s2)
{
	char	*tmp;

	tmp = az_memalloc(az_strlen(s1) + az_strlen(s2));
	if (tmp == NULL)
		return (NULL);
	tmp = az_strcat((char *)s1, s2);
	tmp[az_strlen(s1) + az_strlen(s2) + 1] = '\0';
	return (tmp);
}
