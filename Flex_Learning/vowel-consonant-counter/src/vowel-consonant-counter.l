
%option noyywrap

%{
#include <stdio.h>

int vowels = 0;
int digits = 0;
int consonants = 0;
int special = 0;
%}

%%

[aeiouAEIOU] {
    vowels++;
}

[a-zA-Z] {
    consonants++;
}

[0-9]+ {
    digits++;
}

[ \t\n]+ {
    /* Ignore whitespace */
}

[^a-zA-Z0-9 \t\n] {
    special++;
}

. {
    /* Ignore other characters */
}

%%

int main()
{
    printf("Enter a sentence:\n");

    yylex();

    printf("\nTotal vowels: %d\n", vowels);
    printf("Total consonants: %d\n", consonants);
    printf("The digits are : %d\n",digits);

    return 0;
}
