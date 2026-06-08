%{
#include <stdio.h>
%}

DIGITO      [0-9]
LETRA       [a-zA-Z]
ID          {LETRA}({LETRA}|{DIGITO})*

%%

"if"        { printf("PALABRA_RESERVADA: if\n"); }
"else"      { printf("PALABRA_RESERVADA: else\n"); }
"while"     { printf("PALABRA_RESERVADA: while\n"); }

{ID}        { printf("IDENTIFICADOR: %s\n", yytext); }

{DIGITO}+   { printf("NUMERO: %s\n", yytext); }

"+"         { printf("OPERADOR: +\n"); }
"-"         { printf("OPERADOR: -\n"); }
"*"         { printf("OPERADOR: *\n"); }
"/"         { printf("OPERADOR: /\n"); }
"="         { printf("OPERADOR: =\n"); }

";"         { printf("DELIMITADOR: ;\n"); }
","         { printf("DELIMITADOR: ,\n"); }
"("         { printf("DELIMITADOR: (\n"); }
")"         { printf("DELIMITADOR: )\n"); }
"{"         { printf("DELIMITADOR: {\n"); }
"}"         { printf("DELIMITADOR: }\n"); }

[ \t\n]     ;

.           { printf("ERROR LEXICO: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}
int main() {
    yylex();
    return 0;
}