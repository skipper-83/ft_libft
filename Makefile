#list sources
SRCS		=	ft_isalpha.c \
				ft_isdigit.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isprint.c \
				ft_strlen.c \
				ft_memset.c \
				ft_bzero.c \
				ft_memcpy.c \
				ft_memmove.c \
				ft_strlcpy.c \
				ft_strlcat.c \
				ft_toupper.c \
				ft_tolower.c \
				ft_strchr.c \
				ft_strrchr.c \
				ft_strncmp.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_strnstr.c \
				ft_atoi.c \
				ft_calloc.c \
				ft_strdup.c \
				ft_substr.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_split.c \
				ft_itoa.c \
				ft_strmapi.c \
				ft_striteri.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \
				ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c \
				ft_uitoa_base.c \
				ft_llitoa.c \
				ft_ftoa.c \
				ft_pow.c \
				get_next_line.c \
				get_next_line_utils.c \
				pf_convert.c \
				pf_format_number.c \
				pf_format.c \
				pf_parse.c \
				pf_set_flags.c \
				pf_util.c


#turn sources into objects
OBJS		=	${SRCS:.c=.o}

# name output file
NAME		=	libft.a

#choose compiler
CC		=	cc

#set compiler flags
CFLAGS	=	-Wall -Werror -Wextra

#set library utility
AR		=	ar

#set library utility flags
ARFLAGS	=	r

#set clean command
RM		= rm -f

#make library and clean
all		:	${NAME}

#set name command, require OBJS
#wrap files OBJS into library with name NAME
${NAME}	:	${OBJS} 
	${AR} ${ARFLAGS} ${NAME} ${OBJS}

# make c files in to object files
%.o : %.c
	${CC} ${CFLAGS} $^ -c

#remove OBJS files
clean	:
	${RM} ${OBJS} 

#clean all
fclean	: clean
	${RM} ${NAME}

#rebuild libray
re		: fclean all

.PHONY : clean all re fclean
