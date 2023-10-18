from tkinter import *
from tkinter import messagebox
import sqlite3

#-------------------------Funciones----------------------
def conexion_BBDD():

	mi_conexion=sqlite3.connect("Usuarios")

	mi_cursor=mi_conexion.cursor()


	try:
	
		mi_cursor.execute('''
			CREATE TABLE DATOSUSUARIOS (
			ID INTEGER PRIMARY KEY AUTOINCREMENT,
			NOMBRE_USUARIO VARCHAR(50),
			PASSWORD VARCHAR(50),
			APELLIDO VARCHAR(50),
			DIRECCION VARCHAR(50),
			COMENTARIOS VARCHAR(100))
			''')
		messagebox.showinfo("BBDD", "BBDD creada con exito")

	except:

		messagebox.showwarning("¡Atencion!", "La BBDD ya existe")


def salir_aplicaccion():

	valor=messagebox.askquestion("Salir", "¿Deseas salir de la aplicación?")

	if valor=="yes":
		root.destroy()

			
def lipiar_campos():

	mi_nombre.set("")
	mi_ID.set("")
	mi_apellido.set("")
	mi_pass.set("")
	mi_direccion.set("")
	texto_comentario.delete(1.0, END)




def crear():

	mi_conexion=sqlite3.connect("Usuarios")

	mi_cursor=mi_conexion.cursor()

	datos=mi_nombre.get(),mi_pass.get(),mi_apellido.get(),mi_direccion.get(),texto_comentario.get("1.0", END)


	"""mi_cursor.execute("INSERT INTO DATOSUSUARIOS VALUES(NULL, '" + mi_nombre.get()+
		"','" + mi_pass.get() +
		"','" + mi_apellido.get() +
		"','" + mi_direccion.get() + 
		"','" + texto_comentario.get("1.0", END) + "')")"""


	mi_cursor.execute("INSERT INTO DATOSUSUARIOS VALUES(NULL,?,?,?,?,?)", (datos))

	mi_conexion.commit()

	messagebox.showinfo("BBDD", "Registro insertado con éxito")


def actualizar():

	mi_conexion=sqlite3.connect("Usuarios")

	mi_cursor=mi_conexion.cursor()

	datos=mi_nombre.get(),mi_pass.get(),mi_apellido.get(),mi_direccion.get(),texto_comentario.get("1.0", END)


	"""mi_cursor.execute("UPDATE DATOSUSUARIOS SET NOMBRE_USUARIO='" + mi_nombre.get() +
		"', Password='" + mi_pass.get() +
		"', Apellido='" + mi_apellido.get() +
		"', Direccion='" + mi_direccion.get() + 
		"', Comentarios='" + texto_comentario.get("1.0", END) +
		"' WHERE ID=" + mi_ID.get())"""

	mi_cursor.execute("UPDATE DATOSUSUARIOS SET NOMBRE_USUARIO=?, PASSWORD=?, APELLIDO=?, DIRECCION=?, COMENTARIOS=? " +
		"WHERE ID=" + mi_ID.get(),(datos))



	mi_conexion.commit()

	messagebox.showinfo("BBDD", "Registro actualizado con éxito")


def leer():

	mi_conexion=sqlite3.connect("Usuarios")

	mi_cursor=mi_conexion.cursor()

	mi_cursor.execute("SELECT * FROM DATOSUSUARIOS WHERE ID=" + mi_ID.get())

	el_usuario=mi_cursor.fetchall()

	for usuario in el_usuario:

		mi_ID.set(usuario[0])
		mi_nombre.set(usuario[1])
		mi_pass.set(usuario[2])
		mi_apellido.set(usuario[3])
		mi_direccion.set(usuario[4])
		texto_comentario.insert(1.0, usuario[5])

	mi_conexion.commit()


def eliminar():

	mi_conexion=sqlite3.connect("Usuarios")

	mi_cursor=mi_conexion.cursor()

	mi_cursor.execute("DELETE FROM DATOSUSUARIOS WHERE ID=" + mi_ID.get())

	mi_conexion.commit()

	messagebox.showinfo("BBDD", "Registro borrado con éxito")





