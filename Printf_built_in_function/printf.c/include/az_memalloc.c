#include "stdio.h"
#include <stdlib.h>

void	*az_memalloc(size_t size)
{
	void	*tmp;

	tmp = malloc(size);
	if (tmp == NULL)
		return (NULL);
	return (az_memset(tmp, 0, size));
}
