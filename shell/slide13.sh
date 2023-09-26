#!/bin/bash

     #!/bin/bash al començament del fitxer és
     # necessari per saber amb quin intèrpret executar aquest fitxer

echo
echo "Executar 3 cops "uptime" amb 1 segon de diferència"

for v in 1 2 3; do
   uptime
   sleep 1
done
echo
read -p "prem <enter> per continuar..." -t 10 ANS

echo
echo "Comptar de l'1 al 10..."

for v in `seq 1 10`; do
   echo -n "$v "
   sleep 0.5
done
echo
echo
read -p "prem <enter> per continuar..." -t 10 ANS

echo
echo
echo "Una altra seqüència, amb l'estructura while"
echo "entre 1 i el número que indiquis (per defecte 10)"

v=1
read -p "entra el limit: " -t 10 limit

if [ -z "$limit" ]; then
   limit=10;
fi

executar=1

if [ "$limit" -lt 1 ]; then
   echo error\! "(limit massa baix - $limit)"
   executar=0
fi
if [ "$limit" -gt 100 ]; then
   echo error\! "(limit massa alt - $limit)"
   executar=0
fi
   
if [ "$executar" == "1" ]; then
   while [ $v -le $limit ]; do
      echo -n "$v "
      sleep 0.5
      v=$((v+1))
   done
   echo
fi
echo
read -p "prem <enter> per acabar." -t 10 ANS
