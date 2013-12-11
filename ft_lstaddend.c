/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstaddend.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/11/26 13:57:37 by bgauci            #+#    #+#             */
/*   Updated: 2013/11/26 16:32:46 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstaddend (t_list **alst, t_list *new)
{
	if (alst == NULL)
	{
		*alst = new;
		return ;
	}
	while ((*alst)->next != NULL)
		*alst = (*alst)->next;
	(*alst)->next = new;
}
