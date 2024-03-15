NAME = next_line.a

CC	= cc
CFFLAGS	= -Wall -Wextra -Werror
AR	= ar
ARFLAGS	= -rcs
RM	= rm
RMFLAGS	= -f

SRC	= get_next_line.c get_next_line_utils.c

OBJ	= $(SRC:.c=.o)

BONUS	= get_next_line.c

OBJ_BONUS = $(BONUS:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $@ $(OBJ)

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	$(RM) $(RMFLAGS) $(OBJ) $(OBJ_BONUS)

fclean: clean
	$(RM) $(RMFLAGS) $(NAME)

bonus: $(OBJ) $(OBJ_BONUS)
	$(AR) $(ARFLAGS) $(NAME) $(OBJ) $(OBJ_BONUS)

re: fclean all
