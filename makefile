CC = gcc
CFLAGS = -std=c11 -Wall -Wextra -O2

all: server client

server: tcp_server.c utils.c
	$(CC) $(CFLAGS) tcp_server.c utils.c -o server

client: tcp_client.c utils.c
	$(CC) $(CFLAGS) tcp_client.c utils.c -o client

clean:
	rm -f server client

