#!/bin/bash
# Exercício 11 - Desenvolva um script que realize as operações aritméticas básicas (soma, subtração, divisão e multiplicação), recebendo a operação e os operadores como parâmetros.

echo " digite a numeraçao da operaçao desejada "
echo " 1 _ somar "
echo " 2 _ subtração"
echo " 3 _ divisao "
echo " 4 _ multiplicação "
read opcao
echo " digite o primeiro numero"
read primeiro
echo " digite o segundo numero"
read segundo
case $opcao in
1) echo " o resultado da soma e:$(($primeiro + $segundo))" ;;
2) echo " o resultado da subtracao e:$(( $primeiro - $segundo))";;
3) echo " o resultado da divisao e:$(( $primeiro / $segundo))";;
4) echo " o resultado da multiplicação e:$(( $primeiro * $segundo))";;
*) echo "opção erra";;
esac

