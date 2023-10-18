#!/bin/bash

echo -n "Repeticiones: "
read repes

for (( i=0; $repes!=i; i++ )); do
 if [[ i%2 -eq 0 ]]; then
   echo "Par: "$i
 else
   echo "Impar:" $i
    
  fi

done
