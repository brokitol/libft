# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/20 11:59:50 by bgauci            #+#    #+#              #
#    Updated: 2013/12/22 20:02:16 by bgauci           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
OBJ =	ft_atoi.o		ft_isalpha.o	ft_isprint.o		ft_memccpy.o	\
		ft_memcpy.o		ft_memset.o		ft_putendl.o		ft_putnbr_fd.o	\
		ft_strcat.o		ft_strcmp.o		ft_strdup.o			ft_striteri.o	\
		ft_strlen.o		ft_strncat.o	ft_strnequ.o		ft_strrchr.o	\
		ft_strsub.o		ft_toupper.o	ft_bzero.o			ft_isascii.o	\
		ft_itoa.o		ft_memchr.o		ft_memdel.o			ft_putchar.o	\
		ft_putendl_fd.o	ft_putstr.o		ft_strchr.o			ft_strcpy.o		\
		ft_strequ.o		ft_strjoin.o	ft_strmap.o			ft_strncmp.o	\
		ft_strnew.o		ft_strsplit.o	ft_strtrim.o		ft_isalnum.o	\
		ft_isdigit.o	ft_memalloc.o	ft_memcmp.o			ft_memmove.o	\
		ft_putchar_fd.o	ft_putnbr.o		ft_putstr_fd.o		ft_strclr.o		\
		ft_strdel.o		ft_striter.o	ft_strlcat.o		ft_strmapi.o	\
		ft_strncpy.o	ft_strnstr.o	ft_strstr.o			ft_tolower.o	\
		ft_strfastcat.o	ft_strfastdup.o	ft_strfastjoin.o	ft_strfastnew.o	\
		ft_lstnew.o		ft_lstdelone.o	ft_lstdel.o			ft_lstadd.o		\
		ft_lstaddend.o	ft_lstiter.o	ft_lstmap.o			ft_strreverse.o	\
		ft_strlstnew.o	ft_strlstadd.o	ft_strlstaddend.o	ft_strlstdel.o	\
		ft_strlstiter.o	ft_strlstmap.o	ft_strlstdelone.o	ft_pgcd.o		\
		ft_strjcat.o	ft_lstswap.o	ft_strfastsub.o		ft_strhach.o	\
		tree_AVL.o		tree_AVL2.o		ft_truncate.o		get_next_line.o
FLAGS = -Wall -Werror -Wextra
CC = /usr/bin/gcc
RMF = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ)
	ranlib $(NAME)
clean:
	$(RMF) $(OBJ)
%.o: %.c
		$(CC) -o $@ -c $< $(FLAGS)
fclean: clean
	$(RMF) $(NAME)
re: fclean all

.PHONY: all re clean fclean
