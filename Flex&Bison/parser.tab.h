/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     NUMERO = 258,
     STRING = 259,
     IDENTIFIER = 260,
     FUNCAO = 261,
     DOISPONTOS = 262,
     FIM = 263,
     ENQUANTO = 264,
     SE = 265,
     SENAO = 266,
     RETORNE = 267,
     LEIA = 268,
     IMPRIMA = 269,
     INT = 270,
     ADD = 271,
     SUB = 272,
     NOT = 273,
     MUL = 274,
     DIV = 275,
     AND = 276,
     DOT = 277,
     LT = 278,
     GT = 279,
     EQ = 280,
     LPAREN = 281,
     RPAREN = 282,
     COMMA = 283,
     ASSIGN = 284,
     NEWLINE = 285
   };
#endif
/* Tokens.  */
#define NUMERO 258
#define STRING 259
#define IDENTIFIER 260
#define FUNCAO 261
#define DOISPONTOS 262
#define FIM 263
#define ENQUANTO 264
#define SE 265
#define SENAO 266
#define RETORNE 267
#define LEIA 268
#define IMPRIMA 269
#define INT 270
#define ADD 271
#define SUB 272
#define NOT 273
#define MUL 274
#define DIV 275
#define AND 276
#define DOT 277
#define LT 278
#define GT 279
#define EQ 280
#define LPAREN 281
#define RPAREN 282
#define COMMA 283
#define ASSIGN 284
#define NEWLINE 285




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
#line 9 "parser.y"
{
    int num;
    char *str;
    char *id;
}
/* Line 1529 of yacc.c.  */
#line 115 "parser.tab.h"
	YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

