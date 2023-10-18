
#Ex 1:

echo -n "Escribe un mensaje: "  # -n espera una respuesta
read mensaje    #almacena la respuesta en una variable
echo "Tu mensaje es: " $mensaje




#Ex 2:

echo -n "Instalar programa? [s/n]: " 
read resultado  

if [[ $resultado == [sS] ]]; then
    echo "Instalando programa..."

elif [[ $resultado == [nN] ]]; then
    echo "Cancelando la instalacion"

else
    echo "Opcion invalida"
fi



#Ex 3:

echo -n "Escribe un número: "
read valor

if [[ $valor -gt 5 ]]; then
    echo "Tu numero es mayor a 5"

elif [[ $valor -eq 5 ]]; then
    echo "Tu numero es igual a 5"

else
    echo "Tu numero es menor a 5"
fi


# -gt greater than
# -ge greater or equal
# -lt lower than
# -le lower or equal
# -eq equal
# -ne not equal


# [] vs [[]]
    # []: Comparar valores numericos
    
    # [[]]: Comparar cadenas de texto


echo -n "Escribe un numero: "
read valor


#Ex 4: and
if [ $valor -ge 5 -a -le 10]; then      # -a = and, 
    echo "Tu numero esta en el rango [5, 10]"

else 
    echo "Tu numero esta fuera del rango [5, 10]"
fi


#Ex 5: or
if [ $valor -lt 5 -o $valor -gt 10 ]; then      # -o = or
    echo "Tu numero esta fuera del rango [5, 10]"

else 
    echo "Tu numero esta en el rango [5, 10]"
fi


