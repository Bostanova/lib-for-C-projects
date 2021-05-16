FLAG = -Wall -Wextra -Werror

NAME = libft.a

INCLUDE = libft.h

SRC =	ft_isdigit.c ft_islower.c ft_isupper.c ft_isalpha.c\
		ft_isalnum.c ft_isascii.c ft_isspace.c  \
		ft_isprint.c ft_tolower.c ft_toupper.c \
		ft_strlcpy.c ft_strlcat.c ft_strchr.c ft_strrchr.c\
		ft_strlen.c ft_putchar.c ft_putchar_nl.c\
		ft_bzero.c \
		ft_memset.c 

		
OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):$(SRC) $(OBJ) $(INCLUDE)
		ar rc $(NAME) $(OBJ)
		ranlib $(NAME)

%.o: %.c
		gcc $(FLAG) -c $< -o $@

clean:
		rm -f $(OBJ)

fclean: clean
		rm -f $(NAME)

re: fclean all