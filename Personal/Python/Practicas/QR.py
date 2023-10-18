from tkinter import *
from PIL import Image, ImageTk      #Permite la importacion/exportacion/edicion de imajenes
import qrcode
from os import remove

raiz=Tk()
mi_frame=Frame(raiz, width=1200, height=1200)
raiz.title("QR GENERATOR")
mi_frame.pack()

#----------Funciones--------------
def generator():
    ventana_qr = Toplevel(mi_frame)
    ventana_qr.title("QR")
    ventana_qr.geometry("600x600")
    
    input_data=E_website.get()
    qr=qrcode.QRCode(
        version=1,
        box_size=10,
        border=5)
    qr.add_data(input_data)
    qr.make(fit=True) #El QR ocupara todo el espacio aun que la info quepa en espacio mas pequeño
    img=qr.make_image(fill="black", back_color="white")
    
    img.save('qrcode001.png')
    image = Image.open('qrcode001.png')
    tk_image = ImageTk.PhotoImage(image)
    Label(ventana_qr, image=tk_image).pack()
    remove('qrcode001.png')
    ventana_qr.mainloop() 


#---------Label + Entry + Buttons------------
L_website=Label(mi_frame, text="Website")
L_website.grid(row=0, column=0, padx=10, pady=10)

E_website=Entry(mi_frame)
E_website.grid(row=0, column=1, padx=10, pady=10)

Gen_but=Button(mi_frame, text="QR", command=generator)
Gen_but.grid(row=1, padx=10, pady=10)


raiz.mainloop()
