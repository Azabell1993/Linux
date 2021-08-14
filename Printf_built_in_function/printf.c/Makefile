NAME = stdio.a

PATH_SRC = ./
PATH_LIB = ./include/

CC = gcc
CFLAGS = -W -Wformat -Wall -Wextra -Werror -I ./include/


OBJ = az_printf.o \
	  $(PATH_LIB)az_atoi.o \
	  $(PATH_LIB)az_itoa.o \
	  $(PATH_LIB)az_itoa_base.o \
	  $(PATH_LIB)az_bzero.o \
	  $(PATH_LIB)az_isalpha.o \
	  $(PATH_LIB)az_isdigit.o \
	  $(PATH_LIB)az_isprint.o \
	  $(PATH_LIB)az_isupper.o \
	  $(PATH_LIB)az_memalloc.o \
	  $(PATH_LIB)az_memccpy.o \
	  $(PATH_LIB)az_memchr.o \
	  $(PATH_LIB)az_memcmp.o \
	  $(PATH_LIB)az_memcpy.o \
	  $(PATH_LIB)az_memdel.o \
	  $(PATH_LIB)az_memmove.o \
	  $(PATH_LIB)az_memset.o \
	  $(PATH_LIB)az_putchar.o \
	  $(PATH_LIB)az_putendl.o \
	  $(PATH_LIB)az_putchar_fd.o \
	  $(PATH_LIB)az_putendl_fd.o \
	  $(PATH_LIB)az_putnbr.o \
	  $(PATH_LIB)az_putstr.o \
	  $(PATH_LIB)az_putstr_fd.o \
	  $(PATH_LIB)az_strcat.o \
	  $(PATH_LIB)az_strchr.o \
	  $(PATH_LIB)az_strclr.o \
	  $(PATH_LIB)az_strcmp.o \
	  $(PATH_LIB)az_strcpy.o \
	  $(PATH_LIB)az_strdel.o \
	  $(PATH_LIB)az_strdup.o \
	  $(PATH_LIB)az_strequ.o \
	  $(PATH_LIB)az_striter.o \
	  $(PATH_LIB)az_striteri.o \
	  $(PATH_LIB)az_strjoin.o \
	  $(PATH_LIB)az_strlcat.o \
	  $(PATH_LIB)az_strlen.o \
	  $(PATH_LIB)az_strmap.o \
	  $(PATH_LIB)az_strmapi.o \
	  $(PATH_LIB)az_strncat.o \
	  $(PATH_LIB)az_strncmp.o \
	  $(PATH_LIB)az_strncpy.o \
	  $(PATH_LIB)az_strnequ.o \
	  $(PATH_LIB)az_strnew.o \
	  $(PATH_LIB)az_strnstr.o \
	  $(PATH_LIB)az_strrchr.o \
	  $(PATH_LIB)az_strrev.o \
	  $(PATH_LIB)az_strsplit.o \
	  $(PATH_LIB)az_strstr.o \
	  $(PATH_LIB)az_strsub.o \
	  $(PATH_LIB)az_strtrim.o \
	  $(PATH_LIB)az_tolower.o \
	  $(PATH_LIB)az_strbchr.o \
	  $(PATH_LIB)az_chrpos.o \
	  $(PATH_LIB)az_puthex.o \
	  $(PATH_LIB)az_nbrlen.o \
	  $(PATH_LIB)az_putoctal.o \
	  $(PATH_LIB)az_putunsigned.o \
	  $(PATH_LIB)az_wchrlen.o \
	  $(PATH_LIB)az_wchrstr.o

$(NAME): $(OBJ)
		 ar rc $(NAME) $(OBJ)
		 ranlib $(NAME) 
		 $(CC) -o main main.c $(NAME)

clean:
	rm -f $(OBJ) 
	rm -f $(NAME) 
	rm -f main

