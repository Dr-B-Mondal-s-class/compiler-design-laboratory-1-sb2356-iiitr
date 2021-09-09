%{
    // Macros for C program
%}
digit [0-9]
letters [a-zA-Z]
%%
{digit}+ {printf ("digit(s)\n");};
{letters}+ {printf ("letter(s)\n");};
{digit}+{letters}+ {printf ("letter(s) and digit(s) both\n");};
.* {printf ("other characters");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}