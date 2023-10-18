"""
("^") busca el valor que empieza de una forma en concreto ("^Ana")

("$") Busca el valor que acava de una forma en concreto ("Gomez$")

"[ñ]" Busca en una lista de nombres si se encuentra valor deseado ("[ñ]")

("cami[oón]") Busca en la lista la palabra camion con y sin tilde

"""
import re

lista_nombres=["Ana Gomez", 
			  "Maria Martin", 
			  "Sandra Lopez",
			  "Santiago Martin"
			  "Sandra Fernandez"]


for elemento in lista_nombres:

	if re.findall("Martin$", elemento):
		
		print(elemento)