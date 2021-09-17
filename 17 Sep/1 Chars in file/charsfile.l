%{
    // Macros for C program
    #include <stdio.h>
    int nc = 0, nt = 0, nw = 0, nl = 0;
%}
wspace [ ]
%%
\n {nl++;};
\t {nt++;};
{wspace} {nw++;};
. {nc++;};
%%
int main(int argc, char* argv[]) {
    yyin = fopen(argv[1], "r");
    yylex();
    fclose(yyin);
    printf("No. of Characters: %d\nNo. of Whitespaces: %d\nNo. of Tabs: %d\nNo. of lines: %d\n", nc, nw, nt, nl); 
}
int yywrap(void)
{
    return 1;
}