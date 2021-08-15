#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void	az_putoctal(int n);
void	az_putunsigned(unsigned int n);
void	*az_memalloc(size_t size);
int		az_isdigit(int c);
int		az_isalpha(int c);
char	*az_itoa(int value, int base);
char	*az_strsub(char const *s, unsigned int start, size_t len);
size_t	az_nbrlen(int n);
int		az_isprint(int c);
size_t	az_strlen(const char *s);
void	az_puthex(unsigned int n);
void	az_putnbr(int n);
int		az_chrpos(const char *s, int c);
void	*az_memset(void *b, int c, size_t len);
void	az_bzero(void *s, size_t n);
void	az_putchar_fd(char c, int fd);
void	az_putchar(char c);
void	az_putstr(const char *s);
int 	az_atoi(const char *s);
int		az_strcmp(const char *s1, const char *s2);
char	*az_strchr(const char *s, int c);
static int		az_pow(int nb, int pow);


//문자열을 정수로 변환하기
int 	az_atoi(const char *s)
{
	int 	i;
	int		conv;
	int		res;
	int		neg_chk;

	i = 0;
	conv = 0;
	neg_chk = 1;

	//NULL이라면 0반환.
	if (s == NULL)
		return (0);
	
	//'-' op라면 마이너스로 증가.
	if(s[i] == '-')
	{
		neg_chk = -1;
		i++;
	}
	//'+' op라면 플러스로 증가함.
	else if (s[i] == '+')
		i++;

	while (s[i] >= 48 && s[i] <= 57)
	{
		conv = conv * 10 + s[i++] - 48;
	}
	res = conv * neg_chk;
	return (res);
}

//az_putchar를 스트링으로 반환
void	az_putstr(const char *s)
{
	int i;

	i = 0;
	while(s[i])
	{
		//인덱스 i에 character를 하나씩 받아오면서 스트링으로 완성후 반환.
		az_putchar(s[i]);
		i++;
	}
}

//1개의 문자만.
void	az_putchar(char c)
{
	write(1,&c,1);
}

//조건에 따른 putchar_fd
void	az_putchar_fd(char c, int fd)
{
	write(fd, &c, 1);
}

//0으로 채움.
void	az_bzero(void *s, size_t n)
{
	if(s == NULL)
		az_putstr("Error Null input\n");
	az_memset(s, 0, n);
}

//C함수 메모리를 0으로 채움memset
void	*az_memset(void *b, int c, size_t len)
{
	unsigned char 	*s;
	size_t			i;

	i = 0;
	if(len == 0)
		return (b);
	s = b;
	while(i < len)
	{
		s[i] = (unsigned char)c;
		i++;
	}
	return (b);
}

//마지막 위치 반환
int		az_chrpos(const char *s, int c)
{
	int		i;

	i = 0;
	while(s[i])
	{
		if((int)s[i] == c)
			return (i);
		i++;
	}
	return (-1);
}

//-면 -를 붙여서 숫자를 나열시키기
//+면 없음.
void	az_putnbr(int n)
{
	unsigned int i;

	i = 0;
	if(n >= 0)
	{
		i = n;
	}

	if(n < 0)
	{
		i = n * -1;
		az_putchar('-');
	}

	if(i >= 10)
	{
		az_putnbr(i / 10);
	}

	az_putchar((i % 10) + '0');
}

//16진수로 변환.
void		az_puthex(unsigned int n)
{
	char 	ch;
	char	*str;

	str = "0123456789abcdef";
	if(n)
	{
		/*
		10진수	16진수	2진수
		0		0x0		0000
		1		0x1		0001
		2		0x2		0010
		3		0x3		0011
		4		0x4		0100
		5		0x5		0101
		6		0x6		0110
		7		0x7		0111
		8		0x8		1000
		9		0x9		1001
		10		0xA		1010
		11		0xB		1011
		12		0xC		1100
		13		0xD		1101
		14		0xE		1110
		15		0xF		1111
		*/

		//0xF : 15(1111)임 
		ch = (char)(n & 0xF);
		n = (n >> 4);
		az_puthex(n);
		az_putchar(str[(int)ch]);
	}
}

//strlen내장 함수. 안에 있는 문자열 세기.
size_t	az_strlen(const char *s)
{
	size_t	i;

	i = 0;
	while(s[i] == '\0' || az_isprint(s[i]) == 0)
	{
		return (0);
	}

	while(s[i] != '\0' && az_isprint(s[i]))
	{
		i++;
	}

	return (i);
}

