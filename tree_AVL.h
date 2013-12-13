/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tree_AVL.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/13 23:26:54 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/14 00:03:28 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ARBRE_AVL
# define ARBRE_AVL

typedef struct	s_tree_AVL
{
	char				*index;
	char				*result;
	struct s_tree_AVL	left;
	struct s_tree_AVL	right;
	struct s_tree_AVL	root;
	int					len_left;
	int					len_right;
}				t_tree_AVL

t_tree_AVL	*ft_tree_new			(char *index, char *result);
void		ft_tree_refresh			(t_tree_AVL);
void		ft_tree_balance			(t_tree_AVL);
void		ft_tree_left_rotation	(t_tree_AVL);
void		ft_tree_right_rotation	(t_tree_AVL);
void		ft_tree_add				(t_tree_AVL **root, t_tree_AVL *sheet);
char		*ft_tree_chr			(char *index);
void		ft_tree_del				(t_tree_AVL *sheet);

#endif
