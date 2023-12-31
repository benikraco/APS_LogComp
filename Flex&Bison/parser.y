%{
#include <stdio.h>
#include <stdlib.h>
#include "parser_helper.h"
int yylex(void);
%}


%union {
    int num;
    char *str;
    char *id;
}

%token <num> NUMERO
%token <str> STRING
%token <id> IDENTIFIER
%token FUNCAO DOISPONTOS FIM ENQUANTO SE SENAO RETORNE LEIA IMPRIMA INT
%token ADD SUB NOT MUL DIV AND DOT LT GT EQ LPAREN RPAREN COMMA ASSIGN NEWLINE

%%

BLOCO : 
    | BLOCO COMANDO
    ;

COMANDO : 
    ATRIBUICAO NEWLINE
    | IMPRIMA_EXPR NEWLINE
    | ENQUANTO_EXPR NEWLINE
    | SE_EXPR NEWLINE
    | FUNCAO_DEF NEWLINE
    | RETORNE_EXPR NEWLINE
    | CHAMEFUNCAO NEWLINE
    ;

CHAMEFUNCAO : 
    IDENTIFIER LPAREN PARAMLIST RPAREN
    ;

FUNCAO_DEF :
    FUNCAO IDENTIFIER LPAREN PARAMETROLIST RPAREN DOISPONTOS TIPO NEWLINE BLOCO FIM
    ;

PARAMETROLIST :
    | PARAMETROLIST COMMA PARAMETRO
    ;

PARAMETRO :
    IDENTIFIER DOISPONTOS TIPO
    ;

ENQUANTO_EXPR :
    ENQUANTO LPAREN RELEXPR RPAREN COMANDO
    ;

SE_EXPR :
    SE LPAREN RELEXPR RPAREN COMANDO ELSEPART
    ;

ELSEPART :
    | SENAO COMANDO
    ;

EXPRESSAO :
    TERMO
    | EXPRESSAO ADD TERMO
    | EXPRESSAO SUB TERMO
    ;

TERMO :
    UNARY_EXPR
    | TERMO MUL UNARY_EXPR
    | TERMO DIV UNARY_EXPR
    | TERMO AND UNARY_EXPR
    | TERMO DOT UNARY_EXPR
    ;

UNARY_EXPR :
    FATOR
    | ADD FATOR
    | SUB FATOR
    | NOT FATOR
    ;

FATOR :
    NUMERO
    | STRING
    | CHAMEFUNCAO 
    | IDENTIFIER
    | LPAREN RELEXPR RPAREN
    | LEIA LPAREN RPAREN
    ;

PARAMLIST :
    | PARAMLIST COMMA RELEXPR
    ;

ATRIBUICAO :
    IDENTIFIER TYPEOPTION ASSIGN RELEXPR
    ;

TYPEOPTION :
    | DOISPONTOS TIPO
    ;

TIPO :
    INT
    | STRING
    ;

IMPRIMA_EXPR :
    IMPRIMA LPAREN RELEXPR RPAREN
    ;

RELEXPR :
    EXPRESSAO
    | RELEXPR LT EXPRESSAO
    | RELEXPR GT EXPRESSAO
    | RELEXPR EQ EXPRESSAO
    ;

RETORNE_EXPR :
    RETORNE RELEXPR
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "%s\n", s);
}


int main(void) {
    yyparse();
    return 0;
}

