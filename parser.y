%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "types.h"
extern int yylex ();
extern int yyparse ();
extern FILE *yyin;
void yyerror (char *s);
%}

%union {
    int     int_t;
    double  double_t;
}

%start JSON

%token <int_t>      i_numeral
%token <double_t>   f_numeral

%type <int_t>       INTEGER
%type <double_t>    FLOAT

%%
JSON    :   ELEMENT {
                ;
            }
VALUE   :   NUMBER  {
                ;
            }
ELEMENT :   VALUE   {
                ;
            }
NUMBER  :   INTEGER {
                printf("Integer: %d\n", $1);
            }
        |   FLOAT   {
                printf("Float: %lf\n", $1);
            }
INTEGER :   i_numeral   {
                $$ = $1;
            }
FLOAT   :   f_numeral   {
                $$ = $1;
            }
%%

void yyerror (char *s) {
    fprintf(stderr, "Unknown: %s\n", s);
    exit(-1);
}

int main () {
    do {
        yyparse();
    } while (!feof(yyin));
}
