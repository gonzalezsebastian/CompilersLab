%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int yylineno; /* from lexer */

%}

ID            [a-zA-Z_][a-zA-Z0-9_]*
CTE_ENT       [-]?[0-9]+
CTE_REAL      [-]?[0-9]+(\.[0-9]+)?([eE][-+]?[0-9]+(\.[0-9]+)?)?
CTE_CADENA    \".*\"
CTE_CARACTER  \'.*\'


%%

"public"        {return(PUBLIC);}
"private"       {return(PRIVATE);}
"protected"     {return(PROTECTED);}
"static"        {return(STATIC);}
"final"         {return(FINAL);}
"abstract"      {return(ABSTRACT);}
"main"          {return(MAIN);}
"main "          {return(MAIN);}
"void"          {return(VOID);}
"new"           {return(NEW);}
"return"        {return(RETURN);}
"printf"        {return(PRINTF);}
"scanf"         {return(SCANF);}

"if"            {return(IF);}
"else"          {return(ELSE);}
"while"         {return(WHILE);}
"for"           {return(FOR);}
"do"            {return(DO);}
"switch"        {return(SWITCH);}
"case"          {return(CASE);}
"default"       {return(DEFAULT);}
"break"         {return(BREAK);}
"continue"      {return(CONTINUE);}

"int"           {return(INT);}
"float"         {return(FLOAT);}
"char"          {return(CHAR);}
"double"        {return(DOUBLE);}
"long"          {return(LONG);}
"short"         {return(SHORT);}
"boolean"       {return(BOOLEAN);}
"String"        {return(STRING);}

"//".*"\n"      {}
"/*".*"*/"      {}
\/\*(.*\n)*.*\*\/      {}

{CTE_ENT}       {return(INT);}
{CTE_REAL}      {return(FLOAT);}
{CTE_CADENA}    {return(STRING);}
{CTE_CARACTER}  {return(CHAR);}
{ID}            {return(ID);}

"="           {return(OP_ASIG);}
"+"           {return(OP_SUM);}
"-"           {return(OP_RES);}
"*"           {return(OP_MULT);}
"/"           {return(OP_DIV);}
"%"           {return(OP_MOD);}

"=="          {return(OP_IGUAL);}
"!="          {return(OP_DIFF);}

"++"          {return(OP_INC);}
"--"          {return(OP_DIS);}
"+="          {return(OP_SUM_ASIG);}
"-="          {return(OP_RES_ASIG);}
"*="          {return(OP_MULT_ASIG);}
"/="          {return(OP_DIV_ASIG);}
"%="          {return(OP_MOD_ASIG);}

">"           {return(OP_MAYOR);}
"<"           {return(OP_MENOR);}
">="          {return(OP_MAYOR_IGUAL);}
"<="         {return(OP_MENOR_IGUAL);}

"&&"          {return(OP_AND);}
"||"          {return(OP_OR);}
"!"           {return(OP_NOT);}

"("           {return(PARENT_A);}
")"           {return(PARENT_C);}
"{"           {return(LLAVE_A);}
"}"           {return(LLAVE_C);}
"["           {return(CORCHETE_A);}
"]"           {return(CORCHETE_C);}
";"           {return(PUNTO_COMA);}

" "           {}
":"           {return(DOS_PUNTOS);}
","           {return(COMA);}

\n { }

%%

