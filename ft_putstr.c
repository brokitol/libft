/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/19 15:19:49 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/10 17:21:06 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <unistd.h>

void	ft_putstr(char const *c)
{
	//int	i;

	if (c == NULL)
		return ;
	//i = 0;
	write(1, c, ft_strlen(c));
	/*while (c[i] != '\0')
	{
		ft_putchar(c[i]);
		i++;
	}*/
}
