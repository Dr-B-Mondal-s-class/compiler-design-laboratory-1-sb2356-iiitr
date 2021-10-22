%{
    // Program to check if input word
    // is a keyword or not
%}
keywords (if|else|for|do|while|break|continue|switch|case|default|int|char)
%%
{keywords}+ {ECHO; printf(" is a keyword\n\n");};
.* {ECHO; printf(" is not a keyword\n\n");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}
