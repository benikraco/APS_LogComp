%{
#include "parser.tab.h"
#include <stdlib.h>
#include "parser_helper.h"
%}

%%

[ \t]             /* Ignorar espaços em branco e nova linha */ 

"funcao"            return FUNCAO;
"::"                return DOISPONTOS;
"fim"               return FIM;
"enquanto"          return ENQUANTO;
"se"                return SE;
"senao"             return SENAO;
"retorne"           return RETORNE;
"leia"              return LEIA;
"imprima"           return IMPRIMA;
"Int"               return INT;
"String"            return STRING;

"+"                 return ADD;
"-"                 return SUB;
"!"                 return NOT;
"*"                 return MUL;
"/"                 return DIV;
"&&"                return AND;
"."                 return DOT;
"<"                 return LT;
">"                 return GT;
"=="                return EQ;
"("                 return LPAREN;
")"                 return RPAREN;
","                 return COMMA;
"="                 return ASSIGN;
"\n"                return NEWLINE; 

[a-zA-Z_][_a-zA-Z0-9]   return IDENTIFIER;
[a-zA-Z0-9]             return STRING;
[0-9]+                  return NUMERO;

.                   /* Ignorar caracteres desconhecidos */ 

%%


int yywrap(void) {
    return 1;
}

