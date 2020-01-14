%{
#include <string.h>
#include "types.h"
#include "parser.tab.h"
void yyerror (char *s);
%}

whitespace  [ \t\n\r]
integer [1-9][0-9]*|0

%%
"-"?{integer}   {
    yylval.int_t = atoi(yytext);
    return i_numeral;
}
"-"?{integer}"."{integer}+                      |
"-"?{integer}[eE][+-]?{integer}+                |
"-"?{integer}"."{integer}+[eE][+-]?{integer}+   {
    yylval.double_t = atof(yytext);
    return f_numeral;
}
{whitespace}    {
    /* Do nothing */
}
%%

int yywrap () {
    return 1;
}
