"""
Son funciones que añaden funcionalidades a otras funciones

Estructura:

3 Funciones (A,B y C) donde A recibe como parametro a B para devolver C
Un decorador devuelve una funcion

def funcion_A(FuncionB):
	def funcion_C():
		#Codigo de la funcion interna
	return funcion_B

"""

def funcion_decoradora(funcion_parametro):

	def funcion_interior(*args, **Kwargs): #*args = Nº indeterminado de parametros

		# Acciones adicionales que agregan

		print("Vamos a realizar un calculo")

		funcion_parametro(*args, **Kwargs) #**Kwargs = Colocar parametros con key word

		#Acciones adicionales que agregan

		print("Hemos terminado el calculo")

	return funcion_interior




#Relacionamos la funcion suma con la decoradora

@funcion_decoradora
def suma(num1, num2):
	
	print(num1 + num2)

@funcion_decoradora
def resta(num1, num2):
	
	print(num1 - num2)

@funcion_decoradora
def potencia(base, exponente):
	
	print(pow(base,exponente)) 


suma(5,6)

resta(2,9)

potencia(base=5,exponente=3)