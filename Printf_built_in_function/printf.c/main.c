#include "program.h"

int		function_Test(int a, int b);

int		main(void)
{
	az_printf("Hello world!\n");

	az_printf("A single character : %c \n", 'T');

	az_printf("An integer : %d \n", 37);
	az_printf("An integer : %d \n", 299);

	az_printf("5-4 = %d\n", 1);

	int	a;
	int	b;


	a = 1;
	b = 2;

	az_printf("%d + %d = %d\n", a, b, a+b);
	az_printf("%d\t\t\t String.\n",12345678);
	
	az_printf("-650\n");

	az_printf("%+d\n", 430);
	az_printf("%+1d\n",650);
	az_printf("%+10d\n", 499);
	az_printf("% 3d\n",1230);
	az_printf("%08d\n", 342);
	az_printf("%+03d\n", -430);
	az_printf("%3d\n", -43);
	az_printf("%u\n", 23919293929392);
	az_printf("%+-u\n", 12345);
	az_printf("%+10u\n", 12345);
	az_printf("%-4s\n", "Az");
	az_printf("%o\n", 333);
	az_printf("%-0#+10o\n", 2048);
	az_printf("%X\n", 12345678);
	az_printf("%#+x\n", 12345678);

	az_printf("\n\nfunction call Test\n");



	az_printf("%d + %d = %d", 5, 6, function_Test(5, 6));
	az_printf("\n");
	az_putchar('H');
	az_putchar('E');
	az_putchar('L');
	az_putchar('L');
	az_putchar('O');
	az_putchar('\n');

	az_printf("-\n");
	az_printf(".\n");
	az_printf("/\n");
	az_printf("'()*+,-./\n");



	//////////////////////////////////////////////////////////////////////////////////////////////
    printf("(space)_d\n\n");
    printf("<<Printf>>\n");
    printf("Input\t\t: 980\n");
    printf("Output\t\t:% d\n\n", 980);

	az_printf("az_printf\n");
	az_printf("Input\t\t: 980\n");
	az_printf("Output\t\t:% d\n\n", 980);

    printf("(space)_d\n\n");
    printf("<<Printf>>\n");
    printf("Input\t\t: 80\n");
    printf("Output\t\t:% d\n\n", 80);

	az_printf("az_printf\n");
	az_printf("Input\t\t: 80\n");
	az_printf("Output\t\t:% d\n\n", 80);

	printf("(space)4s\n\n");
	printf("<<printf>>\n");
	printf("Input\t\t: Cg\n");
	printf("Output\t\t:% 4s\n\n", "Cg");

	az_printf("az_printf\n");
	az_printf("Input\t\t: Cg\n");
	az_printf("Output\t\t:% 4s\n\n", "Cg");

    printf("(space)7s\n\n");
	printf("<<printf>>\n");
    printf("Input\t\t: Clang\n");
    printf("Output\t\t:% 7s\n\n", "Clang");

    az_printf("az_printf\n");
    az_printf("Input\t\t: Clang\n");
    az_printf("Output\t\t:% 7s\n\n", "Clng");

    int     checkNum;
    checkNum = 487512;

    printf("<<printf>>\n");
    printf("Input\t\t: &tmpInt\n");
    printf("Output\t\t:%p\n\n", &checkNum);

    az_printf("az_printf\n");
    az_printf("Input\t\t: &tmpInt\n");
    az_printf("Output\t\t:%p\n\n", &checkNum);

    //Specifier 10p check
    printf("10p\n\n");
    printf("<<printf>>\n");
    printf("Input\t\t: &tmpInt\n");
    printf("Output\t\t:%10p\n\n", &checkNum);

    az_printf("az_printf\n");
    az_printf("Input\t\t: &tmpInt\n");
    az_printf("Output\t\t:%10p\n\n", &checkNum);
    return (0);

}

int		function_Test(int a, int b)
{
	int sum = a + b;

	return (sum);
}

