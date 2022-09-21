#!/bin/bash
# Exercício 11 - Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros.
if [ $2 == "+" ]
    then
    echo "$1 + $3 = $(($1+$3))"
fi
