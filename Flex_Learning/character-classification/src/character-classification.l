%option noyywrap

%{
#include <stdio.h>
%}

%%

[a-z] {
    printf("Small Letter: %s\n", yytext);
}

[A-Z] {
    printf("Capital Letter: %s\n", yytext);
}

[0-9]+ {
    printf("Number: %s\n", yytext);
}

.|\n {
    /* Ignore other characters */
}

%%

int main()
{
    printf("Enter a string: ");
    yylex();
    return 0;
}