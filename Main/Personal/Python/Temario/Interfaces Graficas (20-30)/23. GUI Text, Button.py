#Interfaces Graficas (V): text y button 
#Reutilizo el codigo del archivo anterior


from tkinter import *

raiz= Tk()

miFrame=Frame(raiz, width=1200, height=600)
miFrame.pack()

minombre=StringVar()

cuadroNombre=Entry(miFrame, textvariable=minombre)
cuadroNombre.grid(row=0, column=1, padx=10, pady=10)							#La funcion grid sirve para crear una "cuadricula imaginaria" paqra poder colocar los witgets en el frame de forma alineada o a nustra voluntat, necesita dos argumentos (rows, column)
cuadroNombre.config(fg="red", justify="center")

cuandroPass=Entry(miFrame)
cuandroPass.grid(row=1, column=1, padx=10, pady=10)								#Padx/y:esta funcion sirve para encuadrar los witgets un numero determinados pixeles, padx se encarga de que haya un espacio de x pixeles en la izquierda tanto como en la derecha, pady se encarga de que haya numero y de pixeles tanto arriba como abajo   
cuandroPass.config(show="*")

cuandroApellido=Entry(miFrame)
cuandroApellido.grid(row=2, column=1, padx=10, pady=10)	


cuadroDireccion=Entry(miFrame)
cuadroDireccion.grid(row=3, column=1, padx=10, pady=10)	

			
textoComentario=Text(miFrame, width=16, height=5)								#Creamos el text
textoComentario.grid(row=4, column=1, padx=10, pady=10)


scrollVert=Scrollbar(miFrame, command=textoComentario.yview)					#Creamos un scroolbar, el argumento comand es para posicionarlo 				
scrollVert.grid(row=4, column=2, sticky="nsew")									#Aplicamos el scrollbar y si ponemos el sticky la scrollbar se adaptara a la casilla de texto

textoComentario.config(yscrollcommand=scrollVert.set)							#Con esta linea de codigo la scrollbar segue al cursor

nombreLabel=Label(miFrame, text="Nombre:")
nombreLabel.grid(row=0, column=0, sticky="e", padx=10, pady=10)					#La funcion sticky sirve para encajar los textos segun los puntos cardinales

PassLabel=Label(miFrame, text="Password:")
PassLabel.grid(row=1, column=0, sticky="e", padx=10, pady=10)


apellidoLabel=Label(miFrame, text="Apellido:")
apellidoLabel.grid(row=2, column=0, sticky="e", padx=10, pady=10)


direccionLabel=Label(miFrame, text="Direccion:")
direccionLabel.grid(row=3, column=0, sticky="e", padx=10, pady=10)



comentariosLabel=Label(miFrame, text="Comentarios:")
comentariosLabel.grid(row=4, column=0, sticky="e", padx=10, pady=10)

def codigoBoton():																

	minombre.set("Arnau")


botonEnvio=Button(raiz, text="Enviar", command=codigoBoton)						#Creamos el boton
botonEnvio.pack()			




raiz.mainloop()