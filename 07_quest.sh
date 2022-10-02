#!/bin/bash
# Exercício 7
#Todos os semestres a coordenação de Sistemas de Informação exige que o professor repasse a ela os dias em que serão utilizados o laboratório 06. Essas datas baseiam-se nos dias da semana em que são ministradas as aulas. Como nossa disciplina exige uso intensivo do laboratório, o professor repassa à coordenação todas as datas do semestre letivo em que são ministradas as aulas de TETI, para que possamos usar o laboratório 100% do tempo disponível. Esse é um processo trabalhoso, que envolve a busca dessas informações em um calendário e a transcrição das datas para um e-mail que é enviado à coordenação. Para minimizar esse problema, o professor quer que vocês desenvolvam um script que, a partir da informação dos dias da semana em que há aulas de TETI, produza todas as respectivas datas do ano em que serão ministradas nossas aulas. 


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

