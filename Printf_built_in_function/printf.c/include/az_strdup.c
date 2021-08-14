#include "stdio.h"
#include <stdlib.h>

char	*az_strdup(const char *s1)
{
	char	*tmp;

	if (s1 == NULL)
		az_putstr("Error: NULL string.");
	tmp = (char *)malloc(sizeof(char) * az_strlen(s1) + 1);
	if (tmp)
		tmp = az_strcpy(tmp, s1);
	tmp[az_strlen(s1)] = '\0';
	return (tmp);
}
