#include "stdio.h"

size_t	az_wchrlen(wchar_t *s)
{
	size_t	i;

	i = 0;
	while (s[i] != '\0')
		i++;
	return (i);
}
