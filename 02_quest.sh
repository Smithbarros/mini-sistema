#!/bin/bash

# 2º questão
#Elaborar um script que solicite a informação de um nome de usuário e verifique se o nome informado é um usuário válido no sistema (desconsiderando as diferenças entre maiúsculas e minúsculas). 


echo "Informe o usuário: "
read nome

if [[ -n $(cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 1 | grep -w -io $nome) ]]
then
	echo "Usuário $nome encontrado!"
else
	echo "$nome não é um usuário cadastrado."
fi
