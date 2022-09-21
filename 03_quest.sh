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
