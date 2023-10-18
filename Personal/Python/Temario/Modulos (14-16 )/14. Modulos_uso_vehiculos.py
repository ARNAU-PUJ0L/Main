class Vehiculos():																							#Clase Padre									

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


class furgoneta(Vehiculos):

	def carga(self, cargar):
		self.cargado=cargar
		if(self.cargado==True):
			return "La furgoneta esta cargada"
		else:
			return "la furgoneta no esta cargada"


class Moto(Vehiculos):																						#De esta forma la clase moto hereda todas la proriedades y comportamientos de la clase vehiculos
	hcaballito=""
	def caballito(self):
		self.hcaballito="Voy haciendo el caballito"

	def estado(self):
		print("Marca:", self.marca, "\nModelo: ", self.modelo, "\nEn Marcha: ",	
			self.enmarcha, "\nAcelerando: ", self.acelera, "\nFrenando: ", self.frenar, "\n", self.hcaballito)

class VElectricos(Vehiculos):
	def __init__(self, marca, modelo):
		
		super().__init__(marca, modelo)

		self.autonomia=100

	def cargarEnergia(self):
		
		self.cargado=True