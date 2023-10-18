#!/bin/bash

echo -n "Escribe un numero: "
read limite

# i = 0 (Valor inicial), i < $limite (El bucle continuara siempre q i se mas pequeña que limite), i++ (El valor de i es incrementado +1/vuelta)

for (( i = 0; i < $limite; i++ )); do
    echo $i
done