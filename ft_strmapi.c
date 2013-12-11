/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/22 16:32:13 by bgauci            #+#    #+#             */
/*   Updated: 2013/11/25 15:45:33 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	unsigned int	i;
	char			*res;

	if (s == NULL || f == NULL)
		return (NULL);
	i = 0;
	res = ft_strnew(ft_strlen(s));
	while (i < ft_strlen(s))
	{
		res[i] = f(i, s[i]);
		i++;
	}
	return (res);
}
