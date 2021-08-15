#include "stdio.h"

size_t	az_strlen(const char *s)
{
	size_t	i;

	i = 0;
	
	if (s[i] == '\0' || az_isprint(s[i]) == 0)
		return (0);

	while (s[i] != '\0' && az_isprint(s[i]))
		i++;

	return (i);
}
