
%option noyywrap

%{
#include <stdio.h>
%}

%%

"int"|"float"|"char"|"if"|"else"|"while"|"return" {
    printf("KEYWORD: %s\n", yytext);
}

[a-zA-Z_][a-zA-Z0-9_]* {
    printf("IDENTIFIER: %s\n", yytext);
}

[0-9]+\.[0-9]+ {
    printf("FLOAT: %s\n", yytext);
}

[0-9]+ {
    printf("INTEGER: %s\n", yytext);
}

"=="|"!="|"<="|">="|"<"|">" {
    printf("RELATIONAL OPERATOR: %s\n", yytext);
}

"=" {
    printf("ASSIGNMENT OPERATOR: %s\n", yytext);
}

[+\-*/%] {
    printf("ARITHMETIC OPERATOR: %s\n", yytext);
}

[;,(){}] {
    printf("SEPARATOR: %s\n", yytext);
}

[ \t\n]+ {
    /* Ignore whitespace */
}

. {
    printf("UNKNOWN CHARACTER: %s\n", yytext);
}

%%

int main()
{
    printf("Enter your C code:\n");

    yylex();

    return 0;
}
