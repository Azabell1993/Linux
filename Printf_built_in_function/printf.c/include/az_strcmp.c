#include "stdio.h"

int		az_strcmp(const char *s1, const char *s2)
{
	int		i;
	char	*my_s1;
	char	*my_s2;

	i = 0;
	my_s1 = (char *)s1;
	my_s2 = (char *)s2;
	while (my_s1[i] && my_s2[i] && my_s1[i] == my_s2[i])
		i++;
	return (my_s1[i] - my_s2[i]);
}
