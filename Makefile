#--- DEFAULT VALUES ---#

NAME = NAME

SRC = src/main.c

OBJS = $(patsubst src/%.c, bin/%.o, $(SRC))

CC = gcc

CFLAGS = -Wall -Wextra -Werror

LIBFTPATH = includes/libft/

LIBFT = libft.a

#MLX = build/libmlx42.a

#MLXPATH = includes/MLX42/

#---   RULES   ---#

all: $(NAME) logo

$(NAME): $(OBJS) $(LIBFTPATH)$(LIBFT)
	@$(CC) $(CFLAGS) $(OBJS) -L$(LIBFTPATH) -lft -o $(NAME)

bin/%.o: src/%.c
	@mkdir -p bin/
	@$(CC) $(CFLAGS) -c -o $@ $<

#$(MLXPATH)$(MLX):
#	@cmake $(MLXPATH) -B $(MLXPATH)/build
#	@$(MAKE) -C $(MLXPATH)/build -j4

# $(LIBFTPATH)$(LIBFT):
#	@$(MAKE) -C $(LIBFTPATH)
#	@$(MAKE) -C $(LIBFTPATH) bonus

clean:
	@rm -rf bin/

fclean: clean
	@rm -rf $(NAME)

bonus: all

re: fclean all

logo:
	@echo "\033[32;1m--- BUILD COMPLETE ---"
	@echo "███▄ ▄███▓ ███▄ ▄███▓ ▄▄▄       ██▀███   ▄████▄   ▒█████  ▄▄▄█████▓▄▄▄█████▓"
	@echo "▓██▒▀█▀ ██▒▓██▒▀█▀ ██▒▒████▄    ▓██ ▒ ██▒▒██▀ ▀█  ▒██▒  ██▒▓  ██▒ ▓▒▓  ██▒ ▓▒"
	@echo "▓██    ▓██░▓██    ▓██░▒██  ▀█▄  ▓██ ░▄█ ▒▒▓█    ▄ ▒██░  ██▒▒ ▓██░ ▒░▒ ▓██░ ▒░"
	@echo "▒██    ▒██ ▒██    ▒██ ░██▄▄▄▄██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒▒██   ██░░ ▓██▓ ░ ░ ▓██▓ ░ "
	@echo "▒██▒   ░██▒▒██▒   ░██▒ ▓█   ▓██▒░██▓ ▒██▒▒ ▓███▀ ░░ ████▓▒░  ▒██▒ ░   ▒██▒ ░ "
	@echo "░ ▒░   ░  ░░ ▒░   ░  ░ ▒▒   ▓▒█░░ ▒▓ ░▒▓░░ ░▒ ▒  ░░ ▒░▒░▒░   ▒ ░░     ▒ ░░   "
	@echo "░  ░      ░░  ░      ░  ▒   ▒▒ ░  ░▒ ░ ▒░  ░  ▒     ░ ▒ ▒░     ░        ░    "
	@echo "░      ░   ░      ░     ░   ▒     ░░   ░ ░        ░ ░ ░ ▒    ░        ░      "
	@echo "       ░          ░         ░  ░   ░     ░ ░          ░ ░                    "
	@echo "                                         ░                                   \033[0m"
