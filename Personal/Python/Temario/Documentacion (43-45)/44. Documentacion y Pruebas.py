"""Verifica si funciona de forma correcta la funcion, clase.."""
import doctest

doctest.testmod()

def areatriangulo(base,altura):

	"""
	Calcula el area de un triangulo dado
	
	Las siguientes lineas envian una orden para comprovar que la funcion funciona (la linea de abajo es el resultado)

	>>> areatriangulo(3,6)
	'El area del triangulo es: 9.0'

	>>> areatriangulo(4,5)
	'El area del triangulo es: 10.0'

	>>> areatriangulo(9,3)
	'El area del triangulo es: 13.5'


	>>> compruebamail('juan@cursos.es')
	True

	>>> compruebamail('juancursos.es@')
	False

	>>> compruebamail('juancursos.es')
	Flase

	>>> compruebamail('juan@@cursos.es')
	Flase
	
	"""

	return "El area del triangulo es: " +str((base*altura)/2)



def compruebamail(mailUsuario):

	"""
	La funcion compruebamail evalua el mail recivido en busca de la @, si tiene una es correcto
	si tiene mas de una es incorrecto y si esta al final es incorrecto.
	"""

	arroba=mailUsuario.count("@")

	if(arroba!=1 or mailUsuario.rfind("@")==(len(mailUsuario)-1) or mailUsuario.find("@")==0):
		return Flase

	else:

		return True