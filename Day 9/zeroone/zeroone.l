%{
    //lex file to check whether the input
    //string ends with 0/1 or not
    # include <stdio.h>
    # include <stdlib.h>
    # include "y.tab.h"
%}

%%

[a-zA-Z0-9" "\t]+ {
    yylval.f = yytext;
    return STR;
}
[\n] {;}
.* {return yytext[0];}
%%

int yywrap(){
    return -1;
}