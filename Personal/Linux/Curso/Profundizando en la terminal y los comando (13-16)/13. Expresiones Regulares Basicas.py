"""

* = Todos los caracteres

Como borrar todos los archivos con una misma extension: rm *.txt

Borrar todos los archivos con las misma extension q empiezan igual: rm a*.txt


? = Un caracter

Borrar todos los archivos con un solo caracter despues de la a: rm a?.txt

Borrar todos los archivos con un caracter: rm ?.txt


[] = "Condicional"

(Ejemplo: tenemos 5 archivos ficheroA.txt ficheroB.txt ficheroC.txt ficheroD.txt)

Borrar Fichero A y B: rm fichero[AB].txt

Borrar ficheros q no acavan en A o B: rm fichero[^AB] 


{} = Igual que el anterior, pero para más caracteres en lugar de uno solo

Borrar los fichero que acavan con AB y CD: rm fichero{AB,CD}.txt


- = Especifica rangos

Ficheros txt de nombre f que acaban en un dígito: f[0-9].txt
Ficheros txt de nombre f que acaban en dos dígito: f[0-9][0-9].txt
Ficheros txt de nombre f que acaban en una mayúscula: f[A-Z].txt
Los que acaban en una minúscula o mayúscula: f[a-zA-Z].txt




"""