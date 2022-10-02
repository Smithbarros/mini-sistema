#!/bin/bash

# 5º questão
# Elaborar um script que receba um nome de arquivo como parâmetro e verifique se esse arquivo existe. Em caso afirmativo, imprimir o seu tamanho em bytes.

echo "digite o nome do arquivo "
   read arquivo
   echo ""

   if [ ! -e $arquivo ]
   then
      echo " o arquivo $arquivo nao existe"
 
   else 
      tamanho=$(du -b $arquivo | cut -f1)
      echo "o arquivo $arquivo existe e tem $tamanho bytes"
   fi