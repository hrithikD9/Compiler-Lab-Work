%option noyywrap

%{
#include <stdio.h>
%}

%%

^end.{2,4}end$ {
    printf("Valid String: %s\n", yytext);
}

.+ {
    printf("Invalid String: %s\n", yytext);
}

\n {
    /* Ignore newline */
}

%%

int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}