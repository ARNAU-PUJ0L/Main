#Es lo mismo que las tuplas y las listas pero con la diferencia que se hace una asociacion de tipo clave:valor a cada uno de los elementos almacenados

diccionario1={"Alemania":"Berlin", "Francia":"Paris", "Reino Unido":"Londres", "España":"Madrid"}

diccionario1["Italia"]="Lisboa"			#añadir valor a un diccionario

print(diccionario1["Alemania"])			#imprimir valor especifico

print(diccionario1)						#imprimir diccionnario

diccionario1["Italia"]="Roma"			#corregir valor del diccionario

print(diccionario1)						#imprimir diccionario con valor corregido

del diccionario1["Reino Unido"]			#Eliminar valor

print(diccionario1)						#imprimir diccionario con valor eliminado

print(diccionario1.keys())				#imprimir las claves de un diccionario

print(diccionario1.values())			#imprimir los valors de un diccionario

#print(len(diccionario1)				#imprimir longitut de un diccionario (He de poner un # delante del print pq sino hay un bug y no me deja ejecutar)


#colocar una tupla en un diccionario

tupla1=["España", "Francia", "Reino Unido", "Alemania"]

diccionario2={tupla1[0]:"Madrid", tupla1[1]:"Paris", tupla1[2]:"Londres", tupla1[3]:"Berlin"}		#hemos relacionado cada elemento de la tupla a un valor 

print(diccionario2[tupla1[1]])																		#imprimnir valor especifico


#asignar varios valores a una clave

diccionario3={23:"Jordan", "Nombre":"Michael", "Equipo":"Chicago", "anillos":[1991,1992,1993,1996,1997,1998]}
print(diccionario3["anillos"])


#diccionario dentro de un diccionario

diccionario4={23:"Jordan", "Nombre":"Michael", "Equipo":"Chicago", "anillos":{"Temporadas":[1991,1992,1993,1996,1997,1998]}}
print(diccionario4["anillos"])