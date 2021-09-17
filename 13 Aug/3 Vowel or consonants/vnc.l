%{
    // Macros for C program
%}
vowel [aeiouAEIOU]
cons [b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z]
both [a-zA-Z]
%%
{vowel}+ {printf ("Contains only vowels");};
{cons}+ {printf ("Contains only consonants");};
{both}+ {printf ("Contains both vowels & consonants");};
.* {printf ("Contains other characters");};
%%
int main() {
    yylex();
}
int yywrap(void)
{
    return 0;
}