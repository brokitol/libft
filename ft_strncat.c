/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/20 16:34:08 by bgauci            #+#    #+#             */
/*   Updated: 2013/11/25 14:40:23 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char *ft_strncat (char *s1, const char *s2, size_t n)
{
	unsigned int	i;
	int				t;

	t = ft_strlen(s1);
	i = 0;
	while (s2[i] != '\0' && i < n)
	{
		s1[i + t] = s2[i];
		i++;
	}
	s1[i + t] = '\0';
	return (s1);
}
