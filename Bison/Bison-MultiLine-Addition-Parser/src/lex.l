
%{
    #include <stdio.h>
    #include <stdlib.h>
    #include "bison.tab.h"
%}

%option noyywrap

number [0-9]+

%%

{number}    {
                yylval = atoi(yytext);
                return NUM;
            }

\+          { return PLUS; }

\r?\n       { return EOL; }

[ \t]+      { /* Ignore spaces and tabs */ }

.           { return INVALID; }

%%
