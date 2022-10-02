#!/bin/bash
#13 questão
#Uma das informações armazenadas no arquivo /etc/passwd é o shell utilizado por cada usuário do sistema (campo 7). Desenvolva um script que informe qual é o shell mais utilizado

cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 7 | sort | uniq -c | sort | head -n 1 | tr -s "  " | awk '{ print $2 "  => " $1 }'
