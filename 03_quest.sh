#!/bin/bash
# 3º questão
# recebe o caminho de um diretóriio e listar o conteúdo um a um. se for diretorio, escrever "(dir)" ao lado do diretorio.

echo "Digite o diretorio:"

read dir
if [ -d "$dir" ]
then
    for coisa in $(ls $dir)
    do 
        echo "$coisa $([ -d$dir/ $coisa ] && echo "(dir)")"
    done
else
        echo "Não existe"
fi
