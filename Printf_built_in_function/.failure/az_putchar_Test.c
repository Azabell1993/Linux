#include "program.h"

int main(void)
{
	Printf("a");
	Printf("\n");
	Printf("b");
	Printf("\n");
	Printf("C");
	Printf("\n");
	Printf("abcd");
}

int Printf(const char *format)
{
	va_list ap;

	va_start(ap, format);

	az_input((char*)format, ap);
	va_end(ap);

	return (0);
}

