%{
    // Macros for C program
    #include <stdio.h>
    int s = 0, nl = 0;
%}
wspace [ ]
%%
\n {if (!nl) {
        fprintf(yyout, "\n");
        nl = 1;
    }
    else
        fprintf(yyout, "");};
\t {fprintf(yyout, "");};
{wspace} {
    if (!s) {
        fprintf(yyout, " ");
        s = 1;
    }
    else
        fprintf(yyout, "");
};
. {fprintf(yyout, "%s", yytext);s=0;nl=0;};
%%
int main(int argc, char* argv[]) {
    yyin = fopen(argv[1], "r");
    yyout = fopen("op", "w");
    yylex();
    fclose(yyin);
    
}
int yywrap(void)
{
    return 1;
}