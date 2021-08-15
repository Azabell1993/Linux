#include "program.h"

int 	az_printf(const char *format, ...)
{
	va_list ap;

	va_start(ap, format);
	az_default((char*)format, ap);
	va_end(ap);

	return (0);
}

///////////////////////////////////////////////////////////////////////////////
//////////////////////////default function setting/////////////////////////////
///////////////////////////////////////////////////////////////////////////////

static void	 az_default(char *format, va_list ap)
{
	int st;
	
	st = az_default_mod(format);

	if(st == 1)
	{
		az_input(format, ap);
	}
	else if(st == 2)
	{
		az_mod(format);
	}
	else
	{
		if(st < 0)
		{
			az_putstr(format); //include folder
		}
	}
}

int		az_default_mod(char *format)
{
	int mod;

	mod = az_chrpos(format, '%'); //include folder
	if (format[mod + 1] == '%' && format[mod] == '%')
	{
		return (2);
	}
	else if(mod == -1)
	{
		return (-1);
	}
	else if(mod == 0 || format[0] == '%')
	{
		return (1);
	}
	else if(mod > 0)
	{	
		return (1);
	}
	else
	{
		return (0);	
	}
}

void	az_mod(char *format)
{
	int	i;
	i = 0;
	while(format[i])
	{
		if(format[i] == '%')
		{
			i++;
			if(format[i] == '%')
			{
				az_putchar(format[i++]); //include
			}
		}
		az_putchar(format[i]);
		i++;
	}
}

/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////

static void 	az_input(char *format, va_list ap)
{
	char flag;
	int	i;

	i = 0;
	while(format[i])
	{
		if(format[i] == '%')
		{
			i++;
			flag = az_getflag(format[i]);
			i = az_output(format, flag, ap, i);
		}
		else if (format[i] != '\0')
		{
			az_putchar(format[i]);
		}
		i++;
	}
}

//////////////////////////////////////////////////////////////////////////////////
//////////////////////////// function flag setting ///////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

int		az_skip(char *format, int i)
{
	while (!az_isalpha(format[i])) 			//include folder
		i++;
	return (i);
}

void	az_fill(int fillcnt, char c)
{
	int	i;

	i = 0;
	while (i <= fillcnt)
	{
		az_putchar(c);						//include folder
		i++;
	}
}

char		az_getflag(char flag)
{
	if(flag == '0')
		return ('0');
	else if(flag == '#')
		return ('#');
	else if(flag == '+')
		return ('+');
	else if(flag == '-')
		return ('-');
	else if(flag == '*')
		return ('*');
	else if(flag == '.')
		return ('.');
	else if(flag == '*')
		return ('*');
	else
		return ('\0');
}

void		az_plusflag(int d, char flag, int param, char *format)
{
	int		width;
	char	add_flag;
	char	add_flag_val;

	width = param - az_nbrlen(d); 						//include folder
	add_flag = format[az_chrpos(format, flag) + 1]; 	//include folder
	add_flag_val = format[az_chrpos(format, flag) + 2]; //include folder

	if(flag == '+' && add_flag != '0')
	{
		if(width)
			az_fill(width, ' ');
		if(d > 0)
			az_putchar('+');							//include folder
		az_putnbr(d);									//include folder
	}

	if(flag == '+' && add_flag == '0')
	{
		d *= -1;
		az_putchar('-');								//include folder
		
		if(add_flag_val != '1')
			az_putchar('0');							//include folder
		az_putnbr(d); 									//include folder
	}
}

void		az_minusflag(int d, char flag)
{
	if(flag == '-')
		az_putnbr(d);									//include folder
}

void		az_spaceflag(int d, char flag, int param)
{
	if(flag == ' ' && (param < 0) && d > 0)
		az_putchar(' '); 								//include folder
	
	if(flag == ' ' && param)
	{
		az_fill(param - az_nbrlen(d), ' ');				//include folder
		az_putnbr(d);									//include folder
	}
}

void		az_zeroflag(int d, char flag)
{
	if(flag == '0' && d < 0)
	{
		d *= -1;
		az_putchar('-');								//include folder
		az_putchar('0');								//include folder
		az_putnbr(d);									//include foledr
	}

}

///////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////

int		az_output(char *format, char flag, va_list ap, int i)
{
	i = az_skip(format, i);
	az_speciftypeini(format, format[i], flag, ap);
	return (i);
}

//////////////////////////////////////////////////////////////////////////////////
///////////////////////////////// support  ///////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////

// az_nbrlen : include folder
// az_strsub : include folder
//chrpos : 마지막 위치 반환.
// az_chrpos : include folder

void	az_o_support(int o, int param, char flag, char f_addon)
{
	if (o)
	{
		if (flag == '+' && param > 0)
			az_fill(param - az_nbrlen(o), ' ');	
		if (flag == '0' && param > 0)
			az_fill(param - az_nbrlen(o), '0');
		if (flag == '#')
		{
			if (f_addon == '+' && param > 0)
				az_fill(param - az_nbrlen(o), ' ');
			az_putchar('0');
		}
		az_putoctal(o);									//putoctal include folder
		if (flag == '#' && f_addon == '-')
			az_fill(param - az_nbrlen(o), ' ');
		if (flag == '-' && param > 0)
			az_fill(param - az_nbrlen(o), ' ');
	}
}

