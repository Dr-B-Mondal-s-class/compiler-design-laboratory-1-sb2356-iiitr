%{
    // Macros for C program
    #include <stdio.h>
    int nv = 0, nc = 0;
%}
vowel [aeiouAEIOU]
cons [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]
%%
{vowel} {nv++;};
{cons} {nc++;};
\n {return 0;};
.
%%
int main() {
    yylex();
    printf("No. of Vowels: %d\nNo. of Consonants: %d\n\n", nv, nc); 
}
int yywrap(void)
{
    return 0;
}
