/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/22 10:19:22 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/22 19:41:49 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char	*res;

	if (!s1)
		return (NULL);
	res = ft_strnew(ft_strlen(s1));
	if (res == 0)
		return (NULL);
	ft_strcpy(res, s1);
	return (res);
}
