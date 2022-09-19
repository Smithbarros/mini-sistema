#!/bin/bash
# Exercício 9 - Desenvolva um script que receba uma lista de palavras como parâmetro e exiba, como resultado, essas palavras ordenadas.

printf "%s\n"$@ | sort
