#include "stdio.h"

char	*az_strmapi(char const *s, char (*f)(unsigned int, char))
{
	int		i;
	char	*tmp;

	i = 0;
	tmp = (char *)az_memalloc(az_strlen(s) + 1);
	if (tmp == NULL)
		return (NULL);
	while (s[i])
	{
		tmp[i] = f(i, s[i]);
		i++;
	}
	tmp[i] = '\0';
	return (tmp);
}
