
MD_SRCS = minidsp.c biquad.c liveio.c fileio.c
MD_OBJS = $(MD_SRCS:.c=.o)

default : libminidsp.a

CFLAGS = -O3 -Wall

%.o:%.c
	$(CC) $(CFLAGS) -c $*.c -o $@ 

libminidsp.a: $(MD_OBJS)
	ar rcs $@ $(MD_OBJS)

.PHONY:	clean
clean:
	-rm *.o libminidsp.a
