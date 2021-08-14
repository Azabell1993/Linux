#include "stdio.h"

char	*az_strnew(size_t size)
{
	return ((char *)az_memalloc(size + 1));
}
