%option noyywrap

%{
#include <stdio.h>
%}

%%

.*(pq|PQ).* {
    printf("Accepted String: %s\n", yytext);
}

.+ {
    printf("Rejected String: %s\n", yytext);
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