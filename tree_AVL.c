/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tree_AVL.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/13 23:27:05 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/16 18:51:10 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "tree_AVL.h"
#include "string.h"
#include "libft.h"
#include <stdlib.h>

t_tree_AVL	*ft_tree_new(char *index, char *result)
{
	t_tree_AVL *res;

	if ((res = malloc(sizeof(t_tree_AVL))) == NULL)
		return (NULL);
	res->hach = ft_strhach_bis(index);
	res->index = index;
	res->result = result;
	res->left = NULL;
	res->right = NULL;
	res->root = NULL;
	res->len_left = 0;
	res->len_right = 0;
	return (res);
}

void		ft_tree_refresh(t_tree_AVL *root)
{
	if (!root)
		return ;
	if (root->left != NULL)
		root->len_left = MX(root->left->len_left, root->left->len_right) + 1;
	else
		root->len_left = 0;
	if (root->right != NULL)
		root->len_right = MX(root->right->len_left, root->right->len_right) + 1;
	else
		root->len_right = 0;
}

t_tree_AVL	*ft_tree_balance(t_tree_AVL *root)
{
	int	i;

	if (!root)
		return (NULL);
	i = root->len_left - root->len_right;
	if (root->root != NULL)
	{
		if (root->root->left == root)
		{
			if (i < -1)
				root->root->left = ft_tree_left_rotation(root);
			else if (i > 1)
				root->root->left = ft_tree_right_rotation(root);
		}
		else
		{
			if (i < -1)
				root->root->right = ft_tree_left_rotation(root);
			else if (i > 1)
				root->root->right = ft_tree_right_rotation(root);
		}
		return (ft_tree_balance(root->root));
	}
	else if (i < -1)
		return (ft_tree_left_rotation(root));
	else if (i > 1)
		return (ft_tree_right_rotation(root));
	return root;
}

t_tree_AVL	*ft_tree_left_rotation(t_tree_AVL *root)
{
	t_tree_AVL	*tmp;
	t_tree_AVL	*tmp2;

	if (!root)
		return (NULL);
	tmp = root->right;
	if (root->right->right != NULL)
	{
		tmp2 = root->right;
		root->right = root->right->left;
		tmp2->left = NULL;
	}
	else
	{
		root->right->right = root->right->left;
		root->right->left = NULL;
	}
	tmp->left = root;
	tmp->root = root->root;
	root->root = tmp;
	ft_tree_refresh(tmp);
	ft_tree_refresh(root);
	return (tmp);
}

t_tree_AVL	*ft_tree_right_rotation(t_tree_AVL *root)
{
	t_tree_AVL	*tmp;
	t_tree_AVL	*tmp2;

	if (!root)
		return (NULL);
	tmp = root->left;
	if (root->left->left != NULL)
	{
		tmp2 = root->left;
		root->left = root->left->right;
		tmp2->right = NULL;
	}
	else
	{
		root->left->left = root->left->right;
		root->left->right = NULL;
	}
	tmp->right = root;
	tmp->root = root->root;
	root->root = tmp;
	ft_tree_refresh(tmp);
	ft_tree_refresh(root);
	return (tmp);
}

char		*ft_tree_chr(t_tree_AVL *root, char *index)
{
	int	hach;
	int	i;

	if (!index || !root)
		return (NULL);
	hach = ft_strhach_bis(index)
	while (1)
	{
		i = root->hach - hach;
		if (i == 0)
			i = ft_strcmp(root->index, index);
		if (i == 0)
			return (root->result)
		if (i < 0 && root->left != NULL)
			root = root->left;
		else if (i > 0 && root->right != NULL)
			root = root->right;
		else
			return (NULL);
	}
	return (NULL);
}

void		ft_tree_add(t_tree_AVL **root, t_tree_AVL *sheet)
{
	t_tree_AVL	*tmp;
	int			i;

	if (!root || !sheet)
		return ;
	if (*root == NULL)
	{
		*root = sheet;
		return ;
	}
	tmp = *root;
	i = 1;
	while (i)
	{
		i = ft_tree_cmp(tmp, sheet);
		if (!ft_tree_add2(i, &tmp, sheet))
			break ;
	}
	ft_tree_balance(*tmp);
}

int			ft_tree_add2(int i, t_tree_AVL **tmp, t_tree_AVL *sheet)
{
	t_tree_AVL	**a;

	a = NULL;
	if (i < 0)
		a = &((*tmp)->left);
	else if (i > 0)
		a = &((*tmp)->right);
	if (a && *a != NULL)
		*tmp = *a;
	else if (a != NULL)
	{
		*a = sheet;
		return (0);
	}
	return (1);
}

int			ft_tree_cmp(t_tree_AVL *root, t_tree_AVL *sheet)
{
	int	i;

	if (!root || !sheet)
		return (0);
	i = root->hach - sheet->hach;
	if (i != 0)
		return (i);
	return ft_strcmp(root->index, sheet->index);
}
int			ft_tree_strcmp(t_tree_AVL *root, char *str)
{
	int	i;

	if (!root)
		return (0);
	i = root->hach - ft_strhach_bis(str);
	if (i != 0)
		return (i);
	return ft_strcmp(root->index, str);
}
