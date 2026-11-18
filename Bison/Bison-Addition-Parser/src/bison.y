%{
    #include<stdio.h>
    #include<stdlib.h>
    #include<string.h>
    int yylex(void);
    int yyerror(const char *s);
%}

%token NUM PLUS EOL

%%
expr:
    /*Empty*/
    | NUM PLUS NUM EOL {printf("%d + %d = %d" , $1, $3, $1+$3); return 0;}
    ;
%%


int yyerror(const char *s) {
    fprintf(stderr, "Error : %s", s);
    return 0;
}

int main() {
    printf("Enter expression (e.g. 2+1):\n");
    yyparse();

    return 0;
}