#include "stdio.h"

int		az_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	i;
	char	*my_s1;
	char	*my_s2;

	i = 0;
	my_s1 = (char *)s1;
	my_s2 = (char *)s2;
	while (i < n)
	{
		if (my_s1[i] == '\0' && my_s2[i] == '\0')
			return (0);
		if (my_s1[i] != my_s2[i])
			return (my_s1[i] - my_s2[i]);
		i++;
	}
	return (0);
}
