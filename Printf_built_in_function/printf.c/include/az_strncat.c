#include "stdio.h"

char	*az_strncat(char *s1, const char *s2, size_t n)
{
	size_t		i;
	size_t		i_2;
	char		*my_s1;

	i = 0;
	i_2 = az_strlen(s1);
	my_s1 = s1;
	if (s2 == NULL)
	{
		my_s1[i_2 - 1] = '\0';
		return (my_s1);
	}
	while (s2[i] != '\0' && i < n)
	{
		my_s1[i_2 + i] = (char)s2[i];
		i++;
	}
	my_s1[i_2 + i] = '\0';
	return (my_s1);
}
