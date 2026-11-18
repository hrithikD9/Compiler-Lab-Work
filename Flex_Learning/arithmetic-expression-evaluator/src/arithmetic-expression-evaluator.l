%option noyywrap

%{
#include <stdio.h>
#include <stdlib.h>

int num;
%}

%%

[0-9]+ {
    num = atoi(yytext);
    return 1;
}

"+" {
    return 2;
}

"-" {
    return 3;
}

[ \t\n]+ {
    /* Ignore whitespace */
}

. {
    printf("Invalid character: %s\n", yytext);
    return 0;
}

%%

int main()
{
    int a, b, op;

    printf("Enter expression: ");

    if (yylex() != 1)
        return 0;

    a = num;

    op = yylex();

    if (op != 2 && op != 3)
    {
        printf("Invalid operator\n");
        return 0;
    }

    if (yylex() != 1)
        return 0;

    b = num;

    if (op == 2)
        printf("Result = %d\n", a + b);
    else
        printf("Result = %d\n", a - b);

    return 0;
}