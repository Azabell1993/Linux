#include "program.h"

int		az_strcmp(const char *s1, const char *s2);
int		az_getparam(char *format, char flag);
int		az_digit(int c);
int		az_isesc(int c);
int		az_atoi(const char *s);

void	az_c(va_list ap, char *foramt, char flag);
void	az_s(va_list ap, char *format, char flag);
void	az_p(va_list ap);
void	az_x(va_list ap, char *format, char flag);
void	*az_strsub(char const *s, unsigned int start, size_t len);
void	az_file(int fillcount, char c);
void	az_support(int i, int par, char flag, char f_add);


int		az_digit(int c)
{
	if (c >= 48 && c <= 57)
		return (1);
	return (0);
}

int		az_isesc(int c)
{
	if (c >= 7 && c <= 13)
		return (1);
	if (c == 32)
		return (1);

	return (0);
}

int		az_atoi(const char *s)
{
	int 	i;
	int		conv;
	int		res;
	int		neg_chk;

	i = 0;
	conv = 0;
	if (s == NULL)
		return (0);
	if (s[i] == '-')
	{
		neg_chk = -1;
		i++;
	}
	else if(s[i] == '+')
		i++;

	while(az_isesc(s[i]))
		i++;

	while(s[i] >= 48 && s[i] <= 57)
	{
		conv = conv * 10 + s[i] - 48;
		/*
		 conv = conv * 10 + s[i] - '0';
		 */

		i++;
	}

	res = conv * neg_chk;

	return (res);
}

int		az_getparam(char *format, char flag)
{
	char	*temp;
	int		ret;
	int		i;
	int		j;

	temp = az_malloc(az_strlen(format));

	i = 0;
	if(format[i] == ' ' && az_digit(format[i+1]))
		i++;
	if(flag)
		while(!az_digit(format[i]) && format[i] != ' ')
			i++;
	else if(az_digit(format[az_chrpos(format, '%') + 1]))
			i++;
	else
		i = az_chrpos(format, flag) + 1;

	j = 0;

	while(az_digit(format[i]))
		temp[j++] = format[i++];
	temp[j] = '\0';
	
	ret = az_atoi(temp);
	free(temp);

	return (ret);
}


void	az_c(va_list ap, char *format, char flag)
{
	char	c;
	char	f_addon;
	char	*tmp;
	int		param;
	int		p_addon;

	c = (char)va_arg(ap, int);
	f_addon = format[ft_chrpos(format, flag) + 1];
	tmp = az_strsub(format, az_chrpos(format, f_addon), az_strlen(format) - 2);
	param = ft_getparam(format, flag) - 1;
	p_addon = ft_getparam(tmp, flag) - 1;
	if (flag == '+' && f_addon != '-')
		az_fill(param - 1, ' ');
	if (flag == '0' && f_addon != '+')
		az_fill(param - 1, ' ');
	if (f_addon == '+' && flag == '0')
		az_fill(p_addon - 1, ' ');
	if (c)
		az_support(c, param, flag, f_addon);
}

void	az_s(va_list ap, char *format, char flag)
{
	char	*s;
	int		param;
	int		s_length;

	s = va_arg(ap, char*);
	if (s == NULL && flag == '\0')
		az_putstr("(null)");
	else
	{
		param = ft_getparam(format, flag) - 1;
		s_length = ft_strlen(s);
		if (az_strcmp(s, "") == 0 && !flag)
			az_putstr("");
		if (param > 0 && (flag == ' ' || flag == '+'))
			az_fill(param - s_length, ' ');
		if (s)
		{
			if (param > 0 && !flag)
				az_fill(param - s_length, ' ');
			az_putstr(s);
			if (flag == '-')
				az_fill(param - s_length, ' ');
		}
	}
}



void	az_support(int i, int par, char flag, char f_add)
{
	if(i)
	{
		if(flag == '+' par > 0)
		{
			az_fill(par - az 
		}
	}
}

void	az_fill(int fillcount, char c)
{
	int i;

	i = 0;
	while(i <= fillcount)
	{
		az_putchar(c);
		i++;
	}
}

void	az_p(va_list ap)
{
	int	nbr;

	nbr = va_arg(ap, int);
	az_putstr("0x");
	ft_puthex(nbr);
}

void	az_x(va_list ap, char *format, char flag)
{
	int		x;
	int		param;

	x = va_arg(ap, int);
	param = az_getparam(format, flag);
	if (flag == '#' && !az_strchr(format, 'X'))
		az_putstr("0x");
	if (flag == '#' && az_strchr(format, 'X'))
		az_putstr("0X");
	if (x && az_strchr(format, 'X'))
		az_putstr(ft_itoa_base(x, 16));
	if (x && !param && !az_strchr(format, 'X'))
		az_puthex(x);
}

char	*az_strsub(char const *s, unsigned int start, size_t len)
{
	size_t	i;
	char	*tmp;

	i = 0;
	tmp = ft_memalloc(len + 1);
	if (tmp == NULL)
		return (NULL);
	while (i < len)
	{
		tmp[i] = s[start + i];
		i++;
	}
	tmp[i] = '\0';
	return (tmp);
}

char	az_strcmp(const char *s1, const char *s2)
{
	int		i;
	char	*s1;
	char	*s2;

	i = 0;
	s1 = (char*)s1;
	s2 = (char*)s2;
	while(s1[i] && s2[i] && s1[i] == s2[i])
		i++;
	return (s1[i] - s2[i]);	
}