//아스키코드 고려
//입력이 가능한 범위
//출력 가능한 문자 32~126 (출력 가능한 문자 및 문장부호, 숫자,영대문자,영소문자,구두점 등)
int		is_isprint(int c)
{
	if (c >= 32 && c <= 126)
	{
		return (1);
	}
	return (0);
}

//이거는 az_d, i, u에서 size_t 
size_t		az_nbrlen(int n)
{
	size_t	len;

	len = 0;
	if(n < 0)
	{
		len++;
	}

	while(n / 10 != 0)
	{
		n = n / 10;
		len++;
	}

	len++;
	return (len);
}

//문자열 리턴.
char	*az_strsub(char const *s, unsigned int start, size_t len)
{
	size_t	i;
	char	*tmp;

	i = 0;
	tmp = az_memalloc(len + 1);
	
	if (tmp == NULL)
	{
		return (NULL);
	}

	while (i < len)
	{
		tmp[i] = s[start + i];
		i++;
	}
	
	tmp[i] = '\0';
	
	return (tmp);
}

//원래 itoa()는 비주얼 스튜디오에서만 정의해놓은 함수라서 리눅스에서는 따로 만들어야함.
//*itoa(int val, char *buf, int radix);
//아스키 코드 원리를 알면 이정도는 그냥 직관적으로 쉽게 이해가능.
////////////////////////////////////////////////////////////////////////////////////////
static int		az_pow(int nb, int pow)
{
	if (pow == 0)
		return (1);
	else
		//재귀호출
		//함수원형 az_itoa에서는 10진수가 요구조건이므로 10임.
		return (nb * az_pow(nb, pow - 1));
}

char			*az_itoa(int value, int base)
{
	int		i;
	char	*nbr;
	int		neg;

	//10진수
	//base = 10..
	i = 1;
	neg = 0;
	if (value < 0)
	{
		if (base == 10)
			neg = 1;
		value *= -1;
	}

	//
	while (az_pow(base, i) - 1 < value)
		i++;
	
	nbr = (char*)malloc(sizeof(nbr) * i);
	nbr[i + neg] = '\0';
	
	while (i-- > 0)
	{
		nbr[i + neg] = (value % base) + (value % base > 9 ? 'A' - 10 : '0');
		value = value / base;
	}
	
	if (neg)
		nbr[0] = '-';
	
	return (nbr);
}
//////////////////////////////////////////////////////////////////////////////////////
//아스키코드라서 주석 필요없음.
//skip 알파벳.
int		az_isalpha(int c)
{
	if (c >= 97 && c <= 122)
		return (1);
	if (c >= 65 && c <= 90)
		return (1);
	return (0);
}

//1~9 숫자.
int		az_isdigit(int c)
{
	if (c >= 48 && c <= 57)
		return (1);
	return (0);
}

////////////////////////////////////////////////////////////////////////////////////////

void	*az_memalloc(size_t size)
{
	void		*tmp;

	tmp = malloc(size);
	if(tmp == NULL)
		return (NULL);
	return (az_memset(tmp, 0, size));
}

void	az_putoctal(int n)
{
	if (n < 0)
	{
		az_putchar('-');
		az_putnbr(-n);
	}
	else if (n > 9)
	{
		az_putoctal(n / 8);
		az_putoctal(n % 8);
	}
	else
		az_putchar(n + '0');
}

void	az_putunsigned(unsigned int n)
{
	if (n > 9)
	{
		az_putunsigned(n / 10);
		az_putunsigned(n % 10);
	}
	else
		az_putchar(n + '0');
}



/////////////////////////////////////////////////////////////////////////////////////
//
//strcmp 내장함수.
int		az_strcmp(const char *s1, const char *s2)
{
	int		i;
	char	*my_s1;
	char	*my_s2;

	i = 0;
	my_s1 = (char *)s1;
	my_s2 = (char *)s2;
	while (my_s1[i] && my_s2[i] && my_s1[i] == my_s2[i])
		i++;
	return (my_s1[i] - my_s2[i]);
}

char	*az_strchr(const char *s, int c)
{
	char	*tmp;
	int		i;
	int		track;

	tmp = (char *)malloc(sizeof(char) * az_strlen(s));
	i = 0;
	track = 0;

	if ((char)s[i] == '\0')
		return (NULL);

	while (s[i] != '\0' && s[i] != c)
		i++;

	if (s[i] != '\0')
		i = i - 1;

	while (s[i] != '\0')
	{
		tmp[track] = (char)s[i];
		i++;
		track++;
	}

	tmp[track] = '\0';

	if (track == 0)
		return (NULL);

	return (tmp);
}
