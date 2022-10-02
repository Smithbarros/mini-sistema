#!/bin/bash

# 4º questão
# Elaborar um script que receba um número como parâmetro e imprima todos os números pares de 0 até o número informado como parâmetro. 
i=0
while [ $i -le $1 ]
do
  echo $i
  i=$(($i+2))
done


