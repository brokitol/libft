# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/20 11:59:50 by bgauci            #+#    #+#              #
#    Updated: 2014/01/01 04:33:10 by bgauci           ###   ########.fr        #
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
		tree_AVL.o		tree_AVL2.o		ft_truncate.o		get_next_line.o	\
		tree_AVL3.o		tree_AVL4.o		ft_intlstadd.o		ft_intlstnew.o	\
		ft_intlstiter.o	ft_intlstmap.o	ft_intlstaddend.o	ft_intlstdelone.o \
		ft_intlstdel.o
FLAGS = -Wall -Werror -Wextra
CC = /usr/bin/gcc
RMF = rm -f

all: $(NAME)

$(NAME): $(OBJ)
	@makedepend -Y. *.c 2>/dev/null
	ar rcs $(NAME) $(OBJ)
	ranlib $(NAME)
clear: clean
clean:
	$(RMF) $(OBJ)
%.o: %.c
		$(CC) -o $@ -c $< $(FLAGS)
fclean: clean
	$(RMF) $(NAME)
re: fclean all
depend:
	makedepend -Y. *.c
.PHONY: all re clean fclean depend
# DO NOT DELETE

ft_atoi.o: libft.h
ft_bzero.o: libft.h
ft_intlstadd.o: libft.h
ft_intlstaddend.o: libft.h
ft_intlstdel.o: libft.h
ft_intlstdelone.o: libft.h
ft_intlstiter.o: libft.h
ft_intlstmap.o: libft.h
ft_intlstnew.o: libft.h
ft_isalnum.o: libft.h
ft_itoa.o: libft.h
ft_lstadd.o: libft.h
ft_lstaddend.o: libft.h
ft_lstdel.o: libft.h
ft_lstdelone.o: libft.h
ft_lstiter.o: libft.h
ft_lstmap.o: libft.h
ft_lstnew.o: libft.h
ft_lstswap.o: libft.h
ft_memalloc.o: libft.h
ft_memccpy.o: libft.h
ft_memchr.o: libft.h
ft_memcmp.o: libft.h
ft_memcpy.o: libft.h
ft_memdel.o: libft.h
ft_memmove.o: libft.h
ft_memset.o: libft.h
ft_putendl.o: libft.h
ft_putendl_fd.o: libft.h
ft_putnbr.o: libft.h
ft_putnbr_fd.o: libft.h
ft_putstr.o: libft.h
ft_putstr_fd.o: libft.h
ft_strcat.o: libft.h
ft_strchr.o: libft.h
ft_strclr.o: libft.h
ft_strcmp.o: libft.h
ft_strcpy.o: libft.h
ft_strdel.o: libft.h
ft_strdup.o: libft.h
ft_strequ.o: libft.h
ft_strfastcat.o: libft.h
ft_strfastdup.o: libft.h
ft_strfastjoin.o: libft.h
ft_strfastnew.o: libft.h
ft_strfastsub.o: libft.h
ft_strhach.o: libft.h ft_strhach.h
ft_striter.o: libft.h
ft_striteri.o: libft.h
ft_strjcat.o: libft.h
ft_strjoin.o: libft.h
ft_strlcat.o: libft.h
ft_strlen.o: libft.h
ft_strlstadd.o: libft.h
ft_strlstaddend.o: libft.h
ft_strlstdel.o: libft.h
ft_strlstdelone.o: libft.h
ft_strlstiter.o: libft.h
ft_strlstmap.o: libft.h
ft_strlstnew.o: libft.h
ft_strmap.o: libft.h
ft_strmapi.o: libft.h
ft_strncat.o: libft.h
ft_strncmp.o: libft.h
ft_strncpy.o: libft.h
ft_strnequ.o: libft.h
ft_strnew.o: libft.h
ft_strnstr.o: libft.h
ft_strrchr.o: libft.h
ft_strreverse.o: libft.h
ft_strsplit.o: libft.h
ft_strstr.o: libft.h
ft_strsub.o: libft.h
ft_strtrim.o: libft.h
ft_truncate.o: libft.h
get_next_line.o: get_next_line.h libft.h
tree_AVL.o: tree_AVL.h libft.h
tree_AVL2.o: tree_AVL.h libft.h
tree_AVL3.o: tree_AVL.h libft.h
tree_AVL4.o: tree_AVL.h libft.h
