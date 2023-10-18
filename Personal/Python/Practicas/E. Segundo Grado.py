#--------------Pantalla-----------------

from tkinter import *

from tkinter import messagebox	

import math

raiz=Tk()

raiz.title("E. Segundo Grado")

mi_frame=Frame(raiz, width=1200, height=1200)

mi_frame.pack()

mi_frame2=Frame(raiz, width=250, height=50 )

mi_frame2.pack()


#-------------Funciones--------------------


def limpiar():
    x2_entry.delete(0,"end")

    x_entry.delete(0,"end")

    c_entry.delete(0,"end")

    resultado_entry1.delete(0, "end")

    resultado_entry2.delete(0, "end")


def calcular():


    valor1 = int(x2_entry.get())

    valor2 = int(x_entry.get())
    
    valor3 = int(c_entry.get())
    
    Paso1 = (valor2**2) - (4*valor1*valor3)

    if Paso1 < 0:
        raiz_negativa()
    
    x1 = (-valor2 + math.sqrt(Paso1)) / (2*valor1)

    x2 = (-valor2 - math.sqrt(Paso1)) / (2*valor1)

    resultado_entry1.insert(0, x1)

    resultado_entry2.insert(0, x2)

    
#--------------Labels------------------

x2_label=Label(mi_frame, text="A: ")
x2_label.grid(row=0, column=0, padx=10, pady=10)

x_label=Label(mi_frame, text="B: ")
x_label.grid(row=1, column=0, padx=10, pady=10)

c_label=Label(mi_frame, text="C: ")
c_label.grid(row=2, column=0, padx=10, pady=10)

resultado_label1=Label(mi_frame, text="Resultado +x:")
resultado_label1.grid(row=3, column=0, padx=10, pady=10)

resultado_label2=Label(mi_frame, text= "Resultado -x:")
resultado_label2.grid(row=4, column=0, padx=10, pady=10)

#-------------Entry-----------------

x2_entry=Entry(mi_frame)
x2_entry.grid(row=0, column=1, padx=10, pady=10)

x_entry=Entry(mi_frame)
x_entry.grid(row=1, column=1, padx=10, pady=10)

c_entry=Entry(mi_frame)
c_entry.grid(row=2, column=1, padx=10, pady=10)

resultado_entry1=Entry(mi_frame)
resultado_entry1.grid(row=3, column=1, padx=10, pady=10)

resultado_entry2=Entry(mi_frame)
resultado_entry2.grid(row=4, column=1, padx=10, pady=10)


#------------Botones------------

b_calcular=Button(mi_frame2, text="Calcular", command=calcular)
b_calcular.grid(row=0, column=0, padx=10, pady=10)


b_limpiar=Button(mi_frame2, text="Limpiar", command=limpiar)
b_limpiar.grid(row=0, column=1, padx=10, pady=10)


#------------Error--------------

def raiz_negativa():
	messagebox.showwarning("Error", "NO SE PUEDE HACER LA RAIZ DE UN NOMBRE NEGATIVO")	




raiz.mainloop()