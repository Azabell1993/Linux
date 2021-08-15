NAME = stdio.a

PATH_SRC = ./
PATH_LIB = ./include/

CC = gcc
CFLAGS = -W -Wformat -Wall -Wextra -Werror -I ./include/


OBJ = az_printf.o \
	$(PATH_LIB)az_putoctal.o \
	$(PATH_LIB)az_putunsigned.o \
	$(PATH_LIB)az_memalloc.o \
	$(PATH_LIB)az_isdigit.o \
	$(PATH_LIB)az_isalpha.o \
	$(PATH_LIB)az_itoa.o \
	$(PATH_LIB)az_chrpos.o \
	$(PATH_LIB)az_strsub.o \
	$(PATH_LIB)az_nbrlen.o \
	$(PATH_LIB)az_isprint.o \
	$(PATH_LIB)az_strlen.o \
	$(PATH_LIB)az_puthex.o \
	$(PATH_LIB)az_putnbr.o \
	$(PATH_LIB)az_chrpos.o \
	$(PATH_LIB)az_memset.o \
	$(PATH_LIB)az_bzero.o \
	$(PATH_LIB)az_putchar_fd.o \
	$(PATH_LIB)az_putchar.o \
	$(PATH_LIB)az_putstr.o \
	$(PATH_LIB)az_strcmp.o \
	$(PATH_LIB)az_strchr.o \
	$(PATH_LIB)az_atoi.o


$(NAME): $(OBJ)
		 ar rc $(NAME) $(OBJ)
		 ranlib $(NAME) 
		 $(CC) -o main main.c $(NAME)

clean:
	rm -f $(OBJ) 
	rm -f $(NAME) 
	rm -f main

