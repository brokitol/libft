/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tree_AVL.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/13 23:26:54 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/23 14:21:17 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ARBRE_AVL
# define ARBRE_AVL

# include "libft.h"
# define MX(x,y) ((x)>(y)?(x):(y))

typedef struct	s_tree_AVL
{
	int					hach;
	char				*index;
	char				*result;
	struct s_tree_AVL	*left;
	struct s_tree_AVL	*right;
	struct s_tree_AVL	*root;
	int					len_left;
	int					len_right;
}				t_tree_AVL;


/*tree_AVL.c*/
t_tree_AVL	*ft_tree_new			(char *index, char *result);
void		ft_tree_refresh			(t_tree_AVL *root);
t_tree_AVL	*ft_tree_balance		(t_tree_AVL *root);
t_tree_AVL	*ft_tree_left_rotation	(t_tree_AVL *root);
t_tree_AVL	*ft_tree_right_rotation	(t_tree_AVL *root);
/*tree_AVL2.c*/
void		ft_tree_add				(t_tree_AVL **root, t_tree_AVL *sheet);
int			ft_tree_add2		(int i, t_tree_AVL **tmp, t_tree_AVL *sheet);
char		*ft_tree_chr			(t_tree_AVL *root, char *index);
int			ft_tree_cmp				(t_tree_AVL *root, t_tree_AVL *sheet);
int			ft_tree_strcmp			(t_tree_AVL *root, char *str);
/*tree_AVL3.c*/
int			ft_count_sheet			(t_tree_AVL *root);
t_strlist	*ft_tree_get_all_index	(t_tree_AVL *root);

#endif
