CGOFILES=pong.go

ping: pong.o ping.go
	gccgo -o ping ping.go pong.o

pong.o: pong.c
	gcc -c pong.c
