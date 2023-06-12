# LinguaNova

## EBNF

```lua
BLOCO = { COMANDO };
COMANDO = ( λ | ATRIBUICAO | IMPRIMA | ENQUANTO | SE | FUNCAO | RETORNE | CHAMEFUNCAO), "\n" ;
FUNCAO = "funcao", IDENTIFICADOR, "(" [PARAMETRO], ")", "::", TIPO, "\n", BLOCO, "fim";
PARAMETRO = IDENTIFICADOR, "::", TIPO, {",", IDENTIFICADOR, "::", TIPO};
ENQUANTO = "enquanto", "(", RELEXPR, ")", COMANDO;
SE = "se", "(", RELEXPR, ")", COMANDO, {"senao", COMANDO};
EXPRESSAO = TERMO, { ("+" | "-"), TERMO } ;
TERMO = FATOR, { ("*" | "/" | "&&" | "."), FATOR } ;
RELEXPR = EXPRESSAO, { ("<" | ">" | "==" ), EXPRESSAO } ;
RETORNE = "retorne", RELEXPR;
FATOR = (NUMERO | STRING | IDENTIFICADOR, ["(", [RELEXPR, {",", RELEXPR}] ,")"] | ("+" | "-" | "!"), FATOR) | "(", RELEXPR, ")" | ("leia", "(", ")");
IDENTIFICADOR = LETRA, { LETRA | DIGITO | "_" } ;
CHAMEFUNCAO = IDENTIFICADOR, "(", [RELEXPR, {",", RELEXPR}] ,")";
ATRIBUICAO = IDENTIFICADOR, ("::", TIPO, ["=", RELEXPR] | "=", RELEXPR );
TIPO = "Int" | "String";
IMPRIMA = "imprima", "(", RELEXPR, ")" ;
NUMERO = DIGITO, { DIGITO } ;
LETRA = ( a | ... | z | A | ... | Z ) ;
DIGITO = ( 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 0 ) ;

```
  