#Interfaces Graficas (III): Widget Label

from tkinter import *

root=Tk()

miFrame=Frame(root, width=500, height=400)

miFrame.pack()

mi_Imagen=PhotoImage(file="21. si.png")

mi_label=Label(miFrame, text="Hola alumnos de Python", fg="red", font=("Verdana", 18))
mi_label.place(x=50, y=50)

Label(miFrame, image=mi_Imagen).place(x=200, y=200)



root.mainloop()