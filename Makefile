NAME=byte2led
SRC=main.c
OBJ=$(SRC:.c=.o)

CFLAGS=-Wall -Wextra

%o:%.c
	gcc $(CFLAGS) -c $@ -o $< -lwiringPi -lwiringPiDev 

all:	$(NAME)

$(NAME): $(OBJ)
	gcc $(OBJ) -o $(NAME) $(CFLAGS)

clean:
	@rm -fv $(OBJ)

fclean:
	@rm -fv $(NAME)

re: fclean all
