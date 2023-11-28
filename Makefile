# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mapierre <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/07 19:20:39 by mapierre          #+#    #+#              #
#    Updated: 2022/12/08 04:11:10 by mapierre         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ./ft_printf.c\
		./ft_print_c.c\
		./ft_print_d.c\
		./ft_print_s.c\
		./ft_print_u.c\
		./ft_print_xx.c\
		./ft_print_x.c\
		./ft_print_p.c

OBJS = ${SRC:.c=.o}

.c.o:
		cc -Wall -Werror -Wextra -c $< -o ${<:.c=.o}

${NAME} : ${OBJS}
		ar rc ${NAME} ${OBJS}

all: ${NAME}

clean:
		rm -f ${OBJS}

fclean: clean
		rm -f ${NAME}

re: fclean all

.PHONY: all clean fclean re
