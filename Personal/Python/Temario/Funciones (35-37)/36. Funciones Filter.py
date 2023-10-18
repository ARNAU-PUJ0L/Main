"""Funcion Filter
	¿Que hace? Verifica q los elementos de una secuencia cumplen una condicion
	devolviendo un iterador con los elementos que cumplen dicha condicion
"""

numeros=[17,56,25,2,15,16,28]

print(list(filter(lambda numero_par: numero_par%2==0, numeros)))


class empleado:

	def __init__(self, nombre, cargo, salario):

		self.nombre=nombre

		self.cargo=cargo

		self.salario=salario

	def __str__(self):

		return "{} que trabaja como {} tiene un salario de {} €".format(self.nombre, self.cargo, self.salario)


lista_empleados=[

empleado("Juan", "Director", 51622),

empleado("Ana", "Presidente", 16875),

empleado("Antonio", "Admnistrador", 578646),

empleado("Sara", "Secretaria", 34325),

empleado("Mario", "Botones", 134586),

]		

salarios_altos=filter(lambda empleado:empleado.salario>50000, lista_empleados)

for empleado_salario in salarios_altos:

	print(empleado_salario)