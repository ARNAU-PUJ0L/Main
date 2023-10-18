"""
¿Que es?

	Incluir comentarios en clases, metodos, modulos etc...

¿Para que?

	Para ayudar en el trabajo en equipo. Especialmente util en aplicaciones complejas
"""


class Areas:

	"""Esta clase calcula las areas de duferentes figuras geometricas"""

	def areaCuadrado(lado):

		"""Calcula el area de un cuadrado 
		elevando al cuadrado el lado pasando por parametro"""

		return "El area del cuadrado es: " + str(lado*lado)

	def areaTriangulo(base, altura):

		"""Calcula el area de un triangulo utilizando los paramentros base y altura"""

		return "El area del triangulo es: " +str((base*altura)/2)



#Imprimir documentacion con help 
help(Areas.areaCuadrado)

help(Areas)