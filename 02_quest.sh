#!/bin/bash

echo "Informe o usuário: "
read nome

if [[ -n $(cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 1 | grep -w -io $nome) ]]
then
	echo "Usuário $nome encontrado!"
else
	echo "$nome não é um usuário cadastrado."
fi
