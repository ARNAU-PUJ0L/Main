#GUI (VII) RadioButton: Son botones de leccion unica, ¿ejemplo cual es tu genero?

from tkinter import *

root=Tk()

#Creamos una variable y le asignamos un valor a los radiobutton el cual se almacenara en la variable 

varOpcion=IntVar()

def imprimir():
	
	#print(varOpcion.get())						#Imprimimos en consola la opcion seleccionada

	if varOpcion.get()==1:
		etiqueta.config(text="Has elegido masculino")
	else:
		etiqueta.config(text="Has elegido femenino")

Label(root, text="Genero:").pack()

Radiobutton(root, text="Masculino", variable=varOpcion, value=1, command=imprimir).pack()

Radiobutton(root, text="Femenino", variable=varOpcion, value=2, command=imprimir).pack()


etiqueta=Label(root)
etiqueta.pack()



root.mainloop()