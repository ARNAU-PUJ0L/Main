""" Expresiones regulares

¿Que son?
	Las expresiones regulares son una secuencia de caracteres que forman un patron de busqueda

¿Para que sirven?
	Para el trabajo y procesamiento de texto

Ejemplos
	Buscar un texto q se ajuste a un formato determinado (Email)

"""

import re

cadena="Vamos a aprender expresiones regulares en Python. Python es un lenguaje de sintaxis sencilla"

#print(re.search("aprender", cadena))

texto_buscar="Python"

if re.search(texto_buscar, cadena) is not None:

	print("He encontrado el texto")

else:

	print("No el encontrado el texto")


texto_encontrado=re.search(texto_buscar, cadena)

#start t devuelve la posicion desde donde empieza el texto deseado
print(texto_encontrado.start())

#el opuesto a start
print(texto_encontrado.end())

#Fusion de start y end
print(texto_encontrado.span())

#find all encuenta todas las veces q se repite un caracter
print(re.findall(texto_buscar, cadena))