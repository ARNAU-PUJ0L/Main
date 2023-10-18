"""
Match: Busca unos caracteres especificos pero al principio del label

Search: Busca unos caracteres especificos en toda la label
"""


import re

codigo1="swrthswoterhojwth78wthwrthwtrh"

codigo2="71aergargargrgargaregaergaerg"

codigo3="ssasathgssssssssssgaergargaerg71"

#Para que no distiga entre mayusculas y minusculas se ha de poner el tercer argumento
if re.search("71", codigo2, re.IGNORECASE):

	print("Hemos encontrado el codigo")

else:

	print("No lo hemos encontrado")


cadena1="Maria Lopez"

cadena2="354354354"

cadena3="a454645646"


if re.match("\d", cadena2):

	print("Hemos encontrado el numero")

else:

	print("No lo hemos encontrado")
