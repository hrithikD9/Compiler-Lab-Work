%option noyywrap

%{
#include <stdio.h>

int numbers = 0;
int words = 0;
%}

%%

[0-9]+ {
    numbers++;
}

[a-zA-Z]+ {
    words++;
}

[ \t\n]+ {
    /* Ignore whitespace */
}

. {
    /* Ignore special characters */
}

%%

int main()
{
    printf("Enter a string: ");
    yylex();

    printf("\nTotal Numbers: %d\n", numbers);
    printf("Total Words: %d\n", words);

    return 0;
}