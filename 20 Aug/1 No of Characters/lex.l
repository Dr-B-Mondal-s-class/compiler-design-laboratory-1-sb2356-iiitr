%{
    // Macros for C program
    #include <stdio.h>
    int ch = 0;
%}
%%
. {ch++;};
\n {printf("No. of Characters: %d\n\n", ch); ch = 0;};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}
