%{
    // Program to check if given input
    // is a valid URL or not
%}

protocol "http"|"https"|"ftp"
domain "com"|"in"|"org"|"edu"
domain_name [a-zA-Z0-9]+
url ({protocol}:\/\/"www"\.{domain_name}\.{domain})

%%
{url} {printf("Valid URL\n");};
.+ {printf("invalid URL\n");};
%%

int main() {
    printf("Enter a url: ");
    yylex();
 
}
int yywrap(void)
{
    return 0;
}