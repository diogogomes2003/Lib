# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dduarte- <dduarte-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 14:30:19 by dduarte-          #+#    #+#              #
#    Updated: 2023/10/04 09:43:03 by dduarte-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC_LIBFT = others/ft_isalpha.c others/ft_isdigit.c others/ft_isalnum.c others/ft_isascii.c \
				others/ft_isprint.c strings/ft_strncmp.c others/ft_toupper.c others/ft_tolower.c \
				strings/ft_strrchr.c strings/ft_strnstr.c strings/ft_strdup.c others/ft_atoi.c\
				memory/ft_memcmp.c memory/ft_memmove.c memory/ft_memset.c memory/ft_memcpy.c\
				memory/ft_memchr.c memory/ft_bzero.c strings/ft_strlen.c strings/ft_strlcpy.c\
				strings/ft_strlcat.c strings/ft_strchr.c memory/ft_calloc.c strings/ft_substr.c\
				others/ft_putchar_fd.c others/ft_putstr_fd.c others/ft_putendl_fd.c others/ft_putnbr_fd.c\
				strings/ft_strmapi.c strings/ft_strjoin.c strings/ft_strtrim.c strings/ft_striteri.c\
				others/ft_itoa.c others/ft_split.c lists/ft_lstnew.c lists/ft_lstadd_front.c\
				lists/ft_lstsize.c lists/ft_lstlast.c lists/ft_lstadd_back.c lists/ft_lstdelone.c\
				lists/ft_lstclear.c lists/ft_lstiter.c lists/ft_lstmap.c strings/ft_strjoinget.c

SRC_PRINT = printf/ft_printf_hex.c printf/ft_printf_ptr.c printf/ft_printf_std.c printf/ft_printf_uns.c\
				printf/ft_printf.c

SRC_GET = gnl/get_next_line.c gnl/get_next_line_utils.c

SRC_COMP = ${SRC_LIBFT} ${SRC_PRINT} ${SRC_GET}

OBJS = ${SRC_COMP:.c=.o}

C_DEF   = \033[0;39m
C_GREEN = \033[0;92m

HEADER = libft.h
INCLUDE = -I include
CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror

.c.o:	
	${CC} ${CFLAGS} ${INCLUDE} -c $< -o ${<:.c=.o}

$(NAME):	${OBJS}
		ar rcs ${NAME} ${OBJS} ${HEADER}
		@echo "${C_GREEN}[COMPILED]${C_DEF}"

all:	${NAME}

clean:
	${RM} ${OBJS}
	@echo "${C_GREEN}[CLEANED]${C_DEF}"

fclean:	
		${RM} ${OBJS}
		${RM} ${NAME}
		@echo "${C_GREEN}[FULL CLEANED]${C_DEF}"

re:	fclean all

.PHONY: all clean fclean re

.SILENT: