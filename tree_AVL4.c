/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tree_AVL4.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/24 15:45:31 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/29 13:45:22 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tree_AVL.h"

t_tree_AVL	*ft_tree_last_descendant(t_tree_AVL *root)
{
	if (!root)
		return (NULL);
	if (root->left == NULL)
		return (root);
	return (ft_tree_last_descendant(root->left));
}

t_tree_AVL	*ft_tree_found(t_tree_AVL *root, char *index)
{
	int	i;

	if (!root)
		return (NULL);
	i = ft_tree_strcmp(root, index);
	if (i == 0)
		return (root);
	else if (i < 0)
		return (ft_tree_found(root->left, index));
	else
		return (ft_tree_found(root->right, index));
}
