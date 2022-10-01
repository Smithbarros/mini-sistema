#!/bin/bash
#Script que receba como parâmetro o caminho de um diretório e liste seus arquivos e diretório um a um.

echo -n "informe o diretorio: "
read diretorio

l -l $diretorio | while read linha; do
	if [[${linha : 0 : 1} = "d" ]]; then
		#statements
		
		echo $linha | awk  '{print $9 " (dir)"}'
	else
		echo $linha | awk '{print $9}'
	if
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
