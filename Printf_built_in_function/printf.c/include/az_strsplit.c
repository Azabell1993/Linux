#include "stdio.h"
#include <stdlib.h>

static char	*az_strndup(const char *s, size_t n)
{
	char	*tmp;

	tmp = (char *)malloc(sizeof(char) * n + 1);
	if (tmp == NULL)
		return (NULL);
	tmp = az_strncpy(tmp, s, n);
	tmp[n] = '\0';
	return (tmp);
}

static int	az_word_count(char const *s, char c)
{
	unsigned int	i;
	int				count;

	i = 0;
	count = 0;
	while (s[i])
	{
		while (s[i] == c)
			i++;
		if (s[i] != '\0')
			count++;
		while (s[i] && (s[i] != c))
			i++;
	}
	return (count);
}

char		**az_strsplit(char const *s, char c)
{
	int		i;
	int		x;
	int		y;
	char	**tmp;

	i = 0;
	y = 0;
	tmp = (char **)malloc(sizeof(char *) * (az_word_count(s, c)) + 1);
	if (tmp == NULL)
		return (NULL);
	while (s[i])
	{
		while (s[i] == c)
			i++;
		x = i;
		while (s[i] && s[i] != c)
			i++;
		if (i > x)
		{
			tmp[y] = az_strndup(s + x, i - x);
			y++;
		}
	}
	tmp[y] = NULL;
	return (tmp);
}
