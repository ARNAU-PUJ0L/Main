#Bucles (I) For
	#determinado: repite un numero determinado de veces el codigo
	#Indeterminado: No se sabe las veces que se repetira

for i in [7,8,9]:																	#Sintaxix bucle: for + n.variable + in + lista/tupla/rango, el numero de valores que haya en la lista sera el numero de veces que se repita el bucle
	print("Hola", end=" ")															#end="" es para que se impriman todos los hola en la misma linea





#Bucles (II) For: recorrido de strings, tipo range, notaciones especiales con print
	
	#Ex1: Comprovacion email
contador=0
email_1=input("\nIntroduce tu email: ")

for a in email_1:

	if(a=="@" or a=="."):

		contador=contador+1

if contador==2:
	print("email correcto")
else:
	print("email incorrecto")



	#Ex2: ej range
for i in range(50):																	#el numero dentro del range es el nº de veces que se repite el print, en este caso hay 50 hola que van de la posicion 0-49
	print("Hola", end=(" "))





#Bucles (III) For: tipo range, notaciones especiales con print

	#Ex1: Notacion especial
for b in range(5,50,3):																#De esta forma enpezara a contar del 5 asta el 49, el ultimo numero dice que contara de 3 en 3
	print(f"valor de la variable {b}")												#Forma de unir texto con variables resultado: valor de la variable: 1, valor de la variable:2...



	#Ex2: Comprovacion email (II)
valido=False

email_2=input("Introduce tu email: ")

for c in range(len(email_2)):															#len es la funcion correspondiente a contar las letras/numeros que tiene un valor 
	if email_2[c]=="@":
		valido=True
if valido:
	print("Email correcto")
else:
	print("Email incorrecto")





#Bucle (IV) While (Bucle indeterminado)

	#Ex1:
c=1
while c<=10:
	print("Ejecucion " + str(c))
	c=c+c 																			#Cada vez que pasa por el bucle c augmenta el valor, en el momento que es mayor a 10 se termina el programa

print("Termino la ejecucion")



	#Ex2: Edad																		#Hasta que la edad sea positiva no se completara el programa
edad=int(input("Introduce tu edad: "))

while edad<5 or edad>100:
	print("Edad fuera de rango. Vuelve a intentarlo")
	edad=int(input("Introduce tu edad: "))

print("Gracias, puedes pasar")
print("Edad del aspirante " + str(edad))



	#Ex3: raiz cuadrada
import math																			#se importa una funcion "externa"
print("Programa de calculo raiz cuadrada")
numero=int(input("Introduce un numero: "))

intentos=0

while numero<0:
	print("No se puede hallar la raiz de un numero negativo")

	if intentos==2:
		print("has consumido demasiados intentos: El programa ha finalizado")
		break;																		#Break; es utilizado para finalizar algoritmos

	numero=int(input("Introduce un numero: "))
	if numero<0:
		intentos=intentos+1

if intentos<2:
	solucion=math.sqrt(numero)														#Se vera mas tarde en el curso (POO)
	print("La raix cuadrada de " + str(numero) + " es " + str(solucion))





#Bucles (V): Continue, pass y else

	#Ex1: Continue
for letra in "Python":
	if letra=="h":
		continue																	#Continue salta todas las lineas que haya debajo (dentro del bucle) y vuelve a enpezar el bucle
	print("Viendo la letra: " + letra)



	#Ex2: Continue
nombre="Pildoras Informaticas"
contador_2=0

for d in nombre:
	if d==" ":
		continue
	contador_2=contador_2+1
print(contador_2)



	#Ex3: Pass
class MiClase:
	pass																			#la funcion pass proboca que el programa ignore la existencia de la clase



	#Ex4: Else Email (III)
email_3=input("Introduce tu email: ")

for e in email_3:
	if e=="@":
		arroba=True

		break;

else:
	arroba=False

print(arroba)	