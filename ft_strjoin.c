/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/23 17:38:25 by bgauci            #+#    #+#             */
/*   Updated: 2013/11/25 15:47:27 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin (char const *s1, char const *s2)
{
	char *res;

	if (!s1 || !s2)
		return (NULL);
	res = ft_strnew(ft_strlen(s1) + ft_strlen(s2));
	if (res != NULL)
	{
		ft_strcat(res, s1);
		ft_strcat(res, s2);
	}
	return (res);
}
