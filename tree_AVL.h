/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   tree_AVL.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2013/12/13 23:26:54 by bgauci            #+#    #+#             */
/*   Updated: 2013/12/14 20:02:29 by bgauci           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef ARBRE_AVL
# define ARBRE_AVL

# define MX(a, b) ((a > b) ? a : b)
#define MAX(x,y) ((x)>(y)?(x):(y))

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

t_tree_AVL	*ft_tree_new			(char *index, char *result);
void		ft_tree_refresh			(t_tree_AVL *root);
t_tree_AVL	*ft_tree_balance		(t_tree_AVL *root);
t_tree_AVL	*ft_tree_left_rotation	(t_tree_AVL *root);
t_tree_AVL	*ft_tree_right_rotation	(t_tree_AVL *root);
void		ft_tree_add				(t_tree_AVL **root, t_tree_AVL *sheet);
char		*ft_tree_chr			(t_tree_AVL *root, char *index);
void		ft_tree_del				(t_tree_AVL **sheet);
int			ft_tree_cmp				(t_tree_AVL *root, t_tree_AVL *sheet);
int			ft_tree_strcmp			(t_tree_AVL *root, char *str);

#endif
