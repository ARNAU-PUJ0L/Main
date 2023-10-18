"""Funcion Map
	Aplica una funcion a cada elemento de una listas iterables(listas, tuplas...)

"""


class empleado:

	def __init__(self, nombre, cargo, salario):

		self.nombre=nombre

		self.cargo=cargo

		self.salario=salario

	def __str__(self):

		return "{} que trabaja como {} tiene un salario de {} €".format(self.nombre, self.cargo, self.salario)


lista_empleados=[

empleado("Juan", "Director", 6700),

empleado("Ana", "Presidente", 7500),

empleado("Antonio", "Admnistrador", 2100),

empleado("Sara", "Secretaria", 2150),

empleado("Mario", "Botones", 1800),

]		

def calculo_comision(empleado):

	if (empleado.salario<=3000):

		empleado.salario=empleado.salario*1.03

		return empleado


lista_mpleados_comision=map(calculo_comision, lista_empleados)

for empleado in lista_mpleados_comision:

	print(empleado)

