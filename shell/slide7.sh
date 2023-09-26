#!/bin/bash

     #!/bin/bash al començament del fitxer és
     # necessari per saber amb quin intèrpret executar aquest fitxer


function msg-and-wait()   # $1 = msg
{
   echo
   read -t 60 -p "$1" ANS
   echo
}

function comanda()   # $1 = comanda $2... arguments
{
   comm="$1"
#   if [ $# == 1 ]; then
#      echo "$ $comm"
#      $comm
#   else
#      shift
#      echo "$ $comm " \'"$*"\'
#      $comm $*
#   fi
   shift
   echo "$" $comm $*
   $comm $*
}

comanda ls
msg-and-wait "prem <enter> per continuar..."

comanda echo *
msg-and-wait "prem <enter> per continuar..."

comanda echo \''$USER'\'
msg-and-wait "prem <enter> per continuar..."

comanda echo $USER
msg-and-wait "prem <enter> per continuar..."

comanda echo 'Hola, Món' '998*997' 'l'"'"'USUARI és ${USER}'
msg-and-wait "prem <enter> per continuar..."

comanda echo "Hola, Món" "998*997" "l'USUARI és ${USER}"
msg-and-wait "prem <enter> per continuar..."

comanda echo "?.c"
msg-and-wait "prem <enter> per continuar..."

comanda echo "*.c"
msg-and-wait "prem <enter> per continuar..."

comanda echo "prova[0-9].c"
msg-and-wait "prem <enter> per continuar..."

comanda echo "prova{2,4,6}.c"
msg-and-wait "prem <enter> per continuar..."

comanda echo prova{2,4,6}.c
msg-and-wait "prem <enter> per continuar..."

comanda echo prova{0,1,2,3,4,5,6,7,8,9}.c '>out.txt' >out.txt
echo "Contingut del fitxer out.txt:"
cat out.txt
msg-and-wait "prem <enter> per continuar..."

comanda ls prova{0,1,2,3,4,5,6,7,8,9}.c '>out.txt' >out.txt
echo "Contingut del fitxer out.txt:"
cat out.txt
msg-and-wait "prem <enter> per continuar..."

comanda ls prova{0,1,2,3,4,5,6,7,8,9}.c '>&out_err.txt' >&out_err.txt
echo "Contingut del fitxer out_err.txt:"
cat out_err.txt
msg-and-wait "prem <enter> per acabar."
