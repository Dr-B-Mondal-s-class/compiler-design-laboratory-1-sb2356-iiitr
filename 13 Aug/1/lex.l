%{
    // Macros for C program
%}

lower [a-z]
upper [A-Z]
both [a-zA-Z]

%%
{lower}+ {printf("lowercase\n");};
{upper}+ {printf("uppercase\n");};
{both}+ {printf("Both\n");};
.* {printf("Other characters\n");};
%%

int main()
{
    yylex();
    return 0;
}

int yywrap()
{
    return 0;
}