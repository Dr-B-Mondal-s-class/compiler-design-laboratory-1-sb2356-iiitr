%{
    // Program to check if input is
    // an integer, float or none
%}
digit [0-9]
integer {digit}+
floating {digit}+"."{digit}+
%%
{integer} {ECHO; printf(" is an integer\n");};
{floating} {ECHO; printf(" is a floating-point number\n");};
.* {ECHO; printf(" is neither an integer nor a floating point number.\n");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}
