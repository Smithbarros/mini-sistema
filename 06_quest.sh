#!/bin/bash
MENU="
                            MENU         
1- Exibir status da utilização das partições do sistema
2- Exibir relação de usuário logados
3- Data e Hora
4- Sair
"
echo "$MENU"
while [ $opcao -eq $opcao ]; do
    read -p "comando: " opcao
    case "$opcao" in
        1)
            echo "  Atualizacao:"
            df -h
            read -p "
Precione qualquer techa e volte ao menu"
            clear
            echo "$MENU"
         ;;
         
         2)
            echo " Usuarios:"
            who
            read -p "Precione qualquer techa e volte ao menu"
            clear
            echo "$MENU"
         ;;
         
         3)
            echo " Data e Hora"
            date
            read -p "Precione qualquer techa e volte ao menu"
            clear
            echo "$MENU"
         ;;
         
         4)
            echo " sair"
            exit 1
         ;;
    esac
done
