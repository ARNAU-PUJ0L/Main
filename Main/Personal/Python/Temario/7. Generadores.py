#Generadores (I) 
	#¿Que son? Los generadores son estructuras que extraen valores de una funcion y se almacena en objetos iterables(que se pueden recorrer)
	#Diferencias entre funcion y Generador: cunado tu llamas a una funcion se te dan todos los valores en canvio en los generadores se te dan los valores de uno en uno

	#Ex1: Funcion vs Generador
def funcion1(limite):
	num=1
	lista1=[]
	while num<limite:
		lista1.append(num*2)
		num=num+1
	return lista1

print(funcion1(10))


def generaPares(limite):
	num2=1
	while num2<limite:
		yield num2*2 								#yield es una orden muy similar a un return, con una gran diferencia, yield pausará la ejecución de tu función y guardará el estado de la misma hasta que decidas usarla de nuevo
		num2=num2+1

devuelvePares=generaPares(10)

#for i in devuelvePares:							#Imprime todo el contenido (da error si le quito el hastag)
	#print(i)

print(next(devuelvePares))							#Imprime el primer valor

print("Aqui podria ir mas codigo")

print(next(devuelvePares))							#Imprime el segundo valor





#Generadores (II): Yiend from

	#Ex1:Bucle for anidado
def devuelve_ciudades(*ciudades):					#El asterisco delante de un argumento indica que el argumento recivira un numero in determinado de valores, siempre en forma de tupla
	for elemento in ciudades:						#Bucle for "padre"	(este devolveria "Madrid")				
		#for sub_elemento in elemento:				#Bucle for anidado	(este devolveria "M")
			#yield sub_elemento
			yield from elemento						#Si colocamos un yield from nos ahorramos el bucle for anidado

ciudades_devueltas=devuelve_ciudades("Madrid" , "Barcelona" , "Bilbao" , "Valencia")

print(next(ciudades_devueltas))

print(next(ciudades_devueltas))