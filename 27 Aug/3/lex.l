%{
    // Program to check valid operators
%}
ari_operators [+\-*\/%&\|^<>]|"<="|">="|"++"|"--"
log_operators "&&"|"||"|"!"
%%
{ari_operators} {ECHO; printf(" is an arithmetic operator\n");};
{log_operators} {ECHO; printf(" is a logical operator\n");};
.* {ECHO; printf(" is not a valid operator\n");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}
