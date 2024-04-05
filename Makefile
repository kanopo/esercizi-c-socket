CC = gcc
CFLAGS = -Wall -Werror -pedantic

all: server user employee


server: server.o list.o
	$(CC) $(CFLAGS) -o server server.o list.o


user: user.o list.o
	$(CC) $(CFLAGS) -o user user.o list.o


employee: employee.o list.o
	$(CC) $(CFLAGS) -o employee employee.o list.o


.c.o:
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f prova *.o *~

