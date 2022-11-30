# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agallet <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/09 17:26:58 by agallet           #+#    #+#              #
#    Updated: 2022/11/30 11:32:56 by agallet          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRCS = ft_printf_variable.c ft_printf.c ft_printfstr.c ft_printf_nb.c ft_printf_p.c ft_putnbr_base.c ft_putunbr_base.c 
OBJS = $(SRCS:.c=.o)
CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME): libft.a $(OBJS)
	ar cr $(NAME) $(OBJS)

libft.a:
	make -C libft
	mv libft/libft.a ./$(NAME)

exe: $(NAME)
	gcc $(FLAGS) main.c $(NAME) -o prog ; ./prog

clean: 
	rm -f $(OBJS)
	make clean -C libft

fclean: clean
	rm -f $(NAME)
	make fclean -C libft

re: fclean all 

.PHONY: all clean fclean re
