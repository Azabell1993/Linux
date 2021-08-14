#include "stdio.h"
#include <stdlib.h>

char	*az_strrchr(const char *s, int c)
{
	char	*tmp;
	int		i;
	int		track;

	tmp = (char *)malloc(sizeof(char) * az_strlen(s));
	i = 0;
	track = 0;
	if ((char)s[i] == '\0')
		return (NULL);
	while (s[i] != '\0' && s[i] != c)
		i++;
	if (s[i] != '\0')
		i = i - 1;
	while (s[i] != '\0')
	{
		tmp[track] = (char)s[i];
		i++;
		track++;
	}
	tmp[track] = '\0';
	return (tmp);
}
