#include "stdio.h"

int		az_strnequ(char const *s1, char const *s2, size_t n)
{
	return (az_strncmp(s1, s2, n) ? 0 : 1);
}
