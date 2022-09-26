#!/bin/bash
# Basiado em:
# Borrowed from https://askubuntu.com/questions/1705/how-can-i-create-a-select-menu-in-a-shell-script
#               by oToGamez
#               www.pro-toolz.net

      E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
   TPUT(){ $e "\e[${1};${2}H" ;}
  CLEAR(){ $e "\ec";}
  CIVIS(){ $e "\e[?25l";}
   MARK(){ $e "\e[7m";}
 UNMARK(){ $e "\e[27m";}
      R(){ CLEAR ;stty sane;CLEAR;};
   HEAD(){ for each in $(seq 1 15);do
           $E "   \xE2\x94\x82                                          \xE2\x94\x82"
           done
           MARK;TPUT 1 5
           $E "             MENU PRINCIPAL               " ;UNMARK;
           TPUT 2 5
           $E "          selecione uma questão           " ;UNMARK;}
           i=0; CLEAR; CIVIS;NULL=/dev/null
   FOOT(){ MARK;TPUT 15 5
           $E " UP \xE2\x86\x91 \xE2\x86\x93 DOWN    ENTER - SELECT,NEXT       ";UNMARK;}
  ARROW(){ IFS= read -s -n1 key 2>/dev/null >&2
           if [[ $key = $ESC ]];then 
              read -s -n1 key 2>/dev/null >&2;
              if [[ $key = \[ ]]; then
                 read -s -n1 key 2>/dev/null >&2;
                 if [[ $key = A ]]; then echo up;fi
                 if [[ $key = B ]]; then echo dn;fi
              fi
           fi
           if [[ "$key" == "$($e \\x0A)" ]];then echo enter;fi;}
     M0(){ TPUT  4 10; $e "01 questao";}
     M1(){ TPUT  5 10; $e "02 questao";}
     M2(){ TPUT  6 10; $e "03 questao";}
     M3(){ TPUT  7 10; $e "04 questao";}
     M4(){ TPUT  8 10; $e "05 questao";}
     M5(){ TPUT  9 10; $e "06 questao";}
     M6(){ TPUT 10 10; $e "07 questao";}
     M7(){ TPUT 4 30; $e "08 questao";}
     M8(){ TPUT 5 30; $e "09 questao";}
     M9(){ TPUT 6 30; $e "10 questao";}
     M10(){ TPUT 7 30; $e "11 questao";}
     M11(){ TPUT 8 30; $e "12 questao";}
     M12(){ TPUT 9 30; $e "13 questao";}
     M13(){ TPUT 10 30; $e "Sair   ";}
     LM=13
   MENU(){ for each in $(seq 0 $LM); do M${each}; done;}
    POS(){ if [[ $cur == up ]];then ((i--));fi
           if [[ $cur == dn ]];then ((i++));fi
           if [[ $i -lt 0   ]];then i=$LM;fi
           if [[ $i -gt $LM ]];then i=0;fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]];then before=$LM;fi
           if [[ $after -gt $LM ]];then after=0;fi
           if [[ $j -lt $i      ]];then UNMARK;M$before;else UNMARK;M$after;fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ];then
           UNMARK; M$before; M$after; fi; j=$i; UNMARK; M$before; M$after;}
   INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
     ES(){ MARK;$e "VOLTAR AO MENU PRINCIPAL";$b;read;INIT;};INIT
  while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == enter ]];then R; /bin/bash 01_quest.sh;ES;fi;;
        1) S=M1;SC;if [[ $cur == enter ]];then R; /bin/bash 02_quest.sh;ES;fi;;
        2) S=M2;SC;if [[ $cur == enter ]];then R; /bin/bash 03_quest.sh;ES;fi;;
        3) S=M3;SC;if [[ $cur == enter ]];then R; /bin/bash 04_quest.sh;ES;fi;;
        4) S=M4;SC;if [[ $cur == enter ]];then R; /bin/bash 05_quest.sh;ES;fi;;
        5) S=M5;SC;if [[ $cur == enter ]];then R; /bin/bash 06_quest.sh;ES;fi;;
        6) S=M6;SC;if [[ $cur == enter ]];then R; /bin/bash 07_quest.sh;ES;fi;;
        7) S=M7;SC;if [[ $cur == enter ]];then R; /bin/bash 08_quest.sh;ES;fi;;
        8) S=M8;SC;if [[ $cur == enter ]];then R; /bin/bash 09_quest.sh;ES;fi;;
        9) S=M9;SC;if [[ $cur == enter ]];then R; /bin/bash 10_quest.sh;ES;fi;;
        10) S=M10;SC;if [[ $cur == enter ]];then R; /bin/bash 11_quest.sh;ES;fi;;
        11) S=M11;SC;if [[ $cur == enter ]];then R; /bin/bash 12_quest.sh;ES;fi;;
        12) S=M12;SC;if [[ $cur == enter ]];then R; /bin/bash 13_quest.sh;ES;fi;;
        13) S=M13;SC;if [[ $cur == enter ]];then R;exit 0;fi;;
        esac;POS;done
