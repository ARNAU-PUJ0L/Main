import sqlite3

miConexion=sqlite3.connect("GestionProductos")

miCursor=miConexion.cursor()

miCursor.execute('''
    CREATE TABLE PRODUCTOS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    NOMBRE_ARTICULO VARCHAR(50) UNIQUE,                     
    PRECIO INTEGER,
    SECCION VARCHAR(20))  
''')

#UNIQUE hace que no puedan haber dos articulos con el mismo nombre

listaProductos=[
    ("pelota", 20, "jugeteria"),
    ("pantalón", 15, "confección"),
    ("destornillador", 25, "ferretería"),
    ("jarrón", 45, "cerámica")
]

miCursor.executemany("INSERT INTO PRODUCTOS VALUES(NULL,?,?,?)", listaProductos)



miConexion.commit()

miConexion.close()