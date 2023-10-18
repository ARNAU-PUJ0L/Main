import math
import doctest
doctest.testmod()

def raizCuadrada(listaNumeros):

	"""
	La funcion devuelve una lista con la
	raiz cuandra de los elementos numericos
	pasados por parametros en otra lista

	
	>>> lista=[]
	>>> for i in [4,9,16]:
	...		lista.append(i)
	>>> raizCuadrada(lista)
	[2.0, 3.0, 4.0]


	>>> lista[]
	>>> for i in [4, -9, 16]:
	...		lista.append(i)
	>>> raizCuandrada(lista)
	Traceback (most recent call last):
		...
	ValueError: math domain error

	Le indicamos a python cuales seran la primera y ultima linea

	"""

	return [math.sqrt(n) for n in listaNumeros]
