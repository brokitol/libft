/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/20 16:40:39 by bgauci            #+#    #+#             */
/*   Updated: 2013/11/26 11:18:44 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

char	*ft_strstr	(const char *s1, const char *s2)
{
	int i;
	int j;
	int bol;

	i = 0;
	if (s2[0] == '\0')
		return ((char *)s1);
	while (s1[i] != '\0')// si s1 == "" erreur
	{
		j = 0;
		bol = 0;
		while (s2[j] != '\0' && bol == 0)
		{
			if (s1[i + j] != s2[j])
				bol = 1;
			j++;
		}
		if (s2[j] == '\0' && bol == 0)
			return ((char *)s1 + i);
		i++;
	}

	return (NULL);
}