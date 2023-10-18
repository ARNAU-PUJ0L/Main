#GUI (XI): Ventanas emergentes Fileload

from tkinter import *
from tkinter import filedialog				#Importamos la libreria necesaria

root=Tk()

def abreFichero():

	fichero=filedialog.askopenfilename(title="Abrir", initialdir="C:", filetypes=(("Ficheros de Excel","*.xlsx"), 			
		("Ficheros de texto","*.txt"), ("Todos los ficheros", "*.*")))

	print(fichero)

Button(root, text="Abrir Fichero", command=abreFichero).pack()




root.mainloop()


