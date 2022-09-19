#!/bin/bash

echo "Digite o caminho de um diretorio"
read caminho


for temp in $(ls $caminho); do # DICA: a cada iteracao a variavel será um arquivo dentro do diretorio
	if [  ] ## DICA: verifique se temp é um diretorio
	then
		echo "$temp (dir)"
	else
		echo "$temp"
	fi
done
