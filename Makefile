CC = cc

CFLAGS = -Wall -Wextra -Werror

NAME = libftprintf.a

AR = ar rcs

SRC = ft_printf.c num_functions.c str_functions.c


OBJS = ${SRC:.c=.o}

all : ${NAME}

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

%.o :	%.c	ft_printf.h
	${CC} ${CFLAGS} -o $@ -c $<

clean :
	rm -f ${OBJS}

fclean :	clean
	rm -f ${NAME}

re : fclean all

.PHONY :	clean all fclean re