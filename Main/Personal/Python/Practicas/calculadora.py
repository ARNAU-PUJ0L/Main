import math
print("CALCULADORA")

operacion=0

while True:

	print("""
	¿Que operacion quieres hacer?

	1) Suma
		
	2) Resta

	3) Multiplicacion

	4) Division

	5) Raiz

	6) Salir







		""")

	try:
		operacion=int(input("Nº de la operacion: "))
	except ValueError:
		print("solo se reconocen valores numericos")	
	resultado=0

 
	if operacion==1:
		
		try:
			num_1=float(input("Introduce el primer valor "))
			
		except ValueError:
			print("solo se reconocen valores numericos")

		

		try:
			num_2=float(input("Introduce el segundo valor "))
		
		except ValueError:
			print("solo se reconocen valores numericos")



		try:
			resultado=num_1+num_2
		
		except NameError:
			print("Error, se han introducido valores no numericos")

		print("El resultado es " + str((resultado)))




	elif operacion==2:
		try:
			num_1=float(input("Introduce el primer valor "))
		except ValueError:
			print("solo se reconocen valores numericos")



		try:
			num_2=float(input("Introduce el segundo valor "))
		except ValueError:
			print("solo se reconocen valores numericos")



		try:
			resultado=num_1-num_2
		except NameError:
			print("Error, se han introducido valores no numericos")
		print("El resultado es " + str((resultado)))






	elif operacion==3:
		try:
			num_1=float(input("Introduce el primer valor "))
		except ValueError:
			print("solo se reconocen valores numericos")



		try:
			num_2=float(input("Introduce el segundo valor "))
		except ValueError:
			print("solo se reconocen valores numericos")



		try:
			resultado=num_1*num_2
		except NameError:
			print("Error, se han introducido valores no numericos")
		print("El resultado es " + str((resultado)))





	elif operacion==4:
		

		try:
			num_1=float(input("Introduce el primer valor "))
		except ValueError:
			print("solo se reconocen valores numericos")



		try:
			num_2=float(input("Introduce el segundo valor "))
		except ValueError:
			print("solo se reconocen valores numericos")



		try:
			resultado=num_1/num_2
		except (NameError):
			print("Error, se han introducido valores no numericos")
		except (ZeroDivisionError):
			print("Error, no se puede dividir entre 0")
		print("El resultado es " + str((resultado)))





	elif operacion==5:


		try:
			num_raiz=float(input("Introduce el randicando: "))
		
		except ValueError:
			print("solo se reconocen valores numericos")
		

		try:
			resultado=math.sqrt(num_raiz)
		
		except NameError:
			print("Error, se han introducido valores no numericos")
		

		except ValueError:
			print("Un valor negativo no tiene raiz")


		print("La raiz es " + str((resultado)))




	elif operacion==6:
		break;	

	else:
		print("Operacion inexistente")

