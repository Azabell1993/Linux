/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   az_memalloc.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmakwakw <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/08/15 07:36:13 by mmakwakw          #+#    #+#             */
/*   Updated: 2016/11/18 10:56:22 by mmakwakw         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "stdio.h"
#include <stdlib.h>

void	*az_memalloc(size_t size)
{
	void	*tmp;

	tmp = malloc(size);
	if (tmp == NULL)
		return (NULL);
	return (az_memset(tmp, 0, size));
}
