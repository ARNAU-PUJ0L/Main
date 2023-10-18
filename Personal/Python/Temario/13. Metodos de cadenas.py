"""Metodos de cadenas

Algunos metodos: (pagweb:http://pyspanishdoc.sourceforge.net/lib/string-methods.html)

upper():Convierte en mayusculas

lower():Convierte en minusculas

capitalize():Pone la primera letra en mayuscula

count():Cuenta cuantas veces aparece ciertos valores en un texto

find(): representa la posicion en la que aparece una frase/palabra... en un texto

isdigit():Dice si el valor introducido es numercico

isalum():Comprueva si es alphanumerico

isalpha():Comprueva si hay solo letras

split():Separa por palabras

strip():Borra los espacios sobrantes al principio y al final

replace(): canvia a una palabra/letra por otra 

rfind():Representa el indice de un caracter enpezando al reves"""



	
	#Ex:1
nombreUsuario=input("Introduce tu nombre de Usuario ")

print("El nombre es: ", nombreUsuario.upper())
print("El nombre es: ", nombreUsuario.lower())
print("El nombre es: ", nombreUsuario.capitalize())




	#Ex:2
edad=input("Indroduce la edad: ")

while(edad.isdigit()==False):
	print("Introduce un valor numerico")

	edad=input("Indroduce la edad: ")


if (int(edad)<18):
	print("No puedes pasar")
else:
	print("Puedes pasar")



