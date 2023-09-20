# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dduarte- <dduarte-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/12 14:30:19 by dduarte-          #+#    #+#              #
#    Updated: 2023/08/14 09:35:31 by dduarte-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC_LIBFT = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c \
				ft_isprint.c ft_strncmp.c ft_toupper.c ft_tolower.c \
				ft_strrchr.c ft_strnstr.c ft_strdup.c ft_atoi.c\
				ft_memcmp.c ft_memmove.c ft_memset.c ft_memcpy.c\
				ft_memchr.c ft_bzero.c ft_strlen.c ft_strlcpy.c\
				ft_strlcat.c ft_strchr.c ft_calloc.c ft_substr.c\
				ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c\
				ft_strmapi.c ft_strjoin.c ft_strtrim.c ft_striteri.c\
				ft_itoa.c ft_split.c ft_lstnew.c ft_lstadd_front.c\
				ft_lstsize.c ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c\
				ft_lstclear.c ft_lstiter.c ft_lstmap.c

SRC_PRINT = ft_printf_hex.c ft_printf_ptr.c ft_printf_std.c ft_printf_uns.c\
				ft_printf.c

SRC_GET = get_next_line.c get_next_line_utils.c

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
	@echo "${C_GREEN}[REBUILD]${C_DEF}"

.PHONY: all clean fclean re

.SILENT: