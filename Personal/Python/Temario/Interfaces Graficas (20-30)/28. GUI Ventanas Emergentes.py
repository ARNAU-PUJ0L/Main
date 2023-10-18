#GUI (X): Ventanas Emergentes (Reutilizamos el codigo del archivo anterior)

from tkinter import *
from tkinter import messagebox															#Importamos la libreria de ventanas emergentes	
root=Tk()

def infoAdicional():
	messagebox.showinfo("Procesador", "Procesador de textos 2021")						#Creamos el messagebox y colocamos dos argumentos el primero es el titulo de la ventana emergente y el segundo el contenido


def avisoLicencia():
	messagebox.showwarning("Licencia", "Producto bajo licencia")						#Creamos una ventana emergente de aviso


def avisoSalir():
	valor=messagebox.askquestion("Salir", "¿Deseas salir de la aplicacion?")			#Creacom una ventana emergenta de confirmacion (si, no)

	if valor=="yes":
		root.destroy()


def confirmacionCopiar():
	valor_2=messagebox.askokcancel("Copiar", "¿Deseas copiar este elemento?")			#Creamos una ventana emergente de confirmacion (seguir, cancelar)

	if valor_2==True:
		def aviso():
			messagebox.showinfo("Copiar", "Has copiado el mensage")
		aviso()


def cerrarDocumento():
	valor_3=messagebox.askretrycancel("Reintentar", "No es posible cerrar.")			#Creamos una ventana emergente de reintentar/cancelar
	if valor_3==False:
		root.destroy()


barraMenu=Menu(root)																	#Creamos el menu
root.config(menu=barraMenu, width=300, height=300)										#Contruimos el menu


archivoMenu=Menu(barraMenu, tearoff=0)													#Creamos los apartados del menu, tearoff es para quitar una linea que aparece arriba de los submenus
archivoMenu.add_command(label="Nuevo")													#Creamos los submenus
archivoMenu.add_command(label="Guardar")
archivoMenu.add_command(label="Guardar Como")
archivoMenu.add_separator()																#Se crea una barra separadora
archivoMenu.add_command(label="Cerrar", command=cerrarDocumento)
archivoMenu.add_command(label="Salir", command=avisoSalir)


archivoEdit=Menu(barraMenu, tearoff=0)
archivoEdit.add_command(label="Copiar", command=confirmacionCopiar)
archivoEdit.add_command(label="Cortar")
archivoEdit.add_command(label="Pegar")

archivoTools=Menu(barraMenu, tearoff=0)


archivoHelp=Menu(barraMenu, tearoff=0)
archivoHelp.add_command(label="Licencia", command=avisoLicencia)
archivoHelp.add_command(label="Acerca de...", command=infoAdicional)					#Aplicamos la ventana emergente 



barraMenu.add_cascade(label="Archivo", menu=archivoMenu)								#Ponemos un texto a los apartados del menu

barraMenu.add_cascade(label="Editar", menu=archivoEdit)

barraMenu.add_cascade(label="Herramientas", menu=archivoTools)

barraMenu.add_cascade(label="Ayuda", menu=archivoHelp)






root.mainloop()