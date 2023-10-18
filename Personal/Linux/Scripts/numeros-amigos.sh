#!/bin/bash

echo -n "Introduzca un numero "
read numero

a=0
b=0

for (( i=1; i!=$numero; i++ )); do
  if [[ $numero%i -eq 0 ]]; then
    echo "Divisor: $i"
    numero2=$[a+=i]
  fi
done


echo "---------------------------"


for (( j=1; j!=$numero2; j++ )); do
  if [[ $numero2%j -eq 0 ]]; then
    echo "Divisor: $j"
    SDN2=$[b+=j]
  fi
done



if [[ $SDN2 -eq $numero ]]; then
  echo "$numero y $numero2 son numeros amigos"
else
  echo "no tiene numeros amigos"
fi



