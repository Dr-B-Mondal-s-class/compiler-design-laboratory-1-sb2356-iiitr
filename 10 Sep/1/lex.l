%{

%}

ph_no [1-9][0-9]{9}
c_code "+91 "

%%
{c_code}{ph_no} {printf("Valid mobile number\n");};
.+ {printf("invalid mobile number\n");};
%%

int main() {
    printf("Enter mobile number: ");
    yylex();
}
int yywrap(void)
{
    return 0;
}