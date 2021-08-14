#include "stdio.h"

char	*az_strmap(char const *s, char (*f)(char))
{
	int		i;
	char	*tmp;

	i = 0;
	tmp = (char *)az_memalloc(az_strlen(s) + 1);
	if (tmp == NULL)
		return (NULL);
	while (s[i])
	{
		tmp[i] = f(s[i]);
		i++;
	}
	tmp[i] = '\0';
	return (tmp);
}
