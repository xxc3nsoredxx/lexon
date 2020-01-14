OBJS = lex.yy.o parser.tab.o
CC = gcc
LEX = flex
YACC = bison
CFLAGS = -c
YFLAGS = -d

lexon: $(OBJS)
	$(CC) $(OBJS) -o lexon

lex.yy.o: lex.yy.c parser.tab.h types.h
	$(CC) $(CFLAGS) lex.yy.c

lex.yy.c: tokenizer.l parser.tab.h types.h
	$(LEX) tokenizer.l

parser.tab.o: parser.tab.c parser.tab.h types.h
	$(CC) $(CFLAGS) parser.tab.c

parser.tab.c: parser.y types.h
	$(YACC) $(YFLAGS) parser.y

parser.tab.h: parser.y types.h
	$(YACC) $(YFLAGS) parser.y
