#include <stdio.h>
#include <unistd.h>
#include <stdarg.h>

void	az_putchar(char c)
{
	write(1, &c, 1);
}

int		multipleNumbers(int args, ...)
{
	va_list ap;
	int i;
	int ret;

	i = 0;
	ret = 1;

	va_start(ap, args);
	while(i++ < args)
	{
		ret *= va_arg(ap, int);

	}
	return (ret);
}

int main(void)
{
	int ret;

	ret = multipleNumbers(3, 3, 5, 9);
	printf("*result : %d", ret);
	return (0);
}
