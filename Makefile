# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bgauci <bgauci@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/11/20 11:59:50 by bgauci            #+#    #+#              #
#    Updated: 2013/12/23 19:49:42 by bgauci           ###   ########.fr        #
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

$(NAME): depend $(OBJ)
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
	makedepend -I. *.c
.PHONY: all re clean fclean depend
# DO NOT DELETE

ft_atoi.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_atoi.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_atoi.o: /usr/include/sys/_symbol_aliasing.h
ft_atoi.o: /usr/include/sys/_posix_availability.h
ft_atoi.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_atoi.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_atoi.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_atoi.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_atoi.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_atoi.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_atoi.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_atoi.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_atoi.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_atoi.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_atoi.o: /usr/include/libkern/_OSByteOrder.h
ft_atoi.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_atoi.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_bzero.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_bzero.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_bzero.o: /usr/include/sys/_symbol_aliasing.h
ft_bzero.o: /usr/include/sys/_posix_availability.h
ft_bzero.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_bzero.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_bzero.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_bzero.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_bzero.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_bzero.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_bzero.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_bzero.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_bzero.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_bzero.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_bzero.o: /usr/include/libkern/_OSByteOrder.h
ft_bzero.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_bzero.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_isalnum.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_isalnum.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_isalnum.o: /usr/include/sys/_symbol_aliasing.h
ft_isalnum.o: /usr/include/sys/_posix_availability.h
ft_isalnum.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_isalnum.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_isalnum.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_isalnum.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_isalnum.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_isalnum.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_isalnum.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_isalnum.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_isalnum.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_isalnum.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_isalnum.o: /usr/include/libkern/_OSByteOrder.h
ft_isalnum.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_isalnum.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_itoa.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_itoa.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_itoa.o: /usr/include/sys/_symbol_aliasing.h
ft_itoa.o: /usr/include/sys/_posix_availability.h
ft_itoa.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_itoa.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_itoa.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_itoa.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_itoa.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_itoa.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_itoa.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_itoa.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_itoa.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_itoa.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_itoa.o: /usr/include/libkern/_OSByteOrder.h
ft_itoa.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_itoa.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_lstadd.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstadd.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstadd.o: /usr/include/sys/_symbol_aliasing.h
ft_lstadd.o: /usr/include/sys/_posix_availability.h
ft_lstadd.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstadd.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_lstadd.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_lstadd.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_lstadd.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_lstadd.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_lstadd.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_lstadd.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_lstadd.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_lstadd.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_lstadd.o: /usr/include/libkern/_OSByteOrder.h
ft_lstadd.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_lstadd.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_lstaddend.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstaddend.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstaddend.o: /usr/include/sys/_symbol_aliasing.h
ft_lstaddend.o: /usr/include/sys/_posix_availability.h
ft_lstaddend.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstaddend.o: /usr/include/Availability.h
ft_lstaddend.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_lstaddend.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_lstaddend.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_lstaddend.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_lstaddend.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_lstaddend.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_lstaddend.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_lstaddend.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_lstaddend.o: /usr/include/sys/_endian.h
ft_lstaddend.o: /usr/include/libkern/_OSByteOrder.h
ft_lstaddend.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_lstaddend.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_lstaddend.o: /usr/include/i386/types.h
ft_lstdel.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstdel.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstdel.o: /usr/include/sys/_symbol_aliasing.h
ft_lstdel.o: /usr/include/sys/_posix_availability.h
ft_lstdel.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstdel.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_lstdel.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_lstdel.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_lstdel.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_lstdel.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_lstdel.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_lstdel.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_lstdel.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_lstdel.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_lstdel.o: /usr/include/libkern/_OSByteOrder.h
ft_lstdel.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_lstdel.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_lstdelone.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstdelone.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstdelone.o: /usr/include/sys/_symbol_aliasing.h
ft_lstdelone.o: /usr/include/sys/_posix_availability.h
ft_lstdelone.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstdelone.o: /usr/include/Availability.h
ft_lstdelone.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_lstdelone.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_lstdelone.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_lstdelone.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_lstdelone.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_lstdelone.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_lstdelone.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_lstdelone.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_lstdelone.o: /usr/include/sys/_endian.h
ft_lstdelone.o: /usr/include/libkern/_OSByteOrder.h
ft_lstdelone.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_lstdelone.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_lstdelone.o: /usr/include/i386/types.h
ft_lstiter.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstiter.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstiter.o: /usr/include/sys/_symbol_aliasing.h
ft_lstiter.o: /usr/include/sys/_posix_availability.h
ft_lstiter.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstiter.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_lstiter.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_lstiter.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_lstiter.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_lstiter.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_lstiter.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_lstiter.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_lstiter.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_lstiter.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_lstiter.o: /usr/include/libkern/_OSByteOrder.h
ft_lstiter.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_lstiter.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_lstmap.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstmap.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstmap.o: /usr/include/sys/_symbol_aliasing.h
ft_lstmap.o: /usr/include/sys/_posix_availability.h
ft_lstmap.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstmap.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_lstmap.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_lstmap.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_lstmap.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_lstmap.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_lstmap.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_lstmap.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_lstmap.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_lstmap.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_lstmap.o: /usr/include/libkern/_OSByteOrder.h
ft_lstmap.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_lstmap.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_lstnew.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstnew.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstnew.o: /usr/include/sys/_symbol_aliasing.h
ft_lstnew.o: /usr/include/sys/_posix_availability.h
ft_lstnew.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstnew.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_lstnew.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_lstnew.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_lstnew.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_lstnew.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_lstnew.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_lstnew.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_lstnew.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_lstnew.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_lstnew.o: /usr/include/libkern/_OSByteOrder.h
ft_lstnew.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_lstnew.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_lstswap.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_lstswap.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_lstswap.o: /usr/include/sys/_symbol_aliasing.h
ft_lstswap.o: /usr/include/sys/_posix_availability.h
ft_lstswap.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_lstswap.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_lstswap.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_lstswap.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_lstswap.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_lstswap.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_lstswap.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_lstswap.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_lstswap.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_lstswap.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_lstswap.o: /usr/include/libkern/_OSByteOrder.h
ft_lstswap.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_lstswap.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memalloc.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memalloc.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memalloc.o: /usr/include/sys/_symbol_aliasing.h
ft_memalloc.o: /usr/include/sys/_posix_availability.h
ft_memalloc.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memalloc.o: /usr/include/Availability.h
ft_memalloc.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_memalloc.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_memalloc.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_memalloc.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_memalloc.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_memalloc.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_memalloc.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_memalloc.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_memalloc.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
ft_memalloc.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memalloc.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memccpy.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memccpy.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memccpy.o: /usr/include/sys/_symbol_aliasing.h
ft_memccpy.o: /usr/include/sys/_posix_availability.h
ft_memccpy.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memccpy.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_memccpy.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_memccpy.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_memccpy.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_memccpy.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_memccpy.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_memccpy.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_memccpy.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_memccpy.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_memccpy.o: /usr/include/libkern/_OSByteOrder.h
ft_memccpy.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memccpy.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memchr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memchr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memchr.o: /usr/include/sys/_symbol_aliasing.h
ft_memchr.o: /usr/include/sys/_posix_availability.h
ft_memchr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memchr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_memchr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_memchr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_memchr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_memchr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_memchr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_memchr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_memchr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_memchr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_memchr.o: /usr/include/libkern/_OSByteOrder.h
ft_memchr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memchr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memcmp.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memcmp.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memcmp.o: /usr/include/sys/_symbol_aliasing.h
ft_memcmp.o: /usr/include/sys/_posix_availability.h
ft_memcmp.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memcmp.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_memcmp.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_memcmp.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_memcmp.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_memcmp.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_memcmp.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_memcmp.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_memcmp.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_memcmp.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_memcmp.o: /usr/include/libkern/_OSByteOrder.h
ft_memcmp.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memcmp.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memcpy.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memcpy.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memcpy.o: /usr/include/sys/_symbol_aliasing.h
ft_memcpy.o: /usr/include/sys/_posix_availability.h
ft_memcpy.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memcpy.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_memcpy.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_memcpy.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_memcpy.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_memcpy.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_memcpy.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_memcpy.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_memcpy.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_memcpy.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_memcpy.o: /usr/include/libkern/_OSByteOrder.h
ft_memcpy.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memcpy.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memdel.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memdel.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memdel.o: /usr/include/sys/_symbol_aliasing.h
ft_memdel.o: /usr/include/sys/_posix_availability.h
ft_memdel.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memdel.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_memdel.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_memdel.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_memdel.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_memdel.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_memdel.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_memdel.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_memdel.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_memdel.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_memdel.o: /usr/include/libkern/_OSByteOrder.h
ft_memdel.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memdel.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memmove.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memmove.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memmove.o: /usr/include/sys/_symbol_aliasing.h
ft_memmove.o: /usr/include/sys/_posix_availability.h
ft_memmove.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memmove.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_memmove.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_memmove.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_memmove.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_memmove.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_memmove.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_memmove.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_memmove.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_memmove.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_memmove.o: /usr/include/libkern/_OSByteOrder.h
ft_memmove.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memmove.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_memset.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_memset.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_memset.o: /usr/include/sys/_symbol_aliasing.h
ft_memset.o: /usr/include/sys/_posix_availability.h
ft_memset.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_memset.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_memset.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_memset.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_memset.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_memset.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_memset.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_memset.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_memset.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_memset.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_memset.o: /usr/include/libkern/_OSByteOrder.h
ft_memset.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_memset.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_putchar.o: /usr/include/unistd.h /usr/include/_types.h
ft_putchar.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putchar.o: /usr/include/sys/_symbol_aliasing.h
ft_putchar.o: /usr/include/sys/_posix_availability.h
ft_putchar.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putchar.o: /usr/include/sys/unistd.h /usr/include/Availability.h
ft_putchar.o: /usr/include/AvailabilityInternal.h /usr/include/sys/select.h
ft_putchar.o: /usr/include/sys/appleapiopts.h /usr/include/sys/_structs.h
ft_putchar.o: /usr/include/machine/_structs.h /usr/include/i386/_structs.h
ft_putchar.o: /usr/include/sys/_select.h
ft_putchar_fd.o: /usr/include/unistd.h /usr/include/_types.h
ft_putchar_fd.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putchar_fd.o: /usr/include/sys/_symbol_aliasing.h
ft_putchar_fd.o: /usr/include/sys/_posix_availability.h
ft_putchar_fd.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putchar_fd.o: /usr/include/sys/unistd.h /usr/include/Availability.h
ft_putchar_fd.o: /usr/include/AvailabilityInternal.h
ft_putchar_fd.o: /usr/include/sys/select.h /usr/include/sys/appleapiopts.h
ft_putchar_fd.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_putchar_fd.o: /usr/include/i386/_structs.h /usr/include/sys/_select.h
ft_putendl.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_putendl.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putendl.o: /usr/include/sys/_symbol_aliasing.h
ft_putendl.o: /usr/include/sys/_posix_availability.h
ft_putendl.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putendl.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_putendl.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_putendl.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_putendl.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_putendl.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_putendl.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_putendl.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_putendl.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_putendl.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_putendl.o: /usr/include/libkern/_OSByteOrder.h
ft_putendl.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_putendl.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_putendl_fd.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_putendl_fd.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putendl_fd.o: /usr/include/sys/_symbol_aliasing.h
ft_putendl_fd.o: /usr/include/sys/_posix_availability.h
ft_putendl_fd.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putendl_fd.o: /usr/include/Availability.h
ft_putendl_fd.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_putendl_fd.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_putendl_fd.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_putendl_fd.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_putendl_fd.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_putendl_fd.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_putendl_fd.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_putendl_fd.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_putendl_fd.o: /usr/include/sys/_endian.h
ft_putendl_fd.o: /usr/include/libkern/_OSByteOrder.h
ft_putendl_fd.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_putendl_fd.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_putendl_fd.o: /usr/include/i386/types.h
ft_putnbr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_putnbr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putnbr.o: /usr/include/sys/_symbol_aliasing.h
ft_putnbr.o: /usr/include/sys/_posix_availability.h
ft_putnbr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putnbr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_putnbr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_putnbr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_putnbr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_putnbr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_putnbr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_putnbr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_putnbr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_putnbr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_putnbr.o: /usr/include/libkern/_OSByteOrder.h
ft_putnbr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_putnbr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_putnbr_fd.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_putnbr_fd.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putnbr_fd.o: /usr/include/sys/_symbol_aliasing.h
ft_putnbr_fd.o: /usr/include/sys/_posix_availability.h
ft_putnbr_fd.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putnbr_fd.o: /usr/include/Availability.h
ft_putnbr_fd.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_putnbr_fd.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_putnbr_fd.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_putnbr_fd.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_putnbr_fd.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_putnbr_fd.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_putnbr_fd.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_putnbr_fd.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_putnbr_fd.o: /usr/include/sys/_endian.h
ft_putnbr_fd.o: /usr/include/libkern/_OSByteOrder.h
ft_putnbr_fd.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_putnbr_fd.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_putnbr_fd.o: /usr/include/i386/types.h
ft_putstr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_putstr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putstr.o: /usr/include/sys/_symbol_aliasing.h
ft_putstr.o: /usr/include/sys/_posix_availability.h
ft_putstr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putstr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_putstr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_putstr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_putstr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_putstr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_putstr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_putstr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_putstr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_putstr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_putstr.o: /usr/include/libkern/_OSByteOrder.h
ft_putstr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_putstr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_putstr.o: /usr/include/unistd.h /usr/include/sys/unistd.h
ft_putstr.o: /usr/include/sys/select.h /usr/include/sys/_select.h
ft_putstr_fd.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_putstr_fd.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_putstr_fd.o: /usr/include/sys/_symbol_aliasing.h
ft_putstr_fd.o: /usr/include/sys/_posix_availability.h
ft_putstr_fd.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_putstr_fd.o: /usr/include/Availability.h
ft_putstr_fd.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_putstr_fd.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_putstr_fd.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_putstr_fd.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_putstr_fd.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_putstr_fd.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_putstr_fd.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_putstr_fd.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_putstr_fd.o: /usr/include/sys/_endian.h
ft_putstr_fd.o: /usr/include/libkern/_OSByteOrder.h
ft_putstr_fd.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_putstr_fd.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_putstr_fd.o: /usr/include/i386/types.h
ft_strcat.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strcat.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strcat.o: /usr/include/sys/_symbol_aliasing.h
ft_strcat.o: /usr/include/sys/_posix_availability.h
ft_strcat.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strcat.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strcat.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strcat.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strcat.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strcat.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strcat.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strcat.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strcat.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strcat.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strcat.o: /usr/include/libkern/_OSByteOrder.h
ft_strcat.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strcat.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strchr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strchr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strchr.o: /usr/include/sys/_symbol_aliasing.h
ft_strchr.o: /usr/include/sys/_posix_availability.h
ft_strchr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strchr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strchr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strchr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strchr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strchr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strchr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strchr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strchr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strchr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strchr.o: /usr/include/libkern/_OSByteOrder.h
ft_strchr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strchr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strclr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strclr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strclr.o: /usr/include/sys/_symbol_aliasing.h
ft_strclr.o: /usr/include/sys/_posix_availability.h
ft_strclr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strclr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strclr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strclr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strclr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strclr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strclr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strclr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strclr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strclr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strclr.o: /usr/include/libkern/_OSByteOrder.h
ft_strclr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strclr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strcmp.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strcmp.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strcmp.o: /usr/include/sys/_symbol_aliasing.h
ft_strcmp.o: /usr/include/sys/_posix_availability.h
ft_strcmp.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strcmp.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strcmp.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strcmp.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strcmp.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strcmp.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strcmp.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strcmp.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strcmp.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strcmp.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strcmp.o: /usr/include/libkern/_OSByteOrder.h
ft_strcmp.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strcmp.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strcpy.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strcpy.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strcpy.o: /usr/include/sys/_symbol_aliasing.h
ft_strcpy.o: /usr/include/sys/_posix_availability.h
ft_strcpy.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strcpy.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strcpy.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strcpy.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strcpy.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strcpy.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strcpy.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strcpy.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strcpy.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strcpy.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strcpy.o: /usr/include/libkern/_OSByteOrder.h
ft_strcpy.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strcpy.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strdel.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strdel.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strdel.o: /usr/include/sys/_symbol_aliasing.h
ft_strdel.o: /usr/include/sys/_posix_availability.h
ft_strdel.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strdel.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strdel.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strdel.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strdel.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strdel.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strdel.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strdel.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strdel.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strdel.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strdel.o: /usr/include/libkern/_OSByteOrder.h
ft_strdel.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strdel.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strdup.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strdup.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strdup.o: /usr/include/sys/_symbol_aliasing.h
ft_strdup.o: /usr/include/sys/_posix_availability.h
ft_strdup.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strdup.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strdup.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strdup.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strdup.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strdup.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strdup.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strdup.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strdup.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strdup.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strdup.o: /usr/include/libkern/_OSByteOrder.h
ft_strdup.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strdup.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strequ.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strequ.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strequ.o: /usr/include/sys/_symbol_aliasing.h
ft_strequ.o: /usr/include/sys/_posix_availability.h
ft_strequ.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strequ.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strequ.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strequ.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strequ.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strequ.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strequ.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strequ.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strequ.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strequ.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strequ.o: /usr/include/libkern/_OSByteOrder.h
ft_strequ.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strequ.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strfastcat.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strfastcat.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strfastcat.o: /usr/include/sys/_symbol_aliasing.h
ft_strfastcat.o: /usr/include/sys/_posix_availability.h
ft_strfastcat.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strfastcat.o: /usr/include/Availability.h
ft_strfastcat.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strfastcat.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strfastcat.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strfastcat.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strfastcat.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strfastcat.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strfastcat.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strfastcat.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strfastcat.o: /usr/include/sys/_endian.h
ft_strfastcat.o: /usr/include/libkern/_OSByteOrder.h
ft_strfastcat.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strfastcat.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strfastcat.o: /usr/include/i386/types.h
ft_strfastdup.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strfastdup.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strfastdup.o: /usr/include/sys/_symbol_aliasing.h
ft_strfastdup.o: /usr/include/sys/_posix_availability.h
ft_strfastdup.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strfastdup.o: /usr/include/Availability.h
ft_strfastdup.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strfastdup.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strfastdup.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strfastdup.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strfastdup.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strfastdup.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strfastdup.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strfastdup.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strfastdup.o: /usr/include/sys/_endian.h
ft_strfastdup.o: /usr/include/libkern/_OSByteOrder.h
ft_strfastdup.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strfastdup.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strfastdup.o: /usr/include/i386/types.h
ft_strfastjoin.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strfastjoin.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strfastjoin.o: /usr/include/sys/_symbol_aliasing.h
ft_strfastjoin.o: /usr/include/sys/_posix_availability.h
ft_strfastjoin.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strfastjoin.o: /usr/include/Availability.h
ft_strfastjoin.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strfastjoin.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strfastjoin.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strfastjoin.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strfastjoin.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strfastjoin.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strfastjoin.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strfastjoin.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strfastjoin.o: /usr/include/sys/_endian.h
ft_strfastjoin.o: /usr/include/libkern/_OSByteOrder.h
ft_strfastjoin.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strfastjoin.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strfastjoin.o: /usr/include/i386/types.h
ft_strfastnew.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strfastnew.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strfastnew.o: /usr/include/sys/_symbol_aliasing.h
ft_strfastnew.o: /usr/include/sys/_posix_availability.h
ft_strfastnew.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strfastnew.o: /usr/include/Availability.h
ft_strfastnew.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strfastnew.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strfastnew.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strfastnew.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strfastnew.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strfastnew.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strfastnew.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strfastnew.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strfastnew.o: /usr/include/sys/_endian.h
ft_strfastnew.o: /usr/include/libkern/_OSByteOrder.h
ft_strfastnew.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strfastnew.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strfastnew.o: /usr/include/i386/types.h
ft_strfastsub.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strfastsub.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strfastsub.o: /usr/include/sys/_symbol_aliasing.h
ft_strfastsub.o: /usr/include/sys/_posix_availability.h
ft_strfastsub.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strfastsub.o: /usr/include/Availability.h
ft_strfastsub.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strfastsub.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strfastsub.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strfastsub.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strfastsub.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strfastsub.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strfastsub.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strfastsub.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strfastsub.o: /usr/include/sys/_endian.h
ft_strfastsub.o: /usr/include/libkern/_OSByteOrder.h
ft_strfastsub.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strfastsub.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strfastsub.o: /usr/include/i386/types.h
ft_strhach.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strhach.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strhach.o: /usr/include/sys/_symbol_aliasing.h
ft_strhach.o: /usr/include/sys/_posix_availability.h
ft_strhach.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strhach.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strhach.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strhach.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strhach.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strhach.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strhach.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strhach.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strhach.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strhach.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strhach.o: /usr/include/libkern/_OSByteOrder.h
ft_strhach.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strhach.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strhach.o: ft_strhach.h
ft_striter.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_striter.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_striter.o: /usr/include/sys/_symbol_aliasing.h
ft_striter.o: /usr/include/sys/_posix_availability.h
ft_striter.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_striter.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_striter.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_striter.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_striter.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_striter.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_striter.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_striter.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_striter.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_striter.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_striter.o: /usr/include/libkern/_OSByteOrder.h
ft_striter.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_striter.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_striteri.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_striteri.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_striteri.o: /usr/include/sys/_symbol_aliasing.h
ft_striteri.o: /usr/include/sys/_posix_availability.h
ft_striteri.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_striteri.o: /usr/include/Availability.h
ft_striteri.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_striteri.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_striteri.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_striteri.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_striteri.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_striteri.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_striteri.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_striteri.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_striteri.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
ft_striteri.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_striteri.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strjcat.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strjcat.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strjcat.o: /usr/include/sys/_symbol_aliasing.h
ft_strjcat.o: /usr/include/sys/_posix_availability.h
ft_strjcat.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strjcat.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strjcat.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strjcat.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strjcat.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strjcat.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strjcat.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strjcat.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strjcat.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strjcat.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strjcat.o: /usr/include/libkern/_OSByteOrder.h
ft_strjcat.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strjcat.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strjoin.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strjoin.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strjoin.o: /usr/include/sys/_symbol_aliasing.h
ft_strjoin.o: /usr/include/sys/_posix_availability.h
ft_strjoin.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strjoin.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strjoin.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strjoin.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strjoin.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strjoin.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strjoin.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strjoin.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strjoin.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strjoin.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strjoin.o: /usr/include/libkern/_OSByteOrder.h
ft_strjoin.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strjoin.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strlcat.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlcat.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlcat.o: /usr/include/sys/_symbol_aliasing.h
ft_strlcat.o: /usr/include/sys/_posix_availability.h
ft_strlcat.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlcat.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strlcat.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strlcat.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strlcat.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strlcat.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strlcat.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strlcat.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strlcat.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strlcat.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strlcat.o: /usr/include/libkern/_OSByteOrder.h
ft_strlcat.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strlcat.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strlen.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlen.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlen.o: /usr/include/sys/_symbol_aliasing.h
ft_strlen.o: /usr/include/sys/_posix_availability.h
ft_strlen.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlen.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strlen.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strlen.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strlen.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strlen.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strlen.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strlen.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strlen.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strlen.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strlen.o: /usr/include/libkern/_OSByteOrder.h
ft_strlen.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strlen.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strlstadd.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlstadd.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlstadd.o: /usr/include/sys/_symbol_aliasing.h
ft_strlstadd.o: /usr/include/sys/_posix_availability.h
ft_strlstadd.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlstadd.o: /usr/include/Availability.h
ft_strlstadd.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strlstadd.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strlstadd.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strlstadd.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strlstadd.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strlstadd.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strlstadd.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strlstadd.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strlstadd.o: /usr/include/sys/_endian.h
ft_strlstadd.o: /usr/include/libkern/_OSByteOrder.h
ft_strlstadd.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strlstadd.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strlstadd.o: /usr/include/i386/types.h
ft_strlstaddend.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlstaddend.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlstaddend.o: /usr/include/sys/_symbol_aliasing.h
ft_strlstaddend.o: /usr/include/sys/_posix_availability.h
ft_strlstaddend.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlstaddend.o: /usr/include/Availability.h
ft_strlstaddend.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strlstaddend.o: /usr/include/secure/_string.h
ft_strlstaddend.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strlstaddend.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strlstaddend.o: /usr/include/sys/appleapiopts.h
ft_strlstaddend.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strlstaddend.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strlstaddend.o: /usr/include/machine/_structs.h
ft_strlstaddend.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strlstaddend.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strlstaddend.o: /usr/include/libkern/_OSByteOrder.h
ft_strlstaddend.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strlstaddend.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strlstaddend.o: /usr/include/i386/types.h
ft_strlstdel.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlstdel.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlstdel.o: /usr/include/sys/_symbol_aliasing.h
ft_strlstdel.o: /usr/include/sys/_posix_availability.h
ft_strlstdel.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlstdel.o: /usr/include/Availability.h
ft_strlstdel.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strlstdel.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strlstdel.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strlstdel.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strlstdel.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strlstdel.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strlstdel.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strlstdel.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strlstdel.o: /usr/include/sys/_endian.h
ft_strlstdel.o: /usr/include/libkern/_OSByteOrder.h
ft_strlstdel.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strlstdel.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strlstdel.o: /usr/include/i386/types.h
ft_strlstdelone.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlstdelone.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlstdelone.o: /usr/include/sys/_symbol_aliasing.h
ft_strlstdelone.o: /usr/include/sys/_posix_availability.h
ft_strlstdelone.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlstdelone.o: /usr/include/Availability.h
ft_strlstdelone.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strlstdelone.o: /usr/include/secure/_string.h
ft_strlstdelone.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strlstdelone.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strlstdelone.o: /usr/include/sys/appleapiopts.h
ft_strlstdelone.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strlstdelone.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strlstdelone.o: /usr/include/machine/_structs.h
ft_strlstdelone.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strlstdelone.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strlstdelone.o: /usr/include/libkern/_OSByteOrder.h
ft_strlstdelone.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strlstdelone.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strlstdelone.o: /usr/include/i386/types.h
ft_strlstiter.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlstiter.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlstiter.o: /usr/include/sys/_symbol_aliasing.h
ft_strlstiter.o: /usr/include/sys/_posix_availability.h
ft_strlstiter.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlstiter.o: /usr/include/Availability.h
ft_strlstiter.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strlstiter.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strlstiter.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strlstiter.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strlstiter.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strlstiter.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strlstiter.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strlstiter.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strlstiter.o: /usr/include/sys/_endian.h
ft_strlstiter.o: /usr/include/libkern/_OSByteOrder.h
ft_strlstiter.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strlstiter.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strlstiter.o: /usr/include/i386/types.h
ft_strlstmap.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlstmap.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlstmap.o: /usr/include/sys/_symbol_aliasing.h
ft_strlstmap.o: /usr/include/sys/_posix_availability.h
ft_strlstmap.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlstmap.o: /usr/include/Availability.h
ft_strlstmap.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strlstmap.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strlstmap.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strlstmap.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strlstmap.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strlstmap.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strlstmap.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strlstmap.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strlstmap.o: /usr/include/sys/_endian.h
ft_strlstmap.o: /usr/include/libkern/_OSByteOrder.h
ft_strlstmap.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strlstmap.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strlstmap.o: /usr/include/i386/types.h
ft_strlstnew.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strlstnew.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strlstnew.o: /usr/include/sys/_symbol_aliasing.h
ft_strlstnew.o: /usr/include/sys/_posix_availability.h
ft_strlstnew.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strlstnew.o: /usr/include/Availability.h
ft_strlstnew.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strlstnew.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strlstnew.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strlstnew.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strlstnew.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strlstnew.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strlstnew.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strlstnew.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strlstnew.o: /usr/include/sys/_endian.h
ft_strlstnew.o: /usr/include/libkern/_OSByteOrder.h
ft_strlstnew.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strlstnew.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strlstnew.o: /usr/include/i386/types.h
ft_strmap.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strmap.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strmap.o: /usr/include/sys/_symbol_aliasing.h
ft_strmap.o: /usr/include/sys/_posix_availability.h
ft_strmap.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strmap.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strmap.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strmap.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strmap.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strmap.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strmap.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strmap.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strmap.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strmap.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strmap.o: /usr/include/libkern/_OSByteOrder.h
ft_strmap.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strmap.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strmapi.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strmapi.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strmapi.o: /usr/include/sys/_symbol_aliasing.h
ft_strmapi.o: /usr/include/sys/_posix_availability.h
ft_strmapi.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strmapi.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strmapi.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strmapi.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strmapi.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strmapi.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strmapi.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strmapi.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strmapi.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strmapi.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strmapi.o: /usr/include/libkern/_OSByteOrder.h
ft_strmapi.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strmapi.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strncat.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strncat.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strncat.o: /usr/include/sys/_symbol_aliasing.h
ft_strncat.o: /usr/include/sys/_posix_availability.h
ft_strncat.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strncat.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strncat.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strncat.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strncat.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strncat.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strncat.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strncat.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strncat.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strncat.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strncat.o: /usr/include/libkern/_OSByteOrder.h
ft_strncat.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strncat.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strncmp.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strncmp.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strncmp.o: /usr/include/sys/_symbol_aliasing.h
ft_strncmp.o: /usr/include/sys/_posix_availability.h
ft_strncmp.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strncmp.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strncmp.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strncmp.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strncmp.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strncmp.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strncmp.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strncmp.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strncmp.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strncmp.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strncmp.o: /usr/include/libkern/_OSByteOrder.h
ft_strncmp.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strncmp.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strncpy.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strncpy.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strncpy.o: /usr/include/sys/_symbol_aliasing.h
ft_strncpy.o: /usr/include/sys/_posix_availability.h
ft_strncpy.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strncpy.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strncpy.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strncpy.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strncpy.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strncpy.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strncpy.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strncpy.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strncpy.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strncpy.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strncpy.o: /usr/include/libkern/_OSByteOrder.h
ft_strncpy.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strncpy.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strnequ.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strnequ.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strnequ.o: /usr/include/sys/_symbol_aliasing.h
ft_strnequ.o: /usr/include/sys/_posix_availability.h
ft_strnequ.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strnequ.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strnequ.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strnequ.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strnequ.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strnequ.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strnequ.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strnequ.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strnequ.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strnequ.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strnequ.o: /usr/include/libkern/_OSByteOrder.h
ft_strnequ.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strnequ.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strnew.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strnew.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strnew.o: /usr/include/sys/_symbol_aliasing.h
ft_strnew.o: /usr/include/sys/_posix_availability.h
ft_strnew.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strnew.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strnew.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strnew.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strnew.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strnew.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strnew.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strnew.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strnew.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strnew.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strnew.o: /usr/include/libkern/_OSByteOrder.h
ft_strnew.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strnew.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strnstr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strnstr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strnstr.o: /usr/include/sys/_symbol_aliasing.h
ft_strnstr.o: /usr/include/sys/_posix_availability.h
ft_strnstr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strnstr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strnstr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strnstr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strnstr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strnstr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strnstr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strnstr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strnstr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strnstr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strnstr.o: /usr/include/libkern/_OSByteOrder.h
ft_strnstr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strnstr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strrchr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strrchr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strrchr.o: /usr/include/sys/_symbol_aliasing.h
ft_strrchr.o: /usr/include/sys/_posix_availability.h
ft_strrchr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strrchr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strrchr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strrchr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strrchr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strrchr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strrchr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strrchr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strrchr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strrchr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strrchr.o: /usr/include/libkern/_OSByteOrder.h
ft_strrchr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strrchr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strreverse.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strreverse.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strreverse.o: /usr/include/sys/_symbol_aliasing.h
ft_strreverse.o: /usr/include/sys/_posix_availability.h
ft_strreverse.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strreverse.o: /usr/include/Availability.h
ft_strreverse.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strreverse.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strreverse.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strreverse.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strreverse.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strreverse.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strreverse.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strreverse.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strreverse.o: /usr/include/sys/_endian.h
ft_strreverse.o: /usr/include/libkern/_OSByteOrder.h
ft_strreverse.o: /usr/include/libkern/i386/_OSByteOrder.h
ft_strreverse.o: /usr/include/alloca.h /usr/include/machine/types.h
ft_strreverse.o: /usr/include/i386/types.h
ft_strsplit.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strsplit.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strsplit.o: /usr/include/sys/_symbol_aliasing.h
ft_strsplit.o: /usr/include/sys/_posix_availability.h
ft_strsplit.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strsplit.o: /usr/include/Availability.h
ft_strsplit.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_strsplit.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_strsplit.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_strsplit.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_strsplit.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_strsplit.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_strsplit.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_strsplit.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_strsplit.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
ft_strsplit.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strsplit.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strstr.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strstr.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strstr.o: /usr/include/sys/_symbol_aliasing.h
ft_strstr.o: /usr/include/sys/_posix_availability.h
ft_strstr.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strstr.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strstr.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strstr.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strstr.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strstr.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strstr.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strstr.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strstr.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strstr.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strstr.o: /usr/include/libkern/_OSByteOrder.h
ft_strstr.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strstr.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strstr.o: /usr/include/stdio.h /usr/include/secure/_stdio.h
ft_strsub.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strsub.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strsub.o: /usr/include/sys/_symbol_aliasing.h
ft_strsub.o: /usr/include/sys/_posix_availability.h
ft_strsub.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strsub.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strsub.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strsub.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strsub.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strsub.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strsub.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strsub.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strsub.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strsub.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strsub.o: /usr/include/libkern/_OSByteOrder.h
ft_strsub.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strsub.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_strtrim.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_strtrim.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_strtrim.o: /usr/include/sys/_symbol_aliasing.h
ft_strtrim.o: /usr/include/sys/_posix_availability.h
ft_strtrim.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_strtrim.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
ft_strtrim.o: /usr/include/strings.h /usr/include/secure/_string.h
ft_strtrim.o: /usr/include/secure/_common.h /usr/include/stdlib.h
ft_strtrim.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
ft_strtrim.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
ft_strtrim.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
ft_strtrim.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
ft_strtrim.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
ft_strtrim.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
ft_strtrim.o: /usr/include/libkern/_OSByteOrder.h
ft_strtrim.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_strtrim.o: /usr/include/machine/types.h /usr/include/i386/types.h
ft_truncate.o: libft.h /usr/include/string.h /usr/include/_types.h
ft_truncate.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
ft_truncate.o: /usr/include/sys/_symbol_aliasing.h
ft_truncate.o: /usr/include/sys/_posix_availability.h
ft_truncate.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
ft_truncate.o: /usr/include/Availability.h
ft_truncate.o: /usr/include/AvailabilityInternal.h /usr/include/strings.h
ft_truncate.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
ft_truncate.o: /usr/include/stdlib.h /usr/include/sys/wait.h
ft_truncate.o: /usr/include/sys/signal.h /usr/include/sys/appleapiopts.h
ft_truncate.o: /usr/include/machine/signal.h /usr/include/i386/signal.h
ft_truncate.o: /usr/include/i386/_structs.h /usr/include/sys/_structs.h
ft_truncate.o: /usr/include/machine/_structs.h /usr/include/sys/resource.h
ft_truncate.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
ft_truncate.o: /usr/include/sys/_endian.h /usr/include/libkern/_OSByteOrder.h
ft_truncate.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
ft_truncate.o: /usr/include/machine/types.h /usr/include/i386/types.h
get_next_line.o: get_next_line.h /usr/include/unistd.h /usr/include/_types.h
get_next_line.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
get_next_line.o: /usr/include/sys/_symbol_aliasing.h
get_next_line.o: /usr/include/sys/_posix_availability.h
get_next_line.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
get_next_line.o: /usr/include/sys/unistd.h /usr/include/Availability.h
get_next_line.o: /usr/include/AvailabilityInternal.h
get_next_line.o: /usr/include/sys/select.h /usr/include/sys/appleapiopts.h
get_next_line.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
get_next_line.o: /usr/include/i386/_structs.h /usr/include/sys/_select.h
get_next_line.o: libft.h /usr/include/string.h /usr/include/strings.h
get_next_line.o: /usr/include/secure/_string.h /usr/include/secure/_common.h
get_next_line.o: /usr/include/stdlib.h /usr/include/sys/wait.h
get_next_line.o: /usr/include/sys/signal.h /usr/include/machine/signal.h
get_next_line.o: /usr/include/i386/signal.h /usr/include/sys/resource.h
get_next_line.o: /usr/include/machine/endian.h /usr/include/i386/endian.h
get_next_line.o: /usr/include/sys/_endian.h
get_next_line.o: /usr/include/libkern/_OSByteOrder.h
get_next_line.o: /usr/include/libkern/i386/_OSByteOrder.h
get_next_line.o: /usr/include/alloca.h /usr/include/machine/types.h
get_next_line.o: /usr/include/i386/types.h
tree_AVL.o: tree_AVL.h libft.h /usr/include/string.h /usr/include/_types.h
tree_AVL.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
tree_AVL.o: /usr/include/sys/_symbol_aliasing.h
tree_AVL.o: /usr/include/sys/_posix_availability.h
tree_AVL.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
tree_AVL.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
tree_AVL.o: /usr/include/strings.h /usr/include/secure/_string.h
tree_AVL.o: /usr/include/secure/_common.h /usr/include/stdlib.h
tree_AVL.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
tree_AVL.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
tree_AVL.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
tree_AVL.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
tree_AVL.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
tree_AVL.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
tree_AVL.o: /usr/include/libkern/_OSByteOrder.h
tree_AVL.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
tree_AVL.o: /usr/include/machine/types.h /usr/include/i386/types.h
tree_AVL2.o: tree_AVL.h libft.h /usr/include/string.h /usr/include/_types.h
tree_AVL2.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
tree_AVL2.o: /usr/include/sys/_symbol_aliasing.h
tree_AVL2.o: /usr/include/sys/_posix_availability.h
tree_AVL2.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
tree_AVL2.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
tree_AVL2.o: /usr/include/strings.h /usr/include/secure/_string.h
tree_AVL2.o: /usr/include/secure/_common.h /usr/include/stdlib.h
tree_AVL2.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
tree_AVL2.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
tree_AVL2.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
tree_AVL2.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
tree_AVL2.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
tree_AVL2.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
tree_AVL2.o: /usr/include/libkern/_OSByteOrder.h
tree_AVL2.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
tree_AVL2.o: /usr/include/machine/types.h /usr/include/i386/types.h
tree_AVL3.o: tree_AVL.h libft.h /usr/include/string.h /usr/include/_types.h
tree_AVL3.o: /usr/include/sys/_types.h /usr/include/sys/cdefs.h
tree_AVL3.o: /usr/include/sys/_symbol_aliasing.h
tree_AVL3.o: /usr/include/sys/_posix_availability.h
tree_AVL3.o: /usr/include/machine/_types.h /usr/include/i386/_types.h
tree_AVL3.o: /usr/include/Availability.h /usr/include/AvailabilityInternal.h
tree_AVL3.o: /usr/include/strings.h /usr/include/secure/_string.h
tree_AVL3.o: /usr/include/secure/_common.h /usr/include/stdlib.h
tree_AVL3.o: /usr/include/sys/wait.h /usr/include/sys/signal.h
tree_AVL3.o: /usr/include/sys/appleapiopts.h /usr/include/machine/signal.h
tree_AVL3.o: /usr/include/i386/signal.h /usr/include/i386/_structs.h
tree_AVL3.o: /usr/include/sys/_structs.h /usr/include/machine/_structs.h
tree_AVL3.o: /usr/include/sys/resource.h /usr/include/machine/endian.h
tree_AVL3.o: /usr/include/i386/endian.h /usr/include/sys/_endian.h
tree_AVL3.o: /usr/include/libkern/_OSByteOrder.h
tree_AVL3.o: /usr/include/libkern/i386/_OSByteOrder.h /usr/include/alloca.h
tree_AVL3.o: /usr/include/machine/types.h /usr/include/i386/types.h