void	az_o_support_p2(char flag, char *fmt, char f_addon)
{
	char	*tmp;
	int		param;

	param = '\0';
	if (flag == '-' && f_a
			chrpos(fmt, '#') > 0)
		{
			az_putchar('0');
			tmp = az_strsub(fmt, az_chrpos(fmt, '0') + 1, az_strlen(fmt));
		}
		else
			tmp = az_strsub(fmt, az_chrpos(fmt, '+'), az_strlen(fmt));
		param = az_getparam(tmp, flag) - 1;
	}
	else if (flag == '#' && f_addon == '-')
		tmp = az_strsub(fmt, az_chrpos(fmt, '+') + 1, az_strlen(fmt));
	else
		param = az_getparam(fmt, flag) - 1;
	if (param > 0 && !flag)
		az_fill(param - 1, ' ');
}

void	az_c_support(char c, int param, char flag, char f_addon)
{
	if (param > 0 && !flag)
		az_fill(param - 1, ' ');
	az_putchar(c);
	if (f_addon == '-' && flag == '+')
		az_fill(param - 1, ' ');
}

////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////

/* getparam */

int		az_getparam(char *format, char flag)
{
		char *tmp;
		int	st;
		int	i;
		int j;

		tmp = az_memalloc(az_strlen(format));
		i = 0;
		if(format[i] == ' ' && az_isdigit(format[i + 1]))
			i++;

		if(flag)
			while(!az_isdigit(format[i]) && format[i] != ' ')
				i++;
		else if(az_isdigit(format[az_chrpos(format, '%') + 1]))
			i++;
		else
			i = az_chrpos(format, flag) + 1;
		j = 0;

		while (az_isdigit(format[i]))
			tmp[j++] = format[i++];
		tmp[j] = '\0';
		st = az_atoi(tmp);

		free(tmp);
		return (st);
}

/////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////


void	az_speciftypeini(char *format, char specif, char flag, va_list ap)
{
	if (specif == 'c' || specif == 'C')
		az_c(ap, format, flag);
	else if (specif == 's' || specif == 'S')
		az_s(ap, format, flag);
	else if (specif == 'p')
		az_p(ap);
	else if (specif == 'x' || specif == 'X')
		az_x(ap, format, flag);
	else if (specif == 'd' || specif == 'D')
		az_d(ap, format, flag);
	else if (specif == 'i')
		az_i(ap, format, flag);
	else if (specif == 'o' || specif == 'O')
		az_o(ap, format, flag);
	else if (specif == 'u' || specif == 'U')
		az_u(ap, format, flag);
}

void	az_c(va_list ap, char *format, char flag)
{
	char	c;
	char	f_addon;
	char	*tmp;
	int		param;
	int		p_addon;

	c = (char)va_arg(ap, int);
	f_addon = format[az_chrpos(format, flag) + 1];
	tmp = az_strsub(format, az_chrpos(format, f_addon), az_strlen(format) - 2);
	param = az_getparam(format, flag) - 1;
	p_addon = az_getparam(tmp, flag) - 1;
	if (flag == '+' && f_addon != '-')
		az_fill(param - 1, ' ');
	if (flag == '0' && f_addon != '+')
		az_fill(param - 1, ' ');
	if (f_addon == '+' && flag == '0')
		az_fill(p_addon - 1, ' ');
	if (c)
		az_c_support(c, param, flag, f_addon);
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
		param = az_getparam(format, flag) - 1;
		s_length = az_strlen(s);
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

void	az_p(va_list ap)
{
	int	nbr;

	nbr = va_arg(ap, int);
	az_putstr("0x");
	az_puthex(nbr);
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
		az_putstr(az_itoa(x, 16));
	if (x && !param && !az_strchr(format, 'X'))
		az_puthex(x);
}


void	az_d(va_list ap, char *format, char flag)
{
	int	param;
	int	d;

	param = az_getparam(format, flag) - 1;
	d = va_arg(ap, int);
	if (param && flag == '\0')
		az_fill(param - az_nbrlen(d), ' ');
	if (flag)
	{
		az_plusflag(d, flag, param, format);
		az_minusflag(d, flag);
		az_spaceflag(d, flag, param);
		az_zeroflag(d, flag);
	}
	else
		az_putnbr(d);
}

void	az_i(va_list ap, char *format, char flag)
{
	int	i;
	int	i_length;
	int	param;

	i = va_arg(ap, int);
	param = az_getparam(format, flag) - 1;
	i_length = az_nbrlen(i) + 1;
	if (flag == '0')
		az_fill(param - i_length, flag);
	if (flag == '.')
		az_fill(param - i_length, '0');
	if (flag == '+')
		if (i > 0)
			az_putchar('+');
	az_putnbr(i);
}

void	az_o(va_list ap, char *format, char flag)
{
	int		o;
	int		param;
	char	f_addon;
	char	*tmp;

	o = va_arg(ap, int);
	param = az_getparam(format, flag) - 1;
	f_addon = format[az_chrpos(format, flag) + 1];
	if (flag == '0')
	{
		tmp = az_strsub(format, az_chrpos(format, '0') + 1, az_strlen(format));
		param = az_getparam(tmp, flag) - 1;
	}
	az_o_support_p2(flag, format, f_addon);
	az_o_support(o, param - 1, flag, f_addon);
}

void	az_u(va_list ap, char *format, char flag)
{
	unsigned int	u;
	int				param;
	int				u_length;

	u = va_arg(ap, unsigned int);
	param = az_getparam(format, flag) - 1;
	u_length = az_nbrlen(u);
	if (flag == '0')
		az_fill((param - u_length), flag);
	if (flag == '.')
		az_fill((param - u_length), '0');
	if (param)
		az_fill(param - u_length, ' ');
	az_putunsigned(u);										//az__putunsigned include folder
}

////////////////////////////////////////////////////////////////////////////////////////////////

