"""Archivos externos (I) Modulo IO: 
	Objetivo: persistencia de datos

	Alternativas:
		manejo de datos ecternos
		Trabajo con BBDD

Fases:

1.Crea archivo esxterno

2. Abrirlo

3. Manipularlo

4. Carrarlo"""


#1
from io import open

#2
archivo_texto=open("archivo.txt","w" )			#Primer argumento= Nombre archivo, Aegundo argumento= Como lo abrimos: editor(w) ,lector(r), agregar(a), lectura+escritura(r+)

#3
frase="Estupendo dia para estudiar Python \n el miercoles"
archivo_texto.write(frase)

#4
archivo_texto.close()



archivo_texto_2=open("archivo_2.txt","r")

texto=archivo_texto_2.read()

archivo_texto_2.close

print(texto)



archivo_texto_3=open("archivo_3.txt","r")

lineas_texto=archivo_texto_3.readline()			#Con readline el contenido de el archivo se almacena en una lista

archivo_texto_3.close()

print(lineas_texto)


archivo_texto_4=open("archivo_4.txt","a")		#El modo "a" añade lienas

archivo_texto_4.write("\n siempre es una buena ocasion para comprar un bus")

archivo_texto_4.close()
	



#Archivos externos (II): Punteros en texto

from io import open
archivo_texto_5=open("archivo_texto_5.txt", "w")


frase_5=("Hoy es miercoles.\nTengo calor\nY tengo fiebre")
archivo_texto_5.write(frase_5)

archivo_texto_5=open("archivo_texto_5.txt", "r")		 


"""Si copiamos el codigo no se ejecuta dos veces devido a la posicion del puntero
print(archivo_texto_5.read())
print(archivo_texto_5.read())"""


#Para mover el cursor se a de hacer de la siguiente forma

print(archivo_texto_5.read())

archivo_texto_5.seek(0)								#La funcion seek es la encargada de mover el cursor el argumento indicva la posicion deseada

print(archivo_texto_5.read())						#Si a la funcion read() le colocamos un agumento este indicara asta donde leera el programa



"""Algunas convinaciones con seek()

archivo_texto_5.seek(len(archivo_texto_5.read()/2))
archivo_texto_5.seek(len(archivo_texto_5.readline()))"""


"""Modificar lineas

lista_texto_5=archivo_texto_5.readlines()

print(archivo_texto_5.readlines())

lista_texto_5[1]="Esta linea a sido modificada desde el exterior \n"

archivo_texto_5.seek(0)

archivo_texto_5.writeline(lista_texto_5)

archivo_texto_5.close()"""