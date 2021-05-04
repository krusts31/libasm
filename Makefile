NAME = libasm.a

OBJ = ft_strlen.o

CC = nasm

NASM_FLAGS = -fmacho64

NASM_FLAGS_D = -fmacho64 -g

LIB = -L/Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem

HEADER = libasm.h

ifdef DEBUG
	FLAGS = $(NASM_FLAGS_D)
else
	FLAGS = $(NASM_FLAGS)
endif

all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $@ $^

%.o: %.s $(HEADER)
	$(CC) $(FLAGS) -o $@ $<
clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

debug: $(OBJ)
	make DEBUG=1
	ar rcs $@ $^

test:
	gcc test/test_ft_strlen.c -L. -lasm -o ft_strlen

re: fclean all
