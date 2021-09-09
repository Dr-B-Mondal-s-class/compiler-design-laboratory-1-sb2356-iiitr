%{
    // Macros for C program
    #include <stdio.h>
    int nc = 0, nt = 0, nw = 0;
%}
wspace [ ]
%%
\t {nt++;};
{wspace} {nw++;};
. {nc++;};
\n {return 0;};
%%
int main() {
    yylex();
    printf("No. of Characters: %d\nNo. of Whitespaces: %d\nNo. of Tabs: %d\n\n", nc, nw, nt); 
}
int yywrap(void)
{
    return 0;
}
