%{
    // Macros for C program
%}
letter [A-Za-z]
%%
{letter}+ {printf ("Letters\n");};
.* {printf ("Characters other than letters\n");};
%%
int main() {
       yylex();
       }
int yywrap(void)
{
    return 0;
}