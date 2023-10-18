#Excepciones (I) 
	#La excepciones son errores que ocurren durante la ejecucion, la sintaxis es correca pero durante la ejecucion a ocurido algo inesperado

	#Ex1: ejemplo excepcion:
	#Error del programa: En el caso que intentara dividir un nombre entre cero el programa daria error y nunca se ejecurarian la siguientes lineas

def suma(num1, num2):
	return num1+num2

def resta(num1, num2):
	return num1-num2

def multiplica(num1, num2):
	return num1*num2

def divide(num1,num2):	

	try:														#El programa intentara dividir los dos numeros si no puede ejecutara except	y el programa segira con toda normalidad																						
		return num1/num2

	except ZeroDivisionError:									#Except solo funcionara si colocamos el nombre del error correcto
		print("No se puede dividir entre zero")
		return "Operación erronea"

try:
	op1=(int(input("Introduce el primer número: ")))
except ValueError:
	print("solo se reconocen valores numericos")

try:
	op2=(int(input("Introduce el segundo número: ")))		
except ValueError:
	print("solo se reconocen valores numericos")
		
operacion=input("Introduce la operación a realizar (suma,resta,multiplica,divide): ")

if operacion=="suma":
	print(suma(op1,op2))

elif operacion=="resta":
	print(resta(op1,op2))

elif operacion=="multiplica":
	print(multiplica(op1,op2))

elif operacion=="divide":
	print(divide(op1,op2))

else:
	print ("Operación no contemplada")


print("Operación ejecutada. Continuación de ejecúción del programa ")								

print("imaginamos que hay mucho mas codigo....")




#Excepciones (II): Finally

	#Ex1:
def divide():
	try:

		op_1=(float(input("Introduce el primer valor ")))
		op_2=(float(input("Introduce el segundo valor ")))
		print("La division es: " + str(op_1/op_2))

	except ValueError:

		print("El valor introducido es erroneo")

	except ZeroDivisionError:

		print("No se puede dividir entre 0")

	finally:															# La funcion finally se encarga de que una instruccion se ejecute si o si

		print("Calculo finalizado")

divide()




#Excepciones (III): Raise, Creancion de excepciones propias (mas adelante en el curso cuando veamos POO)

	#Ex1: edad
def evalua_edad(edad):

	if edad<0:
		raise TypeError("Has introducido una edad negativa")			# Raise es la funcion que se encarga de crear excepciones a nuestra conveniencia

	if edad<20:
		return "eres muy joven"
	elif edad<40:
		return "eres joven"
	elif edad<65:
		return "eres adulto"
	elif edad<100:
		return "Cuidate..."

print(evalua_edad(18))



	#Ex2: Raiz
import math

def calcula_raiz(num_1):
	if num_1<0:
		raise ValueError ("El numero no puede ser negativo")
	else:
		return math.sqrt(num_1)

OP1=int(input("Introduce un numero "))

try:
	print(calcula_raiz(OP1))

except ValueError as ErrorDeNumeroNegativo:							# la funcio as es para darle un alias al error
	print(ErrorDeNumeroNegativo)


print("Programa terminado")