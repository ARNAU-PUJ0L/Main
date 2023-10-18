#Condicionales(I) If
print("Programa de evaluacion de notas de alumnos")

nota_alumno=input("Introduce la nota del alumno:")  																	#input() es la funcion que se utiliza para asignar el valor de una variable por teclado(todo los que se introduce a trabes de un input() se considera string(texto) hasta los numeros 

def evaluacion(nota):
	valoracion="aprobado"
	if nota<5:
		valoracion="suspenso"
	return valoracion

print(evaluacion(int(nota_alumno))) 																					#la funcion int() se utiliza para convertir valores en numeros enteros




#Condicional(II) IF+ELSE+ELIF
	
	#Ex_1
print("Verificacion de acceso")

edad_usuario=int(input("Introduce tu edad "))

if edad_usuario<18:
	print("No puedes pasar")
elif edad_usuario>100:																									#elif sirve para juntar todos los if con el else, ya que else se encadena con el if mas cercano, de esta forma se encadenan todos los if
	print("Edad fuera de rango")
else:
	print("Puedes pasar")



	#Ex_2
print("Verificacion nota")
notaalumno=int(input("Introduce la nota "))

if notaalumno<5:
	print("Insuficiente")
elif notaalumno<6:
	print("suficiente")
elif notaalumno<7:
	print("Bien")
elif notaalumno<9:
	print("Notable")
elif notaalumno>10:
	print("Nota fuera de rango")
else:
	print("exelente")



#Condicional(III) Concatenacion de operadores de comparacion

	#Ex1 Concatenacion de operadores
edad=7
if 0<edad<100:																											#la edad a de esta entre 0 a 100
	print("Edad correcta")		
else:
	print("Edad incorrecta")



	#Ex2 Concatenacion de operadores
salario_preridente=(int(input("Introduce el salario presidente ")))
print("Salario presidente: " + str(salario_preridente))																	#str convierte un valor en string

salario_director=(int(input("Introduce el salario director ")))
print("Salario director: " + str(salario_director))

salario_jefe_area=(int(input("Introduce el salario jefe_area ")))
print("Salario jefe_area: " + str(salario_jefe_area))

salario_administrativo=(int(input("Introduce el salario administrativo ")))
print("Salario administrativo: " + str(salario_administrativo))

if salario_administrativo<salario_jefe_area<salario_director<salario_preridente:
	print("Todo va bien")
else:
	print("Algo no va bien")





#Condicionales(IV) Operador logico "and" y "or", Operador "in"

	#Ex1 Derecho a beca (and y or)
print("Programa becas")
distancia_escuela=int(input("Introduce la distancia a la escuela en km "))
print(distancia_escuela)

numero_hermanos=int(input("Introduce el numero de hermanos en el centro "))
print(numero_hermanos)

salario_familiar=int(input("Introduce el salario familiar anual "))
print(salario_familiar)

if distancia_escuela>40 and numero_hermanos>2 or salario_familiar<=20000:												#la funcion "and" es utilizada para una enumeracion de condiciones. La funcion "or" se traduce como "y si no", en este programa si el alumno tiene una familia que cobra </=  20000$ tendra beca indiferentemente de las condiciones anteriores
	print("tienes derecho a beca")
else:
	print("no tienes derecho a beca")



	#Ex2 Optativas I.informatica (in)
print("asignaturas optativas")
print("Asignaturas optativas: Informatica grafica - Pruebas de software - Usabilidad y accesiblidad ") 
opcion=input("Escribe la asignatura escogida: ")

asignatura=opcion.lower()																								#la funcion .lower() sirve para transformar un texto en minusculas de esa forma aun que el usuario escriba en mayusculas el programa funcionara. la funcion .upper hace lo mismo pero transformando el texto en mayusculas

if asignatura in ("informatica grafica", "pruebas de software", "usabilidad y accesiblidad"):							#En la funcion in() sirve para ver si la opcion escogida esta dentro de las disponibles 
	print("asignatura escogida: " + asignatura)
else:
	print("La asignatura escogida no esta disponible")