#include <stdarg.h>

void	Function(const char *format, ...)
{
	va_list ap; //스택에 있는 인수를 읽을 때 포인터 연산을 해야되는데 현재 일고 있는 번지를 기억
	va_start(ap, format); //ap포인터가 첫 번째 가변 인수를 가리키도록 초기화한다.
	while(*format) //모든 인수를 읽을 때까지
	{
		va_arg(ap, int); //인수 타입 결정
	}
	va_end(ap);
}
