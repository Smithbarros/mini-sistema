#!/bin/bash
# Exercício 9
# Desenvolva um script que receba uma lista de palavras como parâmetro e exiba, como resultado, essas palavras ordenadas.


    echo " Digite uma palavra: "
    read p
    echo "$p" | fmt -1 | sort