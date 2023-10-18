#!/bin/bash

#Parametro = ./'20. Parametros.sh' Parametro-1 Parametro-2    

echo $1
    #Parametro-1 

echo $2
    #Parametro-2

#Acceder al contenido de un fichero 

cat $1

#-f = fichero
#-d = directorio

if [[ ! -d $1 ]]; then
    echo "Error: El directorio no existe"
    exit 1
fi

total=0

for f in `ls $1`; do
    name="$1/$f"
    if [[ -f $name ]]; then
        bytes=`ls -l $name | cut -d " " -f 5`
        echo "Ficheros $name ocupa $bytes"
        (( total = total + $bytes))
    fi 
done

echo -e "\nTotal: $total"
