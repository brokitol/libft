/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/23 17:52:12 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/22 19:52:08 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
/*TODO : si s[0] = \0 on doit retourner "\0"*/
char	**ft_strsplit(char const *s, char c)
{
	char	**res;
	int		i;
	int		n;
	int		start;
	int		len;

	if (!s || !c)
		return (NULL);
	n = 0;
	i = 0;
	res = malloc(sizeof(char*) * ft_strlen(s));
	while (s[i] != '\0' || n == 0)
	{
		while (s[i] == c)
			i++;
		start = i;
		while (s[i] != c && s[i] != '\0')
			i++;
		len = i - start;
		res[n] = ft_strsub(s, start, len);
		n++;
	}
	res[n] = NULL;
	return (res);
}
