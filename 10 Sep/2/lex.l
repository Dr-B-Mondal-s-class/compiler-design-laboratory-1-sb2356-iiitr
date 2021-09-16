%{

%}
domain ".com"|".in"|".org"|".edu"
u_name ([a-zA-Z0-9]+[a-zA-Z0-9\.\_\-]+[a-zA-Z0-9]+){6}
domain_name [a-zA-Z0-9]+
email ({u_name}"@"{domain_name}{domain})

%%
{email} {printf("Valid email address\n");};
.+ {printf("invalid email address\n");};
%%

int main() {
    printf("Enter email address: ");
    yylex();
}
int yywrap(void)
{
    return 0;
}