#-----------------------propiedades----------------

root=Tk()

barra_menu=Menu(root)
root.config(menu=barra_menu, width=300, height=300)
root.title("BBDD")



#----------------------------Menu-----------------------

bbdd_menu=Menu(barra_menu, tearoff=0)
bbdd_menu.add_command(label="Conectar", command=conexion_BBDD)
bbdd_menu.add_command(label="Salir", command=salir_aplicaccion)


borrar_menu=Menu(barra_menu, tearoff=0)
borrar_menu.add_command(label="Borrar campos", command=lipiar_campos)


crud_menu=Menu(barra_menu, tearoff=0)
crud_menu.add_command(label="Create", command=crear)
crud_menu.add_command(label="Read", command=leer)
crud_menu.add_command(label="Update", command=actualizar)
crud_menu.add_command(label="Delete", command=eliminar)


barra_menu.add_cascade(label="BBDD", menu=bbdd_menu)
barra_menu.add_cascade(label="Borrar", menu=borrar_menu)
barra_menu.add_cascade(label="CRUD", menu=crud_menu)


#-----------------------------comienzo de campos--------------------------

mi_frame=Frame(root)
mi_frame.pack()


mi_ID=StringVar()
mi_nombre=StringVar()
mi_apellido=StringVar()
mi_pass=StringVar()
mi_direccion=StringVar()

cuadro_id=Entry(mi_frame, textvariable=mi_ID)
cuadro_id.grid(row=0, column=1, padx=10, pady=10)


cuadro_nombre=Entry(mi_frame, textvariable=mi_nombre)
cuadro_nombre.grid(row=1, column=1, padx=10, pady=10)


cuadro_pass=Entry(mi_frame, textvariable=mi_pass)
cuadro_pass.grid(row=2, column=1, padx=10, pady=10)
cuadro_pass.config(show="*")

cuadro_apellido=Entry(mi_frame, textvariable=mi_apellido)
cuadro_apellido.grid(row=3, column=1, padx=10, pady=10)


cuadro_direccion=Entry(mi_frame, textvariable=mi_direccion)
cuadro_direccion.grid(row=4, column=1, padx=10, pady=10)


texto_comentario=Text(mi_frame, width=16, height=5)
texto_comentario.grid(row=5, column=1, padx=10, pady=10)
scrollVert=Scrollbar(mi_frame, command=texto_comentario.yview)
scrollVert.grid(row=5, column=2, sticky="nsew")

texto_comentario.config(yscrollcommand=scrollVert.set)


#-------------------------------label------------------------------------------

id_label=Label(mi_frame, text="ID:")
id_label.grid(row=0, column=0, sticky="e", padx=10, pady=10)

nombre_label=Label(mi_frame, text="Nombre:")
nombre_label.grid(row=1, column=0, sticky="e", padx=10, pady=10)

pass_label=Label(mi_frame, text="Password:")
pass_label.grid(row=2, column=0, sticky="e", padx=10, pady=10)

apellido_label=Label(mi_frame, text="Apellido:")
apellido_label.grid(row=3, column=0, sticky="e", padx=10, pady=10)

direccion_label=Label(mi_frame, text="Direccion:")
direccion_label.grid(row=4, column=0, sticky="e", padx=10, pady=10)

comentarios_label=Label(mi_frame, text="Comentarios:")
comentarios_label.grid(row=5, column=0, sticky="e", padx=10, pady=10)


#--------------------------------botones-----------------------------------

mi_frame2=Frame(root)
mi_frame2.pack()

boton_crear=Button(mi_frame2, text="Create", command=crear)
boton_crear.grid(row=1, column=0, sticky="e", padx=10, pady=10)

boton_leer=Button(mi_frame2, text="Read", command=leer)
boton_leer.grid(row=1, column=1, sticky="e", padx=10, pady=10)

boton_update=Button(mi_frame2, text="Update", command=actualizar)
boton_update.grid(row=1, column=2, sticky="e", padx=10, pady=10)

boton_delete=Button(mi_frame2, text="Delete", command=eliminar)
boton_delete.grid(row=1, column=3, sticky="e", padx=10, pady=10)



root.mainloop()