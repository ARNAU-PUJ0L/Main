# GUI (VIII): CheckButton

from tkinter import *

root=Tk()

root.title("Ejemplo")

playa=IntVar()
montagna=IntVar()
turismoRural=IntVar()

def opcionesViaje():
	
	opcionesEncogida=""

	if(playa.get())==1:
		opcionesEncogida+="Playa"


	if(montagna.get())==1:
		opcionesEncogida+="Montaña"


	if(turismoRural.get())==1:
		opcionesEncogida+="Turismo rural"

	textoFinal.config(text=opcionesEncogida)


foto=PhotoImage(file="26.avion.png")
Label(root, image=foto).pack()

frame=Frame(root)
frame.pack()

Label(frame, text="Elige destinos", width=50).pack()

Checkbutton(frame, text="Playa", variable=playa, onvalue=1, offvalue=0, command=opcionesViaje).pack()				#Onvalue significa que cuando el boon este seleccionado su valor es el numero que le asignemos offvaule es lo mismo pero cuando esta deseleccionado
Checkbutton(frame, text="Montaña",variable=montagna, onvalue=1, offvalue=0, command=opcionesViaje).pack()
Checkbutton(frame, text="Turismo rural",variable=turismoRural, onvalue=1, offvalue=0, command=opcionesViaje).pack()


textoFinal=Label(frame)
textoFinal.pack()




root.mainloop()