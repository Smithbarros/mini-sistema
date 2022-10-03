#!/bin/bash
# Exercício 11 - Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros.

echo " $1 $2 $3 = "
if [ $2 == "+" ]
    then
    echo $(($1+$3))
fi
if [ $2 == "-" ]
    then
    echo $(($1-$3))
fi
if [ $2 == "x" ]
    then
    echo $(($1*$3))
fi
if [ $2 == "/" ]
    then
    echo $(($1/$3))
fi