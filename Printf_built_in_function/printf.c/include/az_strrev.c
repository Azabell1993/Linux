#include "stdio.h"

char	*az_strrev(char *s)
{
	int		i;
	int		len;
	char	tmp;

	i = 0;
	len = 0;
	while (s[len])
		len++;
	while (i < (len / 2))
	{
		tmp = s[i];
		s[i] = s[len - i - 1];
		s[len - i - 1] = tmp;
		i++;
	}
	return (s);
}
