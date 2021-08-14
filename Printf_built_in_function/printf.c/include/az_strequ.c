#include "stdio.h"

int		az_strequ(char const *s1, char const *s2)
{
	return (az_strcmp(s1, s2) ? 0 : 1);
}
