lista=["tienda","mercado","web"]

lista.insert(2,"farmacia") 						#añadir palabras a la lista (el numero es la posicion)

lista.extend(["herrero","pescaderia","parque"]) #añadir varias palabras a la lista

print(lista.index("tienda")) 					#como saber la posicion de una palabra?

print("farmacia" in lista) 						#esta esa palabra en mi lista?

lista.remove("herrero")							#eliminar elemento

lista.pop()										#elimina el ultimo valor

print(lista[:]) 
print(lista[0])
print(lista[-2])
print(lista[0:2])



lista1=["maria",5,"true",78.35]
lista2=["sandra","lucia"] * 3 					#el signo de multiplicar multiplica las listas 
lista3=lista1+lista2 							#la suma junta las listas

