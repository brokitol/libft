/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tree_AVL.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/13 23:27:05 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/14 00:12:49 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tree_AVL.h"

/*	char				*index;
	char				*result;
	struct s_tree_AVL	left;
	struct s_tree_AVL	right;
	struct s_tree_AVL	root;
	int					len_left;
	int					len_right;*/

t_tree_AVL	*ft_tree_new	(char *index, char *result)
{
	t_tree_AVL *res;

	if ((res = malloc(sizeof(t_tree_AVL))) == NULL)
		return (NULL);
	res->index = index;
	res->result = result;
	res->left = NULL;
	res->right = NULL;
	res->root = NULL;
	res->factor = 0;

	return (res);
}

void		ft_tree_refresh	(t_tree_AVL *root)
{
	if (!root)
		return ;
	if (root->left != NULL)
	{
		ft_tree_refresh(root->left);
		root->len_left = MX(root->left->len_left, root->left->len_right) + 1;
	}
	else
		root->len_left = 0;
	if (root->right != NULL)
	{
		ft_tree_refresh(root->right);
		root->len_right = MX(root->right->len_left, root->right->len_right) + 1;
	}
	else
		root->len_right = 0;
}

void		ft_tree_balance			(t_tree_AVL)
{
}
void		ft_tree_left_rotation	(t_tree_AVL);
void		ft_tree_right_rotation	(t_tree_AVL);

char		*ft_tree_chr			(char *index)
{
	if (!index)
		return (NULL);
	while (ft_strcmp(tmp->index, index))
	{
		if (ft_tree_strcmp(tmp, index) < 0 && tmp->left != NULL)
			tmp = tmp->left;
		else if (ft_tree_strcmp(tmp, index) > 0 && tmp->right != NULL)
			tmp = tmp->right;
		else
			return (NULL);
	}
	return (tmp->result);
}

void		ft_tree_add		(t_tree_AVL **root, t_tree_AVL *sheet)
{
	t_tree_AVL	*tmp;

	if (!root, !sheet)
		return ;
	if (*root == NULL)
	{
		*root = sheet;
		return ;
	}
	tmp = *root;
	while (1)
	{
		if (ft_tree_cmp(tmp, sheet) < 0)
		{
			if (tmp->left != NULL)
				tmp = tmp->left;
			else
			{
				tmp->left = sheet;
				sheet->root = tmp;
				ft_tree_balance(tmp);
				return ;
			}
		}
		else
		{
			if (tmp->right != NULL)
				tmp = tmp->right;
			else
			{
				tmp->right = sheet;
				sheet->root = tmp;
				ft_tree_balance(tmp);
				return ;
			}
		}
	}
}
