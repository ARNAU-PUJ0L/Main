#Interfaces Graficas (I): Raiz

from tkinter import *						#Libreria necesaria para crear interfaces graficas

raiz=Tk()									#Igualamos una variable a la libreria

raiz.title("Ventana de pruebas")			#Canviar el nombre de la ventana
	
raiz.resizable(True,True)					#Podemos bloquear la redimension de ancho y alto funciona con true y false				

raiz.iconbitmap("20. logo.ico")				#Canviar el icono de la ventana

#raiz.geometry("650x350")					#Canviar tamaño predeterminado de la ventana

raiz.config(bg="black")						#Canviar color de fondo de la ventana

											#Para que cuando abras el archivo con el interprete de python no te aparezca la consola as de canviar la extension del archivo de .py a .pyw

miFrame=Frame()								#Creamos un frame

#miFrame.pack(side="right", anchor="n")		#Hemos empaquetado el frame a la raiz, si colocamos como argumento side="right" el frame quedara anclado a la parte derecha de la raiz, pero si quieres pasar dos posiciones a la vez por ejemplo la esquina superior izquierda seria: side="left", anchor="n"  (anchour funciona con la primera letra de los puntos cardinales)

miFrame.pack(fill="both", expand="True")	#Para que el tamaño del frame se vaya adaptando al tamaño de la raiz se una la funcion fill si como argumento colocamos una x el frame se redimensiona de forma horizontal en canbio para que se expanda verticalmente se a de colocar como argumento lo siguiente: fill="y", expand="True"  pero si quieres que se expanda en las dos direcciones hay per usar la funcion both de la siguiente forma: fill="both", expand="True"		
		
miFrame.config(bg="red")					#Canvia el color de fondo del frame

miFrame.config(width="650", height="350")	#Canviar el tamaño del frame,la raiz siempre se adapta al tamaño del frame aun que si augmentas el tamaño de la ventana solo se extendera la raiz y no el frame

miFrame.config(bd=35)						#Para canbiar el grueso del borde Para canviar el tipo de borde prmero hay que canbiar el grosor del borde 

miFrame.config(relief="groove")				#Para canviar el tipo de borde prmero hay que canbiar el grosor del borde 

miFrame.config(cursor="pirate")				#Canviar el cursor 

raiz.mainloop()								#Y creamos una ventana (Este metodo siempre a de estar a final)




#Interfaces Greficas (II): Frame (Continuamos con el ejercicio anterior)
