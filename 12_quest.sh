#!/bin/bash
# Exercício 12 - Desenvolva um script que apresente na tela os usuários cadastrados no sistema e os seus respectivos diretórios home.

echo
echo "USUÁRIO => DIRETÓRIO HOME"
echo
cat /etc/passwd | grep -E "root|home" | cut -d ":" -f 1,6 | sort | sed 's/:/ => /'
