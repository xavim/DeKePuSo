#!/bin/bash

     #!/bin/bash al començament del fitxer és
     # necessari per saber amb quin intèrpret executar aquest fitxer


clear     # neteja el terminal i es posiciona al mig
echo -e \\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n

read -p "prem <enter> per continuar..." -t 10 ANS

clear
echo imprimeix:
echo    '\aabcdef\b\b\bghi\t\e[Ahola\e[Badeu'
echo -e \\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n
echo -e "\aabcdef\b\b\bghi\t\e[Ahola\e[Badeu"

read -p "prem <enter> per continuar..." -t 10 ANS

clear
echo imprimeix:
echo    '\x1b[Aa\x1b[Ab\x1b[Ac\e[Ad\e[Ae\e[Af hola\!'
echo -e \\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n
echo -e "\x1b[Aa\x1b[Ab\x1b[Ac\e[Ad\e[Ae\e[Af hola\!"

read -p "prem <enter> per continuar..." -t 10 ANS

clear
echo imprimeix:
echo    '+\e[A+\e[A+\e[A+\e[A+\e[A+\e[B-\e[B-\e[B-\e[B-\e[B-\e[B-\e[B-\e[B-'
echo -e \\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n
echo -e "+\e[A+\e[C+\e[A+\e[A+\e[A+\e[B-\e[B-\e[B-\e[B-\e[B-\e[B-\e[B-\e[B-"

read -p "prem <enter> per continuar..." -t 10 ANS

echo 
for i in `seq -w 30 37` `seq -w 40 47`; do 
    echo -e text:  '\e[00;'$i'm'$i hola, món"\e[0m"
done

read -p "prem <enter> per acabar." -t 10 ANS
