# Analizador Léxico con FLEX

## Descripción

Este proyecto implementa un analizador léxico utilizando FLEX.

El analizador reconoce:

* Palabras reservadas (if, else, while)
* Identificadores
* Números
* Operadores
* Delimitadores

## Tecnologías utilizadas

* FLEX (WinFlexBison)
* Lenguaje C
* Java Swing
* Git y GitHub

## Archivos principales

* lexer.l → Reglas léxicas
* lex.yy.c → Código generado por FLEX
* lexer.exe → Ejecutable del analizador
* AnalizadorGUI.java → Interfaz gráfica

## Ejemplo

Entrada:

if(x=10)

Salida:

PALABRA_RESERVADA: if
IDENTIFICADOR: x
OPERADOR: =
NUMERO: 10

## Autor

Antonia Reina Polanco Díaz
