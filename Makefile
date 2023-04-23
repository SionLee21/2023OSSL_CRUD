CC = gcc
CFLAGS = -Wall
OBJS = manager.o product.o market.o
all : market
market : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^
manager.o : manager.c manager.h product.h
	$(CC) $(CFLAGS) -c -o $@ $<
product.o : product.c product.h
	$(CC) $(CFLAGS) -c -o $@ $<
market.o : market.c manager.h product.h
	$(CC) $(CFLAGS) -c -o $@ $<
clean :
	rm -f *.o market

