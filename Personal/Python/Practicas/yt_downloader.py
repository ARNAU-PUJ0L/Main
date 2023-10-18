from tkinter import *
from pytube import YouTube
from tkinter import messagebox

raiz=Tk()
mi_frame=Frame(raiz, width=1200, height=1200)
mi_frame.pack()
raiz.title("Yt Downloader")


def Descargar():
    link=E_Link.get()
    yt=YouTube(link)
    video=yt.streams.get_highest_resolution()
    video.download()
    messagebox.showinfo(".", "Descarga Finalizada")
    
    
L_Link=Label(mi_frame, text="Link")
L_Link.grid(row=0, column=0, padx=10, pady=10)

E_Link=Entry(mi_frame)
E_Link.grid(row=0, column=1, padx=10, pady=10)

Down_but=Button(mi_frame, text="Descargar", command=Descargar)
Down_but.grid(row=1, padx=10, pady=10)

raiz.mainloop()