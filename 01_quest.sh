#!/bin/bash
# 1º questão
#Elaborar um script que receba dois números como parâmetros e como resultado da sua execução exiba as seguintes informações: 
# O maior dos números recebidos; 
# O somatório dos números recebidos.

read $1 $2;

if [ $1 -lt $2 ]
then
	echo "$2 eh o maior numero"
elif [ $1 -eq $2 ]
then 
	echo "Numeros iguais"
else
	echo "$1 é maior"
fi

soma=$(($1+$2))

echo "A soma é igual $soma"
