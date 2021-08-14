/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   az_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmakwakw <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/07/18 15:17:56 by mmakwakw          #+#    #+#             */
/*   Updated: 2016/08/10 18:19:28 by mmakwakw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "stdio.h"

void	*az_memcpy(void *dst, const void *src, size_t n)
{
	size_t			i;
	unsigned char	*d;
	unsigned char	*s;

	i = 0;
	d = (unsigned char *)dst;
	s = (unsigned char *)src;
	if (n == 0 || d == s)
		return (d);
	while (i < n)
	{
		d[i] = s[i];
		i++;
	}
	d[az_strlen(dst) + 1] = '\0';
	return (dst);
}
