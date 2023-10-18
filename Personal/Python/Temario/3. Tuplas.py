#son lo mismo que las listas pero no se pueden modificar y estan mejor optimizadas

tupla1=(7,5,"Juan")

lista1=list(tupla1) 			#pasar de tublas a listas

lista2=[7,5,5,2]

tupla2=tuple(lista2) 			#pasar de lista a tupla

print("Juan" in tupla2) 		#como saber si un nombre esta en la tupla

print(tupla1[2])    			#imprimir elemento concreto de la tupla

print(tupla1.index(7)) 			#como saber la posicion de un valor?

print(tupla1)					#imprimir tupla entera

print(tupla1.count(7))			#contar cuantas veces esta un elemento

print(len(tupla1)) 				#cuenta los elementos q hay en la tupla/lista

tupla_unitaria=("Juan",)		#tupla unitaria(solo un elemento)

#DESENPAQUETADO DE TUPLAS
tupla3=("Arnau",3,8,2005)
nombre, dia, mes, agno=tupla3	#ahora cada variable tiene un valor de la tupla, por orden nombre-Arnau dia-3...
print(nombre)
print(agno)
print(tupla3)