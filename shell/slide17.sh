#!/bin/bash

  # defineix les variables "maquines" i "noms" com a "arrays"
declare -a maquines noms

  # Inicialitza les variables "maquines" i "noms" amb 10 noms d'ordinadors
maquines=(www.upc.edu www.uab.edu www.ub.edu www.udg.edu www.udl.cat    \
www.ibm.com www.google.com www.facebook.com www.twitter.com www.instagram.com)

noms=("  UPC  " " UAB   " "  UB   " " UDG   " " UDL   " \
      " IBM  " "GOOGLE" "FACEBOOK" "TWITTER" "INSTAGRAM")


# escriu les dues taules
echo ${maquines[*]}
echo "${noms[*]}"

# determina el format de la sortida
#   --short => tot en una línia
#   --long  => una línia per màquina

if [ "$1" == "--short" ]; then
   format=0
elif [ "$1" == "--long" ]; then
   format=1
else
   format=0
fi

# Entrem en els dos bucles
#   el primer (el de fora), s'executarà mentre no premem la 'q', indefinidament
#   el segon recorrerà les màquines una a una per comprovar si estan actives,
#   amb el "ping"

numelems=${#noms[*]}
interrupt=0
while [ $interrupt == 0 ]; do

   stty -echo     # no volem que les tecles premudes ens embrutin la sortida

   for i in `seq 0 $((numelems-1))`; do

        # si premem la q, el programa acabarà

        read -t 0.01  -n 1 ANS
        if [ "$ANS" == "q" ]; then
		echo
                echo break
                interrupt=1
                break
        fi

        # fem un sol ping (-c 1) amb una espera màxima d'1 segon (-w)
        ping -c 1 -w 1  ${maquines[$i]} </dev/null >/dev/null 2>&1

        # agafem el resultat del ping
        #    $? == 0 => ens ha arribat la resposta => màquina activa
        #    $? != 0 => no ha arribat la resposta
        r=$?

        # escriptura de la sortida, segons el format demanat
        if [ $r == 0 ]; then
           if [ $format == 0 ]; then echo -n "  V    |"
           else                 echo ${maquines[$i]} "   V    "; fi
        else
           if [ $format == 0 ]; then echo -n "  x    |"
           else                 echo ${maquines[$i]} "   x    "; fi
        fi
   done

   # activem l'echo per si acabem
   stty echo
   # pugem a la línia anterior i tornem a baixar
   echo -e "\e[A"
done
