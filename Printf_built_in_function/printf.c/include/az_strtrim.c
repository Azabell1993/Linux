#include "stdio.h"
#include <stdlib.h>

char	*az_strtrim(char const *s)
{
	unsigned int	i;
	unsigned int	end;
	unsigned int	start;
	char			*tmp;

	i = 0;
	start = 0;
	while (az_isesc(s[i]))
		i++;
	if (s[i] == '\0')
		return (az_strcpy(az_memalloc(sizeof(char) * 2), ""));
	end = az_strlen(s) - 1;
	while (az_isesc(s[i]))
		end--;
	tmp = (char *)malloc(sizeof(char) * (end - i + 2));
	if (tmp == NULL)
		return (NULL);
	while (start < end - i + 1)
	{
		tmp[start] = s[i + start];
		start++;
	}
	tmp[start] = '\0';
	return (tmp);
}
