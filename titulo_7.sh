#!bin/bash/
  E='echo -e';e='echo -en';trap "R;exit" 2
    ESC=$( $e "\e")
    TPUT(){ $e "\e[${1};${2}H" ;}
    CLEAR(){ $e "\ec";}
    CIVIS(){ $e "\e[?25l";}
    MARK(){ $e "\e[7m";}
    UNMARK(){ $e "\e[27m";}
    R(){ CLEAR ;stty sane;CLEAR;};
    HEAD(){ for each in $(seq 2 16);do
           $E "   \xE2\x94\x82                                          \xE2\x94\x82"
           done
           MARK;TPUT 1 5
           $E "               7º questão                 " ;UNMARK;
           TPUT 2 5
           $E "Todos os semestres a coordenação exige que
   |o professor repasse os dias em que serão
   |utilizados o laboratório. Esse é um 
   |processo trabalhoso, para minimizar esse
   |problema,o professor quer um script que, 
   |a partir da informação dos dias da semana
   |em que há aulas, produza todas as 
   |respectivas datas do ano em que serão
   |ministradas nossas aulas." ;UNMARK;}
           i=0; CLEAR; CIVIS; NULL=/dev/null
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
     M0(){ TPUT  12 12; $e "Abrir a questao 07      ";}
     M1(){ TPUT 13 12; $e "Voltar ao menu principal";}
     LM=1
   MENU(){ for each in $(seq 0 $LM); do M${each}; done;}
    POS(){ if [[ $cur == up ]]; then ((i--)); fi
           if [[ $cur == dn ]]; then ((i++)); fi
           if [[ $i -lt 0   ]]; then i=$LM; fi
           if [[ $i -gt $LM ]]; then i=0; fi;}
REFRESH(){ after=$((i+1)); before=$((i-1))
           if [[ $before -lt 0  ]]; then before=$LM; fi
           if [[ $after -gt $LM ]]; then after=0; fi
           if [[ $j -lt $i      ]]; then UNMARK; M$before; else UNMARK; M$after; fi
           if [[ $after -eq 0 ]] || [ $before -eq $LM ]; then
           UNMARK; M$before; M$after; fi; j=$i; UNMARK; M$before; M$after;}
     INIT(){ R;HEAD;FOOT;MENU;}
     SC(){ REFRESH;MARK;$S;$b;cur=`ARROW`;}
     ES(){ MARK;$e "Voltar ao menu";$b;read;INIT;};INIT
     while [[ "$O" != " " ]]; do case $i in
        0) S=M0;SC;if [[ $cur == enter ]];then R; /bin/bash 07_quest.sh;ES; fi;;
        1) S=M1;SC;if [[ $cur == enter ]];then R; exit 1; fi;;
        esac;POS;done
