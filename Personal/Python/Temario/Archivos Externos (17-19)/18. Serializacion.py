"""Serializacion (I)
	¿Que es? 
		Se trata de guardar un archivo con diccionarios,clases,funciones... pero con la particularidad que se guardara en binario
	
	¿Para que sirve?
		Sobretodo para distrivuirlo a internet o a diferentes dispositivos o a bases de datos
	
	Biblioteca necesaria:
		Pickle:
			Metodo Dump(): volcado de datos al fichero binario externo
			Metodo load(): carga de los datos del fichero binario extern
	"""

#Ex:1

#Crearlo
import pickle

lista_1=["Pedro, Juan, Jose, Maria"]

fichero_binario=open("lista_nombres","wb")			#wb=escritura binaria

pickle.dump(lista_1, fichero_binario)				#Argumentos: 1º: lo q se quiere dumpear. 2º: donde se quiere dumpear

fichero_binario.close()



#Leerlo
fichero=open("lista_nombres", "rb")					#rb=read binari

lista_2=pickle.load(fichero)

print(lista_2)




#Serializacion (II): Objetos

import pickle

class Vehiculos():									#Clase Padre									

	def __init__(self, marca, modelo):

		self.marca=marca
		self.modelo=modelo
		self.enmarcha=False
		self.acelera=False
		self.frenar=False

	def arrancar(self):

		self.enmarcha=True

	def acelerar(self):
		self.acelera=True

	def frenar(self):
		self.frenar=True

	def estado(self):
		print("Marca:", self.marca, "\nModelo: ", self.modelo, "\nEn Marcha: ",								#Para hacer saltos de linea se ha de colocar lo siguiente \nY lo que quieras escribir
			self.enmarcha, "\nAcelerando: ", self.acelera, "\nFrenando: ", self.frenar)



coche1=Vehiculos("Maza", "MX5")
coche2=Vehiculos("Maza", "MX6")
coche3=Vehiculos("Maza", "MX7")

coches=[coche1, coche2, coche3]


fichero=open("LosCoches", "wb")

pickle.dump(coches, fichero)

fichero.close()

del (fichero)								#Eliminar fichero de la memoria	

ficheroApertura=open("LosCoches", "rb")

mis_coches=pickle.load(ficheroApertura)

ficheroApertura.close()

for c in mis_coches:

	print(c.estado())
