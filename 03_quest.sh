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






#!/bin/bash
#recebe o caminho de um diretóriio e listar o conteúdo um a um. se for diretorio, escrever "(dir)" ao lado do diretorio.
echo "Digite o diretorio"
read dir
if [ -d "$dir" ]
then
for coisa in $(ls $dir) do 
echo "$coisa $([ -d$dir/ $coisa ] && echo "(dir)")"
done
else
echo "Não existe" && exit
fi
