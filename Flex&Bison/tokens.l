%{
#include "parser.tab.h"
#include <stdlib.h>
#include "parser_helper.h"
%}

%%

[ \t]+                /* Ignorar espaços em branco */ 
"\n"                  return NEWLINE; 

"funcao"              return FUNCAO;
"::"                  return DOISPONTOS;
"fim"                 return FIM;
"enquanto"            return ENQUANTO;
"se"                  return SE;
"senao"               return SENAO;
"retorne"             return RETORNE;
"leia"                return LEIA;
"imprima"             return IMPRIMA;
"Int"                 return INT;
"String"              return STRING;

"+"                   return ADD;
"-"                   return SUB;
"!"                   return NOT;
"*"                   return MUL;
"/"                   return DIV;
"&&"                  return AND;
"."                   return DOT;
"<"                   return LT;
">"                   return GT;
"=="                  return EQ;
"("                   return LPAREN;
")"                   return RPAREN;
","                   return COMMA;
"="                   return ASSIGN;

[a-zA-Z_][a-zA-Z_0-9]*   { yylval.id = strdup(yytext); return IDENTIFIER; }
"\"[^\"]*\""           { yylval.str = strdup(yytext+1); yylval.str[strlen(yytext)-2] = 0; return STRING; }
[0-9]+                 { yylval.num = atoi(yytext); return NUMERO; }

.                     { fprintf(stderr, "Caracter desconhecido: %s\n", yytext); }

%%

int yywrap(void) {
    return 1;
}
               
