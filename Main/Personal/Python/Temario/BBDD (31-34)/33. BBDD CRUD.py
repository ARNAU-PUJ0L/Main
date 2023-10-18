#CRUD = Create, Read, Update, Delete 

import sqlite3

miConexion=sqlite3.connect("GestionProductos")

miCursor=miConexion.cursor()


"""READ

miCursor.execute("SELECT * FROM PRODUCTOS WHERE SECCION='confección'")

productos=miCursor.fetchall()

print(productos)"""


#UPDATE

miCursor.execute("UPDATE PRODUCTOS SET PRECIO=35 WHERE NOMBRE_ARTICULO='pelota'")


#Delete

miCursor.execute("DELETE FROM PRODUCTOS WHERE ID=3")


miConexion.commit()

miConexion.close()