# Lingua Nova

## Motivação

O objetivo deste projeto é a criação de uma linguagem de programação simples, com sintaxe similar a linguagem Julia, porém adaptando a sintaxe para o português visando facilitar o aprendizado de programação para pessoas que não tem familiaridade com o inglês. Isso contribui para a inclusão de pessoas que não tem familiaridade com o inglês no mundo da programação e hoje não tem acesso a esse tipo de conhecimento.

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

## Exemplos

### Declaração de funções

```lua
funcao soma(a::Int, b::Int)::Int
    retorne a + b
fim
```

### Chamada de funções

```lua
soma(1, 2)
```

### Declaração de variáveis

```lua
a::Int = 1
b::String = "teste"
```

### Impressão de valores

```lua
imprima(a)
```

### Estrutura de controle

```lua
se (a > 1)
    imprima("a maior que 1")
senao
    imprima("a menor que 1")
fim

enquanto (a < 10)
    imprima(a)
    a = a + 1
fim
```

### Entrada de dados

```lua
leia(a)
```
