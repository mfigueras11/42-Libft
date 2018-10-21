# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mfiguera <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/16 17:16:58 by mfiguera          #+#    #+#              #
#    Updated: 2018/10/21 19:26:45 by mfiguera         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
FILES = ft_atoi ft_bzero ft_isalnum ft_isalpha ft_isascii ft_isdigit ft_isprint ft_itoa ft_lstadd ft_lstdel ft_lstdelone ft_lstiter ft_lstmap ft_lstnew  ft_memalloc ft_memccpy ft_memchr ft_memcmp ft_memcpy ft_memdel ft_memmove ft_memset ft_putchar ft_putchar_fd ft_putendl ft_putendl_fd ft_putnbr ft_putnbr_fd ft_putstr ft_putstr_fd ft_strcat ft_strchr ft_strclr ft_strcmp ft_strcpy ft_strdel ft_strdup ft_strequ ft_striter ft_striteri ft_strjoin ft_strlcat ft_strlen ft_strmap ft_strmapi ft_strncat ft_strncmp ft_strncpy ft_strnequ ft_strnew ft_strnstr ft_strrchr ft_strsplit ft_strstr ft_strsub ft_strtrim ft_tolower ft_toupper ft_strnjoin ft_atoiptr ft_sttoa ft_itoabase ft_utoa ft_toupperstr ft_mbstr ft_strjoinfree ft_strrev ft_swap ft_get_next_line
OBJS_DIR = objs
SRCS_DIR = srcs
INCL_DIR = incl
CFILES = $(addsuffix .c, $(addprefix $(SRCS_DIR)/, $(FILES)))
OFILES = $(addsuffix .o, $(addprefix $(OBJS_DIR)/, $(FILES)))
HFILES = $(addsuffix .h, $(addprefix $(INCL_DIR)/, libft))
NAME = libft.a

all: $(NAME)

$(NAME):  $(OBJS_DIR) $(OFILES)
	@ar rc libft.a $(OFILES)

$(OFILES): $(CFILES) $(HFILES)
	@gcc -Wall -Werror -Wextra -c $< -o $@ -I $(INCL_DIR)/

$(OBJS_DIR):
	@mkdir -p $(OBJS_DIR)

clean:
	@rm -rf $(OBJS_DIR)

fclean: clean
	@rm -f libft.a

re: fclean $(NAME)
