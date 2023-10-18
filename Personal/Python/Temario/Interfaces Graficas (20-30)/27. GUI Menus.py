#GUI (IX): Menus

from tkinter import *

root=Tk()

barraMenu=Menu(root)											#Creamos el menu
root.config(menu=barraMenu, width=300, height=300)				#Contruimos el menu



archivoMenu=Menu(barraMenu, tearoff=0)							#Creamos los apartados del menu, tearoff es para quitar una linea que aparece arriba de los submenus
archivoMenu.add_command(label="Nuevo")							#Creamos los submenus
archivoMenu.add_command(label="Guardar")
archivoMenu.add_command(label="Guardar Como")
archivoMenu.add_separator()										#Se crea una barra separadora
archivoMenu.add_command(label="Cerrar")
archivoMenu.add_command(label="Salir")


archivoEdit=Menu(barraMenu, tearoff=0)
archivoEdit.add_command(label="Copiar")
archivoEdit.add_command(label="Cortar")
archivoEdit.add_command(label="Pegar")

archivoTools=Menu(barraMenu, tearoff=0)


archivoHelp=Menu(barraMenu, tearoff=0)
archivoHelp.add_command(label="Licencia")
archivoHelp.add_command(label="Acerca de...")



barraMenu.add_cascade(label="Archivo", menu=archivoMenu)		#Ponemos un texto a los apartados del menu

barraMenu.add_cascade(label="Editar", menu=archivoEdit)

barraMenu.add_cascade(label="Herramientas", menu=archivoTools)

barraMenu.add_cascade(label="Ayuda", menu=archivoHelp)






root.mainloop()