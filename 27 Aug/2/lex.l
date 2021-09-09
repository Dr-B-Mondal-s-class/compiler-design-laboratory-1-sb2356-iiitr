%{
    //Valid Identifiers
%}
id [a-zA-Z_][a-zA-Z_0-9]*
%%
{id} {ECHO; printf(" is a Valid Identifier\n\n");};
.+ {ECHO; printf(" is an invalid Identifier\n\n");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}
