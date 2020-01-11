OBJS = lex.yy.o main.o
CC = gcc
LEX = flex
CFLAGS = -c

lexon: $(OBJS)
	$(CC) $(OBJS) -o lexon

lex.yy.o: lex.yy.c lexon.h
	$(CC) $(CFLAGS) lex.yy.c

lex.yy.c: tokenizer.l lexon.h
	$(LEX) tokenizer.l

main.o: main.c lexon.h
	$(CC) $(CFLAGS) main.c
