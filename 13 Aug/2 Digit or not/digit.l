%{
    // Macros for C program
%}
digit [0-9]
%%
{digit} {printf ("digit");};
.* {printf ("Not digit");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}