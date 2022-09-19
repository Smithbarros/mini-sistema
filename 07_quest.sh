#!/bin/bash
# Exercício 7

dataInicio=$1
dataFim=$2
dias=$3

# DICA: use o comando "date" para converter a data para segundos
inicioSeg=$() ## data de inicio em segundos
fimSeg=$()    ## data de fim em segundos

#DICA: modifique o laço for para iterar entre as datas inicioSeg e fimSeg 
for (( ; ;  ))
do
  data=$()    		## usando o comando date converta a data para o formato d/m/a
  diaDaSemana=$()   	## usando o comando date descubra o dia da semana equivalente
 
  if [[ $dias =~ $diaDaSemana ]]; then
    echo "$data"
  fi
done

