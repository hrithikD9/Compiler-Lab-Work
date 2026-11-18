%option noyywrap

%{
#include <stdio.h>
%}

%%

\"[^"\n]*\" {
    printf("String Literal: %s\n", yytext);
}

\'[^'\n]\' {
    printf("Character Literal: %s\n", yytext);
}

[ \t\n]+ {
    /* Ignore whitespace */
}

. {
    printf("Invalid: %s\n", yytext);
}

%%

int main()
{
    printf("Enter a string: ");
    yylex();

    return 0;
}