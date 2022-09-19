#!/bin/bash
# Exercício 10 - Desenvolva um script que recebe palavras interativamente e, a cada palavra recebida, exiba como resultado, essas palavras ordenadas. Ao ser informada a palavra "sair", o script é finalizado.

entrada=''
arr=()

while [ "$entrada" != 'sair' ];
do
  	echo
	echo "Digite a palavra:"
	read entrada
	clear

	if [ "$entrada" == 'sair' ]
	  then
	  echo "saindo"
	  exit
	fi

	arr+=("$entrada")
	#TODO: INSIRA SEU CÓDIGO AQUI
	#Dica: com base no exercicio 9, imprima a array ordenado; para acessar todos os elementos
	#do array use ${arr[@]} 
done
