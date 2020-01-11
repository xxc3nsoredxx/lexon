#include <stdio.h>

#include "lexon.h"

extern int yylex ();
extern int yylineno;
extern char *yytext;

int main () {
    int name_tok;
    int val_tok;

    /* Tokenize stdin */
    while ((name_tok = yylex())) {
        printf("%d\n", name_tok);
    }

    return 1;
}
