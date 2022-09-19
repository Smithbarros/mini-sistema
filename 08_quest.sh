#!/bin/bash
# Exercício 8 - Considere um determinado diretório que possui vários arquivos textos. Esses arquivos possuem nomes variados, não obedecendo a qualquer critério. Escreva um script que renomeie cada arquivo desse diretório, dando ao arquivo o nome correspondete à primeira palavra encontrada no conteúdo do próprio arquivo.

# Com ajuda universitária de universitários, porque algumas partes são além da minha capacidade!

for file in $(ls)
do
	if [[ -d $file || $file = $0 ]] #verificando se o arquivo nao eh um diretorio ou ele mesmo
	then
		continue
	fi

	# Obtém a primeira palavra digitada no arquivo
	palavra=$(head -n1 $file | cut -d ' ' -f 1)
	

	echo "Renomeando o arquivo  $file para $palavra"
	# TODO: renomei o arquivo
done



