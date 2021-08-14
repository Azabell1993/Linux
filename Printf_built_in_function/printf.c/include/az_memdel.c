#include "stdio.h"
#include <stdlib.h>

void	az_memdel(void **ap)
{
	free(*ap);
	*ap = NULL;
}
