%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
    int yyerror(const char *s);
    int yylex();

    #include "bison.tab.h"
    void errorMessage(void);
%}
%option noyywrap

number [0-9]+

%%
{number}  {yylval = atoi(yytext); return NUM;}
\+        {return PLUS;}
\r?\n     {return EOL;}
[ \t]+    {}
.         {errorMessage();}
%%

void errorMessage() {
    printf("Invalid Input!\n");
}

