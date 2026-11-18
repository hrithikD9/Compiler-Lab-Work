
%{
    #include <stdio.h>
    #include <stdlib.h>

    int yylex(void);
    int yyerror(const char *s);
%}

%token NUM PLUS EOL INVALID

%%

input:
      %empty
    | input line
    ;

line:
      EOL
    | NUM PLUS NUM EOL
        {
            printf("%d + %d = %d\n", $1, $3, $1 + $3);
        }
    | error EOL
        {
            printf("Invalid expression! Try again.\n");
            yyerrok;
        }
    ;

%%

int yyerror(const char *s)
{
    fprintf(stderr, "Syntax Error: %s\n", s);
    return 0;
}

int main(void)
{
    printf("Addition Parser\n");
    printf("Enter expressions :\n\n");

    yyparse();

    printf("\nProgram terminated.\n");

    return 0;
}
