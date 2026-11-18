%option noyywrap

%{
#include <stdio.h>
%}

%%

[0-9]+\.[0-9]+ {
    printf("Floating Point Number: %s\n", yytext);
}

[0-9]+ {
    printf("Integer Number: %s\n", yytext);
}

[ \t\n]+ {
    /* Ignore whitespace */
}

. {
    printf("Invalid Character: %s\n", yytext);
}

%%

int main()
{
    printf("Enter numbers: ");
    yylex();
    return 0;
}