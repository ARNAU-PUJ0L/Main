import pyshorteners
from tkinter import *

#-----------Pantalla----------------

raiz=Tk()
raiz.title("URL SHORTER")
mi_frame=Frame(raiz, width=1200, height=1200)
mi_frame.pack()

mi_frame2=Frame(raiz, width=250, height=50)
mi_frame2.pack()

#---------Funciones------------------

def short():
    s=pyshorteners.Shortener()
    url= entry_old_url.get()
    a=s.tinyurl.short(url)
    entry_new_url.insert(0, a)


def limpiar():
    entry_old_url.delete(0,"end")
    entry_new_url.delete(0,"end")


#----------Labels--------------------

label_old_url=Label(mi_frame, text="Old URL: ")
label_old_url.grid(row=0, column=0, padx=10, pady=10)

label_new_url=Label(mi_frame, text="New URL: " )
label_new_url.grid(row=1, column=0, padx=10, pady=10)


#----------Entry---------------

entry_old_url=Entry(mi_frame)
entry_old_url.grid(row=0, column=1, padx=10, pady=10)

entry_new_url=Entry(mi_frame)
entry_new_url.grid(row=1, column=1, padx=10, pady=10)

#---------Botones-------------------

boton_url=Button(mi_frame2, text="Short_URL", command=short)
boton_url.grid(row=0, column=0, padx=10, pady=10)

boton_limpiar=Button(mi_frame2, text="Clean", command=limpiar)
boton_limpiar.grid(row=0, column=1, padx=10, pady=10)



raiz.mainloop()


