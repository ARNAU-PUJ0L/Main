#Rangos: Nos permiten buscar valores de nuestra lista que tengan un rango determinado.


import re

lista_nombres=["Ma.1",
				"Se1",
				"Ba1",
				"Ma2",
				"Va1",
				"Ma:3",
				"Va2", 
				"Ma4", 
				"MaA",
				"Ma.5",
				"MaB",
				"Ma:C"]



for elemento in lista_nombres:

	if re.findall("Ma[^0-3A-B]", elemento):	#Si colocas el acento circuncejo delante de un rango t dejolvera los valores q no cumplan la condicion
		
		print(elemento)


"""
for elemento in lista_nombres:

	if re.findall("Ma[.:]", elemento):	#Si colocas el acento circuncejo delante de un rango t dejolvera los valores q no cumplan la condicion
		
		print(elemento)"""