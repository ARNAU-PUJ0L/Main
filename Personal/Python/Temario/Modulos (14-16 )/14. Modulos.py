"""Modulos
	¿Que son?
		Un archivo con extension .py .pyc(Python compilado) o archivo escrito en C para CPython,
		que posee su propio espacio de nombres y que puede contener variables, funciones, classses e incluso otros modulos.

	¿Para que sirven?
		Para organizar y reutilizar el codigo(Modulacion y reutilizacion)

	¿Como creamos un modulo?
		Tan sencillo como crear un archivo con extension .py (o pyc o archivo C) y
		guardarlo donde nos interese"""

"""Ex:1 

Llamar a un modulo

Primera forma
import Modulos_uso_mates												#Importamos el modulo

Modulos_uso_mates.suma(5,7)												#Asi llamamos al modulo

Modulos_uso_mates.resta(6,2)	


Segunda forma
from Modulos_uso_mates import sumar										#De esta forma no ara falta escrivir todo el rato el nombre del archivo pero solo podremos usar la funcion a la que emos llamado

suma(5,7)

suma(65,25)


Tercera forma""" """SI EJECUTAS DA ERROR DEBIDO AL NOMBRE DEL ARCHIVO"""
from Modulos_uso_mates import *											#Colocando un aesterisco tendremos disponible todas las funciones del modulo

suma(5,2)

resta(6,5)

multiplicacion(5,6)



from Modulos_uso_vehiculos import *

miCoche=Vehiculos("Mazda", "MXS")

miCoche.estado()