"""
BBDD (I)

Estructura:

1. Crear/Abrir conexion

2. Crear puntero

3. Ejecutar consulta

4. Manejar los resultados de la consulta 

5. Cerrar puntero

6. Cerrar conexion

"""





#Libreria necesaria par BBDD

import sqlite3



#crear BBDD

miConexcion=sqlite3.connect("PrimeraBase")



#Crear cursor

miCursor=miConexcion.cursor()



#Crear Tabla

miCursor.execute("create table productos (nombre_articulo varchar (50), precio integer, seccion varchar(20))")



#Insertar datos

miCursor.execute("insert into productos values('balon', 15, 'Deportes')")



#Insertar varios datos a la vez (Con tuplas)

variosProductos=[

	("Camiseta", 10, "Deportes"),
	("Jarron", 90, "Ceramica"),
	("Camion", 20, "Jugueteria"),
	("Olla", 40, "Cocina")
]



#Se han de colocar tantos interrogants como campos haya en la tabla

miCursor.executemany("insert into productos values (?,?,?)", variosProductos)



#Lectura de BBDD

miCursor.execute("select * from productos")



#Creas una lista con la info de la B.D

lista_registros=miCursor.fetchall()



for producto in lista_registros:

	print("Nombre de Articulo: ", producto[0], " Precio ", producto[1], " Seccion: ", producto[2])



#Verificacacion de los cambios (obligatorio)

miConexcion.commit()



#Cerrar conexion

miConexcion.close()