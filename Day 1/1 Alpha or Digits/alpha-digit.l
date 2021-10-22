%{
    // Macros for C program
%}
digit [0-9]
letters [a-zA-Z]
%%
{digit}+ {printf ("digit(s)");};
{letters}+ {printf ("letter(s)");};
.* {printf ("other characters");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}

